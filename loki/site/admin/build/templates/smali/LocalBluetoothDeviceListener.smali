.class public interface abstract Linstall/app/LocalBluetoothDeviceListener;
.super Ljava/lang/Object;
.source "LocalBluetoothDeviceListener.java"


# virtual methods
.method public abstract bluetoothDisabled()V
.end method

.method public abstract bluetoothEnabled()V
.end method

.method public abstract deviceFound(Ljava/lang/String;)V
.end method

.method public abstract scanCompleted(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract scanStarted()V
.end method
