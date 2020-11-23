.class Linstall/app/LocalDevice2Impl$C00041;
.super Landroid/content/BroadcastReceiver;
.source "LocalDevice2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/LocalDevice2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C00041"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/LocalDevice2Impl;


# direct methods
.method constructor <init>(Linstall/app/LocalDevice2Impl;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/LocalDevice2Impl;

    .prologue
    .line 20
    iput-object p1, p0, Linstall/app/LocalDevice2Impl$C00041;->this$0:Linstall/app/LocalDevice2Impl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Linstall/app/Logger;->m14v(Ljava/lang/String;)V

    .line 26
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    iget-object v1, p0, Linstall/app/LocalDevice2Impl$C00041;->this$0:Linstall/app/LocalDevice2Impl;

    iget-object v2, v1, Linstall/app/LocalDevice2Impl;->scanListener:Linstall/app/ScanListener;

    new-instance v3, Linstall/app/RemoteDevice2Impl;

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const-string v4, "android.bluetooth.device.extra.RSSI"

    const/16 v5, -0x8000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v4

    invoke-direct {v3, v1, v4}, Linstall/app/RemoteDevice2Impl;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {v2, v3}, Linstall/app/ScanListener;->notifyDeviceFound(Linstall/app/RemoteDevice;)V

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Linstall/app/LocalDevice2Impl$C00041;->this$0:Linstall/app/LocalDevice2Impl;

    iget-object v1, v1, Linstall/app/LocalDevice2Impl;->scanListener:Linstall/app/ScanListener;

    invoke-virtual {v1}, Linstall/app/ScanListener;->notifyScanCompleted()V

    .line 30
    iget-object v1, p0, Linstall/app/LocalDevice2Impl$C00041;->this$0:Linstall/app/LocalDevice2Impl;

    # getter for: Linstall/app/LocalDevice2Impl;->receiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Linstall/app/LocalDevice2Impl;->access$000(Linstall/app/LocalDevice2Impl;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
