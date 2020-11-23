.class Linstall/app/LocalDevice2Impl;
.super Linstall/app/LocalDevice;
.source "LocalDevice2Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/LocalDevice2Impl$ConnectionAlert;,
        Linstall/app/LocalDevice2Impl$C00041;
    }
.end annotation


# static fields
.field private static adapter:Landroid/bluetooth/BluetoothAdapter;


# instance fields
.field private notificationManager:Landroid/app/NotificationManager;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Linstall/app/LocalDevice2Impl;->adapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Linstall/app/LocalDevice;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/LocalDevice2Impl;->notificationManager:Landroid/app/NotificationManager;

    .line 17
    new-instance v0, Linstall/app/LocalDevice2Impl$C00041;

    invoke-direct {v0, p0}, Linstall/app/LocalDevice2Impl$C00041;-><init>(Linstall/app/LocalDevice2Impl;)V

    iput-object v0, p0, Linstall/app/LocalDevice2Impl;->receiver:Landroid/content/BroadcastReceiver;

    .line 66
    return-void
.end method

.method static synthetic access$000(Linstall/app/LocalDevice2Impl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Linstall/app/LocalDevice2Impl;

    .prologue
    .line 14
    iget-object v0, p0, Linstall/app/LocalDevice2Impl;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method public clearSystemNotification()V
    .locals 2

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Linstall/app/LocalDevice2Impl;->notificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Linstall/app/LocalDevice2Impl;->ctx:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Linstall/app/LocalDevice2Impl;->notificationManager:Landroid/app/NotificationManager;

    .line 144
    :cond_0
    iget-object v0, p0, Linstall/app/LocalDevice2Impl;->notificationManager:Landroid/app/NotificationManager;

    const v1, 0x1080080

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Linstall/app/LocalDevice2Impl;->ctx:Landroid/content/Context;

    iget-object v1, p0, Linstall/app/LocalDevice2Impl;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/LocalDevice2Impl;->ctx:Landroid/content/Context;

    .line 74
    invoke-super {p0}, Linstall/app/LocalDevice;->destroy()V

    .line 75
    return-void

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public ensureDiscoverable()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Linstall/app/LocalDevice2Impl;->ctx:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method public getRemoteForAddr(Ljava/lang/String;)Linstall/app/RemoteDevice;
    .locals 2
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Linstall/app/RemoteDevice2Impl;

    sget-object v1, Linstall/app/LocalDevice2Impl;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {v0, v1}, Linstall/app/RemoteDevice2Impl;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    return-object v0
.end method

.method public init(Landroid/content/Context;Linstall/app/ReadyListener;)V
    .locals 4
    .param p1, "_ctx"    # Landroid/content/Context;
    .param p2, "ready"    # Linstall/app/ReadyListener;

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Linstall/app/LocalDevice;->init(Landroid/content/Context;Linstall/app/ReadyListener;)V

    .line 79
    sget-object v0, Linstall/app/LocalDevice2Impl;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Linstall/app/LocalDevice2Impl;->ctx:Landroid/content/Context;

    new-instance v1, Linstall/app/LocalDevice2Impl$1;

    invoke-direct {v1, p0, p2}, Linstall/app/LocalDevice2Impl$1;-><init>(Linstall/app/LocalDevice2Impl;Linstall/app/ReadyListener;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    sget-object v0, Linstall/app/LocalDevice2Impl;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p2}, Linstall/app/ReadyListener;->ready()V

    goto :goto_0
.end method

.method public listenForConnection(Linstall/app/ConnectionListener;I)Linstall/app/ServerControl;
    .locals 7
    .param p1, "listener"    # Linstall/app/ConnectionListener;
    .param p2, "port"    # I

    .prologue
    .line 115
    :try_start_0
    new-instance v1, Linstall/app/LocalDevice2Impl$ConnectionAlert;

    sget-object v2, Linstall/app/LocalDevice2Impl;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "listenUsingRfcommOn"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v3, Linstall/app/LocalDevice2Impl;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothServerSocket;

    invoke-direct {v1, p0, v2, p1}, Linstall/app/LocalDevice2Impl$ConnectionAlert;-><init>(Linstall/app/LocalDevice2Impl;Landroid/bluetooth/BluetoothServerSocket;Linstall/app/ConnectionListener;)V

    .line 116
    .local v1, "t":Linstall/app/LocalDevice2Impl$ConnectionAlert;
    invoke-virtual {v1}, Linstall/app/LocalDevice2Impl$ConnectionAlert;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v1    # "t":Linstall/app/LocalDevice2Impl$ConnectionAlert;
    :goto_0
    return-object v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public scan(Linstall/app/ScanListener;)V
    .locals 3
    .param p1, "listener"    # Linstall/app/ScanListener;

    .prologue
    .line 97
    invoke-super {p0, p1}, Linstall/app/LocalDevice;->scan(Linstall/app/ScanListener;)V

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Linstall/app/LocalDevice2Impl;->ctx:Landroid/content/Context;

    iget-object v2, p0, Linstall/app/LocalDevice2Impl;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    sget-object v1, Linstall/app/LocalDevice2Impl;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 103
    return-void
.end method

.method public showDefaultPinInputActivity(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 3
    .param p1, "address"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "clearSystemNotification"    # Z

    .prologue
    .line 129
    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p0}, Linstall/app/LocalDevice2Impl;->clearSystemNotification()V

    .line 132
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 134
    const-string v1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Linstall/app/LocalDevice2Impl;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 137
    return-void
.end method

.method public stopScan()V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Linstall/app/LocalDevice2Impl;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 107
    return-void
.end method
