.class Linstall/app/BluetoothSocketImpl$BluetoothOutputStream;
.super Ljava/io/OutputStream;
.source "LocalBluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/BluetoothSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothOutputStream"
.end annotation


# instance fields
.field private target:Ljava/io/OutputStream;

.field final synthetic this$0:Linstall/app/BluetoothSocketImpl;


# direct methods
.method constructor <init>(Linstall/app/BluetoothSocketImpl;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "target"    # Ljava/io/OutputStream;

    .prologue
    .line 351
    iput-object p1, p0, Linstall/app/BluetoothSocketImpl$BluetoothOutputStream;->this$0:Linstall/app/BluetoothSocketImpl;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 352
    iput-object p2, p0, Linstall/app/BluetoothSocketImpl$BluetoothOutputStream;->target:Ljava/io/OutputStream;

    .line 353
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    :try_start_0
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl$BluetoothOutputStream;->this$0:Linstall/app/BluetoothSocketImpl;

    # invokes: Linstall/app/BluetoothSocketImpl;->closeOutputStream()V
    invoke-static {v0}, Linstall/app/BluetoothSocketImpl;->access$100(Linstall/app/BluetoothSocketImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl$BluetoothOutputStream;->target:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 361
    return-void

    .line 358
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl$BluetoothOutputStream;->target:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 365
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl$BluetoothOutputStream;->target:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 373
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl$BluetoothOutputStream;->target:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 369
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Linstall/app/BluetoothSocketImpl$BluetoothOutputStream;->target:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 377
    return-void
.end method
