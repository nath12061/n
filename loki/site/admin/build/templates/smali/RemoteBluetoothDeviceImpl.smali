.class final Linstall/app/RemoteBluetoothDeviceImpl;
.super Ljava/lang/Object;
.source "LocalBluetoothDevice.java"

# interfaces
.implements Linstall/app/RemoteBluetoothDevice;


# static fields
.field private static final MAJOR_DEVICE_CLASS_MASK:I = 0x1f00

.field private static final MAJOR_SERVICE_CLASS_MASK:I = 0xffe000

.field private static final MINOR_DEVICE_CLASS_MASK:I = 0xfc


# instance fields
.field private address:Ljava/lang/String;

.field private deviceClass:I

.field private lastServiceUUIDqueried:I

.field private listener:Linstall/app/RemoteBluetoothDeviceListener;

.field private name:Ljava/lang/String;

.field private rssi:S

.field private services:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sockets:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Linstall/app/BluetoothSocketImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Linstall/app/LocalBluetoothDevice;Ljava/lang/String;)V
    .locals 2
    .param p1, "localBluetoothDevice"    # Linstall/app/LocalBluetoothDevice;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 525
    const/4 v0, 0x0

    const/16 v1, -0x8000

    invoke-direct {p0, p2, v0, v1}, Linstall/app/RemoteBluetoothDeviceImpl;-><init>(Ljava/lang/String;IS)V

    .line 526
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IS)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "deviceClass"    # I
    .param p3, "rssi"    # S

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Linstall/app/RemoteBluetoothDeviceImpl;->sockets:Ljava/util/Hashtable;

    .line 518
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Linstall/app/RemoteBluetoothDeviceImpl;->services:Ljava/util/Hashtable;

    .line 519
    iput-object p1, p0, Linstall/app/RemoteBluetoothDeviceImpl;->address:Ljava/lang/String;

    .line 520
    iput p2, p0, Linstall/app/RemoteBluetoothDeviceImpl;->deviceClass:I

    .line 521
    iput-short p3, p0, Linstall/app/RemoteBluetoothDeviceImpl;->rssi:S

    .line 522
    return-void
.end method

.method private createRemoteBluetoothDevice(Ljava/lang/String;IS)Linstall/app/RemoteBluetoothDeviceImpl;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "deviceClass"    # I
    .param p3, "rssi"    # S

    .prologue
    .line 677
    new-instance v0, Linstall/app/RemoteBluetoothDeviceImpl;

    invoke-direct {v0, p1, p2, p3}, Linstall/app/RemoteBluetoothDeviceImpl;-><init>(Ljava/lang/String;IS)V

    return-object v0
.end method


# virtual methods
.method dispose()V
    .locals 4

    .prologue
    .line 629
    iget-object v2, p0, Linstall/app/RemoteBluetoothDeviceImpl;->sockets:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 630
    .local v1, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 632
    :try_start_0
    iget-object v2, p0, Linstall/app/RemoteBluetoothDeviceImpl;->sockets:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linstall/app/BluetoothSocketImpl;

    invoke-virtual {v2}, Linstall/app/BluetoothSocketImpl;->closeSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 637
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceClass()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Linstall/app/RemoteBluetoothDeviceImpl;->deviceClass:I

    if-nez v0, :cond_0

    .line 559
    :cond_0
    iget v0, p0, Linstall/app/RemoteBluetoothDeviceImpl;->deviceClass:I

    return v0
.end method

.method public getDeviceMajorClass()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Linstall/app/RemoteBluetoothDeviceImpl;->deviceClass:I

    and-int/lit16 v0, v0, 0x1f00

    return v0
.end method

.method public getDeviceMinorClass()I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Linstall/app/RemoteBluetoothDeviceImpl;->deviceClass:I

    and-int/lit16 v0, v0, 0xfc

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/BluetoothException;
        }
    .end annotation

    .prologue
    .line 550
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRSSI()S
    .locals 1

    .prologue
    .line 536
    iget-short v0, p0, Linstall/app/RemoteBluetoothDeviceImpl;->rssi:S

    return v0
.end method

.method public getRemoteServiceChannel(I)V
    .locals 3
    .param p1, "uuid16"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 664
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 665
    .local v1, "uuid":Ljava/lang/Integer;
    iget-object v2, p0, Linstall/app/RemoteBluetoothDeviceImpl;->services:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 666
    iget-object v2, p0, Linstall/app/RemoteBluetoothDeviceImpl;->services:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 667
    .local v0, "channel":I
    iput p1, p0, Linstall/app/RemoteBluetoothDeviceImpl;->lastServiceUUIDqueried:I

    .line 668
    invoke-virtual {p0, v0}, Linstall/app/RemoteBluetoothDeviceImpl;->notifyServiceChannel(I)V

    .line 672
    .end local v0    # "channel":I
    :goto_0
    return-void

    .line 671
    :cond_0
    iput p1, p0, Linstall/app/RemoteBluetoothDeviceImpl;->lastServiceUUIDqueried:I

    goto :goto_0
.end method

.method public getServiceMajorClass()I
    .locals 2

    .prologue
    .line 571
    iget v0, p0, Linstall/app/RemoteBluetoothDeviceImpl;->deviceClass:I

    const v1, 0xffe000

    and-int/2addr v0, v1

    return v0
.end method

.method public isPaired()Z
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method notifyPaired()V
    .locals 1

    .prologue
    .line 594
    :try_start_0
    iget-object v0, p0, Linstall/app/RemoteBluetoothDeviceImpl;->listener:Linstall/app/RemoteBluetoothDeviceListener;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Linstall/app/RemoteBluetoothDeviceImpl;->listener:Linstall/app/RemoteBluetoothDeviceListener;

    invoke-interface {v0}, Linstall/app/RemoteBluetoothDeviceListener;->paired()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 597
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method notifyPairingRequested()V
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Linstall/app/RemoteBluetoothDeviceImpl;->listener:Linstall/app/RemoteBluetoothDeviceListener;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Linstall/app/RemoteBluetoothDeviceImpl;->listener:Linstall/app/RemoteBluetoothDeviceListener;

    invoke-interface {v0}, Linstall/app/RemoteBluetoothDeviceListener;->pinRequested()V

    .line 643
    :cond_0
    return-void
.end method

.method notifyServiceChannel(I)V
    .locals 4
    .param p1, "channel"    # I

    .prologue
    const/4 v3, -0x1

    .line 646
    iget v1, p0, Linstall/app/RemoteBluetoothDeviceImpl;->lastServiceUUIDqueried:I

    if-eq v1, v3, :cond_1

    .line 647
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Linstall/app/RemoteBluetoothDeviceImpl;->lastServiceUUIDqueried:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 648
    .local v0, "uuid":Ljava/lang/Integer;
    iget-object v1, p0, Linstall/app/RemoteBluetoothDeviceImpl;->services:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    iget-object v1, p0, Linstall/app/RemoteBluetoothDeviceImpl;->listener:Linstall/app/RemoteBluetoothDeviceListener;

    if-eqz v1, :cond_0

    .line 650
    if-lez p1, :cond_2

    .line 652
    :try_start_0
    iget-object v1, p0, Linstall/app/RemoteBluetoothDeviceImpl;->listener:Linstall/app/RemoteBluetoothDeviceListener;

    iget v2, p0, Linstall/app/RemoteBluetoothDeviceImpl;->lastServiceUUIDqueried:I

    invoke-interface {v1, v2, p1}, Linstall/app/RemoteBluetoothDeviceListener;->gotServiceChannel(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :cond_0
    :goto_0
    iput v3, p0, Linstall/app/RemoteBluetoothDeviceImpl;->lastServiceUUIDqueried:I

    .line 661
    .end local v0    # "uuid":Ljava/lang/Integer;
    :cond_1
    return-void

    .line 656
    .restart local v0    # "uuid":Ljava/lang/Integer;
    :cond_2
    iget-object v1, p0, Linstall/app/RemoteBluetoothDeviceImpl;->listener:Linstall/app/RemoteBluetoothDeviceListener;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Linstall/app/RemoteBluetoothDeviceListener;->serviceChannelNotAvailable(I)V

    goto :goto_0

    .line 653
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public openServerSocket(I)Linstall/app/BluetoothSocket;
    .locals 1
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/BluetoothException;
        }
    .end annotation

    .prologue
    .line 687
    new-instance v0, Linstall/app/BluetoothSocketImpl;

    invoke-direct {v0, p1}, Linstall/app/BluetoothSocketImpl;-><init>(I)V

    return-object v0
.end method

.method public openSocket(I)Linstall/app/BluetoothSocket;
    .locals 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/BluetoothException;
        }
    .end annotation

    .prologue
    .line 610
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 611
    .local v0, "portKey":Ljava/lang/Integer;
    iget-object v2, p0, Linstall/app/RemoteBluetoothDeviceImpl;->sockets:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 612
    iget-object v2, p0, Linstall/app/RemoteBluetoothDeviceImpl;->sockets:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linstall/app/BluetoothSocketImpl;

    .line 616
    :goto_0
    return-object v2

    .line 614
    :cond_0
    new-instance v1, Linstall/app/BluetoothSocketImpl;

    invoke-direct {v1, p0, p1}, Linstall/app/BluetoothSocketImpl;-><init>(Linstall/app/RemoteBluetoothDeviceImpl;I)V

    .line 615
    .local v1, "socket":Linstall/app/BluetoothSocketImpl;
    iget-object v2, p0, Linstall/app/RemoteBluetoothDeviceImpl;->sockets:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 616
    goto :goto_0
.end method

.method public pair()V
    .locals 0

    .prologue
    .line 622
    return-void
.end method

.method public pair(Ljava/lang/String;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 606
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setListener(Linstall/app/RemoteBluetoothDeviceListener;)V
    .locals 0
    .param p1, "listener"    # Linstall/app/RemoteBluetoothDeviceListener;

    .prologue
    .line 625
    iput-object p1, p0, Linstall/app/RemoteBluetoothDeviceImpl;->listener:Linstall/app/RemoteBluetoothDeviceListener;

    .line 626
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 532
    iput-object p1, p0, Linstall/app/RemoteBluetoothDeviceImpl;->name:Ljava/lang/String;

    .line 533
    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/BluetoothException;
        }
    .end annotation

    .prologue
    .line 584
    return-void
.end method

.method setRSSI(S)V
    .locals 0
    .param p1, "rssi"    # S

    .prologue
    .line 540
    iput-short p1, p0, Linstall/app/RemoteBluetoothDeviceImpl;->rssi:S

    .line 541
    return-void
.end method

.method public unpair()V
    .locals 0

    .prologue
    .line 589
    return-void
.end method
