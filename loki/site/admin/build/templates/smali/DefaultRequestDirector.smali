.class public Linstall/app/DefaultRequestDirector;
.super Ljava/lang/Object;
.source "DefaultRequestDirector.java"

# interfaces
.implements Linstall/app/RequestDirector;


# instance fields
.field protected final connManager:Linstall/app/ClientConnectionManager;

.field protected final httpProcessor:Linstall/app/HttpProcessor;

.field protected final keepAliveStrategy:Linstall/app/ConnectionKeepAliveStrategy;

.field protected managedConn:Linstall/app/ManagedClientConnection;

.field protected final params:Linstall/app/HttpParams;

.field protected final redirectHandler:Linstall/app/RedirectHandler;

.field protected final requestExec:Linstall/app/HttpRequestExecutor;

.field protected final retryHandler:Linstall/app/HttpRequestRetryHandler;

.field protected final reuseStrategy:Linstall/app/ConnectionReuseStrategy;

.field protected final routePlanner:Linstall/app/HttpRoutePlanner;


# direct methods
.method public constructor <init>(Linstall/app/HttpRequestExecutor;Linstall/app/ClientConnectionManager;Linstall/app/ConnectionReuseStrategy;Linstall/app/ConnectionKeepAliveStrategy;Linstall/app/HttpRoutePlanner;Linstall/app/HttpProcessor;Linstall/app/HttpRequestRetryHandler;Linstall/app/RedirectHandler;Linstall/app/AuthenticationHandler;Linstall/app/AuthenticationHandler;Linstall/app/UserTokenHandler;Linstall/app/HttpParams;)V
    .locals 2
    .param p1, "requestExec"    # Linstall/app/HttpRequestExecutor;
    .param p2, "conman"    # Linstall/app/ClientConnectionManager;
    .param p3, "reustrat"    # Linstall/app/ConnectionReuseStrategy;
    .param p4, "kastrat"    # Linstall/app/ConnectionKeepAliveStrategy;
    .param p5, "rouplan"    # Linstall/app/HttpRoutePlanner;
    .param p6, "httpProcessor"    # Linstall/app/HttpProcessor;
    .param p7, "retryHandler"    # Linstall/app/HttpRequestRetryHandler;
    .param p8, "redirectHandler"    # Linstall/app/RedirectHandler;
    .param p9, "targetAuthHandler"    # Linstall/app/AuthenticationHandler;
    .param p10, "proxyAuthHandler"    # Linstall/app/AuthenticationHandler;
    .param p11, "userTokenHandler"    # Linstall/app/UserTokenHandler;
    .param p12, "params"    # Linstall/app/HttpParams;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createConnectRequest(Linstall/app/HttpRoute;Linstall/app/HttpContext;)Linstall/app/HttpRequest;
    .locals 2
    .param p1, "route"    # Linstall/app/HttpRoute;
    .param p2, "context"    # Linstall/app/HttpContext;

    .prologue
    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createTunnelToProxy(Linstall/app/HttpRoute;ILinstall/app/HttpContext;)Z
    .locals 2
    .param p1, "route"    # Linstall/app/HttpRoute;
    .param p2, "hop"    # I
    .param p3, "context"    # Linstall/app/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createTunnelToTarget(Linstall/app/HttpRoute;Linstall/app/HttpContext;)Z
    .locals 2
    .param p1, "route"    # Linstall/app/HttpRoute;
    .param p2, "context"    # Linstall/app/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected determineRoute(Linstall/app/HttpHost;Linstall/app/HttpRequest;Linstall/app/HttpContext;)Linstall/app/HttpRoute;
    .locals 2
    .param p1, "target"    # Linstall/app/HttpHost;
    .param p2, "request"    # Linstall/app/HttpRequest;
    .param p3, "context"    # Linstall/app/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected establishRoute(Linstall/app/HttpRoute;Linstall/app/HttpContext;)V
    .locals 2
    .param p1, "route"    # Linstall/app/HttpRoute;
    .param p2, "context"    # Linstall/app/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Linstall/app/HttpHost;Linstall/app/HttpRequest;Linstall/app/HttpContext;)Linstall/app/HttpResponse;
    .locals 2
    .param p1, "target"    # Linstall/app/HttpHost;
    .param p2, "request"    # Linstall/app/HttpRequest;
    .param p3, "context"    # Linstall/app/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleResponse(Linstall/app/RoutedRequest;Linstall/app/HttpResponse;Linstall/app/HttpContext;)Linstall/app/RoutedRequest;
    .locals 2
    .param p1, "roureq"    # Linstall/app/RoutedRequest;
    .param p2, "response"    # Linstall/app/HttpResponse;
    .param p3, "context"    # Linstall/app/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected releaseConnection()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected rewriteRequestURI(Linstall/app/RequestWrapper;Linstall/app/HttpRoute;)V
    .locals 2
    .param p1, "request"    # Linstall/app/RequestWrapper;
    .param p2, "route"    # Linstall/app/HttpRoute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ProtocolException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
