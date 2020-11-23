.class public Lcom/jcraft/jsch/ChannelSubsystem;
.super Lcom/jcraft/jsch/ChannelSession;


# instance fields
.field g:Z

.field r:Z

.field s:Z

.field t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->g:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->s:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method sdfsdfsdfsdf()V
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSubsystem;->fgjyukukuiki()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->serfwefewfwefewef:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSubsystem;->fgjyukukuiki()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd(Ljava/io/OutputStream;)V

    return-void
.end method

.method public sdfsdfsdfsdf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->r:Z

    return-void
.end method

.method public zxcvxvsdvsvsvs()V
    .locals 4

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSubsystem;->fgjyukukuiki()Lcom/jcraft/jsch/Session;

    move-result-object v1

    :try_start_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/RequestX11;

    invoke-direct {v0}, Lcom/jcraft/jsch/RequestX11;-><init>()V

    invoke-virtual {v0, v1, p0}, Lcom/jcraft/jsch/Request;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->r:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jcraft/jsch/RequestPtyReq;

    invoke-direct {v0}, Lcom/jcraft/jsch/RequestPtyReq;-><init>()V

    invoke-virtual {v0, v1, p0}, Lcom/jcraft/jsch/Request;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    :cond_1
    new-instance v0, Lcom/jcraft/jsch/RequestSubsystem;

    invoke-direct {v0}, Lcom/jcraft/jsch/RequestSubsystem;-><init>()V

    check-cast v0, Lcom/jcraft/jsch/RequestSubsystem;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSubsystem;->t:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/jcraft/jsch/ChannelSubsystem;->s:Z

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/jcraft/jsch/RequestSubsystem;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->htyjyukuilulululu:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->htyjyukuilulululu:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Subsystem for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, v1, Lcom/jcraft/jsch/Session;->uiiliuluiiuluilulu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->fgjyukukuiki:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->htyjyukuilulululu:Ljava/lang/Thread;

    iget-boolean v1, v1, Lcom/jcraft/jsch/Session;->fgjyukukuiki:Z

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->htyjyukuilulululu:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    :cond_4
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "ChannelSubsystem"

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "ChannelSubsystem"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
