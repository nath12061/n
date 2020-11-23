.class final Linstall/app/BluetoothSocketImpl;
.super Ljava/lang/Object;
.source "LocalBluetoothDevice.java"

# interfaces
.implements Linstall/app/BluetoothSocket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/BluetoothSocketImpl$BluetoothOutputStream;,
        Linstall/app/BluetoothSocketImpl$BluetoothInputStream;
    }
.end annotation


# static fields
.field private static final CLASS_ANDROID_BLUETOOTH_RFCOMMSOCKET:Ljava/lang/String; = "android.bluetooth.RfcommSocket"

.field private static final METHOD_ACCEPT:Ljava/lang/String; = "accept"

.field private static final METHOD_BIND:Ljava/lang/String; = "bind"

.field private static final METHOD_CONNECT:Ljava/lang/String; = "connect"

.field private static final METHOD_CREATE:Ljava/lang/String; = "create"

.field private static final METHOD_GET_PORT:Ljava/lang/String; = "getPort"

.field private static final METHOD_LISTEN:Ljava/lang/String; = "listen"

.field private static final METHOD_SHUTDOWN_INPUT:Ljava/lang/String; = "shutdownInput"

.field private static final METHOD_SHUTDOWN_OUTPUT:Ljava/lang/String; = "shutdownOutput"


# instance fields
.field private bluetoothSocketClass:Ljava/lang/Class;

.field private bluetoothSocketObject:Ljava/lang/Object;

.field private inputStream:Linstall/app/BluetoothSocketImpl$BluetoothInputStream;

.field private outputStream:Linstall/app/BluetoothSocketImpl$BluetoothOutputStream;

.field private port:I

.field private remoteBluetoothDevice:Linstall/app/RemoteBluetoothDeviceImpl;


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/BluetoothException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/BluetoothException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput p1, p0, Linstall/app/BluetoothSocketImpl;->port:I

    .line 394
    invoke-virtual {p0}, Linstall/app/BluetoothSocketImpl;->bindAndListen()V

    .line 395
    return-void
.end method

.method constructor <init>(Linstall/app/RemoteBluetoothDeviceImpl;I)V
    .locals 2
    .param p1, "remoteBluetoothDevice"    # Linstall/app/RemoteBluetoothDeviceImpl;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/BluetoothException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    if-lez p2, :cond_0

    .line 382
    iput-object p1, p0, Linstall/app/BluetoothSocketImpl;->remoteBluetoothDevice:Linstall/app/RemoteBluetoothDeviceImpl;

    .line 383
    iput p2, p0, Linstall/app/BluetoothSocketImpl;->port:I

    .line 384
    return-void

    .line 386
    :cond_0
    new-instance v0, Linstall/app/BluetoothException;

    const-string v1, "Channel must be > 0!"

    invoke-direct {v0, v1}, Linstall/app/BluetoothException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Linstall/app/BluetoothSocketImpl;)V
    .locals 0
    .param p0, "x0"    # Linstall/app/BluetoothSocketImpl;

    .prologue
    .line 282
    invoke-direct {p0}, Linstall/app/BluetoothSocketImpl;->closeInputStream()V

    return-void
.end method

.method static synthetic access$100(Linstall/app/BluetoothSocketImpl;)V
    .locals 0
    .param p0, "x0"    # Linstall/app/BluetoothSocketImpl;

    .prologue
    .line 282
    invoke-direct {p0}, Linstall/app/BluetoothSocketImpl;->closeOutputStream()V

    return-void
.end method

.method private closeInputStream()V
    .locals 3

    .prologue
    .line 445
    :try_start_0
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketClass:Ljava/lang/Class;

    const-string v1, "shutdownInput"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketObject:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private closeOutputStream()V
    .locals 3

    .prologue
    .line 452
    :try_start_0
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketClass:Ljava/lang/Class;

    const-string v1, "shutdownOutput"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketObject:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_0
    return-void

    .line 453
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private createSocketObject()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 399
    :try_start_0
    iget-object v1, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketObject:Ljava/lang/Object;

    .line 400
    iget-object v1, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketClass:Ljava/lang/Class;

    const-string v2, "create"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketObject:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v1, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketObject:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    return-object v1

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public accept(I)Linstall/app/BluetoothSocket;
    .locals 9
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/BluetoothException;
        }
    .end annotation

    .prologue
    .line 420
    :try_start_0
    iget-object v4, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketClass:Ljava/lang/Class;

    invoke-static {v4}, Linstall/app/ReflectionUtils;->printMethods(Ljava/lang/Class;)V

    .line 421
    iget-object v4, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketClass:Ljava/lang/Class;

    const-string v5, "accept"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    iget-object v8, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketClass:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 422
    .local v0, "bindMethod":Ljava/lang/reflect/Method;
    new-instance v3, Linstall/app/BluetoothSocketImpl;

    invoke-direct {v3}, Linstall/app/BluetoothSocketImpl;-><init>()V

    .line 423
    .local v3, "toRet":Linstall/app/BluetoothSocketImpl;
    invoke-direct {p0}, Linstall/app/BluetoothSocketImpl;->createSocketObject()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Linstall/app/BluetoothSocketImpl;->bluetoothSocketObject:Ljava/lang/Object;

    .line 424
    iget-object v4, v3, Linstall/app/BluetoothSocketImpl;->bluetoothSocketObject:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketObject:Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 429
    .end local v0    # "bindMethod":Ljava/lang/reflect/Method;
    .end local v3    # "toRet":Linstall/app/BluetoothSocketImpl;
    :goto_0
    return-object v3

    .line 426
    :catch_0
    move-exception v2

    .line 427
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v4, Linstall/app/BluetoothException;

    invoke-direct {v4, v2}, Linstall/app/BluetoothException;-><init>(Ljava/lang/Throwable;)V

    .line 429
    const/4 v3, 0x0

    goto :goto_0
.end method

.method bindAndListen()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/BluetoothException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p0}, Linstall/app/BluetoothSocketImpl;->init()V

    .line 435
    :try_start_0
    iget-object v3, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketClass:Ljava/lang/Class;

    const-string v4, "bind"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketObject:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "devicename-tobeignored"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 436
    .local v0, "bindMethodReturnValue":Ljava/lang/Object;
    iget-object v3, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketClass:Ljava/lang/Class;

    const-string v4, "listen"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketObject:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Linstall/app/BluetoothSocketImpl;->port:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 437
    .local v1, "listenMethodReturnValue":Ljava/lang/Object;
    iget-object v3, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketClass:Ljava/lang/Class;

    const-string v4, "getPort"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketObject:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Linstall/app/BluetoothSocketImpl;->port:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .end local v0    # "bindMethodReturnValue":Ljava/lang/Object;
    .end local v1    # "listenMethodReturnValue":Ljava/lang/Object;
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v2

    .line 439
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Linstall/app/BluetoothException;

    invoke-direct {v3, v2}, Linstall/app/BluetoothException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public closeSocket()V
    .locals 3

    .prologue
    .line 476
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl;->inputStream:Linstall/app/BluetoothSocketImpl$BluetoothInputStream;

    if-eqz v0, :cond_0

    .line 478
    :try_start_0
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl;->inputStream:Linstall/app/BluetoothSocketImpl$BluetoothInputStream;

    invoke-virtual {v0}, Linstall/app/BluetoothSocketImpl$BluetoothInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 482
    :cond_0
    :goto_0
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl;->outputStream:Linstall/app/BluetoothSocketImpl$BluetoothOutputStream;

    if-eqz v0, :cond_1

    .line 484
    :try_start_1
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl;->outputStream:Linstall/app/BluetoothSocketImpl$BluetoothOutputStream;

    invoke-virtual {v0}, Linstall/app/BluetoothSocketImpl$BluetoothOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 489
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketClass:Ljava/lang/Class;

    const-string v1, "destroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketObject:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 492
    :goto_2
    return-void

    .line 490
    :catch_0
    move-exception v0

    goto :goto_2

    .line 485
    :catch_1
    move-exception v0

    goto :goto_1

    .line 479
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method getBluetoothSocketObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 462
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl;->inputStream:Linstall/app/BluetoothSocketImpl$BluetoothInputStream;

    if-nez v0, :cond_0

    .line 463
    new-instance v1, Linstall/app/BluetoothSocketImpl$BluetoothInputStream;

    iget-object v0, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketClass:Ljava/lang/Class;

    const-string v2, "getInputStream"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketObject:Ljava/lang/Object;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {v1, p0, v0}, Linstall/app/BluetoothSocketImpl$BluetoothInputStream;-><init>(Linstall/app/BluetoothSocketImpl;Ljava/io/InputStream;)V

    iput-object v1, p0, Linstall/app/BluetoothSocketImpl;->inputStream:Linstall/app/BluetoothSocketImpl$BluetoothInputStream;

    .line 465
    :cond_0
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl;->inputStream:Linstall/app/BluetoothSocketImpl$BluetoothInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 469
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl;->outputStream:Linstall/app/BluetoothSocketImpl$BluetoothOutputStream;

    if-nez v0, :cond_0

    .line 470
    new-instance v1, Linstall/app/BluetoothSocketImpl$BluetoothOutputStream;

    iget-object v0, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketClass:Ljava/lang/Class;

    const-string v2, "getOutputStream"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketObject:Ljava/lang/Object;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    invoke-direct {v1, p0, v0}, Linstall/app/BluetoothSocketImpl$BluetoothOutputStream;-><init>(Linstall/app/BluetoothSocketImpl;Ljava/io/OutputStream;)V

    iput-object v1, p0, Linstall/app/BluetoothSocketImpl;->outputStream:Linstall/app/BluetoothSocketImpl$BluetoothOutputStream;

    .line 472
    :cond_0
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl;->outputStream:Linstall/app/BluetoothSocketImpl$BluetoothOutputStream;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Linstall/app/BluetoothSocketImpl;->port:I

    return v0
.end method

.method public getRemoteBluetoothDevice()Linstall/app/RemoteBluetoothDevice;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl;->remoteBluetoothDevice:Linstall/app/RemoteBluetoothDeviceImpl;

    return-object v0
.end method

.method init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/BluetoothException;
        }
    .end annotation

    .prologue
    .line 409
    :try_start_0
    const-string v1, "android.bluetooth.RfcommSocket"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketClass:Ljava/lang/Class;

    .line 410
    invoke-direct {p0}, Linstall/app/BluetoothSocketImpl;->createSocketObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Linstall/app/BluetoothSocketImpl;->bluetoothSocketObject:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Linstall/app/BluetoothException;

    invoke-direct {v1, v0}, Linstall/app/BluetoothException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
