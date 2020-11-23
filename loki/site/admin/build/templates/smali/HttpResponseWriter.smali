.class public Linstall/app/HttpResponseWriter;
.super Linstall/app/AbstractMessageWriter;
.source "HttpResponseWriter.java"


# direct methods
.method public constructor <init>(Linstall/app/SessionOutputBuffer;Linstall/app/LineFormatter;Linstall/app/HttpParams;)V
    .locals 3
    .param p1, "buffer"    # Linstall/app/SessionOutputBuffer;
    .param p2, "formatter"    # Linstall/app/LineFormatter;
    .param p3, "params"    # Linstall/app/HttpParams;

    .prologue
    const/4 v1, 0x0

    .line 7
    move-object v0, v1

    check-cast v0, Linstall/app/SessionOutputBuffer;

    move-object v2, v1

    check-cast v2, Linstall/app/LineFormatter;

    check-cast v1, Linstall/app/HttpParams;

    invoke-direct {p0, v0, v2, v1}, Linstall/app/AbstractMessageWriter;-><init>(Linstall/app/SessionOutputBuffer;Linstall/app/LineFormatter;Linstall/app/HttpParams;)V

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected writeHeadLine(Linstall/app/HttpMessage;)V
    .locals 2
    .param p1, "message"    # Linstall/app/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
