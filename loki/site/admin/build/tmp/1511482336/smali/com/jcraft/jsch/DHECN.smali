.class public abstract Lcom/jcraft/jsch/DHECN;
.super Lcom/jcraft/jsch/KeyExchange;


# instance fields
.field protected eryryhrtytujrtujrurt:I

.field fsafsdfsfsdfsfsdfsd:[B

.field protected hukuiluliulu:Ljava/lang/String;

.field private l:Lcom/jcraft/jsch/Packet;

.field private m:Lcom/jcraft/jsch/ECDH;

.field private rthrthrtjrtjrjtdcbcvbc:I

.field sdfsdfsdfsdf:[B

.field sdvsdvsvsevsvsev:[B

.field serfwefewfwefewef:[B

.field private wrrgehehehehe:Lcom/jcraft/jsch/Buffer;

.field zxcvxvsdvsvsvs:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/DHECN;->rthrthrtjrtjrjtdcbcvbc:I

    return v0
.end method

.method public fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/jcraft/jsch/DHECN;->d:Lcom/jcraft/jsch/Session;

    iput-object p2, p0, Lcom/jcraft/jsch/DHECN;->sdfsdfsdfsdf:[B

    iput-object p3, p0, Lcom/jcraft/jsch/DHECN;->zxcvxvsdvsvsvs:[B

    iput-object p4, p0, Lcom/jcraft/jsch/DHECN;->serfwefewfwefewef:[B

    iput-object p5, p0, Lcom/jcraft/jsch/DHECN;->sdvsdvsvsevsvsev:[B

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/DHECN;->hukuiluliulu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->sdvsdvsvsevsvsev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/HASH;

    check-cast v0, Lcom/jcraft/jsch/HASH;

    iput-object v0, p0, Lcom/jcraft/jsch/DHECN;->e:Lcom/jcraft/jsch/HASH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHECN;->e:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->fsafsdfsfsdfsfsdfsd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/DHECN;->wrrgehehehehe:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/DHECN;->wrrgehehehehe:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/DHECN;->l:Lcom/jcraft/jsch/Packet;

    iget-object v0, p0, Lcom/jcraft/jsch/DHECN;->l:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    iget-object v0, p0, Lcom/jcraft/jsch/DHECN;->wrrgehehehehe:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    :try_start_1
    const-string v0, "ecdh-sha2-nistp"

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->sdvsdvsvsevsvsev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/ECDH;

    check-cast v0, Lcom/jcraft/jsch/ECDH;

    iput-object v0, p0, Lcom/jcraft/jsch/DHECN;->m:Lcom/jcraft/jsch/ECDH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHECN;->m:Lcom/jcraft/jsch/ECDH;

    iget v1, p0, Lcom/jcraft/jsch/DHECN;->eryryhrtytujrtujrurt:I

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ECDH;->fsafsdfsfsdfsfsdfsd(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHECN;->m:Lcom/jcraft/jsch/ECDH;

    invoke-interface {v0}, Lcom/jcraft/jsch/ECDH;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHECN;->fsafsdfsfsdfsfsdfsd:[B

    iget-object v0, p0, Lcom/jcraft/jsch/DHECN;->wrrgehehehehe:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/DHECN;->fsafsdfsfsdfsfsdfsd:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p2, :cond_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/DHECN;->l:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->sdfsdfsdfsdf(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "SSH_MSG_KEX_ECDH_INIT sent"

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "expecting SSH_MSG_KEX_ECDH_REPLY"

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(ILjava/lang/String;)V

    :cond_2
    const/16 v0, 0x1f

    iput v0, p0, Lcom/jcraft/jsch/DHECN;->rthrthrtjrtjrjtdcbcvbc:I

    goto :goto_1
.end method

.method public fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/jcraft/jsch/DHECN;->rthrthrtjrtjrjtdcbcvbc:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    move-result v1

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "type: must be 31 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/DHECN;->h:[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v1

    invoke-static {v1}, Lcom/jcraft/jsch/KeyPairECDSA;->serfwefewfwefewef([B)[[B

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->m:Lcom/jcraft/jsch/ECDH;

    aget-object v4, v2, v0

    aget-object v5, v2, v6

    invoke-interface {v3, v4, v5}, Lcom/jcraft/jsch/ECDH;->sdfsdfsdfsdf([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->m:Lcom/jcraft/jsch/ECDH;

    aget-object v4, v2, v0

    aget-object v2, v2, v6

    invoke-interface {v3, v4, v2}, Lcom/jcraft/jsch/ECDH;->fsafsdfsfsdfsfsdfsd([B[B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/DHECN;->f:[B

    iget-object v2, p0, Lcom/jcraft/jsch/DHECN;->f:[B

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/DHECN;->fsafsdfsfsdfsfsdfsd([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/DHECN;->f:[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->wrrgehehehehe:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->fgjyukukuiki()V

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->wrrgehehehehe:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHECN;->zxcvxvsdvsvsvs:[B

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->wrrgehehehehe:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHECN;->sdfsdfsdfsdf:[B

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->wrrgehehehehe:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHECN;->sdvsdvsvsevsvsev:[B

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->wrrgehehehehe:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHECN;->serfwefewfwefewef:[B

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->wrrgehehehehe:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHECN;->h:[B

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->wrrgehehehehe:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHECN;->fsafsdfsfsdfsfsdfsd:[B

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->wrrgehehehehe:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHECN;->wrrgehehehehe:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->f:[B

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHECN;->wrrgehehehehe:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd()I

    move-result v1

    new-array v1, v1, [B

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->wrrgehehehehe:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->e:Lcom/jcraft/jsch/HASH;

    array-length v4, v1

    invoke-interface {v3, v1, v0, v4}, Lcom/jcraft/jsch/HASH;->fsafsdfsfsdfsfsdfsd([BII)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHECN;->e:Lcom/jcraft/jsch/HASH;

    invoke-interface {v1}, Lcom/jcraft/jsch/HASH;->zxcvxvsdvsvsvs()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/DHECN;->g:[B

    iget-object v1, p0, Lcom/jcraft/jsch/DHECN;->h:[B

    aget-byte v1, v1, v0

    shl-int/lit8 v1, v1, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->h:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v6

    shl-int/lit8 v3, v3, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v3, v5

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->h:[B

    const/4 v5, 0x3

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->h:[B

    const/4 v4, 0x4

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->h:[B

    invoke-static {v3, v4, v1}, Lcom/jcraft/jsch/Util;->zxcvxvsdvsvsvs([BII)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x4

    iget-object v4, p0, Lcom/jcraft/jsch/DHECN;->h:[B

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/jcraft/jsch/DHECN;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;[BI[B)Z

    move-result v1

    iput v0, p0, Lcom/jcraft/jsch/DHECN;->rthrthrtjrtjrjtdcbcvbc:I

    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method
