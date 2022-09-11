.class public LDebugger;
.super Ljava/lang/Object;
.source "Debugger.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static intentInfo(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 52
    const-string v0, ".\nIntent Info\n\n%s\n\n\n"

    new-array v1, v7, [Ljava/lang/Object;

    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    const-string v3, "(.{3}=.+?) "

    .line 64
    const-string v4, "$1\n\n"

    .line 61
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    const-string v3, "\\{\\s"

    .line 69
    const-string v4, "{\n"

    .line 66
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    const-string v3, "\\s\\}$"

    .line 74
    const-string v4, "\n}"

    .line 71
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 50
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 80
    if-eqz v2, :cond_50

    .line 82
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Extras:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_54

    .line 98
    :cond_50
    invoke-static {p0, v1}, LDebugger;->w(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    return-void

    .line 86
    :cond_54
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    const-string v1, "%s:\n%s\n\n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 92
    aput-object v0, v5, v6

    .line 93
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v7

    .line 88
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_4a
.end method

.method public static showVariable(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, LDebugger;->w(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private static w(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 14
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Value: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    array-length v5, v4

    move-object v2, v0

    move v0, v1

    :goto_2b
    if-lt v0, v5, :cond_5e

    .line 26
    const-string v0, "%s/logs->%s.txt"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 28
    aput-object v3, v5, v1

    .line 29
    const/4 v1, 0x4

    aget-object v1, v4, v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    const-string v3, "\\(.+?\\)"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v9

    .line 24
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    :try_start_4e
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 37
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 38
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5d} :catch_7e

    .line 42
    :goto_5d
    return-void

    .line 19
    :cond_5e
    aget-object v6, v4, v0

    .line 21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "[%s]\n"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v6, v8, v1

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 39
    :catch_7e
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5d
.end method
