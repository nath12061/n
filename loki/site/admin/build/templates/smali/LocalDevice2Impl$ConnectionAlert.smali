.class Linstall/app/LocalDevice2Impl$ConnectionAlert;
.super Ljava/lang/Thread;
.source "LocalDevice2Impl.java"

# interfaces
.implements Linstall/app/ServerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/LocalDevice2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionAlert"
.end annotation


# instance fields
.field private connection:Landroid/bluetooth/BluetoothServerSocket;

.field private listener:Linstall/app/ConnectionListener;

.field final synthetic this$0:Linstall/app/LocalDevice2Impl;


# direct methods
.method public constructor <init>(Linstall/app/LocalDevice2Impl;Landroid/bluetooth/BluetoothServerSocket;Linstall/app/ConnectionListener;)V
    .locals 1
    .param p2, "connection"    # Landroid/bluetooth/BluetoothServerSocket;
    .param p3, "listener"    # Linstall/app/ConnectionListener;

    .prologue
    const/4 v0, 0x0

    .line 39
    iput-object p1, p0, Linstall/app/LocalDevice2Impl$ConnectionAlert;->this$0:Linstall/app/LocalDevice2Impl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 36
    iput-object v0, p0, Linstall/app/LocalDevice2Impl$ConnectionAlert;->connection:Landroid/bluetooth/BluetoothServerSocket;

    .line 37
    iput-object v0, p0, Linstall/app/LocalDevice2Impl$ConnectionAlert;->listener:Linstall/app/ConnectionListener;

    .line 40
    iput-object p2, p0, Linstall/app/LocalDevice2Impl$ConnectionAlert;->connection:Landroid/bluetooth/BluetoothServerSocket;

    .line 41
    iput-object p3, p0, Linstall/app/LocalDevice2Impl$ConnectionAlert;->listener:Linstall/app/ConnectionListener;

    .line 42
    return-void
.end method


# virtual methods
.method public halt()V
    .locals 2

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Linstall/app/LocalDevice2Impl$ConnectionAlert;->connection:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    invoke-virtual {p0}, Linstall/app/LocalDevice2Impl$ConnectionAlert;->interrupt()V

    .line 62
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 46
    :try_start_0
    iget-object v2, p0, Linstall/app/LocalDevice2Impl$ConnectionAlert;->connection:Landroid/bluetooth/BluetoothServerSocket;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothServerSocket;->accept(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 47
    .local v0, "bts":Landroid/bluetooth/BluetoothSocket;
    const-string v2, "connection unlocked"

    invoke-static {p0, v2}, Linstall/app/Logger;->m0d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Linstall/app/LocalDevice2Impl$ConnectionAlert;->listener:Linstall/app/ConnectionListener;

    new-instance v3, Linstall/app/BtSocket2Impl;

    invoke-direct {v3, v0}, Linstall/app/BtSocket2Impl;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    invoke-virtual {v2, v3}, Linstall/app/ConnectionListener;->notifyConnectionWaiting(Linstall/app/BtSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "bts":Landroid/bluetooth/BluetoothSocket;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 51
    iget-object v2, p0, Linstall/app/LocalDevice2Impl$ConnectionAlert;->listener:Linstall/app/ConnectionListener;

    invoke-virtual {v2}, Linstall/app/ConnectionListener;->notifyConnectionError()V

    goto :goto_0
.end method
