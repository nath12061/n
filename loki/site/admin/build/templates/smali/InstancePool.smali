.class public Linstall/app/InstancePool;
.super Ljava/lang/Object;
.source "InstancePool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/InstancePool$NewInstance;
    }
.end annotation


# instance fields
.field private final INITIAL_CAPACITY:I

.field private instances:Ljava/util/List;

.field private instantiator:Linstall/app/InstancePool$NewInstance;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v1, p0, Linstall/app/InstancePool;->INITIAL_CAPACITY:I

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/InstancePool;->instances:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Linstall/app/InstancePool;->instances:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public declared-synchronized checkin(Ljava/lang/Object;)V
    .locals 4
    .param p1, "toCheckin"    # Ljava/lang/Object;

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Linstall/app/InstancePool;->instantiator:Linstall/app/InstancePool$NewInstance;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "InstancePool is uninitialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 62
    :cond_0
    :try_start_1
    iget-object v1, p0, Linstall/app/InstancePool;->instances:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 63
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    .line 64
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Trying to checkin an instance that is not in the pool: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized checkout()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Linstall/app/InstancePool;->instantiator:Linstall/app/InstancePool$NewInstance;

    if-nez v2, :cond_0

    .line 44
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "InstancePool is uninitialized"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 48
    :cond_0
    :try_start_1
    iget-object v0, p0, Linstall/app/InstancePool;->instances:Ljava/util/List;

    .line 49
    .local v0, "list":Ljava/util/List;
    iget-object v2, p0, Linstall/app/InstancePool;->instantiator:Linstall/app/InstancePool$NewInstance;

    invoke-virtual {v2}, Linstall/app/InstancePool$NewInstance;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 50
    .local v1, "result":Ljava/lang/Object;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linstall/app/InstancePool;->instantiator:Linstall/app/InstancePool$NewInstance;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releasePooledInstances()V
    .locals 1

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linstall/app/InstancePool;->instances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setInstantiator(Linstall/app/InstancePool$NewInstance;)V
    .locals 1
    .param p1, "instantiator"    # Linstall/app/InstancePool$NewInstance;

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linstall/app/InstancePool;->instantiator:Linstall/app/InstancePool$NewInstance;

    if-nez v0, :cond_0

    .line 28
    iput-object p1, p0, Linstall/app/InstancePool;->instantiator:Linstall/app/InstancePool$NewInstance;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
