.class Linstall/app/LocalDevice2Impl$1;
.super Landroid/content/BroadcastReceiver;
.source "LocalDevice2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linstall/app/LocalDevice2Impl;->init(Landroid/content/Context;Linstall/app/ReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/LocalDevice2Impl;

.field final synthetic val$ready:Linstall/app/ReadyListener;


# direct methods
.method constructor <init>(Linstall/app/LocalDevice2Impl;Linstall/app/ReadyListener;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/LocalDevice2Impl;

    .prologue
    .line 80
    iput-object p1, p0, Linstall/app/LocalDevice2Impl$1;->this$0:Linstall/app/LocalDevice2Impl;

    iput-object p2, p0, Linstall/app/LocalDevice2Impl$1;->val$ready:Linstall/app/ReadyListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 82
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/16 v1, 0xa

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 83
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    iget-object v0, p0, Linstall/app/LocalDevice2Impl$1;->val$ready:Linstall/app/ReadyListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Linstall/app/LocalDevice2Impl$1;->val$ready:Linstall/app/ReadyListener;

    invoke-virtual {v0}, Linstall/app/ReadyListener;->notifyReady()V

    .line 88
    :cond_0
    return-void
.end method
