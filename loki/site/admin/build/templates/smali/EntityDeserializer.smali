.class public Linstall/app/EntityDeserializer;
.super Ljava/lang/Object;
.source "EntityDeserializer.java"


# direct methods
.method public constructor <init>(Linstall/app/ContentLengthStrategy;)V
    .locals 2
    .param p1, "lenStrategy"    # Linstall/app/ContentLengthStrategy;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public deserialize(Linstall/app/SessionInputBuffer;Linstall/app/HttpMessage;)Linstall/app/HttpEntity;
    .locals 2
    .param p1, "inbuffer"    # Linstall/app/SessionInputBuffer;
    .param p2, "message"    # Linstall/app/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doDeserialize(Linstall/app/SessionInputBuffer;Linstall/app/HttpMessage;)Linstall/app/BasicHttpEntity;
    .locals 2
    .param p1, "inbuffer"    # Linstall/app/SessionInputBuffer;
    .param p2, "message"    # Linstall/app/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
