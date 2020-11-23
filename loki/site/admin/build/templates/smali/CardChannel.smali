.class final Linstall/app/CardChannel;
.super Ljava/lang/Object;
.source "CardChannel.java"

# interfaces
.implements Linstall/app/ICardChannel;


# instance fields
.field private final client:Linstall/app/SmartcardClient;

.field private final hChannel:J

.field private volatile isClosed:Z

.field private final isLogicalChannel:Z


# direct methods
.method constructor <init>(Linstall/app/SmartcardClient;JZ)V
    .locals 0
    .param p1, "client"    # Linstall/app/SmartcardClient;
    .param p2, "hChannel"    # J
    .param p4, "isLogicalChannel"    # Z

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Linstall/app/CardChannel;->client:Linstall/app/SmartcardClient;

    .line 11
    iput-wide p2, p0, Linstall/app/CardChannel;->hChannel:J

    .line 12
    iput-boolean p4, p0, Linstall/app/CardChannel;->isLogicalChannel:Z

    .line 13
    return-void
.end method

.method private assertOpen()V
    .locals 2

    .prologue
    .line 54
    iget-boolean v0, p0, Linstall/app/CardChannel;->isClosed:Z

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/CardException;
        }
    .end annotation

    .prologue
    .line 16
    iget-boolean v0, p0, Linstall/app/CardChannel;->isClosed:Z

    if-nez v0, :cond_0

    .line 18
    :try_start_0
    iget-object v0, p0, Linstall/app/CardChannel;->client:Linstall/app/SmartcardClient;

    invoke-virtual {v0, p0}, Linstall/app/SmartcardClient;->closeChannel(Linstall/app/CardChannel;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :cond_0
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    goto :goto_0

    .line 19
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method getHandle()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Linstall/app/CardChannel;->hChannel:J

    return-wide v0
.end method

.method invalidate()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Linstall/app/CardChannel;->isClosed:Z

    .line 51
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Linstall/app/CardChannel;->isClosed:Z

    return v0
.end method

.method public isLogicalChannel()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Linstall/app/CardChannel;->isLogicalChannel:Z

    return v0
.end method

.method public transmit([B)[B
    .locals 4
    .param p1, "command"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/CardException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Linstall/app/CardChannel;->assertOpen()V

    .line 36
    :try_start_0
    iget-object v1, p0, Linstall/app/CardChannel;->client:Linstall/app/SmartcardClient;

    iget-wide v2, p0, Linstall/app/CardChannel;->hChannel:J

    invoke-virtual {v1, v2, v3, p1}, Linstall/app/SmartcardClient;->transmit(J[B)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invalid handle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "channel is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_0
    throw v0
.end method
