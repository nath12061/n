.class public Linstall/app/HttpService;
.super Ljava/lang/Object;
.source "HttpService.java"


# direct methods
.method public constructor <init>(Linstall/app/HttpProcessor;Linstall/app/ConnectionReuseStrategy;Linstall/app/HttpResponseFactory;)V
    .locals 2
    .param p1, "proc"    # Linstall/app/HttpProcessor;
    .param p2, "connStrategy"    # Linstall/app/ConnectionReuseStrategy;
    .param p3, "responseFactory"    # Linstall/app/HttpResponseFactory;

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
.method protected doService(Linstall/app/HttpRequest;Linstall/app/HttpResponse;Linstall/app/HttpContext;)V
    .locals 2
    .param p1, "request"    # Linstall/app/HttpRequest;
    .param p2, "response"    # Linstall/app/HttpResponse;
    .param p3, "context"    # Linstall/app/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParams()Linstall/app/HttpParams;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleException(Linstall/app/HttpException;Linstall/app/HttpResponse;)V
    .locals 2
    .param p1, "ex"    # Linstall/app/HttpException;
    .param p2, "response"    # Linstall/app/HttpResponse;

    .prologue
    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleRequest(Linstall/app/HttpServerConnection;Linstall/app/HttpContext;)V
    .locals 2
    .param p1, "conn"    # Linstall/app/HttpServerConnection;
    .param p2, "context"    # Linstall/app/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/HttpException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConnReuseStrategy(Linstall/app/ConnectionReuseStrategy;)V
    .locals 2
    .param p1, "connStrategy"    # Linstall/app/ConnectionReuseStrategy;

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExpectationVerifier(Linstall/app/HttpExpectationVerifier;)V
    .locals 2
    .param p1, "expectationVerifier"    # Linstall/app/HttpExpectationVerifier;

    .prologue
    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHandlerResolver(Linstall/app/HttpRequestHandlerResolver;)V
    .locals 2
    .param p1, "handlerResolver"    # Linstall/app/HttpRequestHandlerResolver;

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHttpProcessor(Linstall/app/HttpProcessor;)V
    .locals 2
    .param p1, "processor"    # Linstall/app/HttpProcessor;

    .prologue
    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParams(Linstall/app/HttpParams;)V
    .locals 2
    .param p1, "params"    # Linstall/app/HttpParams;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setResponseFactory(Linstall/app/HttpResponseFactory;)V
    .locals 2
    .param p1, "responseFactory"    # Linstall/app/HttpResponseFactory;

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
