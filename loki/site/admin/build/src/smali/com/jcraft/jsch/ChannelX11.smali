.class Lcom/jcraft/jsch/ChannelX11;
.super Lcom/jcraft/jsch/Channel;


# static fields
.field static g:[B

.field private static h:Ljava/lang/String;

.field private static i:I

.field private static k:[B

.field private static l:Ljava/util/Hashtable;

.field private static m:Ljava/util/Hashtable;

.field private static n:[B


# instance fields
.field private j:Z

.field private o:Ljava/net/Socket;

.field private p:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "127.0.0.1"

    sput-object v0, Lcom/jcraft/jsch/ChannelX11;->h:Ljava/lang/String;

    const/16 v0, 0x1770

    sput v0, Lcom/jcraft/jsch/ChannelX11;->i:I

    sput-object v1, Lcom/jcraft/jsch/ChannelX11;->g:[B

    sput-object v1, Lcom/jcraft/jsch/ChannelX11;->k:[B

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/ChannelX11;->l:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/ChannelX11;->m:Ljava/util/Hashtable;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jcraft/jsch/ChannelX11;->n:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method constructor <init>()V
    .locals 3

    const/high16 v2, 0x20000

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelX11;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->o:Ljava/net/Socket;

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->p:[B

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/ChannelX11;->zxcvxvsdvsvsvs(I)V

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/ChannelX11;->serfwefewfwefewef(I)V

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelX11;->sdvsdvsvsevsvsev(I)V

    const-string v0, "x11"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->serfwefewfwefewef:[B

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelX11;->a:Z

    return-void
.end method

.method private static fsafsdfsfsdfsfsdfsd([B[B)Z
    .locals 4

    const/4 v1, 0x0

    array-length v0, p0

    array-length v2, p1

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static serfwefewfwefewef(Lcom/jcraft/jsch/Session;)V
    .locals 2

    sget-object v1, Lcom/jcraft/jsch/ChannelX11;->m:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/ChannelX11;->m:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/ChannelX11;->l:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static zxcvxvsdvsvsvs(Lcom/jcraft/jsch/Session;)[B
    .locals 8

    const/4 v1, 0x0

    const/16 v7, 0x10

    sget-object v2, Lcom/jcraft/jsch/ChannelX11;->m:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/ChannelX11;->m:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-nez v0, :cond_1

    sget-object v3, Lcom/jcraft/jsch/Session;->hukuiluliulu:Lcom/jcraft/jsch/Random;

    const/16 v0, 0x10

    new-array v4, v0, [B

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    const/16 v5, 0x10

    :try_start_1
    invoke-interface {v3, v4, v0, v5}, Lcom/jcraft/jsch/Random;->fsafsdfsfsdfsfsdfsd([BII)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/jcraft/jsch/ChannelX11;->l:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    new-array v0, v0, [B

    :goto_0
    if-ge v1, v7, :cond_0

    mul-int/lit8 v3, v1, 0x2

    sget-object v5, Lcom/jcraft/jsch/ChannelX11;->n:[B

    aget-byte v6, v4, v1

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-byte v5, v5, v6

    aput-byte v5, v0, v3

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v5, Lcom/jcraft/jsch/ChannelX11;->n:[B

    aget-byte v6, v4, v1

    and-int/lit8 v6, v6, 0xf

    aget-byte v5, v5, v6

    aput-byte v5, v0, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_0
    :try_start_5
    sget-object v1, Lcom/jcraft/jsch/ChannelX11;->m:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object v0
.end method

.method private zxcvxvsdvsvsvs([BII)[B
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->p:[B

    array-length v0, v0

    add-int/2addr v0, p3

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelX11;->p:[B

    array-length v1, v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelX11;->p:[B

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelX11;->p:[B

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelX11;->p:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->p:[B

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->p:[B

    return-object v0
.end method


# virtual methods
.method fsafsdfsfsdfsfsdfsd([BII)V
    .locals 10

    const/4 v9, 0x0

    const v7, 0xff00

    const/16 v2, 0x9

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelX11;->j:Z

    if-eqz v0, :cond_5

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelX11;->fgjyukukuiki()Lcom/jcraft/jsch/Session;
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-direct {p0, p1, p2, p3}, Lcom/jcraft/jsch/ChannelX11;->zxcvxvsdvsvsvs([BII)[B

    move-result-object v4

    array-length v5, v4

    if-ge v5, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSchException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x6

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0x100

    const/4 v1, 0x7

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v0

    const/16 v0, 0x8

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0x100

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    aget-byte v2, v4, v8

    and-int/lit16 v2, v2, 0xff

    const/16 v6, 0x42

    if-ne v2, v6, :cond_3

    move v2, v1

    move v1, v0

    :goto_1
    add-int/lit8 v0, v2, 0xc

    neg-int v6, v2

    and-int/lit8 v6, v6, 0x3

    add-int/2addr v0, v6

    add-int/2addr v0, v1

    if-lt v5, v0, :cond_0

    new-array v6, v1, [B

    add-int/lit8 v0, v2, 0xc

    neg-int v7, v2

    and-int/lit8 v7, v7, 0x3

    add-int/2addr v0, v7

    invoke-static {v4, v0, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v7, Lcom/jcraft/jsch/ChannelX11;->l:Ljava/util/Hashtable;

    monitor-enter v7

    :try_start_1
    sget-object v0, Lcom/jcraft/jsch/ChannelX11;->l:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v0}, Lcom/jcraft/jsch/ChannelX11;->fsafsdfsfsdfsfsdfsd([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/jcraft/jsch/ChannelX11;->g:[B

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jcraft/jsch/ChannelX11;->g:[B

    add-int/lit8 v3, v2, 0xc

    neg-int v2, v2

    and-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v3

    invoke-static {v0, v8, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    iput-boolean v8, p0, Lcom/jcraft/jsch/ChannelX11;->j:Z

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, v4, v8, v5}, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd([BII)V

    iput-object v9, p0, Lcom/jcraft/jsch/ChannelX11;->p:[B

    goto :goto_0

    :cond_3
    aget-byte v2, v4, v8

    and-int/lit16 v2, v2, 0xff

    const/16 v6, 0x6c

    if-ne v2, v6, :cond_6

    ushr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v7

    or-int/2addr v1, v2

    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v7

    or-int/2addr v0, v2

    move v2, v1

    move v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    iput-object v9, p0, Lcom/jcraft/jsch/ChannelX11;->htyjyukuilulululu:Ljava/lang/Thread;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelX11;->hukuiluliulu()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->zxcvxvsdvsvsvs()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelX11;->rthrthrtjrtjrjtdcbcvbc()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd([BII)V

    goto/16 :goto_0

    :cond_6
    move v2, v1

    move v1, v0

    goto :goto_1
.end method

.method public run()V
    .locals 6

    const/4 v3, 0x1

    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/ChannelX11;->h:Ljava/lang/String;

    sget v1, Lcom/jcraft/jsch/ChannelX11;->i:I

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->o:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->o:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelX11;->o:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelX11;->o:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelX11;->htyjyukuilulululu()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->htyjyukuilulululu:Ljava/lang/Thread;

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelX11;->wrrgehehehehe:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelX11;->htyjyukuilulululu:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelX11;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelX11;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    iget-object v2, v2, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelX11;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    iget-object v2, v2, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd:Ljava/io/InputStream;

    iget-object v3, v0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    const/16 v4, 0xe

    iget-object v5, v0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0xe

    add-int/lit8 v5, v5, -0x80

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelX11;->hukuiluliulu()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelX11;->rthrthrtjrtjrjtdcbcvbc()V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/ChannelX11;->rthrthrtjrtjrjtdcbcvbc(I)V

    iput-boolean v3, p0, Lcom/jcraft/jsch/ChannelX11;->reyeyreyeyeyey:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelX11;->rthrthrtjrtjrjtdcbcvbc()V

    goto :goto_2

    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lcom/jcraft/jsch/ChannelX11;->reyeyreyeyeyey:Z

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    const/16 v3, 0x5e

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    iget v3, p0, Lcom/jcraft/jsch/ChannelX11;->zxcvxvsdvsvsvs:I

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelX11;->fgjyukukuiki()Lcom/jcraft/jsch/Session;

    move-result-object v3

    invoke-virtual {v3, v1, p0, v2}, Lcom/jcraft/jsch/Session;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
