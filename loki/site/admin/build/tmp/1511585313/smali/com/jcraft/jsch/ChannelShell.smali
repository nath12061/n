.class public Lcom/jcraft/jsch/ChannelShell;
.super Lcom/jcraft/jsch/ChannelSession;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelShell;->k:Z

    return-void
.end method


# virtual methods
.method sdfsdfsdfsdf()V
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelShell;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelShell;->fgjyukukuiki()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->serfwefewfwefewef:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelShell;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelShell;->fgjyukukuiki()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd(Ljava/io/OutputStream;)V

    return-void
.end method

.method public zxcvxvsdvsvsvs()V
    .locals 4

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelShell;->fgjyukukuiki()Lcom/jcraft/jsch/Session;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelShell;->reyeyreyeyeyey()V

    new-instance v1, Lcom/jcraft/jsch/RequestShell;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestShell;-><init>()V

    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/Request;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelShell;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    iget-object v1, v1, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelShell;->htyjyukuilulululu:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelShell;->htyjyukuilulululu:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Shell for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, v0, Lcom/jcraft/jsch/Session;->uiiliuluiiuluilulu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/jcraft/jsch/Session;->fgjyukukuiki:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelShell;->htyjyukuilulululu:Ljava/lang/Thread;

    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->fgjyukukuiki:Z

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelShell;->htyjyukuilulululu:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    :cond_2
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "ChannelShell"

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "ChannelShell"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
