.class public Linstall/app/BasicPooledConnAdapter;
.super Linstall/app/AbstractPooledConnAdapter;
.source "BasicPooledConnAdapter.java"


# direct methods
.method protected constructor <init>(Linstall/app/ThreadSafeClientConnManager;Linstall/app/AbstractPoolEntry;)V
    .locals 2
    .param p1, "tsccm"    # Linstall/app/ThreadSafeClientConnManager;
    .param p2, "entry"    # Linstall/app/AbstractPoolEntry;

    .prologue
    const/4 v1, 0x0

    .line 5
    move-object v0, v1

    check-cast v0, Linstall/app/ClientConnectionManager;

    check-cast v1, Linstall/app/AbstractPoolEntry;

    invoke-direct {p0, v0, v1}, Linstall/app/AbstractPooledConnAdapter;-><init>(Linstall/app/ClientConnectionManager;Linstall/app/AbstractPoolEntry;)V

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected detach()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getManager()Linstall/app/ClientConnectionManager;
    .locals 2

    .prologue
    .line 10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getPoolEntry()Linstall/app/AbstractPoolEntry;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
