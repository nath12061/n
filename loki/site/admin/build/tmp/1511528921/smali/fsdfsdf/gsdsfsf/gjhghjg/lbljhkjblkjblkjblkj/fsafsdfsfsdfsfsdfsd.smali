.class public Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/fsafsdfsfsdfsfsdfsd;
.super Ljava/lang/Object;


# static fields
.field private static fsafsdfsfsdfsfsdfsd:Z


# direct methods
.method public static fsafsdfsfsdfsfsdfsd(Landroid/content/Context;)Ljava/util/List;
    .locals 10

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    array-length v6, v4

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_2

    aget-object v0, v4, v1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    :try_start_1
    new-instance v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/serfwefewfwefewef;

    invoke-direct {v0, v7}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/serfwefewfwefewef;-><init>(I)V

    iget-boolean v8, v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd:Z

    if-eqz v8, :cond_1

    iget v8, v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/serfwefewfwefewef;->sdfsdfsdfsdf:I

    const/16 v9, 0x3e8

    if-lt v8, v9, :cond_0

    iget v8, v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/serfwefewfwefewef;->sdfsdfsdfsdf:I

    const/16 v9, 0x270f

    if-le v8, v9, :cond_1

    :cond_0
    iget-object v8, v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/serfwefewfwefewef;->zxcvxvsdvsvsvs:Ljava/lang/String;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/hukuiluliulu; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v8, "Error reading from /proc/%d."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v2

    invoke-static {v0, v8, v9}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/fsafsdfsfsdfsfsdfsd;->fsafsdfsfsdfsfsdfsd(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-object v3

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static varargs fsafsdfsfsdfsfsdfsd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/fsafsdfsfsdfsfsdfsd;->fsafsdfsfsdfsfsdfsd:Z

    if-eqz v0, :cond_0

    const-string v0, "AndroidProcesses"

    array-length v1, p1

    if-nez v1, :cond_1

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs fsafsdfsfsdfsfsdfsd(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/fsafsdfsfsdfsfsdfsd;->fsafsdfsfsdfsfsdfsd:Z

    if-eqz v0, :cond_0

    const-string v0, "AndroidProcesses"

    array-length v1, p2

    if-nez v1, :cond_1

    :goto_0
    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
