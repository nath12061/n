.class public abstract Linstall/app/AbstractPoolEntry;
.super Ljava/lang/Object;
.source "AbstractPoolEntry.java"


# instance fields
.field protected final connOperator:Linstall/app/ClientConnectionOperator;

.field protected final connection:Linstall/app/OperatedClientConnection;

.field protected volatile route:Linstall/app/HttpRoute;

.field protected volatile state:Ljava/lang/Object;

.field protected volatile tracker:Linstall/app/RouteTracker;


# direct methods
.method protected constructor <init>(Linstall/app/ClientConnectionOperator;Linstall/app/HttpRoute;)V
    .locals 2
    .param p1, "connOperator"    # Linstall/app/ClientConnectionOperator;
    .param p2, "route"    # Linstall/app/HttpRoute;

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
.method public getState()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public layerProtocol(Linstall/app/HttpContext;Linstall/app/HttpParams;)V
    .locals 2
    .param p1, "context"    # Linstall/app/HttpContext;
    .param p2, "params"    # Linstall/app/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public open(Linstall/app/HttpRoute;Linstall/app/HttpContext;Linstall/app/HttpParams;)V
    .locals 2
    .param p1, "route"    # Linstall/app/HttpRoute;
    .param p2, "context"    # Linstall/app/HttpContext;
    .param p3, "params"    # Linstall/app/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/Object;

    .prologue
    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected shutdownEntry()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tunnelProxy(Linstall/app/HttpHost;ZLinstall/app/HttpParams;)V
    .locals 2
    .param p1, "next"    # Linstall/app/HttpHost;
    .param p2, "secure"    # Z
    .param p3, "params"    # Linstall/app/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tunnelTarget(ZLinstall/app/HttpParams;)V
    .locals 2
    .param p1, "secure"    # Z
    .param p2, "params"    # Linstall/app/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
