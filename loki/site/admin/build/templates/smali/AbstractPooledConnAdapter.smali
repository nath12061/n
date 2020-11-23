.class public abstract Linstall/app/AbstractPooledConnAdapter;
.super Linstall/app/AbstractClientConnAdapter;
.source "AbstractPooledConnAdapter.java"


# instance fields
.field protected volatile poolEntry:Linstall/app/AbstractPoolEntry;


# direct methods
.method protected constructor <init>(Linstall/app/ClientConnectionManager;Linstall/app/AbstractPoolEntry;)V
    .locals 2
    .param p1, "manager"    # Linstall/app/ClientConnectionManager;
    .param p2, "entry"    # Linstall/app/AbstractPoolEntry;

    .prologue
    const/4 v1, 0x0

    .line 9
    move-object v0, v1

    check-cast v0, Linstall/app/ClientConnectionManager;

    check-cast v1, Linstall/app/OperatedClientConnection;

    invoke-direct {p0, v0, v1}, Linstall/app/AbstractClientConnAdapter;-><init>(Linstall/app/ClientConnectionManager;Linstall/app/OperatedClientConnection;)V

    .line 10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final assertAttached()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
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

.method protected detach()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRoute()Linstall/app/HttpRoute;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getState()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 50
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
    .line 38
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
    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/Object;

    .prologue
    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
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
    .line 34
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
    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
