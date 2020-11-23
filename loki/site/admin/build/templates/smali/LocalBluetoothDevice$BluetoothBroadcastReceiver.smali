.class final Linstall/app/LocalBluetoothDevice$BluetoothBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocalBluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/LocalBluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothBroadcastReceiver"
.end annotation


# static fields
.field public static final BLUETOOTH_STATE_OFF:I = 0x0

.field public static final BLUETOOTH_STATE_ON:I = 0x2

.field public static final BLUETOOTH_STATE_TURNING_OFF:I = 0x3

.field public static final BLUETOOTH_STATE_TURNING_ON:I = 0x1

.field public static final BOND_BONDED:I = 0x1

.field public static final BOND_BONDING:I = 0x2

.field public static final BOND_NOT_BONDED:I = 0x0

.field private static final TAG_RECEIVER:Ljava/lang/String; = "BluetoothBroadcastReceiver"


# instance fields
.field didIstartedScan:Z

.field private registered:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 99
    iput-boolean v0, p0, Linstall/app/LocalBluetoothDevice$BluetoothBroadcastReceiver;->didIstartedScan:Z

    .line 100
    iput-boolean v0, p0, Linstall/app/LocalBluetoothDevice$BluetoothBroadcastReceiver;->registered:Z

    .line 103
    invoke-virtual {p0, p1}, Linstall/app/LocalBluetoothDevice$BluetoothBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method private processBluetoothStateChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 216
    const-string v2, "android.bluetooth.intent.BLUETOOTH_PREVIOUS_STATE"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 217
    .local v1, "previousBluetoothState":I
    const-string v2, "android.bluetooth.intent.BLUETOOTH_STATE"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 218
    .local v0, "bluetoothState":I
    # getter for: Linstall/app/LocalBluetoothDevice;->_localDevice:Linstall/app/LocalBluetoothDevice;
    invoke-static {}, Linstall/app/LocalBluetoothDevice;->access$000()Linstall/app/LocalBluetoothDevice;

    move-result-object v2

    # getter for: Linstall/app/LocalBluetoothDevice;->listener:Linstall/app/LocalBluetoothDeviceListener;
    invoke-static {v2}, Linstall/app/LocalBluetoothDevice;->access$100(Linstall/app/LocalBluetoothDevice;)Linstall/app/LocalBluetoothDeviceListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 219
    packed-switch v0, :pswitch_data_0

    .line 230
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 221
    :pswitch_1
    # getter for: Linstall/app/LocalBluetoothDevice;->_localDevice:Linstall/app/LocalBluetoothDevice;
    invoke-static {}, Linstall/app/LocalBluetoothDevice;->access$000()Linstall/app/LocalBluetoothDevice;

    move-result-object v2

    # getter for: Linstall/app/LocalBluetoothDevice;->listener:Linstall/app/LocalBluetoothDeviceListener;
    invoke-static {v2}, Linstall/app/LocalBluetoothDevice;->access$100(Linstall/app/LocalBluetoothDevice;)Linstall/app/LocalBluetoothDeviceListener;

    move-result-object v2

    invoke-interface {v2}, Linstall/app/LocalBluetoothDeviceListener;->bluetoothDisabled()V

    goto :goto_0

    .line 224
    :pswitch_2
    # getter for: Linstall/app/LocalBluetoothDevice;->_localDevice:Linstall/app/LocalBluetoothDevice;
    invoke-static {}, Linstall/app/LocalBluetoothDevice;->access$000()Linstall/app/LocalBluetoothDevice;

    move-result-object v2

    # getter for: Linstall/app/LocalBluetoothDevice;->listener:Linstall/app/LocalBluetoothDeviceListener;
    invoke-static {v2}, Linstall/app/LocalBluetoothDevice;->access$100(Linstall/app/LocalBluetoothDevice;)Linstall/app/LocalBluetoothDeviceListener;

    move-result-object v2

    invoke-interface {v2}, Linstall/app/LocalBluetoothDeviceListener;->bluetoothEnabled()V

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private processBondStateChanged(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 207
    const-string v3, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "address":Ljava/lang/String;
    const-string v3, "android.bluetooth.intent.BOND_PREVIOUS_STATE"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 209
    .local v2, "previousBondState":I
    const-string v3, "android.bluetooth.intent.BOND_STATE"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 210
    .local v1, "bondState":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    # getter for: Linstall/app/LocalBluetoothDevice;->_localDevice:Linstall/app/LocalBluetoothDevice;
    invoke-static {}, Linstall/app/LocalBluetoothDevice;->access$000()Linstall/app/LocalBluetoothDevice;

    move-result-object v3

    # getter for: Linstall/app/LocalBluetoothDevice;->remoteDevices:Ljava/util/Hashtable;
    invoke-static {v3}, Linstall/app/LocalBluetoothDevice;->access$200(Linstall/app/LocalBluetoothDevice;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    # getter for: Linstall/app/LocalBluetoothDevice;->_localDevice:Linstall/app/LocalBluetoothDevice;
    invoke-static {}, Linstall/app/LocalBluetoothDevice;->access$000()Linstall/app/LocalBluetoothDevice;

    move-result-object v3

    # getter for: Linstall/app/LocalBluetoothDevice;->remoteDevices:Ljava/util/Hashtable;
    invoke-static {v3}, Linstall/app/LocalBluetoothDevice;->access$200(Linstall/app/LocalBluetoothDevice;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linstall/app/RemoteBluetoothDeviceImpl;

    invoke-virtual {v3}, Linstall/app/RemoteBluetoothDeviceImpl;->notifyPaired()V

    .line 213
    :cond_0
    return-void
.end method

.method private processDiscoveryCompleted()V
    .locals 2

    .prologue
    .line 203
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not decompiled: install.app.LocalBluetoothDevice.BluetoothBroadcastReceiver.processDiscoveryCompleted():void"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processDiscoveryStarted()V
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Linstall/app/LocalBluetoothDevice$BluetoothBroadcastReceiver;->didIstartedScan:Z

    if-eqz v0, :cond_0

    # getter for: Linstall/app/LocalBluetoothDevice;->_localDevice:Linstall/app/LocalBluetoothDevice;
    invoke-static {}, Linstall/app/LocalBluetoothDevice;->access$000()Linstall/app/LocalBluetoothDevice;

    move-result-object v0

    # getter for: Linstall/app/LocalBluetoothDevice;->listener:Linstall/app/LocalBluetoothDeviceListener;
    invoke-static {v0}, Linstall/app/LocalBluetoothDevice;->access$100(Linstall/app/LocalBluetoothDevice;)Linstall/app/LocalBluetoothDeviceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    # getter for: Linstall/app/LocalBluetoothDevice;->_localDevice:Linstall/app/LocalBluetoothDevice;
    invoke-static {}, Linstall/app/LocalBluetoothDevice;->access$000()Linstall/app/LocalBluetoothDevice;

    move-result-object v0

    # getter for: Linstall/app/LocalBluetoothDevice;->listener:Linstall/app/LocalBluetoothDeviceListener;
    invoke-static {v0}, Linstall/app/LocalBluetoothDevice;->access$100(Linstall/app/LocalBluetoothDevice;)Linstall/app/LocalBluetoothDeviceListener;

    move-result-object v0

    invoke-interface {v0}, Linstall/app/LocalBluetoothDeviceListener;->scanStarted()V

    .line 129
    :cond_0
    return-void
.end method

.method private processPairingRequested(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 132
    const-string v2, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "address":Ljava/lang/String;
    # getter for: Linstall/app/LocalBluetoothDevice;->_localDevice:Linstall/app/LocalBluetoothDevice;
    invoke-static {}, Linstall/app/LocalBluetoothDevice;->access$000()Linstall/app/LocalBluetoothDevice;

    move-result-object v2

    # getter for: Linstall/app/LocalBluetoothDevice;->remoteDevices:Ljava/util/Hashtable;
    invoke-static {v2}, Linstall/app/LocalBluetoothDevice;->access$200(Linstall/app/LocalBluetoothDevice;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linstall/app/RemoteBluetoothDeviceImpl;

    .line 134
    .local v1, "remoteBluetoothDevice":Linstall/app/RemoteBluetoothDeviceImpl;
    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v1}, Linstall/app/RemoteBluetoothDeviceImpl;->notifyPairingRequested()V

    .line 137
    :cond_0
    return-void
.end method

.method private processRemoteDeviceFound(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 140
    iget-boolean v3, p0, Linstall/app/LocalBluetoothDevice$BluetoothBroadcastReceiver;->didIstartedScan:Z

    if-eqz v3, :cond_0

    .line 142
    :try_start_0
    const-string v3, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "address":Ljava/lang/String;
    const-string v3, "android.bluetooth.intent.RSSI"

    const/16 v4, -0x8000

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v2

    .line 144
    .local v2, "rssi":S
    const-string v3, "android.bluetooth.intent.CLASS"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 145
    .local v1, "deviceClass":I
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device found with address "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and rssi "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    # getter for: Linstall/app/LocalBluetoothDevice;->_localDevice:Linstall/app/LocalBluetoothDevice;
    invoke-static {}, Linstall/app/LocalBluetoothDevice;->access$000()Linstall/app/LocalBluetoothDevice;

    move-result-object v3

    # getter for: Linstall/app/LocalBluetoothDevice;->devices:Ljava/util/ArrayList;
    invoke-static {v3}, Linstall/app/LocalBluetoothDevice;->access$300(Linstall/app/LocalBluetoothDevice;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    # getter for: Linstall/app/LocalBluetoothDevice;->_localDevice:Linstall/app/LocalBluetoothDevice;
    invoke-static {}, Linstall/app/LocalBluetoothDevice;->access$000()Linstall/app/LocalBluetoothDevice;

    move-result-object v3

    # getter for: Linstall/app/LocalBluetoothDevice;->remoteDevices:Ljava/util/Hashtable;
    invoke-static {v3}, Linstall/app/LocalBluetoothDevice;->access$200(Linstall/app/LocalBluetoothDevice;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    # getter for: Linstall/app/LocalBluetoothDevice;->_localDevice:Linstall/app/LocalBluetoothDevice;
    invoke-static {}, Linstall/app/LocalBluetoothDevice;->access$000()Linstall/app/LocalBluetoothDevice;

    move-result-object v3

    # getter for: Linstall/app/LocalBluetoothDevice;->remoteDevices:Ljava/util/Hashtable;
    invoke-static {v3}, Linstall/app/LocalBluetoothDevice;->access$200(Linstall/app/LocalBluetoothDevice;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linstall/app/RemoteBluetoothDeviceImpl;

    invoke-virtual {v3, v2}, Linstall/app/RemoteBluetoothDeviceImpl;->setRSSI(S)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "deviceClass":I
    .end local v2    # "rssi":S
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private processRemoteNameUpdated(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 158
    :try_start_0
    const-string v2, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "address":Ljava/lang/String;
    const-string v2, "android.bluetooth.intent.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processRemoteNameUpdated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    # getter for: Linstall/app/LocalBluetoothDevice;->_localDevice:Linstall/app/LocalBluetoothDevice;
    invoke-static {}, Linstall/app/LocalBluetoothDevice;->access$000()Linstall/app/LocalBluetoothDevice;

    move-result-object v2

    # getter for: Linstall/app/LocalBluetoothDevice;->remoteDevices:Ljava/util/Hashtable;
    invoke-static {v2}, Linstall/app/LocalBluetoothDevice;->access$200(Linstall/app/LocalBluetoothDevice;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Device found, updating name"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    # getter for: Linstall/app/LocalBluetoothDevice;->_localDevice:Linstall/app/LocalBluetoothDevice;
    invoke-static {}, Linstall/app/LocalBluetoothDevice;->access$000()Linstall/app/LocalBluetoothDevice;

    move-result-object v2

    # getter for: Linstall/app/LocalBluetoothDevice;->remoteDevices:Ljava/util/Hashtable;
    invoke-static {v2}, Linstall/app/LocalBluetoothDevice;->access$200(Linstall/app/LocalBluetoothDevice;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linstall/app/RemoteBluetoothDeviceImpl;

    invoke-virtual {v2, v1}, Linstall/app/RemoteBluetoothDeviceImpl;->setName(Ljava/lang/String;)V

    .line 170
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 166
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Device unknown"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 167
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 168
    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method close(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 250
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    iput-boolean v2, p0, Linstall/app/LocalBluetoothDevice$BluetoothBroadcastReceiver;->registered:Z

    .line 256
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    iput-boolean v2, p0, Linstall/app/LocalBluetoothDevice$BluetoothBroadcastReceiver;->registered:Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Linstall/app/LocalBluetoothDevice$BluetoothBroadcastReceiver;->registered:Z

    throw v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.intent.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-direct {p0}, Linstall/app/LocalBluetoothDevice$BluetoothBroadcastReceiver;->processDiscoveryStarted()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const-string v1, "android.bluetooth.intent.action.REMOTE_DEVICE_FOUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    invoke-direct {p0, p2}, Linstall/app/LocalBluetoothDevice$BluetoothBroadcastReceiver;->processRemoteDeviceFound(Landroid/content/Intent;)V

    goto :goto_0

    .line 112
    :cond_2
    const-string v1, "android.bluetooth.intent.action.DISCOVERY_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 113
    invoke-direct {p0}, Linstall/app/LocalBluetoothDevice$BluetoothBroadcastReceiver;->processDiscoveryCompleted()V

    goto :goto_0

    .line 114
    :cond_3
    const-string v1, "android.bluetooth.intent.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    invoke-direct {p0, p2}, Linstall/app/LocalBluetoothDevice$BluetoothBroadcastReceiver;->processPairingRequested(Landroid/content/Intent;)V

    goto :goto_0

    .line 116
    :cond_4
    const-string v1, "android.bluetooth.intent.action.BOND_STATE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 117
    invoke-direct {p0, p2}, Linstall/app/LocalBluetoothDevice$BluetoothBroadcastReceiver;->processBondStateChanged(Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :cond_5
    const-string v1, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 119
    invoke-direct {p0, p2}, Linstall/app/LocalBluetoothDevice$BluetoothBroadcastReceiver;->processBluetoothStateChanged(Landroid/content/Intent;)V

    goto :goto_0

    .line 120
    :cond_6
    const-string v1, "android.bluetooth.intent.action.REMOTE_NAME_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-direct {p0, p2}, Linstall/app/LocalBluetoothDevice$BluetoothBroadcastReceiver;->processRemoteNameUpdated(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method register(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    iget-boolean v1, p0, Linstall/app/LocalBluetoothDevice$BluetoothBroadcastReceiver;->registered:Z

    if-eqz v1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 236
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 237
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v1, "android.bluetooth.intent.action.REMOTE_DEVICE_FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    const-string v1, "android.bluetooth.intent.action.DISCOVERY_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v1, "android.bluetooth.intent.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v1, "android.bluetooth.intent.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v1, "android.bluetooth.intent.action.BOND_STATE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v1, "android.bluetooth.intent.action.REMOTE_NAME_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    const/4 v1, 0x1

    iput-boolean v1, p0, Linstall/app/LocalBluetoothDevice$BluetoothBroadcastReceiver;->registered:Z

    goto :goto_0
.end method
