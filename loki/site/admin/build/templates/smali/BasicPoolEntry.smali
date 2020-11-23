.class public Linstall/app/BasicPoolEntry;
.super Linstall/app/AbstractPoolEntry;
.source "BasicPoolEntry.java"


# direct methods
.method public constructor <init>(Linstall/app/ClientConnectionOperator;Linstall/app/HttpRoute;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .param p1, "op"    # Linstall/app/ClientConnectionOperator;
    .param p2, "route"    # Linstall/app/HttpRoute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/ClientConnectionOperator;",
            "Linstall/app/HttpRoute;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "referenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 7
    move-object v0, v1

    check-cast v0, Linstall/app/ClientConnectionOperator;

    check-cast v1, Linstall/app/HttpRoute;

    invoke-direct {p0, v0, v1}, Linstall/app/AbstractPoolEntry;-><init>(Linstall/app/ClientConnectionOperator;Linstall/app/HttpRoute;)V

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final getConnection()Linstall/app/OperatedClientConnection;
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final getPlannedRoute()Linstall/app/HttpRoute;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final getWeakRef()Linstall/app/BasicPoolEntryRef;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
