.class public abstract Linstall/app/AbstractHttpClient;
.super Ljava/lang/Object;
.source "AbstractHttpClient.java"

# interfaces
.implements Linstall/app/HttpClient;


# direct methods
.method protected constructor <init>(Linstall/app/ClientConnectionManager;Linstall/app/HttpParams;)V
    .locals 2
    .param p1, "conman"    # Linstall/app/ClientConnectionManager;
    .param p2, "params"    # Linstall/app/HttpParams;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized addRequestInterceptor(Linstall/app/HttpRequestInterceptor;)V
    .locals 2
    .param p1, "itcp"    # Linstall/app/HttpRequestInterceptor;

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addRequestInterceptor(Linstall/app/HttpRequestInterceptor;I)V
    .locals 2
    .param p1, "itcp"    # Linstall/app/HttpRequestInterceptor;
    .param p2, "index"    # I

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addResponseInterceptor(Linstall/app/HttpResponseInterceptor;)V
    .locals 2
    .param p1, "itcp"    # Linstall/app/HttpResponseInterceptor;

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addResponseInterceptor(Linstall/app/HttpResponseInterceptor;I)V
    .locals 2
    .param p1, "itcp"    # Linstall/app/HttpResponseInterceptor;
    .param p2, "index"    # I

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearRequestInterceptors()V
    .locals 2

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearResponseInterceptors()V
    .locals 2

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract createAuthSchemeRegistry()Linstall/app/AuthSchemeRegistry;
.end method

.method protected abstract createClientConnectionManager()Linstall/app/ClientConnectionManager;
.end method

.method protected createClientRequestDirector(Linstall/app/HttpRequestExecutor;Linstall/app/ClientConnectionManager;Linstall/app/ConnectionReuseStrategy;Linstall/app/ConnectionKeepAliveStrategy;Linstall/app/HttpRoutePlanner;Linstall/app/HttpProcessor;Linstall/app/HttpRequestRetryHandler;Linstall/app/RedirectHandler;Linstall/app/AuthenticationHandler;Linstall/app/AuthenticationHandler;Linstall/app/UserTokenHandler;Linstall/app/HttpParams;)Linstall/app/RequestDirector;
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
    .param p11, "stateHandler"    # Linstall/app/UserTokenHandler;
    .param p12, "params"    # Linstall/app/HttpParams;

    .prologue
    .line 225
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract createConnectionKeepAliveStrategy()Linstall/app/ConnectionKeepAliveStrategy;
.end method

.method protected abstract createConnectionReuseStrategy()Linstall/app/ConnectionReuseStrategy;
.end method

.method protected abstract createCookieSpecRegistry()Linstall/app/CookieSpecRegistry;
.end method

.method protected abstract createCookieStore()Linstall/app/CookieStore;
.end method

.method protected abstract createCredentialsProvider()Linstall/app/CredentialsProvider;
.end method

.method protected abstract createHttpContext()Linstall/app/HttpContext;
.end method

.method protected abstract createHttpParams()Linstall/app/HttpParams;
.end method

.method protected abstract createHttpProcessor()Linstall/app/BasicHttpProcessor;
.end method

.method protected abstract createHttpRequestRetryHandler()Linstall/app/HttpRequestRetryHandler;
.end method

.method protected abstract createHttpRoutePlanner()Linstall/app/HttpRoutePlanner;
.end method

.method protected abstract createProxyAuthenticationHandler()Linstall/app/AuthenticationHandler;
.end method

.method protected abstract createRedirectHandler()Linstall/app/RedirectHandler;
.end method

.method protected abstract createRequestExecutor()Linstall/app/HttpRequestExecutor;
.end method

.method protected abstract createTargetAuthenticationHandler()Linstall/app/AuthenticationHandler;
.end method

.method protected abstract createUserTokenHandler()Linstall/app/UserTokenHandler;
.end method

.method protected determineParams(Linstall/app/HttpRequest;)Linstall/app/HttpParams;
    .locals 2
    .param p1, "req"    # Linstall/app/HttpRequest;

    .prologue
    .line 229
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final execute(Linstall/app/HttpHost;Linstall/app/HttpRequest;)Linstall/app/HttpResponse;
    .locals 2
    .param p1, "target"    # Linstall/app/HttpHost;
    .param p2, "request"    # Linstall/app/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final execute(Linstall/app/HttpHost;Linstall/app/HttpRequest;Linstall/app/HttpContext;)Linstall/app/HttpResponse;
    .locals 2
    .param p1, "target"    # Linstall/app/HttpHost;
    .param p2, "request"    # Linstall/app/HttpRequest;
    .param p3, "context"    # Linstall/app/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final execute(Linstall/app/HttpUriRequest;)Linstall/app/HttpResponse;
    .locals 2
    .param p1, "request"    # Linstall/app/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final execute(Linstall/app/HttpUriRequest;Linstall/app/HttpContext;)Linstall/app/HttpResponse;
    .locals 2
    .param p1, "request"    # Linstall/app/HttpUriRequest;
    .param p2, "context"    # Linstall/app/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Linstall/app/HttpHost;Linstall/app/HttpRequest;Linstall/app/ResponseHandler;)Ljava/lang/Object;
    .locals 2
    .param p1, "target"    # Linstall/app/HttpHost;
    .param p2, "request"    # Linstall/app/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Linstall/app/HttpHost;",
            "Linstall/app/HttpRequest;",
            "Linstall/app/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 241
    .local p3, "responseHandler":Linstall/app/ResponseHandler;, "Linstall/app/ResponseHandler<+TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Linstall/app/HttpHost;Linstall/app/HttpRequest;Linstall/app/ResponseHandler;Linstall/app/HttpContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "target"    # Linstall/app/HttpHost;
    .param p2, "request"    # Linstall/app/HttpRequest;
    .param p4, "context"    # Linstall/app/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Linstall/app/HttpHost;",
            "Linstall/app/HttpRequest;",
            "Linstall/app/ResponseHandler",
            "<+TT;>;",
            "Linstall/app/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 245
    .local p3, "responseHandler":Linstall/app/ResponseHandler;, "Linstall/app/ResponseHandler<+TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Linstall/app/HttpUriRequest;Linstall/app/ResponseHandler;)Ljava/lang/Object;
    .locals 2
    .param p1, "request"    # Linstall/app/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Linstall/app/HttpUriRequest;",
            "Linstall/app/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 233
    .local p2, "responseHandler":Linstall/app/ResponseHandler;, "Linstall/app/ResponseHandler<+TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Linstall/app/HttpUriRequest;Linstall/app/ResponseHandler;Linstall/app/HttpContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "request"    # Linstall/app/HttpUriRequest;
    .param p3, "context"    # Linstall/app/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Linstall/app/HttpUriRequest;",
            "Linstall/app/ResponseHandler",
            "<+TT;>;",
            "Linstall/app/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 237
    .local p2, "responseHandler":Linstall/app/ResponseHandler;, "Linstall/app/ResponseHandler<+TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized getAuthSchemes()Linstall/app/AuthSchemeRegistry;
    .locals 2

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionKeepAliveStrategy()Linstall/app/ConnectionKeepAliveStrategy;
    .locals 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionManager()Linstall/app/ClientConnectionManager;
    .locals 2

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionReuseStrategy()Linstall/app/ConnectionReuseStrategy;
    .locals 2

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCookieSpecs()Linstall/app/CookieSpecRegistry;
    .locals 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCookieStore()Linstall/app/CookieStore;
    .locals 2

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCredentialsProvider()Linstall/app/CredentialsProvider;
    .locals 2

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized getHttpProcessor()Linstall/app/BasicHttpProcessor;
    .locals 2

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getHttpRequestRetryHandler()Linstall/app/HttpRequestRetryHandler;
    .locals 2

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getParams()Linstall/app/HttpParams;
    .locals 2

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getProxyAuthenticationHandler()Linstall/app/AuthenticationHandler;
    .locals 2

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRedirectHandler()Linstall/app/RedirectHandler;
    .locals 2

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRequestExecutor()Linstall/app/HttpRequestExecutor;
    .locals 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestInterceptor(I)Linstall/app/HttpRequestInterceptor;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestInterceptorCount()I
    .locals 2

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseInterceptor(I)Linstall/app/HttpResponseInterceptor;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseInterceptorCount()I
    .locals 2

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRoutePlanner()Linstall/app/HttpRoutePlanner;
    .locals 2

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getTargetAuthenticationHandler()Linstall/app/AuthenticationHandler;
    .locals 2

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getUserTokenHandler()Linstall/app/UserTokenHandler;
    .locals 2

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Linstall/app/HttpRequestInterceptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Linstall/app/HttpRequestInterceptor;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Linstall/app/HttpResponseInterceptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Linstall/app/HttpResponseInterceptor;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setAuthSchemes(Linstall/app/AuthSchemeRegistry;)V
    .locals 2
    .param p1, "authSchemeRegistry"    # Linstall/app/AuthSchemeRegistry;

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCookieSpecs(Linstall/app/CookieSpecRegistry;)V
    .locals 2
    .param p1, "cookieSpecRegistry"    # Linstall/app/CookieSpecRegistry;

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCookieStore(Linstall/app/CookieStore;)V
    .locals 2
    .param p1, "cookieStore"    # Linstall/app/CookieStore;

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCredentialsProvider(Linstall/app/CredentialsProvider;)V
    .locals 2
    .param p1, "credsProvider"    # Linstall/app/CredentialsProvider;

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHttpRequestRetryHandler(Linstall/app/HttpRequestRetryHandler;)V
    .locals 2
    .param p1, "retryHandler"    # Linstall/app/HttpRequestRetryHandler;

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setKeepAliveStrategy(Linstall/app/ConnectionKeepAliveStrategy;)V
    .locals 2
    .param p1, "keepAliveStrategy"    # Linstall/app/ConnectionKeepAliveStrategy;

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setParams(Linstall/app/HttpParams;)V
    .locals 2
    .param p1, "params"    # Linstall/app/HttpParams;

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProxyAuthenticationHandler(Linstall/app/AuthenticationHandler;)V
    .locals 2
    .param p1, "proxyAuthHandler"    # Linstall/app/AuthenticationHandler;

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRedirectHandler(Linstall/app/RedirectHandler;)V
    .locals 2
    .param p1, "redirectHandler"    # Linstall/app/RedirectHandler;

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReuseStrategy(Linstall/app/ConnectionReuseStrategy;)V
    .locals 2
    .param p1, "reuseStrategy"    # Linstall/app/ConnectionReuseStrategy;

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRoutePlanner(Linstall/app/HttpRoutePlanner;)V
    .locals 2
    .param p1, "routePlanner"    # Linstall/app/HttpRoutePlanner;

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTargetAuthenticationHandler(Linstall/app/AuthenticationHandler;)V
    .locals 2
    .param p1, "targetAuthHandler"    # Linstall/app/AuthenticationHandler;

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserTokenHandler(Linstall/app/UserTokenHandler;)V
    .locals 2
    .param p1, "userTokenHandler"    # Linstall/app/UserTokenHandler;

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
