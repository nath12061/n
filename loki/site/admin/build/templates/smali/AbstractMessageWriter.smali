.class public abstract Linstall/app/AbstractMessageWriter;
.super Ljava/lang/Object;
.source "AbstractMessageWriter.java"

# interfaces
.implements Linstall/app/HttpMessageWriter;


# instance fields
.field protected final lineBuf:Linstall/app/CharArrayBuffer;

.field protected final lineFormatter:Linstall/app/LineFormatter;

.field protected final sessionBuffer:Linstall/app/SessionOutputBuffer;


# direct methods
.method public constructor <init>(Linstall/app/SessionOutputBuffer;Linstall/app/LineFormatter;Linstall/app/HttpParams;)V
    .locals 2
    .param p1, "buffer"    # Linstall/app/SessionOutputBuffer;
    .param p2, "formatter"    # Linstall/app/LineFormatter;
    .param p3, "params"    # Linstall/app/HttpParams;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public write(Linstall/app/HttpMessage;)V
    .locals 2
    .param p1, "message"    # Linstall/app/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/HttpException;
        }
    .end annotation

    .prologue
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract writeHeadLine(Linstall/app/HttpMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
