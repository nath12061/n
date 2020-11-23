.class public abstract Linstall/app/IBluetoothDeviceCallback$Stub;
.super Linstall/app/Binder;
.source "IBluetoothDeviceCallback.java"

# interfaces
.implements Linstall/app/IBluetoothDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/IBluetoothDeviceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/IBluetoothDeviceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "install.app.IBluetoothDeviceCallback"

.field static final TRANSACTION_onGetRemoteServiceChannelResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Linstall/app/Binder;-><init>()V

    .line 38
    const-string v0, "install.app.IBluetoothDeviceCallback"

    invoke-virtual {p0, p0, v0}, Linstall/app/IBluetoothDeviceCallback$Stub;->attachInterface(Linstall/app/IBluetoothDeviceCallback$Stub;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static asInterface(Linstall/app/IBinder;)Linstall/app/IBluetoothDeviceCallback;
    .locals 2
    .param p0, "obj"    # Linstall/app/IBinder;

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 47
    :cond_0
    const-string v1, "install.app.IBluetoothDeviceCallback"

    invoke-interface {p0, v1}, Linstall/app/IBinder;->queryLocalInterface(Ljava/lang/String;)Linstall/app/IInterface;

    move-result-object v0

    .line 48
    .local v0, "iin":Linstall/app/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Linstall/app/IBluetoothDeviceCallback;

    if-nez v1, :cond_2

    .line 49
    :cond_1
    new-instance v0, Linstall/app/IBluetoothDeviceCallback$Stub$Proxy;

    .end local v0    # "iin":Linstall/app/IInterface;
    invoke-direct {v0, p0}, Linstall/app/IBluetoothDeviceCallback$Stub$Proxy;-><init>(Linstall/app/IBinder;)V

    goto :goto_0

    .line 51
    .restart local v0    # "iin":Linstall/app/IInterface;
    :cond_2
    check-cast v0, Linstall/app/IBluetoothDeviceCallback;

    goto :goto_0
.end method


# virtual methods
.method protected abstract attachInterface(Linstall/app/IBluetoothDeviceCallback$Stub;Ljava/lang/String;)V
.end method

.method public onTransact(ILinstall/app/Parcel;Linstall/app/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Linstall/app/Parcel;
    .param p3, "reply"    # Linstall/app/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/RemoteException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 56
    sparse-switch p1, :sswitch_data_0

    .line 66
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 58
    :sswitch_0
    const-string v1, "install.app.IBluetoothDeviceCallback"

    invoke-virtual {p2, v1}, Linstall/app/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Linstall/app/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Linstall/app/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Linstall/app/IBluetoothDeviceCallback$Stub;->onGetRemoteServiceChannelResult(Ljava/lang/String;I)V

    goto :goto_0

    .line 62
    :sswitch_1
    const-string v1, "install.app.IBluetoothDeviceCallback"

    invoke-virtual {p3, v1}, Linstall/app/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5f4e5446 -> :sswitch_1
    .end sparse-switch
.end method
