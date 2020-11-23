.class public Linstall/app/SocketOutputBuffer;
.super Linstall/app/AbstractSessionOutputBuffer;
.source "SocketOutputBuffer.java"


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILinstall/app/HttpParams;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Linstall/app/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0}, Linstall/app/AbstractSessionOutputBuffer;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
