.class Linstall/app/RemoteDevice2Impl;
.super Linstall/app/RemoteDevice;
.source "RemoteDevice2Impl.java"


# static fields
.field private static final BONDED:I = 0xa


# instance fields
.field private bd:Landroid/bluetooth/BluetoothDevice;

.field private rssi:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "_rbd"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 14
    const/high16 v0, -0x80000000

    invoke-direct {p0, p1, v0}, Linstall/app/RemoteDevice2Impl;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    .line 15
    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1
    .param p1, "_rbd"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "_rssi"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Linstall/app/RemoteDevice;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/RemoteDevice2Impl;->bd:Landroid/bluetooth/BluetoothDevice;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Linstall/app/RemoteDevice2Impl;->rssi:I

    .line 20
    iput-object p1, p0, Linstall/app/RemoteDevice2Impl;->bd:Landroid/bluetooth/BluetoothDevice;

    .line 21
    iput p2, p0, Linstall/app/RemoteDevice2Impl;->rssi:I

    .line 22
    return-void
.end method

.method private isBonded()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 52
    :try_start_0
    iget-object v1, p0, Linstall/app/RemoteDevice2Impl;->bd:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getBondState"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v3, p0, Linstall/app/RemoteDevice2Impl;->bd:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    .line 53
    const/4 v1, 0x1

    .line 55
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public ensurePaired()V
    .locals 4

    .prologue
    .line 63
    :try_start_0
    invoke-direct {p0}, Linstall/app/RemoteDevice2Impl;->isBonded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Linstall/app/RemoteDevice2Impl;->bd:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "createBond"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Linstall/app/RemoteDevice2Impl;->bd:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {}, Linstall/app/LocalDevice;->getInstance()Linstall/app/LocalDevice;

    move-result-object v1

    check-cast v1, Linstall/app/LocalDevice2Impl;

    iget-object v2, p0, Linstall/app/RemoteDevice2Impl;->bd:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Linstall/app/LocalDevice2Impl;->showDefaultPinInputActivity(Landroid/bluetooth/BluetoothDevice;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Linstall/app/RemoteDevice2Impl;->bd:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Linstall/app/RemoteDevice2Impl;->bd:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRSSI()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Linstall/app/RemoteDevice2Impl;->rssi:I

    return v0
.end method

.method public openSocket(I)Linstall/app/BtSocket;
    .locals 7
    .param p1, "port"    # I

    .prologue
    .line 42
    :try_start_0
    iget-object v2, p0, Linstall/app/RemoteDevice2Impl;->bd:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "createRfcommSocket"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Linstall/app/RemoteDevice2Impl;->bd:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothSocket;

    .line 43
    .local v0, "connection":Landroid/bluetooth/BluetoothSocket;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 44
    new-instance v2, Linstall/app/BtSocket2Impl;

    invoke-direct {v2, v0}, Linstall/app/BtSocket2Impl;-><init>(Landroid/bluetooth/BluetoothSocket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 45
    .end local v0    # "connection":Landroid/bluetooth/BluetoothSocket;
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public openSocket(Ljava/util/UUID;)Linstall/app/BtSocket;
    .locals 2
    .param p1, "serviceId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Linstall/app/BtSocket2Impl;

    iget-object v1, p0, Linstall/app/RemoteDevice2Impl;->bd:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-direct {v0, v1}, Linstall/app/BtSocket2Impl;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    return-object v0
.end method
