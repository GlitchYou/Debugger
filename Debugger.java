import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import java.util.Set;

public class Debugger {

    public static void i(Object obj) {
        String s = obj.toString();

        Log.i("#I", s);
    }

    public static void intentInfo (Intent i) {
		String str = String.format
		(
			""
			+ ".\n"
			+ "Intent Info"
			+ "\n\n"
			+ "%s"
			+ "\n\n\n"
			,
			
			i.toString()
			.replaceAll
			(
				"(.{3}=.+?) ",
				"$1\n\n"
			)
			.replaceFirst
			(
				"\\{\\s",
				"{\n"
			)
			.replaceFirst
			(
				"\\s\\}$",
				"\n}"
			)
		);
		
		Bundle bundle = i.getExtras();
		
		if (bundle != null)
		{
			Set<String> keys = bundle.keySet();

			str += "Extras:\n\n";

			for (String key : keys)
			{
				str += String.format
				(
					"%s:\n%s\n\n",

					key,
					bundle.get(key)
				);
			}
		}

		i(str);
    }
}
