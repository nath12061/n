.class public interface abstract Linstall/app/RemoteBluetoothDevice;
.super Ljava/lang/Object;
.source "RemoteBluetoothDevice.java"

# interfaces
.implements Linstall/app/BluetoothDevice;


# virtual methods
.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getDeviceClass()I
.end method

.method public abstract getDeviceMajorClass()I
.end method

.method public abstract getDeviceMinorClass()I
.end method

.method public abstract getRSSI()S
.end method

.method public abstract getRemoteServiceChannel(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getServiceMajorClass()I
.end method

.method public abstract isPaired()Z
.end method

.method public abstract openSocket(I)Linstall/app/BluetoothSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/BluetoothException;
        }
    .end annotation
.end method

.method public abstract pair()V
.end method

.method public abstract pair(Ljava/lang/String;)V
.end method

.method public abstract setListener(Linstall/app/RemoteBluetoothDeviceListener;)V
.end method

.method public abstract setPin(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/BluetoothException;
        }
    .end annotation
.end method

.method public abstract unpair()V
.end method
