.class Linstall/app/LocalDevice1Impl;
.super Linstall/app/LocalDevice;
.source "LocalDevice1Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/LocalDevice1Impl$ConnectionAlert;,
        Linstall/app/LocalDevice1Impl$C00021;
    }
.end annotation


# instance fields
.field private local:Linstall/app/LocalBluetoothDevice;

.field private localListener:Linstall/app/LocalBluetoothDeviceListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Linstall/app/LocalDevice;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/LocalDevice1Impl;->local:Linstall/app/LocalBluetoothDevice;

    .line 10
    new-instance v0, Linstall/app/LocalDevice1Impl$C00021;

    invoke-direct {v0, p0}, Linstall/app/LocalDevice1Impl$C00021;-><init>(Linstall/app/LocalDevice1Impl;)V

    iput-object v0, p0, Linstall/app/LocalDevice1Impl;->localListener:Linstall/app/LocalBluetoothDeviceListener;

    .line 60
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Linstall/app/LocalDevice;->destroy()V

    .line 64
    return-void
.end method

.method public ensureDiscoverable()V
    .locals 4

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Linstall/app/LocalDevice1Impl;->ctx:Landroid/content/Context;

    const-string v2, "discoverable mode for 120 seconds"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRemoteForAddr(Ljava/lang/String;)Linstall/app/RemoteDevice;
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public listenForConnection(Linstall/app/ConnectionListener;I)Linstall/app/ServerControl;
    .locals 1
    .param p1, "listener"    # Linstall/app/ConnectionListener;
    .param p2, "port"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public scan(Linstall/app/ScanListener;)V
    .locals 0
    .param p1, "listener"    # Linstall/app/ScanListener;

    .prologue
    .line 69
    invoke-super {p0, p1}, Linstall/app/LocalDevice;->scan(Linstall/app/ScanListener;)V

    .line 74
    return-void
.end method

.method public stopScan()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
