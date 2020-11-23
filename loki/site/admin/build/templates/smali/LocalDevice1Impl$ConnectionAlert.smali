.class Linstall/app/LocalDevice1Impl$ConnectionAlert;
.super Ljava/lang/Thread;
.source "LocalDevice1Impl.java"

# interfaces
.implements Linstall/app/ServerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/LocalDevice1Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionAlert"
.end annotation


# instance fields
.field private bs:Linstall/app/BluetoothSocket;

.field private listener:Linstall/app/ConnectionListener;

.field final synthetic this$0:Linstall/app/LocalDevice1Impl;


# direct methods
.method public constructor <init>(Linstall/app/LocalDevice1Impl;Linstall/app/BluetoothSocket;Linstall/app/ConnectionListener;)V
    .locals 1
    .param p2, "bs"    # Linstall/app/BluetoothSocket;
    .param p3, "listener"    # Linstall/app/ConnectionListener;

    .prologue
    const/4 v0, 0x0

    .line 37
    iput-object p1, p0, Linstall/app/LocalDevice1Impl$ConnectionAlert;->this$0:Linstall/app/LocalDevice1Impl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 34
    iput-object v0, p0, Linstall/app/LocalDevice1Impl$ConnectionAlert;->bs:Linstall/app/BluetoothSocket;

    .line 35
    iput-object v0, p0, Linstall/app/LocalDevice1Impl$ConnectionAlert;->listener:Linstall/app/ConnectionListener;

    .line 38
    iput-object p2, p0, Linstall/app/LocalDevice1Impl$ConnectionAlert;->bs:Linstall/app/BluetoothSocket;

    .line 39
    iput-object p3, p0, Linstall/app/LocalDevice1Impl$ConnectionAlert;->listener:Linstall/app/ConnectionListener;

    .line 40
    return-void
.end method


# virtual methods
.method public halt()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Linstall/app/LocalDevice1Impl$ConnectionAlert;->bs:Linstall/app/BluetoothSocket;

    invoke-interface {v0}, Linstall/app/BluetoothSocket;->closeSocket()V

    .line 44
    invoke-virtual {p0}, Linstall/app/LocalDevice1Impl$ConnectionAlert;->interrupt()V

    .line 45
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 49
    :try_start_0
    iget-object v2, p0, Linstall/app/LocalDevice1Impl$ConnectionAlert;->bs:Linstall/app/BluetoothSocket;

    const v3, 0x7fffffff

    invoke-interface {v2, v3}, Linstall/app/BluetoothSocket;->accept(I)Linstall/app/BluetoothSocket;

    move-result-object v1

    .line 50
    .local v1, "newSock":Linstall/app/BluetoothSocket;
    const-string v2, "connection unlocked"

    invoke-static {p0, v2}, Linstall/app/Logger;->m0d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Linstall/app/LocalDevice1Impl$ConnectionAlert;->listener:Linstall/app/ConnectionListener;

    new-instance v3, Linstall/app/BtSocket1Impl;

    invoke-direct {v3, v1}, Linstall/app/BtSocket1Impl;-><init>(Linstall/app/BluetoothSocket;)V

    invoke-virtual {v2, v3}, Linstall/app/ConnectionListener;->notifyConnectionWaiting(Linstall/app/BtSocket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "newSock":Linstall/app/BluetoothSocket;
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    iget-object v2, p0, Linstall/app/LocalDevice1Impl$ConnectionAlert;->listener:Linstall/app/ConnectionListener;

    invoke-virtual {v2}, Linstall/app/ConnectionListener;->notifyConnectionError()V

    goto :goto_0
.end method
