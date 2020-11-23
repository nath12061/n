.class public Linstall/app/ConnPoolByRoute;
.super Linstall/app/AbstractConnPool;
.source "ConnPoolByRoute.java"


# instance fields
.field protected freeConnections:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Linstall/app/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected final maxTotalConnections:I

.field protected final operator:Linstall/app/ClientConnectionOperator;

.field protected final routeToPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Linstall/app/HttpRoute;",
            "Linstall/app/RouteSpecificPool;",
            ">;"
        }
    .end annotation
.end field

.field protected waitingThreads:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Linstall/app/WaitingThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linstall/app/ClientConnectionOperator;Linstall/app/HttpParams;)V
    .locals 2
    .param p1, "operator"    # Linstall/app/ClientConnectionOperator;
    .param p2, "params"    # Linstall/app/HttpParams;

    .prologue
    .line 15
    invoke-direct {p0}, Linstall/app/AbstractConnPool;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createEntry(Linstall/app/RouteSpecificPool;Linstall/app/ClientConnectionOperator;)Linstall/app/BasicPoolEntry;
    .locals 2
    .param p1, "rospl"    # Linstall/app/RouteSpecificPool;
    .param p2, "op"    # Linstall/app/ClientConnectionOperator;

    .prologue
    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createFreeConnQueue()Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Linstall/app/BasicPoolEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createRouteToPoolMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Linstall/app/HttpRoute;",
            "Linstall/app/RouteSpecificPool;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createWaitingThreadQueue()Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Linstall/app/WaitingThread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteClosedConnections()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected deleteEntry(Linstall/app/BasicPoolEntry;)V
    .locals 2
    .param p1, "entry"    # Linstall/app/BasicPoolEntry;

    .prologue
    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected deleteLeastUsedEntry()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public freeEntry(Linstall/app/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "entry"    # Linstall/app/BasicPoolEntry;
    .param p2, "reusable"    # Z
    .param p3, "validDuration"    # J
    .param p5, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnectionsInPool(Linstall/app/HttpRoute;)I
    .locals 2
    .param p1, "route"    # Linstall/app/HttpRoute;

    .prologue
    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getEntryBlocking(Linstall/app/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Linstall/app/WaitingThreadAborter;)Linstall/app/BasicPoolEntry;
    .locals 2
    .param p1, "route"    # Linstall/app/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "timeout"    # J
    .param p5, "tunit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "aborter"    # Linstall/app/WaitingThreadAborter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ConnectionPoolTimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getFreeEntry(Linstall/app/RouteSpecificPool;Ljava/lang/Object;)Linstall/app/BasicPoolEntry;
    .locals 2
    .param p1, "rospl"    # Linstall/app/RouteSpecificPool;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getRoutePool(Linstall/app/HttpRoute;Z)Linstall/app/RouteSpecificPool;
    .locals 2
    .param p1, "route"    # Linstall/app/HttpRoute;
    .param p2, "create"    # Z

    .prologue
    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleLostEntry(Linstall/app/HttpRoute;)V
    .locals 2
    .param p1, "route"    # Linstall/app/HttpRoute;

    .prologue
    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected newRouteSpecificPool(Linstall/app/HttpRoute;)Linstall/app/RouteSpecificPool;
    .locals 2
    .param p1, "route"    # Linstall/app/HttpRoute;

    .prologue
    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected newWaitingThread(Ljava/util/concurrent/locks/Condition;Linstall/app/RouteSpecificPool;)Linstall/app/WaitingThread;
    .locals 2
    .param p1, "cond"    # Ljava/util/concurrent/locks/Condition;
    .param p2, "rospl"    # Linstall/app/RouteSpecificPool;

    .prologue
    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected notifyWaitingThread(Linstall/app/RouteSpecificPool;)V
    .locals 2
    .param p1, "rospl"    # Linstall/app/RouteSpecificPool;

    .prologue
    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestPoolEntry(Linstall/app/HttpRoute;Ljava/lang/Object;)Linstall/app/PoolEntryRequest;
    .locals 2
    .param p1, "route"    # Linstall/app/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
