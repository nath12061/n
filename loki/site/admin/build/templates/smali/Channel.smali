.class public Linstall/app/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# instance fields
.field private _hChannel:J

.field private _isClosed:Z

.field private _isLogicalChannel:Z

.field private _session:Linstall/app/Session;


# direct methods
.method constructor <init>(Linstall/app/Session;JZ)V
    .locals 2
    .param p1, "session"    # Linstall/app/Session;
    .param p2, "hChannel"    # J
    .param p4, "isLogicalChannel"    # Z

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/Channel;->_isClosed:Z

    .line 12
    iput-object p1, p0, Linstall/app/Channel;->_session:Linstall/app/Session;

    .line 13
    iput-wide p2, p0, Linstall/app/Channel;->_hChannel:J

    .line 14
    iput-boolean p4, p0, Linstall/app/Channel;->_isLogicalChannel:Z

    .line 15
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 18
    invoke-virtual {p0}, Linstall/app/Channel;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel is already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    iget-object v0, p0, Linstall/app/Channel;->_session:Linstall/app/Session;

    invoke-virtual {v0, p0}, Linstall/app/Session;->closeChannel(Linstall/app/Channel;)V

    .line 22
    return-void
.end method

.method getHandle()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Linstall/app/Channel;->_hChannel:J

    return-wide v0
.end method

.method public getSession()Linstall/app/Session;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Linstall/app/Channel;->_session:Linstall/app/Session;

    return-object v0
.end method

.method public isBasicChannel()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Linstall/app/Channel;->_isLogicalChannel:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Linstall/app/Channel;->_isClosed:Z

    return v0
.end method

.method setClosed()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Linstall/app/Channel;->_isClosed:Z

    .line 49
    return-void
.end method

.method public transmit([B)[B
    .locals 2
    .param p1, "command"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Linstall/app/Channel;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Linstall/app/Channel;->_session:Linstall/app/Session;

    invoke-virtual {v0}, Linstall/app/Session;->getReader()Linstall/app/Reader;

    move-result-object v0

    invoke-virtual {v0}, Linstall/app/Reader;->getSEService()Linstall/app/SEService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Linstall/app/SEService;->transmit(Linstall/app/Channel;[B)[B

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
