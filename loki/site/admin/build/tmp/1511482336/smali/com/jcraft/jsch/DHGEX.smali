.class public Lcom/jcraft/jsch/DHGEX;
.super Lcom/jcraft/jsch/KeyExchange;


# static fields
.field static fsafsdfsfsdfsfsdfsd:I

.field static sdfsdfsdfsdf:I


# instance fields
.field eryryhrtytujrtujrurt:[B

.field hukuiluliulu:[B

.field private l:I

.field private m:Lcom/jcraft/jsch/Buffer;

.field private n:Lcom/jcraft/jsch/Packet;

.field private o:[B

.field private p:[B

.field private q:[B

.field rthrthrtjrtjrjtdcbcvbc:[B

.field sdvsdvsvsevsvsev:[B

.field serfwefewfwefewef:Lcom/jcraft/jsch/DH;

.field protected wrrgehehehehe:Ljava/lang/String;

.field zxcvxvsdvsvsvs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x400

    sput v0, Lcom/jcraft/jsch/DHGEX;->fsafsdfsfsdfsfsdfsd:I

    sput v0, Lcom/jcraft/jsch/DHGEX;->sdfsdfsdfsdf:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lcom/jcraft/jsch/DHGEX;->zxcvxvsdvsvsvs:I

    const-string v0, "sha-1"

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX;->wrrgehehehehe:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/DHGEX;->l:I

    return v0
.end method

.method protected fsafsdfsfsdfsfsdfsd(Ljava/lang/Class;I)I
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/DH;

    check-cast v0, Lcom/jcraft/jsch/DH;

    invoke-interface {v0}, Lcom/jcraft/jsch/DH;->fsafsdfsfsdfsfsdfsd()V

    const/16 v1, 0x101

    new-array v1, v1, [B

    const/16 v2, -0x23

    aput-byte v2, v1, v4

    const/16 v2, 0x100

    const/16 v3, 0x73

    aput-byte v3, v1, v2

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/DH;->fsafsdfsfsdfsfsdfsd([B)V

    new-array v1, v4, [B

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/DH;->sdfsdfsdfsdf([B)V

    :try_start_0
    invoke-interface {v0}, Lcom/jcraft/jsch/DH;->sdfsdfsdfsdf()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p2, 0x800

    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .locals 4

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/jcraft/jsch/DHGEX;->d:Lcom/jcraft/jsch/Session;

    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX;->sdvsdvsvsevsvsev:[B

    iput-object p3, p0, Lcom/jcraft/jsch/DHGEX;->hukuiluliulu:[B

    iput-object p4, p0, Lcom/jcraft/jsch/DHGEX;->eryryhrtytujrtujrurt:[B

    iput-object p5, p0, Lcom/jcraft/jsch/DHGEX;->rthrthrtjrtjrjtdcbcvbc:[B

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->wrrgehehehehe:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->sdvsdvsvsevsvsev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/HASH;

    check-cast v0, Lcom/jcraft/jsch/HASH;

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX;->e:Lcom/jcraft/jsch/HASH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->e:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->fsafsdfsfsdfsfsdfsd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX;->n:Lcom/jcraft/jsch/Packet;

    :try_start_1
    const-string v0, "dh"

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->sdvsdvsvsevsvsev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lcom/jcraft/jsch/DHGEX;->zxcvxvsdvsvsvs:I

    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/DHGEX;->fsafsdfsfsdfsfsdfsd(Ljava/lang/Class;I)I

    move-result v1

    iput v1, p0, Lcom/jcraft/jsch/DHGEX;->zxcvxvsdvsvsvs:I

    sput v1, Lcom/jcraft/jsch/DHGEX;->sdfsdfsdfsdf:I

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/DH;

    check-cast v0, Lcom/jcraft/jsch/DH;

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX;->serfwefewfwefewef:Lcom/jcraft/jsch/DH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->serfwefewfwefewef:Lcom/jcraft/jsch/DH;

    invoke-interface {v0}, Lcom/jcraft/jsch/DH;->fsafsdfsfsdfsfsdfsd()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->n:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    sget v1, Lcom/jcraft/jsch/DHGEX;->fsafsdfsfsdfsfsdfsd:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    sget v1, Lcom/jcraft/jsch/DHGEX;->sdfsdfsdfsdf:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/DHGEX;->zxcvxvsdvsvsvs:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->n:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->sdfsdfsdfsdf(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "SSH_MSG_KEX_DH_GEX_REQUEST("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget v2, Lcom/jcraft/jsch/DHGEX;->fsafsdfsfsdfsfsdfsd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget v2, Lcom/jcraft/jsch/DHGEX;->sdfsdfsdfsdf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/jcraft/jsch/DHGEX;->zxcvxvsdvsvsvs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") sent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "expecting SSH_MSG_KEX_DH_GEX_GROUP"

    invoke-interface {v0, v3, v1}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(ILjava/lang/String;)V

    :cond_0
    const/16 v0, 0x1f

    iput v0, p0, Lcom/jcraft/jsch/DHGEX;->l:I

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    throw v0
.end method

.method public fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;)Z
    .locals 6

    const/16 v4, 0x21

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/jcraft/jsch/DHGEX;->l:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    move-result v2

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "type: must be SSH_MSG_KEX_DH_GEX_GROUP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->eryryhrtytujrtujrurt()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX;->o:[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->eryryhrtytujrtujrurt()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX;->p:[B

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->serfwefewfwefewef:Lcom/jcraft/jsch/DH;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->o:[B

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/DH;->fsafsdfsfsdfsfsdfsd([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->serfwefewfwefewef:Lcom/jcraft/jsch/DH;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->p:[B

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/DH;->sdfsdfsdfsdf([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->serfwefewfwefewef:Lcom/jcraft/jsch/DH;

    invoke-interface {v0}, Lcom/jcraft/jsch/DH;->sdfsdfsdfsdf()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX;->q:[B

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->n:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->q:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->d:Lcom/jcraft/jsch/Session;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->n:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Session;->sdfsdfsdfsdf(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v2, "SSH_MSG_KEX_DH_GEX_INIT sent"

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v2, "expecting SSH_MSG_KEX_DH_GEX_REPLY"

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(ILjava/lang/String;)V

    :cond_1
    iput v4, p0, Lcom/jcraft/jsch/DHGEX;->l:I

    move v0, v1

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    move-result v2

    if-eq v2, v4, :cond_2

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "type: must be SSH_MSG_KEX_DH_GEX_REPLY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/DHGEX;->h:[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->eryryhrtytujrtujrurt()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v3

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->serfwefewfwefewef:Lcom/jcraft/jsch/DH;

    invoke-interface {v4, v2}, Lcom/jcraft/jsch/DH;->zxcvxvsdvsvsvs([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->serfwefewfwefewef:Lcom/jcraft/jsch/DH;

    invoke-interface {v4}, Lcom/jcraft/jsch/DH;->serfwefewfwefewef()V

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->serfwefewfwefewef:Lcom/jcraft/jsch/DH;

    invoke-interface {v4}, Lcom/jcraft/jsch/DH;->zxcvxvsdvsvsvs()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/DHGEX;->fsafsdfsfsdfsfsdfsd([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/DHGEX;->f:[B

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->fgjyukukuiki()V

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    iget-object v5, p0, Lcom/jcraft/jsch/DHGEX;->hukuiluliulu:[B

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    iget-object v5, p0, Lcom/jcraft/jsch/DHGEX;->sdvsdvsvsevsvsev:[B

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    iget-object v5, p0, Lcom/jcraft/jsch/DHGEX;->rthrthrtjrtjrjtdcbcvbc:[B

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    iget-object v5, p0, Lcom/jcraft/jsch/DHGEX;->eryryhrtytujrtujrurt:[B

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    iget-object v5, p0, Lcom/jcraft/jsch/DHGEX;->h:[B

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    sget v5, Lcom/jcraft/jsch/DHGEX;->fsafsdfsfsdfsfsdfsd:I

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    sget v5, Lcom/jcraft/jsch/DHGEX;->sdfsdfsdfsdf:I

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    iget v5, p0, Lcom/jcraft/jsch/DHGEX;->zxcvxvsdvsvsvs:I

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    iget-object v5, p0, Lcom/jcraft/jsch/DHGEX;->o:[B

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    iget-object v5, p0, Lcom/jcraft/jsch/DHGEX;->p:[B

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    iget-object v5, p0, Lcom/jcraft/jsch/DHGEX;->q:[B

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, v2}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->f:[B

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd()I

    move-result v2

    new-array v2, v2, [B

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->m:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, v2}, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->e:Lcom/jcraft/jsch/HASH;

    array-length v5, v2

    invoke-interface {v4, v2, v0, v5}, Lcom/jcraft/jsch/HASH;->fsafsdfsfsdfsfsdfsd([BII)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->e:Lcom/jcraft/jsch/HASH;

    invoke-interface {v2}, Lcom/jcraft/jsch/HASH;->zxcvxvsdvsvsvs()[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/DHGEX;->g:[B

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->h:[B

    aget-byte v2, v2, v0

    shl-int/lit8 v2, v2, 0x18

    const/high16 v4, -0x1000000

    and-int/2addr v2, v4

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->h:[B

    const/4 v5, 0x2

    aget-byte v1, v4, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v4, 0xff0000

    and-int/2addr v1, v4

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->h:[B

    const/4 v4, 0x3

    aget-byte v2, v2, v5

    shl-int/lit8 v2, v2, 0x8

    const v5, 0xff00

    and-int/2addr v2, v5

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->h:[B

    const/4 v5, 0x4

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->h:[B

    invoke-static {v2, v5, v1}, Lcom/jcraft/jsch/Util;->zxcvxvsdvsvsvs([BII)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x4

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX;->h:[B

    invoke-virtual {p0, v2, v4, v1, v3}, Lcom/jcraft/jsch/DHGEX;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;[BI[B)Z

    move-result v1

    iput v0, p0, Lcom/jcraft/jsch/DHGEX;->l:I

    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
