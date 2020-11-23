.class public final Linstall/app/LocalBluetoothDevice;
.super Ljava/lang/Object;
.source "LocalBluetoothDevice.java"

# interfaces
.implements Linstall/app/BluetoothDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/LocalBluetoothDevice$BluetoothDeviceCallback;,
        Linstall/app/LocalBluetoothDevice$BluetoothBroadcastReceiver;,
        Linstall/app/LocalBluetoothDevice$AndroidBluetoothConstants;
    }
.end annotation


# static fields
.field private static final METHOD_GET_SCAN_MODE:Ljava/lang/String; = "getScanMode"

.field private static final METHOD_SET_SCAN_MODE:Ljava/lang/String; = "setScanMode"

.field private static PLATFORM_SCAN_MODE_CONNECTABLE:I = 0x0

.field private static PLATFORM_SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x0

.field private static PLATFORM_SCAN_MODE_NONE:I = 0x0

.field public static final SCAN_MODE_CONNECTABLE:I = 0x1

.field public static final SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x3

.field public static final SCAN_MODE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LocalBluetoothDevice"

.field private static _localDevice:Linstall/app/LocalBluetoothDevice;

.field private static bluetoothBroadcastReceiver:Linstall/app/LocalBluetoothDevice$BluetoothBroadcastReceiver;

.field private static bluetoothService:Ljava/lang/Object;

.field private static bluetoothServiceClass:Ljava/lang/Class;


# instance fields
.field private context:Landroid/content/Context;

.field private devices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Linstall/app/LocalBluetoothDeviceListener;

.field private notificationManager:Landroid/app/NotificationManager;

.field private remoteDevices:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Linstall/app/RemoteBluetoothDeviceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private serverSockets:Ljava/util/Hashtable;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput v0, Linstall/app/LocalBluetoothDevice;->PLATFORM_SCAN_MODE_CONNECTABLE:I

    .line 25
    sput v0, Linstall/app/LocalBluetoothDevice;->PLATFORM_SCAN_MODE_CONNECTABLE_DISCOVERABLE:I

    .line 26
    sput v0, Linstall/app/LocalBluetoothDevice;->PLATFORM_SCAN_MODE_NONE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linstall/app/LocalBluetoothDevice;->devices:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Linstall/app/LocalBluetoothDevice;->remoteDevices:Ljava/util/Hashtable;

    .line 40
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Linstall/app/LocalBluetoothDevice;->serverSockets:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic access$000()Linstall/app/LocalBluetoothDevice;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Linstall/app/LocalBluetoothDevice;->_localDevice:Linstall/app/LocalBluetoothDevice;

    return-object v0
.end method

.method static synthetic access$100(Linstall/app/LocalBluetoothDevice;)Linstall/app/LocalBluetoothDeviceListener;
    .locals 1
    .param p0, "x0"    # Linstall/app/LocalBluetoothDevice;

    .prologue
    .line 21
    iget-object v0, p0, Linstall/app/LocalBluetoothDevice;->listener:Linstall/app/LocalBluetoothDeviceListener;

    return-object v0
.end method

.method static synthetic access$200(Linstall/app/LocalBluetoothDevice;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Linstall/app/LocalBluetoothDevice;

    .prologue
    .line 21
    iget-object v0, p0, Linstall/app/LocalBluetoothDevice;->remoteDevices:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$300(Linstall/app/LocalBluetoothDevice;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Linstall/app/LocalBluetoothDevice;

    .prologue
    .line 21
    iget-object v0, p0, Linstall/app/LocalBluetoothDevice;->devices:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/BluetoothException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/BluetoothException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public onGetRemoteServiceChannelResult(Ljava/lang/String;I)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "intero"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 277
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method onGetRemoteServiceChannelResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 278
    return-void
.end method
