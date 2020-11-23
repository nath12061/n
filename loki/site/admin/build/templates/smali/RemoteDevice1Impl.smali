.class abstract Linstall/app/RemoteDevice1Impl;
.super Linstall/app/RemoteDevice;
.source "RemoteDevice1Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/RemoteDevice1Impl$C00071;
    }
.end annotation


# instance fields
.field private rbd:Linstall/app/RemoteBluetoothDevice;


# direct methods
.method constructor <init>(Linstall/app/RemoteBluetoothDevice;)V
    .locals 1
    .param p1, "_rbd"    # Linstall/app/RemoteBluetoothDevice;

    .prologue
    .line 25
    invoke-direct {p0}, Linstall/app/RemoteDevice;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/RemoteDevice1Impl;->rbd:Linstall/app/RemoteBluetoothDevice;

    .line 26
    iput-object p1, p0, Linstall/app/RemoteDevice1Impl;->rbd:Linstall/app/RemoteBluetoothDevice;

    .line 27
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Linstall/app/RemoteDevice1Impl;->rbd:Linstall/app/RemoteBluetoothDevice;

    invoke-interface {v0}, Linstall/app/RemoteBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    :try_start_0
    iget-object v1, p0, Linstall/app/RemoteDevice1Impl;->rbd:Linstall/app/RemoteBluetoothDevice;

    invoke-interface {v1}, Linstall/app/RemoteBluetoothDevice;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 33
    :goto_0
    return-object v1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
