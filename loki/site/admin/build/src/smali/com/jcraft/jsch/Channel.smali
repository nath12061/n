.class public abstract Lcom/jcraft/jsch/Channel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static fsafsdfsfsdfsfsdfsd:I

.field private static g:Ljava/util/Vector;


# instance fields
.field volatile a:Z

.field volatile b:Z

.field volatile c:I

.field volatile d:I

.field volatile e:I

.field volatile ertertetetetete:Z

.field volatile eryryhrtytujrtujrurt:I

.field f:I

.field fgjyukukuiki:Lcom/jcraft/jsch/IO;

.field private h:Lcom/jcraft/jsch/Session;

.field htyjyukuilulululu:Ljava/lang/Thread;

.field volatile hukuiluliulu:I

.field volatile reyeyreyeyeyey:Z

.field volatile rthrthrtjrtjrjtdcbcvbc:J

.field sdfsdfsdfsdf:I

.field volatile sdvsdvsvsevsvsev:I

.field protected serfwefewfwefewef:[B

.field volatile uiiliuluiiuluilulu:Z

.field volatile wrrgehehehehe:I

.field volatile zxcvxvsdvsvsvs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/jcraft/jsch/Channel;->fsafsdfsfsdfsfsdfsd:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/Channel;->g:Ljava/util/Vector;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/jcraft/jsch/Channel;->zxcvxvsdvsvsvs:I

    const-string v0, "foo"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->serfwefewfwefewef:[B

    const/high16 v0, 0x100000

    iput v0, p0, Lcom/jcraft/jsch/Channel;->sdvsdvsvsevsvsev:I

    iget v0, p0, Lcom/jcraft/jsch/Channel;->sdvsdvsvsevsvsev:I

    iput v0, p0, Lcom/jcraft/jsch/Channel;->hukuiluliulu:I

    const/16 v0, 0x4000

    iput v0, p0, Lcom/jcraft/jsch/Channel;->eryryhrtytujrtujrurt:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jcraft/jsch/Channel;->rthrthrtjrtjrjtdcbcvbc:J

    iput v2, p0, Lcom/jcraft/jsch/Channel;->wrrgehehehehe:I

    iput-object v4, p0, Lcom/jcraft/jsch/Channel;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    iput-object v4, p0, Lcom/jcraft/jsch/Channel;->htyjyukuilulululu:Ljava/lang/Thread;

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->ertertetetetete:Z

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->uiiliuluiiuluilulu:Z

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->reyeyreyeyeyey:Z

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->a:Z

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->b:Z

    iput v3, p0, Lcom/jcraft/jsch/Channel;->c:I

    iput v2, p0, Lcom/jcraft/jsch/Channel;->d:I

    iput v2, p0, Lcom/jcraft/jsch/Channel;->e:I

    iput v2, p0, Lcom/jcraft/jsch/Channel;->f:I

    sget-object v1, Lcom/jcraft/jsch/Channel;->g:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/jcraft/jsch/Channel;->fsafsdfsfsdfsfsdfsd:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/jcraft/jsch/Channel;->fsafsdfsfsdfsfsdfsd:I

    iput v0, p0, Lcom/jcraft/jsch/Channel;->sdfsdfsdfsdf:I

    sget-object v0, Lcom/jcraft/jsch/Channel;->g:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static fsafsdfsfsdfsfsdfsd(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;
    .locals 4

    sget-object v2, Lcom/jcraft/jsch/Channel;->g:Ljava/util/Vector;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/Channel;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/jcraft/jsch/Channel;->g:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Channel;

    check-cast v0, Lcom/jcraft/jsch/Channel;

    iget v3, v0, Lcom/jcraft/jsch/Channel;->sdfsdfsdfsdf:I

    if-ne v3, p0, :cond_0

    iget-object v3, v0, Lcom/jcraft/jsch/Channel;->h:Lcom/jcraft/jsch/Session;

    if-ne v3, p1, :cond_0

    monitor-exit v2

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    monitor-exit v2

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;
    .locals 1

    const-string v0, "session"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/ChannelSession;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "shell"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jcraft/jsch/ChannelShell;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelShell;-><init>()V

    goto :goto_0

    :cond_1
    const-string v0, "exec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/jcraft/jsch/ChannelExec;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelExec;-><init>()V

    goto :goto_0

    :cond_2
    const-string v0, "x11"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/jcraft/jsch/ChannelX11;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelX11;-><init>()V

    goto :goto_0

    :cond_3
    const-string v0, "auth-agent@openssh.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/jcraft/jsch/ChannelAgentForwarding;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelAgentForwarding;-><init>()V

    goto :goto_0

    :cond_4
    const-string v0, "direct-tcpip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;-><init>()V

    goto :goto_0

    :cond_5
    const-string v0, "forwarded-tcpip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;-><init>()V

    goto :goto_0

    :cond_6
    const-string v0, "sftp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSftp;-><init>()V

    goto :goto_0

    :cond_7
    const-string v0, "subsystem"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/jcraft/jsch/ChannelSubsystem;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSubsystem;-><init>()V

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Channel;)V
    .locals 2

    sget-object v1, Lcom/jcraft/jsch/Channel;->g:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/Channel;->g:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;)V
    .locals 7

    const/4 v3, 0x0

    sget-object v5, Lcom/jcraft/jsch/Channel;->g:Ljava/util/Vector;

    monitor-enter v5

    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/Channel;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v6, v0, [Lcom/jcraft/jsch/Channel;

    move v4, v3

    move v2, v3

    :goto_0
    sget-object v0, Lcom/jcraft/jsch/Channel;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge v4, v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/jcraft/jsch/Channel;->g:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Channel;

    check-cast v0, Lcom/jcraft/jsch/Channel;

    iget-object v1, v0, Lcom/jcraft/jsch/Channel;->h:Lcom/jcraft/jsch/Session;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, p0, :cond_2

    add-int/lit8 v1, v2, 0x1

    :try_start_2
    aput-object v0, v6, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v2, v0

    goto :goto_0

    :cond_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v3

    :goto_2
    if-ge v0, v2, :cond_1

    aget-object v1, v6, v0

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel;->rthrthrtjrtjrjtdcbcvbc()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method protected ertertetetetete()Lcom/jcraft/jsch/Packet;
    .locals 3

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    iget-object v2, p0, Lcom/jcraft/jsch/Channel;->serfwefewfwefewef:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->sdfsdfsdfsdf:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->hukuiluliulu:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->eryryhrtytujrtujrurt:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    return-object v1
.end method

.method eryryhrtytujrtujrurt()V
    .locals 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->reyeyreyeyeyey:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->reyeyreyeyeyey:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->uiiliuluiiuluilulu:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->ertertetetetete:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->fsafsdfsfsdfsfsdfsd()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :try_start_0
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v2, Lcom/jcraft/jsch/Packet;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    const/16 v3, 0x61

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->fgjyukukuiki()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Session;->sdfsdfsdfsdf(Lcom/jcraft/jsch/Packet;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method eryryhrtytujrtujrurt(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Channel;->c:I

    return-void
.end method

.method public fgjyukukuiki()Lcom/jcraft/jsch/Session;
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->h:Lcom/jcraft/jsch/Session;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is not available"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method fsafsdfsfsdfsfsdfsd()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/Channel;->zxcvxvsdvsvsvs:I

    return v0
.end method

.method declared-synchronized fsafsdfsfsdfsfsdfsd(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/jcraft/jsch/Channel;->zxcvxvsdvsvsvs:I

    iget v0, p0, Lcom/jcraft/jsch/Channel;->f:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized fsafsdfsfsdfsfsdfsd(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/jcraft/jsch/Channel;->rthrthrtjrtjrjtdcbcvbc:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;)V
    .locals 2

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->fsafsdfsfsdfsfsdfsd(I)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/Channel;->fsafsdfsfsdfsfsdfsd(J)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->hukuiluliulu(I)V

    return-void
.end method

.method public fsafsdfsfsdfsfsdfsd(Ljava/io/InputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public fsafsdfsfsdfsfsdfsd(Ljava/io/OutputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method fsafsdfsfsdfsfsdfsd([BII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd([BII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected htyjyukuilulululu()V
    .locals 3

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->fsafsdfsfsdfsfsdfsd()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->sdfsdfsdfsdf:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->hukuiluliulu:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->eryryhrtytujrtujrurt:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->fgjyukukuiki()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->sdfsdfsdfsdf(Lcom/jcraft/jsch/Packet;)V

    return-void
.end method

.method hukuiluliulu()V
    .locals 4

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->ertertetetetete:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->ertertetetetete:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->fsafsdfsfsdfsfsdfsd()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :try_start_0
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v2, Lcom/jcraft/jsch/Packet;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    const/16 v3, 0x60

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->reyeyreyeyeyey:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->fgjyukukuiki()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Session;->sdfsdfsdfsdf(Lcom/jcraft/jsch/Packet;)V

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method hukuiluliulu(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Channel;->wrrgehehehehe:I

    return-void
.end method

.method public rthrthrtjrtjrjtdcbcvbc()V
    .locals 1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->a:Z

    if-nez v0, :cond_0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Channel;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->a:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->eryryhrtytujrtujrurt()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->ertertetetetete:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->uiiliuluiiuluilulu:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->htyjyukuilulululu:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->zxcvxvsdvsvsvs()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Channel;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Channel;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected rthrthrtjrtjrjtdcbcvbc(I)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    const/16 v2, 0x5c

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->fsafsdfsfsdfsfsdfsd()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    const-string v2, "open failed"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    sget-object v2, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->fgjyukukuiki()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->sdfsdfsdfsdf(Lcom/jcraft/jsch/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method sdfsdfsdfsdf()V
    .locals 0

    return-void
.end method

.method public sdfsdfsdfsdf(I)V
    .locals 3

    iput p1, p0, Lcom/jcraft/jsch/Channel;->e:I

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->uiiliuluiiuluilulu()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->zxcvxvsdvsvsvs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->a:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->rthrthrtjrtjrjtdcbcvbc()V

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    :cond_0
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method declared-synchronized sdfsdfsdfsdf(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/jcraft/jsch/Channel;->rthrthrtjrtjrjtdcbcvbc:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/jcraft/jsch/Channel;->rthrthrtjrtjrjtdcbcvbc:J

    iget v0, p0, Lcom/jcraft/jsch/Channel;->f:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method sdfsdfsdfsdf(Lcom/jcraft/jsch/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/Channel;->h:Lcom/jcraft/jsch/Session;

    return-void
.end method

.method sdfsdfsdfsdf([BII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/IO;->sdfsdfsdfsdf([BII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method sdvsdvsvsevsvsev()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->uiiliuluiiuluilulu:Z

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->sdfsdfsdfsdf()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method sdvsdvsvsevsvsev(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Channel;->eryryhrtytujrtujrurt:I

    return-void
.end method

.method public serfwefewfwefewef()Ljava/io/InputStream;
    .locals 5

    const/4 v2, 0x0

    const v1, 0x8000

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->fgjyukukuiki()Lcom/jcraft/jsch/Session;

    move-result-object v0

    const-string v3, "max_input_buffer_size"

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Session;->sdvsdvsvsevsvsev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    new-instance v3, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-direct {v3, p0, v1, v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;II)V

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    new-instance v4, Lcom/jcraft/jsch/Channel$PassiveOutputStream;

    invoke-direct {v4, p0, v3, v0}, Lcom/jcraft/jsch/Channel$PassiveOutputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedInputStream;Z)V

    invoke-virtual {v1, v4, v2}, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd(Ljava/io/OutputStream;Z)V

    return-object v3

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1
.end method

.method serfwefewfwefewef(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Channel;->hukuiluliulu:I

    return-void
.end method

.method protected uiiliuluiiuluilulu()V
    .locals 14

    const/4 v11, -0x1

    const-wide/16 v12, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->fgjyukukuiki()Lcom/jcraft/jsch/Session;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jcraft/jsch/Session;->sdvsdvsvsevsvsev()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->ertertetetetete()Lcom/jcraft/jsch/Packet;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/jcraft/jsch/Session;->sdfsdfsdfsdf(Lcom/jcraft/jsch/Packet;)V

    const/16 v0, 0x7d0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget v2, p0, Lcom/jcraft/jsch/Channel;->e:I

    int-to-long v4, v2

    cmp-long v2, v4, v12

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->fsafsdfsfsdfsfsdfsd()I

    move-result v2

    if-ne v2, v11, :cond_4

    invoke-virtual {v7}, Lcom/jcraft/jsch/Session;->sdvsdvsvsevsvsev()Z

    move-result v2

    if-eqz v2, :cond_4

    if-lez v0, :cond_4

    cmp-long v2, v4, v12

    if-lez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    sub-long/2addr v2, v8

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    cmp-long v2, v4, v12

    if-nez v2, :cond_3

    const-wide/16 v2, 0xa

    :goto_1
    const/4 v10, 0x1

    :try_start_1
    iput v10, p0, Lcom/jcraft/jsch/Channel;->f:I

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    :try_start_2
    iput v2, p0, Lcom/jcraft/jsch/Channel;->f:I

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move-wide v2, v4

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    iput v2, p0, Lcom/jcraft/jsch/Channel;->f:I

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    iput v1, p0, Lcom/jcraft/jsch/Channel;->f:I

    throw v0

    :cond_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v7}, Lcom/jcraft/jsch/Session;->sdvsdvsvsevsvsev()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->fsafsdfsfsdfsfsdfsd()I

    move-result v0

    if-ne v0, v11, :cond_6

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel is not opened."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->b:Z

    if-nez v0, :cond_7

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel is not opened."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->a:Z

    return-void
.end method

.method public wrrgehehehehe()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->h:Lcom/jcraft/jsch/Session;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->sdvsdvsvsevsvsev()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jcraft/jsch/Channel;->a:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public zxcvxvsdvsvsvs()V
    .locals 0

    return-void
.end method

.method zxcvxvsdvsvsvs(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Channel;->sdvsdvsvsevsvsev:I

    return-void
.end method
