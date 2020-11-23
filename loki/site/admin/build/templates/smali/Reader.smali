.class public Linstall/app/Reader;
.super Ljava/lang/Object;
.source "Reader.java"


# instance fields
.field _name:Ljava/lang/String;

.field _service:Linstall/app/SEService;

.field private final _sessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Linstall/app/Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Linstall/app/SEService;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Linstall/app/SEService;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linstall/app/Reader;->_sessions:Ljava/util/ArrayList;

    .line 13
    iput-object p1, p0, Linstall/app/Reader;->_name:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Linstall/app/Reader;->_service:Linstall/app/SEService;

    .line 15
    return-void
.end method


# virtual methods
.method closeSession(Linstall/app/Session;)V
    .locals 2
    .param p1, "session"    # Linstall/app/Session;

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "session is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iget-object v1, p0, Linstall/app/Reader;->_sessions:Ljava/util/ArrayList;

    monitor-enter v1

    .line 52
    :try_start_0
    invoke-virtual {p1}, Linstall/app/Session;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p1}, Linstall/app/Session;->setClosed()V

    .line 55
    :cond_1
    iget-object v0, p0, Linstall/app/Reader;->_sessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 56
    monitor-exit v1

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeSessions()V
    .locals 3

    .prologue
    .line 39
    iget-object v2, p0, Linstall/app/Reader;->_sessions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 40
    :try_start_0
    iget-object v1, p0, Linstall/app/Reader;->_sessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 41
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linstall/app/Session;

    invoke-virtual {p0, v1}, Linstall/app/Reader;->closeSession(Linstall/app/Session;)V

    goto :goto_0

    .line 44
    .end local v0    # "it":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "it":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Linstall/app/Reader;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSEService()Linstall/app/SEService;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Linstall/app/Reader;->_service:Linstall/app/SEService;

    return-object v0
.end method

.method public isSecureElementPresent()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Linstall/app/Reader;->_service:Linstall/app/SEService;

    invoke-virtual {v0, p0}, Linstall/app/SEService;->isSecureElementPresent(Linstall/app/Reader;)Z

    move-result v0

    return v0
.end method

.method public openSession()Linstall/app/Session;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v2, p0, Linstall/app/Reader;->_sessions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 24
    :try_start_0
    new-instance v0, Linstall/app/Session;

    invoke-virtual {p0}, Linstall/app/Reader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Linstall/app/Session;-><init>(Ljava/lang/String;Linstall/app/Reader;)V

    .line 25
    .local v0, "session":Linstall/app/Session;
    iget-object v1, p0, Linstall/app/Reader;->_sessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    monitor-exit v2

    .line 27
    return-object v0

    .line 26
    .end local v0    # "session":Linstall/app/Session;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
