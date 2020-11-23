.class public Linstall/app/HttpRequestExecutor;
.super Ljava/lang/Object;
.source "HttpRequestExecutor.java"


# direct methods
.method public constructor <init>()V
    .locals 2

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
.method protected canResponseHaveBody(Linstall/app/HttpRequest;Linstall/app/HttpResponse;)Z
    .locals 2
    .param p1, "request"    # Linstall/app/HttpRequest;
    .param p2, "response"    # Linstall/app/HttpResponse;

    .prologue
    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doReceiveResponse(Linstall/app/HttpRequest;Linstall/app/HttpClientConnection;Linstall/app/HttpContext;)Linstall/app/HttpResponse;
    .locals 2
    .param p1, "request"    # Linstall/app/HttpRequest;
    .param p2, "conn"    # Linstall/app/HttpClientConnection;
    .param p3, "context"    # Linstall/app/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doSendRequest(Linstall/app/HttpRequest;Linstall/app/HttpClientConnection;Linstall/app/HttpContext;)Linstall/app/HttpResponse;
    .locals 2
    .param p1, "request"    # Linstall/app/HttpRequest;
    .param p2, "conn"    # Linstall/app/HttpClientConnection;
    .param p3, "context"    # Linstall/app/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/HttpException;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Linstall/app/HttpRequest;Linstall/app/HttpClientConnection;Linstall/app/HttpContext;)Linstall/app/HttpResponse;
    .locals 2
    .param p1, "request"    # Linstall/app/HttpRequest;
    .param p2, "conn"    # Linstall/app/HttpClientConnection;
    .param p3, "context"    # Linstall/app/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/HttpException;
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postProcess(Linstall/app/HttpResponse;Linstall/app/HttpProcessor;Linstall/app/HttpContext;)V
    .locals 2
    .param p1, "response"    # Linstall/app/HttpResponse;
    .param p2, "processor"    # Linstall/app/HttpProcessor;
    .param p3, "context"    # Linstall/app/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public preProcess(Linstall/app/HttpRequest;Linstall/app/HttpProcessor;Linstall/app/HttpContext;)V
    .locals 2
    .param p1, "request"    # Linstall/app/HttpRequest;
    .param p2, "processor"    # Linstall/app/HttpProcessor;
    .param p3, "context"    # Linstall/app/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
