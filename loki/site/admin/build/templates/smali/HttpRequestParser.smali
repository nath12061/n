.class public Linstall/app/HttpRequestParser;
.super Linstall/app/AbstractMessageParser;
.source "HttpRequestParser.java"


# direct methods
.method public constructor <init>(Linstall/app/SessionInputBuffer;Linstall/app/LineParser;Linstall/app/HttpRequestFactory;Linstall/app/HttpParams;)V
    .locals 3
    .param p1, "buffer"    # Linstall/app/SessionInputBuffer;
    .param p2, "parser"    # Linstall/app/LineParser;
    .param p3, "requestFactory"    # Linstall/app/HttpRequestFactory;
    .param p4, "params"    # Linstall/app/HttpParams;

    .prologue
    const/4 v1, 0x0

    .line 7
    move-object v0, v1

    check-cast v0, Linstall/app/SessionInputBuffer;

    move-object v2, v1

    check-cast v2, Linstall/app/LineParser;

    check-cast v1, Linstall/app/HttpParams;

    invoke-direct {p0, v0, v2, v1}, Linstall/app/AbstractMessageParser;-><init>(Linstall/app/SessionInputBuffer;Linstall/app/LineParser;Linstall/app/HttpParams;)V

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected parseHead(Linstall/app/SessionInputBuffer;)Linstall/app/HttpMessage;
    .locals 2
    .param p1, "sessionBuffer"    # Linstall/app/SessionInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/HttpException;,
            Linstall/app/ParseException;
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
