.class public Lcom/jcraft/jsch/jce/HMACMD596;
.super Lcom/jcraft/jsch/jce/HMACMD5;


# instance fields
.field private final serfwefewfwefewef:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/jce/HMACMD5;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD596;->serfwefewfwefewef:[B

    const-string v0, "hmac-md5-96"

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD596;->fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public fsafsdfsfsdfsfsdfsd([BI)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD596;->serfwefewfwefewef:[B

    invoke-super {p0, v0, v2}, Lcom/jcraft/jsch/jce/HMACMD5;->fsafsdfsfsdfsfsdfsd([BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD596;->serfwefewfwefewef:[B

    const/16 v1, 0xc

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
