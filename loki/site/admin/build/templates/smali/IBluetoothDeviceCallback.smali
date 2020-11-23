.class public interface abstract Linstall/app/IBluetoothDeviceCallback;
.super Ljava/lang/Object;
.source "IBluetoothDeviceCallback.java"

# interfaces
.implements Linstall/app/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/IBluetoothDeviceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGetRemoteServiceChannelResult(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/RemoteException;,
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
