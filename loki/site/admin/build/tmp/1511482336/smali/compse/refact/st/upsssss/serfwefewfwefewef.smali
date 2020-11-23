.class Lcompse/refact/st/upsssss/serfwefewfwefewef;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/StartWeb;

.field final synthetic sdfsdfsdfsdf:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcompse/refact/st/upsssss/StartWeb;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcompse/refact/st/upsssss/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/StartWeb;

    iput-object p2, p0, Lcompse/refact/st/upsssss/serfwefewfwefewef;->sdfsdfsdfsdf:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcompse/refact/st/upsssss/serfwefewfwefewef;->sdfsdfsdfsdf:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
