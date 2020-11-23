.class public Linstall/app/ProxySelectorRoutePlanner;
.super Ljava/lang/Object;
.source "ProxySelectorRoutePlanner.java"

# interfaces
.implements Linstall/app/HttpRoutePlanner;


# instance fields
.field protected proxySelector:Ljava/net/ProxySelector;

.field protected schemeRegistry:Linstall/app/SchemeRegistry;


# direct methods
.method public constructor <init>(Linstall/app/SchemeRegistry;Ljava/net/ProxySelector;)V
    .locals 2
    .param p1, "schreg"    # Linstall/app/SchemeRegistry;
    .param p2, "prosel"    # Ljava/net/ProxySelector;

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
.method protected chooseProxy(Ljava/util/List;Linstall/app/HttpHost;Linstall/app/HttpRequest;Linstall/app/HttpContext;)Ljava/net/Proxy;
    .locals 2
    .param p2, "target"    # Linstall/app/HttpHost;
    .param p3, "request"    # Linstall/app/HttpRequest;
    .param p4, "context"    # Linstall/app/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;",
            "Linstall/app/HttpHost;",
            "Linstall/app/HttpRequest;",
            "Linstall/app/HttpContext;",
            ")",
            "Ljava/net/Proxy;"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected determineProxy(Linstall/app/HttpHost;Linstall/app/HttpRequest;Linstall/app/HttpContext;)Linstall/app/HttpHost;
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
    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public determineRoute(Linstall/app/HttpHost;Linstall/app/HttpRequest;Linstall/app/HttpContext;)Linstall/app/HttpRoute;
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
    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getHost(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 2
    .param p1, "isa"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProxySelector()Ljava/net/ProxySelector;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProxySelector(Ljava/net/ProxySelector;)V
    .locals 2
    .param p1, "prosel"    # Ljava/net/ProxySelector;

    .prologue
    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
