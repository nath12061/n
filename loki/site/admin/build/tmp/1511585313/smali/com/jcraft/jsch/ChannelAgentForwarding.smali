.class Lcom/jcraft/jsch/ChannelAgentForwarding;
.super Lcom/jcraft/jsch/Channel;


# instance fields
.field private A:Lcom/jcraft/jsch/Packet;

.field private B:Lcom/jcraft/jsch/Buffer;

.field g:Z

.field private final h:B

.field private final i:B

.field private final j:B

.field private final k:B

.field private final l:B

.field private final m:B

.field private final n:B

.field private final o:B

.field private final p:B

.field private final q:B

.field private final r:B

.field private final s:B

.field private final t:B

.field private final u:B

.field private final v:B

.field private final w:B

.field private final x:B

.field private y:Lcom/jcraft/jsch/Buffer;

.field private z:Lcom/jcraft/jsch/Buffer;


# direct methods
.method constructor <init>()V
    .locals 4

    const/high16 v3, 0x20000

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    iput-byte v2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->h:B

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->i:B

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->j:B

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->k:B

    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->l:B

    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->m:B

    const/4 v0, 0x7

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->n:B

    const/16 v0, 0x8

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->o:B

    const/16 v0, 0x9

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->p:B

    const/16 v0, 0xb

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->q:B

    const/16 v0, 0xc

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->r:B

    const/16 v0, 0xd

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->s:B

    const/16 v0, 0xe

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->t:B

    const/16 v0, 0x11

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->u:B

    const/16 v0, 0x12

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->v:B

    const/16 v0, 0x13

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->w:B

    const/16 v0, 0x1e

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->x:B

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g:Z

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->z:Lcom/jcraft/jsch/Buffer;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->A:Lcom/jcraft/jsch/Packet;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/ChannelAgentForwarding;->zxcvxvsdvsvsvs(I)V

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/ChannelAgentForwarding;->serfwefewfwefewef(I)V

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->sdvsdvsvsevsvsev(I)V

    const-string v0, "auth-agent@openssh.com"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->serfwefewfwefewef:[B

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->fgjyukukuiki()V

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:Lcom/jcraft/jsch/Buffer;

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->a:Z

    return-void
.end method

.method private fsafsdfsfsdfsfsdfsd([B)V
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->A:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->z:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->z:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->zxcvxvsdvsvsvs:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->z:Lcom/jcraft/jsch/Buffer;

    array-length v1, p1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->z:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->fgjyukukuiki()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->A:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method fsafsdfsfsdfsfsdfsd([BII)V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/4 v0, 0x6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->A:Lcom/jcraft/jsch/Packet;

    if-nez v4, :cond_0

    new-instance v4, Lcom/jcraft/jsch/Buffer;

    iget v5, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->wrrgehehehehe:I

    invoke-direct {v4, v5}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->z:Lcom/jcraft/jsch/Buffer;

    new-instance v4, Lcom/jcraft/jsch/Packet;

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->z:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v4, v5}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->A:Lcom/jcraft/jsch/Packet;

    :cond_0
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->htyjyukuilulululu()V

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    array-length v4, v4

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    add-int/2addr v5, p3

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    add-int/2addr v4, p3

    new-array v4, v4, [B

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    iget-object v5, v5, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    iget-object v6, v6, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    array-length v6, v6

    invoke-static {v5, v3, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    iput-object v4, v5, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    :cond_1
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, p1, p2, p3}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd([BII)V

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    move-result v4

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd()I

    move-result v5

    if-le v4, v5, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    iget v1, v0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    add-int/lit8 v1, v1, -0x4

    iput v1, v0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    move-result v4

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->fgjyukukuiki()Lcom/jcraft/jsch/Session;
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    invoke-virtual {v5}, Lcom/jcraft/jsch/Session;->fgjyukukuiki()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v6

    invoke-virtual {v5}, Lcom/jcraft/jsch/Session;->serfwefewfwefewef()Lcom/jcraft/jsch/UserInfo;

    move-result-object v5

    iget-object v7, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->fgjyukukuiki()V

    const/16 v7, 0xb

    if-ne v4, v7, :cond_6

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    invoke-interface {v6}, Lcom/jcraft/jsch/IdentityRepository;->fsafsdfsfsdfsfsdfsd()Ljava/util/Vector;

    move-result-object v4

    monitor-enter v4

    move v2, v3

    move v1, v3

    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->fsafsdfsfsdfsfsdfsd()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_16

    add-int/lit8 v0, v1, 0x1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSchException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    :goto_3
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v0

    if-nez v0, :cond_4

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:Lcom/jcraft/jsch/Buffer;

    sget-object v1, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef([B)V

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->fsafsdfsfsdfsfsdfsd([B)V

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x1

    if-ne v4, v7, :cond_7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    goto :goto_5

    :cond_7
    const/16 v7, 0xd

    if-ne v4, v7, :cond_e

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    invoke-interface {v6}, Lcom/jcraft/jsch/IdentityRepository;->fsafsdfsfsdfsfsdfsd()Ljava/util/Vector;

    move-result-object v6

    monitor-enter v6

    move v1, v3

    :goto_6
    :try_start_4
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_15

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v3

    if-nez v3, :cond_9

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_9
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v3

    invoke-static {v4, v3}, Lcom/jcraft/jsch/Util;->sdfsdfsdfsdf([B[B)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->serfwefewfwefewef()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v5, :cond_8

    :cond_a
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->serfwefewfwefewef()Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Passphrase for "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->zxcvxvsdvsvsvs()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lcom/jcraft/jsch/UserInfo;->sdfsdfsdfsdf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    :goto_7
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->serfwefewfwefewef()Z

    move-result v3

    if-nez v3, :cond_8

    :goto_8
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_14

    invoke-interface {v0, v7}, Lcom/jcraft/jsch/Identity;->sdfsdfsdfsdf([B)[B

    move-result-object v0

    :goto_9
    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    goto/16 :goto_5

    :cond_c
    :try_start_5
    invoke-interface {v5}, Lcom/jcraft/jsch/UserInfo;->fsafsdfsfsdfsfsdfsd()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v3

    :try_start_6
    invoke-interface {v0, v3}, Lcom/jcraft/jsch/Identity;->fsafsdfsfsdfsfsdfsd([B)Z
    :try_end_6
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_7

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :cond_d
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    goto/16 :goto_5

    :cond_e
    const/16 v2, 0x12

    if-ne v4, v2, :cond_f

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v1

    invoke-interface {v6, v1}, Lcom/jcraft/jsch/IdentityRepository;->sdfsdfsdfsdf([B)Z

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    goto/16 :goto_5

    :cond_f
    const/16 v2, 0x9

    if-ne v4, v2, :cond_10

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    goto/16 :goto_5

    :cond_10
    const/16 v2, 0x13

    if-ne v4, v2, :cond_11

    invoke-interface {v6}, Lcom/jcraft/jsch/IdentityRepository;->sdfsdfsdfsdf()V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    goto/16 :goto_5

    :cond_11
    const/16 v2, 0x11

    if-ne v4, v2, :cond_13

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef([B)V

    invoke-interface {v6, v2}, Lcom/jcraft/jsch/IdentityRepository;->fsafsdfsfsdfsfsdfsd([B)Z

    move-result v2

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:Lcom/jcraft/jsch/Buffer;

    if-eqz v2, :cond_12

    :goto_a
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    goto/16 :goto_5

    :cond_12
    move v0, v1

    goto :goto_a

    :cond_13
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    goto/16 :goto_5

    :catch_1
    move-exception v3

    goto/16 :goto_7

    :cond_14
    move-object v0, v2

    goto/16 :goto_9

    :cond_15
    move-object v0, v2

    goto/16 :goto_8

    :cond_16
    move v0, v1

    goto/16 :goto_2
.end method

.method public run()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->htyjyukuilulululu()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->reyeyreyeyeyey:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->rthrthrtjrtjrjtdcbcvbc()V

    goto :goto_0
.end method

.method sdvsdvsvsevsvsev()V
    .locals 0

    invoke-super {p0}, Lcom/jcraft/jsch/Channel;->sdvsdvsvsevsvsev()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->hukuiluliulu()V

    return-void
.end method
