.class public interface abstract Linstall/app/BluetoothDevice;
.super Ljava/lang/Object;
.source "BluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/BluetoothDevice$BluetoothProtocols;,
        Linstall/app/BluetoothDevice$BluetoothProfiles;,
        Linstall/app/BluetoothDevice$BluetoothClasses;
    }
.end annotation


# virtual methods
.method public abstract getAddress()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/BluetoothException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/BluetoothException;
        }
    .end annotation
.end method
