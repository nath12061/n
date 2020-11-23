.class Linstall/app/IBluetoothDeviceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothDeviceCallback.java"

# interfaces
.implements Linstall/app/IBluetoothDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/IBluetoothDeviceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Linstall/app/IBinder;


# direct methods
.method constructor <init>(Linstall/app/IBinder;)V
    .locals 0
    .param p1, "remote"    # Linstall/app/IBinder;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Linstall/app/IBluetoothDeviceCallback$Stub$Proxy;->mRemote:Linstall/app/IBinder;

    .line 14
    return-void
.end method


# virtual methods
.method public asBinder()Linstall/app/IBinder;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Linstall/app/IBluetoothDeviceCallback$Stub$Proxy;->mRemote:Linstall/app/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "install.app.IBluetoothDeviceCallback"

    return-object v0
.end method

.method public onGetRemoteServiceChannelResult(Ljava/lang/String;I)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/RemoteException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Linstall/app/Parcel;->obtain()Linstall/app/Parcel;

    move-result-object v0

    .line 27
    .local v0, "_data":Linstall/app/Parcel;
    :try_start_0
    const-string v1, "install.app.IBluetoothDeviceCallback"

    invoke-virtual {v0, v1}, Linstall/app/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p1}, Linstall/app/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, p2}, Linstall/app/Parcel;->writeInt(I)V

    .line 30
    iget-object v1, p0, Linstall/app/IBluetoothDeviceCallback$Stub$Proxy;->mRemote:Linstall/app/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Linstall/app/IBinder;->transact(ILinstall/app/Parcel;Linstall/app/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {v0}, Linstall/app/Parcel;->recycle()V

    .line 34
    return-void

    .line 32
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Linstall/app/Parcel;->recycle()V

    throw v1
.end method
