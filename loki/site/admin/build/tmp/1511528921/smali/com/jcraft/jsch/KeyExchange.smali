.class public abstract Lcom/jcraft/jsch/KeyExchange;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static ertertetetetete:Ljava/lang/String;

.field static fgjyukukuiki:Ljava/lang/String;

.field static htyjyukuilulululu:Ljava/lang/String;

.field static reyeyreyeyeyey:Ljava/lang/String;

.field static uiiliuluiiuluilulu:Ljava/lang/String;


# instance fields
.field protected d:Lcom/jcraft/jsch/Session;

.field protected e:Lcom/jcraft/jsch/HASH;

.field protected f:[B

.field private fsafsdfsfsdfsfsdfsd:I

.field protected g:[B

.field protected h:[B

.field protected final i:I

.field protected final j:I

.field protected final k:I

.field private sdfsdfsdfsdf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "diffie-hellman-group1-sha1"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->fgjyukukuiki:Ljava/lang/String;

    const-string v0, "ssh-rsa,ssh-dss"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->htyjyukuilulululu:Ljava/lang/String;

    const-string v0, "blowfish-cbc"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->ertertetetetete:Ljava/lang/String;

    const-string v0, "blowfish-cbc"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->uiiliuluiiuluilulu:Ljava/lang/String;

    const-string v0, "hmac-md5"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->reyeyreyeyeyey:Ljava/lang/String;

    const-string v0, "hmac-md5"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->d:Lcom/jcraft/jsch/Session;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->e:Lcom/jcraft/jsch/HASH;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->f:[B

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->g:[B

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->h:[B

    iput v1, p0, Lcom/jcraft/jsch/KeyExchange;->i:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/KeyExchange;->j:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/jcraft/jsch/KeyExchange;->k:I

    iput v1, p0, Lcom/jcraft/jsch/KeyExchange;->fsafsdfsfsdfsfsdfsd:I

    const-string v0, ""

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->sdfsdfsdfsdf:Ljava/lang/String;

    return-void
.end method

.method protected static fsafsdfsfsdfsfsdfsd([B[B)[Ljava/lang/String;
    .locals 12

    const/16 v0, 0xa

    new-array v3, v0, [Ljava/lang/String;

    new-instance v5, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v5, p0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs(I)V

    new-instance v6, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v6, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    const/16 v0, 0x11

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs(I)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "kex: server: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v7

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "kex: client: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v7

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs(I)V

    const/16 v0, 0x11

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs(I)V

    :cond_2
    const/4 v0, 0x0

    move v4, v0

    :goto_2
    const/16 v0, 0xa

    if-ge v4, v0, :cond_c

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v7

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v8

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_3
    array-length v2, v8

    if-ge v1, v2, :cond_7

    :goto_4
    array-length v2, v8

    if-ge v1, v2, :cond_3

    aget-byte v2, v8, v1

    const/16 v9, 0x2c

    if-eq v2, v9, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_4
    sub-int v2, v1, v0

    invoke-static {v8, v0, v2}, Lcom/jcraft/jsch/Util;->zxcvxvsdvsvsvs([BII)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_6
    array-length v10, v7

    if-ge v2, v10, :cond_a

    :goto_7
    array-length v10, v7

    if-ge v2, v10, :cond_5

    aget-byte v10, v7, v2

    const/16 v11, 0x2c

    if-eq v10, v11, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_5
    if-ne v0, v2, :cond_6

    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    sub-int v10, v2, v0

    invoke-static {v7, v0, v10}, Lcom/jcraft/jsch/Util;->zxcvxvsdvsvsvs([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    aput-object v9, v3, v4

    :cond_7
    if-nez v1, :cond_b

    const-string v0, ""

    aput-object v0, v3, v4

    :cond_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_b
    aget-object v0, v3, v4

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "kex: server->client "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v4, 0x5

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v4, 0x7

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "kex: client->server "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v4, 0x4

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v4, 0x6

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(ILjava/lang/String;)V

    :cond_d
    move-object v0, v3

    goto/16 :goto_5
.end method


# virtual methods
.method eryryhrtytujrtujrurt()Lcom/jcraft/jsch/HASH;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->e:Lcom/jcraft/jsch/HASH;

    return-object v0
.end method

.method public abstract fsafsdfsfsdfsfsdfsd()I
.end method

.method public abstract fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;[B[B[B[B)V
.end method

.method public abstract fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;)Z
.end method

.method protected fsafsdfsfsdfsfsdfsd(Ljava/lang/String;[BI[B)Z
    .locals 11

    const/4 v9, 0x1

    const/high16 v8, 0xff0000

    const v7, 0xff00

    const/high16 v6, -0x1000000

    const/4 v0, 0x0

    const-string v1, "ssh-rsa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/jcraft/jsch/KeyExchange;->fsafsdfsfsdfsfsdfsd:I

    iput-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->sdfsdfsdfsdf:Ljava/lang/String;

    add-int/lit8 v1, p3, 0x1

    aget-byte v2, p2, p3

    shl-int/lit8 v2, v2, 0x18

    and-int/2addr v2, v6

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v7

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    new-array v2, v1, [B

    invoke-static {p2, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v3

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x18

    and-int/2addr v1, v6

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x10

    and-int/2addr v3, v8

    or-int/2addr v1, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p2, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v7

    or-int/2addr v1, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    new-array v3, v1, [B

    invoke-static {p2, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v4, v1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->d:Lcom/jcraft/jsch/Session;

    const-string v4, "signature.rsa"

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Session;->sdvsdvsvsevsvsev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureRSA;->fsafsdfsfsdfsfsdfsd()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :goto_0
    invoke-interface {v0, v2, v3}, Lcom/jcraft/jsch/SignatureRSA;->fsafsdfsfsdfsfsdfsd([B[B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->g:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/SignatureRSA;->fsafsdfsfsdfsfsdfsd([B)V

    invoke-interface {v0, p4}, Lcom/jcraft/jsch/SignatureRSA;->sdfsdfsdfsdf([B)Z

    move-result v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v9}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "ssh_rsa_verify: signature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(ILjava/lang/String;)V

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_2
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "ssh-dss"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v9, p0, Lcom/jcraft/jsch/KeyExchange;->fsafsdfsfsdfsfsdfsd:I

    iput-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->sdfsdfsdfsdf:Ljava/lang/String;

    add-int/lit8 v1, p3, 0x1

    aget-byte v2, p2, p3

    shl-int/lit8 v2, v2, 0x18

    and-int/2addr v2, v6

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v7

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    new-array v2, v1, [B

    invoke-static {p2, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v3

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x18

    and-int/2addr v1, v6

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x10

    and-int/2addr v3, v8

    or-int/2addr v1, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p2, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v7

    or-int/2addr v1, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    new-array v3, v1, [B

    invoke-static {p2, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x18

    and-int/2addr v1, v6

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p2, v4

    shl-int/lit8 v4, v4, 0x10

    and-int/2addr v4, v8

    or-int/2addr v1, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p2, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v7

    or-int/2addr v1, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    new-array v4, v1, [B

    invoke-static {p2, v5, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v5

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x18

    and-int/2addr v1, v6

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p2, v5

    shl-int/lit8 v5, v5, 0x10

    and-int/2addr v5, v8

    or-int/2addr v1, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, p2, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v7

    or-int/2addr v1, v6

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    new-array v5, v1, [B

    invoke-static {p2, v6, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v6, v1

    const/4 v1, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->d:Lcom/jcraft/jsch/Session;

    const-string v6, "signature.dss"

    invoke-virtual {v0, v6}, Lcom/jcraft/jsch/Session;->sdvsdvsvsevsvsev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureDSA;

    check-cast v0, Lcom/jcraft/jsch/SignatureDSA;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureDSA;->fsafsdfsfsdfsfsdfsd()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    invoke-interface {v0, v5, v2, v3, v4}, Lcom/jcraft/jsch/SignatureDSA;->fsafsdfsfsdfsfsdfsd([B[B[B[B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->g:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/SignatureDSA;->fsafsdfsfsdfsfsdfsd([B)V

    invoke-interface {v0, p4}, Lcom/jcraft/jsch/SignatureDSA;->sdfsdfsdfsdf([B)Z

    move-result v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v9}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "ssh_dss_verify: signature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(ILjava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_4
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    const-string v1, "ecdsa-sha2-nistp256"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ecdsa-sha2-nistp384"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ecdsa-sha2-nistp521"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x2

    iput v1, p0, Lcom/jcraft/jsch/KeyExchange;->fsafsdfsfsdfsfsdfsd:I

    iput-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->sdfsdfsdfsdf:Ljava/lang/String;

    add-int/lit8 v1, p3, 0x1

    aget-byte v2, p2, p3

    shl-int/lit8 v2, v2, 0x18

    and-int/2addr v2, v6

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v7

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    new-array v2, v1, [B

    invoke-static {p2, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v3

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x18

    and-int/2addr v1, v6

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p2, v2

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v7

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v3, v1, -0x1

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    array-length v4, v3

    invoke-static {p2, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v1, -0x1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/lit8 v4, v1, -0x1

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [B

    array-length v5, v4

    invoke-static {p2, v2, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v1, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    const/4 v1, 0x0

    :try_start_4
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->d:Lcom/jcraft/jsch/Session;

    const-string v2, "signature.ecdsa"

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Session;->sdvsdvsvsevsvsev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureECDSA;

    check-cast v0, Lcom/jcraft/jsch/SignatureECDSA;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureECDSA;->fsafsdfsfsdfsfsdfsd()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    invoke-interface {v0, v3, v4}, Lcom/jcraft/jsch/SignatureECDSA;->fsafsdfsfsdfsfsdfsd([B[B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->g:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/SignatureECDSA;->fsafsdfsfsdfsfsdfsd([B)V

    invoke-interface {v0, p4}, Lcom/jcraft/jsch/SignatureECDSA;->sdfsdfsdfsdf([B)Z

    move-result v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_6
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_5

    :cond_4
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "unknown alg"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto/16 :goto_4

    :catch_5
    move-exception v1

    goto/16 :goto_2
.end method

.method protected fsafsdfsfsdfsfsdfsd([B)[B
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    array-length v0, p1

    if-le v0, v2, :cond_0

    aget-byte v0, p1, v3

    if-nez v0, :cond_0

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    array-length v1, v0

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyExchange;->fsafsdfsfsdfsfsdfsd([B)[B

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method hukuiluliulu()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->g:[B

    return-object v0
.end method

.method rthrthrtjrtjrjtdcbcvbc()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->h:[B

    return-object v0
.end method

.method public sdfsdfsdfsdf()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/jcraft/jsch/KeyExchange;->fsafsdfsfsdfsfsdfsd:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "DSA"

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/KeyExchange;->fsafsdfsfsdfsfsdfsd:I

    if-nez v0, :cond_1

    const-string v0, "RSA"

    goto :goto_0

    :cond_1
    const-string v0, "ECDSA"

    goto :goto_0
.end method

.method sdvsdvsvsevsvsev()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->f:[B

    return-object v0
.end method

.method public serfwefewfwefewef()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->d:Lcom/jcraft/jsch/Session;

    const-string v2, "md5"

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Session;->sdvsdvsvsevsvsev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/HASH;

    check-cast v0, Lcom/jcraft/jsch/HASH;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyExchange;->rthrthrtjrtjrjtdcbcvbc()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/HASH;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "getFingerPrint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public zxcvxvsdvsvsvs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->sdfsdfsdfsdf:Ljava/lang/String;

    return-object v0
.end method
