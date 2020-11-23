.class public interface abstract Linstall/app/BluetoothSocket;
.super Ljava/lang/Object;
.source "BluetoothSocket.java"


# virtual methods
.method public abstract accept(I)Linstall/app/BluetoothSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract closeSocket()V
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getPort()I
.end method

.method public abstract getRemoteBluetoothDevice()Linstall/app/RemoteBluetoothDevice;
.end method
