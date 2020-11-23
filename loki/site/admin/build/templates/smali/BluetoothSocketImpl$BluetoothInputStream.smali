.class Linstall/app/BluetoothSocketImpl$BluetoothInputStream;
.super Ljava/io/InputStream;
.source "LocalBluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/BluetoothSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothInputStream"
.end annotation


# instance fields
.field private target:Ljava/io/InputStream;

.field final synthetic this$0:Linstall/app/BluetoothSocketImpl;


# direct methods
.method public constructor <init>(Linstall/app/BluetoothSocketImpl;Ljava/io/InputStream;)V
    .locals 0
    .param p2, "source"    # Ljava/io/InputStream;

    .prologue
    .line 302
    iput-object p1, p0, Linstall/app/BluetoothSocketImpl$BluetoothInputStream;->this$0:Linstall/app/BluetoothSocketImpl;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 303
    iput-object p2, p0, Linstall/app/BluetoothSocketImpl$BluetoothInputStream;->target:Ljava/io/InputStream;

    .line 304
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl$BluetoothInputStream;->target:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    :try_start_0
    iget-object v1, p0, Linstall/app/BluetoothSocketImpl$BluetoothInputStream;->this$0:Linstall/app/BluetoothSocketImpl;

    # invokes: Linstall/app/BluetoothSocketImpl;->closeInputStream()V
    invoke-static {v1}, Linstall/app/BluetoothSocketImpl;->access$000(Linstall/app/BluetoothSocketImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    iget-object v1, p0, Linstall/app/BluetoothSocketImpl$BluetoothInputStream;->target:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 317
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 320
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl$BluetoothInputStream;->target:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 321
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl$BluetoothInputStream;->target:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl$BluetoothInputStream;->target:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl$BluetoothInputStream;->target:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl$BluetoothInputStream;->target:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl$BluetoothInputStream;->target:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl$BluetoothInputStream;->target:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
