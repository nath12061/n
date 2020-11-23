.class final Linstall/app/LocalBluetoothDevice$BluetoothDeviceCallback;
.super Ljava/lang/Object;
.source "LocalBluetoothDevice.java"

# interfaces
.implements Linstall/app/IBluetoothDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/LocalBluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BluetoothDeviceCallback"
.end annotation


# instance fields
.field private binder:Landroid/os/IBinder;

.field final synthetic this$0:Linstall/app/LocalBluetoothDevice;


# direct methods
.method private constructor <init>(Linstall/app/LocalBluetoothDevice;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Linstall/app/LocalBluetoothDevice$BluetoothDeviceCallback;->this$0:Linstall/app/LocalBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Linstall/app/IBinder;
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return-object v0
.end method

.method public onGetRemoteServiceChannelResult(Ljava/lang/String;I)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/RemoteException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    return-void
.end method
