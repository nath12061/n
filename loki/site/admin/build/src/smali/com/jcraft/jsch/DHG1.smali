.class public Lcom/jcraft/jsch/DHG1;
.super Lcom/jcraft/jsch/KeyExchange;


# static fields
.field static final fsafsdfsfsdfsfsdfsd:[B

.field static final sdfsdfsdfsdf:[B


# instance fields
.field eryryhrtytujrtujrurt:[B

.field hukuiluliulu:[B

.field private l:Lcom/jcraft/jsch/Buffer;

.field private m:Lcom/jcraft/jsch/Packet;

.field rthrthrtjrtjrjtdcbcvbc:[B

.field sdvsdvsvsevsvsev:[B

.field serfwefewfwefewef:[B

.field private wrrgehehehehe:I

.field zxcvxvsdvsvsvs:Lcom/jcraft/jsch/DH;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    sput-object v0, Lcom/jcraft/jsch/DHG1;->fsafsdfsfsdfsfsdfsd:[B

    const/16 v0, 0x81

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jcraft/jsch/DHG1;->sdfsdfsdfsdf:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x37t
        0xft
        -0x26t
        -0x5et
        0x21t
        0x68t
        -0x3et
        0x34t
        -0x3ct
        -0x3at
        0x62t
        -0x75t
        -0x80t
        -0x24t
        0x1ct
        -0x2ft
        0x29t
        0x2t
        0x4et
        0x8t
        -0x76t
        0x67t
        -0x34t
        0x74t
        0x2t
        0xbt
        -0x42t
        -0x5at
        0x3bt
        0x13t
        -0x65t
        0x22t
        0x51t
        0x4at
        0x8t
        0x79t
        -0x72t
        0x34t
        0x4t
        -0x23t
        -0x11t
        -0x6bt
        0x19t
        -0x4dt
        -0x33t
        0x3at
        0x43t
        0x1bt
        0x30t
        0x2bt
        0xat
        0x6dt
        -0xet
        0x5ft
        0x14t
        0x37t
        0x4ft
        -0x1ft
        0x35t
        0x6dt
        0x6dt
        0x51t
        -0x3et
        0x45t
        -0x1ct
        -0x7bt
        -0x4bt
        0x76t
        0x62t
        0x5et
        0x7et
        -0x3at
        -0xct
        0x4ct
        0x42t
        -0x17t
        -0x5at
        0x37t
        -0x13t
        0x6bt
        0xbt
        -0x1t
        0x5ct
        -0x4at
        -0xct
        0x6t
        -0x49t
        -0x13t
        -0x12t
        0x38t
        0x6bt
        -0x5t
        0x5at
        -0x77t
        -0x61t
        -0x5bt
        -0x52t
        -0x61t
        0x24t
        0x11t
        0x7ct
        0x4bt
        0x1ft
        -0x1at
        0x49t
        0x28t
        0x66t
        0x51t
        -0x14t
        -0x1at
        0x53t
        -0x7ft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/DHG1;->wrrgehehehehe:I

    return v0
.end method

.method public fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/jcraft/jsch/DHG1;->d:Lcom/jcraft/jsch/Session;

    iput-object p2, p0, Lcom/jcraft/jsch/DHG1;->serfwefewfwefewef:[B

    iput-object p3, p0, Lcom/jcraft/jsch/DHG1;->sdvsdvsvsevsvsev:[B

    iput-object p4, p0, Lcom/jcraft/jsch/DHG1;->hukuiluliulu:[B

    iput-object p5, p0, Lcom/jcraft/jsch/DHG1;->eryryhrtytujrtujrurt:[B

    :try_start_0
    const-string v0, "sha-1"

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->sdvsdvsvsevsvsev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/HASH;

    check-cast v0, Lcom/jcraft/jsch/HASH;

    iput-object v0, p0, Lcom/jcraft/jsch/DHG1;->e:Lcom/jcraft/jsch/HASH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->e:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->fsafsdfsfsdfsfsdfsd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/DHG1;->l:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/DHG1;->l:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/DHG1;->m:Lcom/jcraft/jsch/Packet;

    :try_start_1
    const-string v0, "dh"

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->sdvsdvsvsevsvsev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/DH;

    check-cast v0, Lcom/jcraft/jsch/DH;

    iput-object v0, p0, Lcom/jcraft/jsch/DHG1;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/DH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/DH;

    invoke-interface {v0}, Lcom/jcraft/jsch/DH;->fsafsdfsfsdfsfsdfsd()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/DH;

    sget-object v1, Lcom/jcraft/jsch/DHG1;->sdfsdfsdfsdf:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/DH;->fsafsdfsfsdfsfsdfsd([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/DH;

    sget-object v1, Lcom/jcraft/jsch/DHG1;->fsafsdfsfsdfsfsdfsd:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/DH;->sdfsdfsdfsdf([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/DH;

    invoke-interface {v0}, Lcom/jcraft/jsch/DH;->sdfsdfsdfsdf()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHG1;->rthrthrtjrtjrjtdcbcvbc:[B

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->m:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->l:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->l:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/DHG1;->rthrthrtjrtjrjtdcbcvbc:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->m:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->sdfsdfsdfsdf(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "SSH_MSG_KEXDH_INIT sent"

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "expecting SSH_MSG_KEXDH_REPLY"

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(ILjava/lang/String;)V

    :cond_0
    const/16 v0, 0x1f

    iput v0, p0, Lcom/jcraft/jsch/DHG1;->wrrgehehehehe:I

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    throw v0
.end method

.method public fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;)Z
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/jcraft/jsch/DHG1;->wrrgehehehehe:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    move-result v1

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_0

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

    :cond_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/DHG1;->h:[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->eryryhrtytujrtujrurt()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/DHG1;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/DH;

    invoke-interface {v3, v1}, Lcom/jcraft/jsch/DH;->zxcvxvsdvsvsvs([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHG1;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/DH;

    invoke-interface {v3}, Lcom/jcraft/jsch/DH;->serfwefewfwefewef()V

    iget-object v3, p0, Lcom/jcraft/jsch/DHG1;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/DH;

    invoke-interface {v3}, Lcom/jcraft/jsch/DH;->zxcvxvsdvsvsvs()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/DHG1;->fsafsdfsfsdfsfsdfsd([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/DHG1;->f:[B

    iget-object v3, p0, Lcom/jcraft/jsch/DHG1;->l:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->fgjyukukuiki()V

    iget-object v3, p0, Lcom/jcraft/jsch/DHG1;->l:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHG1;->sdvsdvsvsevsvsev:[B

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHG1;->l:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHG1;->serfwefewfwefewef:[B

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHG1;->l:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHG1;->eryryhrtytujrtujrurt:[B

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHG1;->l:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHG1;->hukuiluliulu:[B

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHG1;->l:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHG1;->h:[B

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHG1;->l:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHG1;->rthrthrtjrtjrjtdcbcvbc:[B

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHG1;->l:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHG1;->l:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHG1;->f:[B

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHG1;->l:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd()I

    move-result v1

    new-array v1, v1, [B

    iget-object v3, p0, Lcom/jcraft/jsch/DHG1;->l:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHG1;->e:Lcom/jcraft/jsch/HASH;

    array-length v4, v1

    invoke-interface {v3, v1, v0, v4}, Lcom/jcraft/jsch/HASH;->fsafsdfsfsdfsfsdfsd([BII)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHG1;->e:Lcom/jcraft/jsch/HASH;

    invoke-interface {v1}, Lcom/jcraft/jsch/HASH;->zxcvxvsdvsvsvs()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/DHG1;->g:[B

    iget-object v1, p0, Lcom/jcraft/jsch/DHG1;->h:[B

    const/4 v3, 0x1

    aget-byte v1, v1, v0

    shl-int/lit8 v1, v1, 0x18

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    iget-object v4, p0, Lcom/jcraft/jsch/DHG1;->h:[B

    const/4 v5, 0x2

    aget-byte v3, v4, v3

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHG1;->h:[B

    const/4 v4, 0x3

    aget-byte v3, v3, v5

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHG1;->h:[B

    const/4 v5, 0x4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHG1;->h:[B

    invoke-static {v3, v5, v1}, Lcom/jcraft/jsch/Util;->zxcvxvsdvsvsvs([BII)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x4

    iget-object v4, p0, Lcom/jcraft/jsch/DHG1;->h:[B

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/jcraft/jsch/DHG1;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;[BI[B)Z

    move-result v1

    iput v0, p0, Lcom/jcraft/jsch/DHG1;->wrrgehehehehe:I

    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method
