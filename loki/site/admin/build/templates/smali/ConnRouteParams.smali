.class public Linstall/app/ConnRouteParams;
.super Ljava/lang/Object;
.source "ConnRouteParams.java"

# interfaces
.implements Linstall/app/ConnRoutePNames;


# static fields
.field public static final NO_HOST:Linstall/app/HttpHost;

.field public static final NO_ROUTE:Linstall/app/HttpRoute;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-object v0, Linstall/app/ConnRouteParams;->NO_HOST:Linstall/app/HttpHost;

    .line 7
    sput-object v0, Linstall/app/ConnRouteParams;->NO_ROUTE:Linstall/app/HttpRoute;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefaultProxy(Linstall/app/HttpParams;)Linstall/app/HttpHost;
    .locals 2
    .param p0, "params"    # Linstall/app/HttpParams;

    .prologue
    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getForcedRoute(Linstall/app/HttpParams;)Linstall/app/HttpRoute;
    .locals 2
    .param p0, "params"    # Linstall/app/HttpParams;

    .prologue
    .line 22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLocalAddress(Linstall/app/HttpParams;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "params"    # Linstall/app/HttpParams;

    .prologue
    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDefaultProxy(Linstall/app/HttpParams;Linstall/app/HttpHost;)V
    .locals 2
    .param p0, "params"    # Linstall/app/HttpParams;
    .param p1, "proxy"    # Linstall/app/HttpHost;

    .prologue
    .line 18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setForcedRoute(Linstall/app/HttpParams;Linstall/app/HttpRoute;)V
    .locals 2
    .param p0, "params"    # Linstall/app/HttpParams;
    .param p1, "route"    # Linstall/app/HttpRoute;

    .prologue
    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setLocalAddress(Linstall/app/HttpParams;Ljava/net/InetAddress;)V
    .locals 2
    .param p0, "params"    # Linstall/app/HttpParams;
    .param p1, "local"    # Ljava/net/InetAddress;

    .prologue
    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
