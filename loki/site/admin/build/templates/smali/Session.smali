.class public Linstall/app/Session;
.super Ljava/lang/Object;
.source "Session.java"


# instance fields
.field _atr:[B

.field private final _channels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Linstall/app/Channel;",
            ">;"
        }
    .end annotation
.end field

.field _isClosed:Z

.field _name:Ljava/lang/String;

.field _reader:Linstall/app/Reader;


# direct methods
.method constructor <init>(Ljava/lang/String;Linstall/app/Reader;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "reader"    # Linstall/app/Reader;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linstall/app/Session;->_channels:Ljava/util/Set;

    .line 15
    invoke-virtual {p2}, Linstall/app/Reader;->getSEService()Linstall/app/SEService;

    move-result-object v0

    invoke-virtual {v0, p2}, Linstall/app/SEService;->getAtr(Linstall/app/Reader;)[B

    move-result-object v0

    iput-object v0, p0, Linstall/app/Session;->_atr:[B

    .line 16
    iput-object p2, p0, Linstall/app/Session;->_reader:Linstall/app/Reader;

    .line 17
    iput-object p1, p0, Linstall/app/Session;->_name:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/Session;->_isClosed:Z

    .line 19
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Linstall/app/Session;->closeChannels()V

    .line 41
    iget-object v0, p0, Linstall/app/Session;->_reader:Linstall/app/Reader;

    invoke-virtual {v0, p0}, Linstall/app/Reader;->closeSession(Linstall/app/Session;)V

    .line 42
    return-void
.end method

.method closeChannel(Linstall/app/Channel;)V
    .locals 2
    .param p1, "channel"    # Linstall/app/Channel;

    .prologue
    .line 65
    iget-object v1, p0, Linstall/app/Session;->_channels:Ljava/util/Set;

    monitor-enter v1

    .line 66
    :try_start_0
    invoke-virtual {p1}, Linstall/app/Channel;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 68
    :try_start_1
    iget-object v0, p0, Linstall/app/Session;->_reader:Linstall/app/Reader;

    invoke-virtual {v0}, Linstall/app/Reader;->getSEService()Linstall/app/SEService;

    move-result-object v0

    invoke-virtual {v0, p1}, Linstall/app/SEService;->closeChannel(Linstall/app/Channel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Linstall/app/Channel;->setClosed()V

    .line 73
    :cond_0
    iget-object v0, p0, Linstall/app/Session;->_channels:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 74
    monitor-exit v1

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public closeChannels()V
    .locals 4

    .prologue
    .line 57
    iget-object v2, p0, Linstall/app/Session;->_channels:Ljava/util/Set;

    monitor-enter v2

    .line 58
    :try_start_0
    iget-object v1, p0, Linstall/app/Session;->_channels:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/Channel;

    .line 59
    .local v0, "channel":Linstall/app/Channel;
    invoke-virtual {p0, v0}, Linstall/app/Session;->closeChannel(Linstall/app/Channel;)V

    goto :goto_0

    .line 61
    .end local v0    # "channel":Linstall/app/Channel;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    return-void
.end method

.method public getATR()[B
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Linstall/app/Session;->_atr:[B

    return-object v0
.end method

.method public getReader()Linstall/app/Reader;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Linstall/app/Session;->_reader:Linstall/app/Reader;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Linstall/app/Session;->_isClosed:Z

    return v0
.end method

.method public openBasicChannel([B)Linstall/app/Channel;
    .locals 3
    .param p1, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v2, p0, Linstall/app/Session;->_channels:Ljava/util/Set;

    monitor-enter v2

    .line 24
    :try_start_0
    iget-object v1, p0, Linstall/app/Session;->_reader:Linstall/app/Reader;

    invoke-virtual {v1}, Linstall/app/Reader;->getSEService()Linstall/app/SEService;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Linstall/app/SEService;->openBasicChannel(Linstall/app/Session;[B)Linstall/app/Channel;

    move-result-object v0

    .line 25
    .local v0, "basicChannel":Linstall/app/Channel;
    iget-object v1, p0, Linstall/app/Session;->_channels:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    monitor-exit v2

    .line 27
    return-object v0

    .line 26
    .end local v0    # "basicChannel":Linstall/app/Channel;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openLogicalChannel([B)Linstall/app/Channel;
    .locals 3
    .param p1, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v2, p0, Linstall/app/Session;->_channels:Ljava/util/Set;

    monitor-enter v2

    .line 33
    :try_start_0
    iget-object v1, p0, Linstall/app/Session;->_reader:Linstall/app/Reader;

    invoke-virtual {v1}, Linstall/app/Reader;->getSEService()Linstall/app/SEService;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Linstall/app/SEService;->openLogicalChannel(Linstall/app/Session;[B)Linstall/app/Channel;

    move-result-object v0

    .line 34
    .local v0, "logicalChannel":Linstall/app/Channel;
    iget-object v1, p0, Linstall/app/Session;->_channels:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    monitor-exit v2

    .line 36
    return-object v0

    .line 35
    .end local v0    # "logicalChannel":Linstall/app/Channel;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setClosed()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Linstall/app/Session;->_isClosed:Z

    .line 79
    return-void
.end method
