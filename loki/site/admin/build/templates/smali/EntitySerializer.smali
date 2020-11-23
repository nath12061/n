.class public Linstall/app/EntitySerializer;
.super Ljava/lang/Object;
.source "EntitySerializer.java"


# direct methods
.method public constructor <init>(Linstall/app/ContentLengthStrategy;)V
    .locals 2
    .param p1, "lenStrategy"    # Linstall/app/ContentLengthStrategy;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected doSerialize(Linstall/app/SessionOutputBuffer;Linstall/app/HttpMessage;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "outbuffer"    # Linstall/app/SessionOutputBuffer;
    .param p2, "message"    # Linstall/app/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;,
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

.method public serialize(Linstall/app/SessionOutputBuffer;Linstall/app/HttpMessage;Linstall/app/HttpEntity;)V
    .locals 2
    .param p1, "outbuffer"    # Linstall/app/SessionOutputBuffer;
    .param p2, "message"    # Linstall/app/HttpMessage;
    .param p3, "entity"    # Linstall/app/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
