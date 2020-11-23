.class abstract Lcom/jcraft/jsch/jce/HMAC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/MAC;


# instance fields
.field protected fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

.field protected sdfsdfsdfsdf:I

.field private final sdvsdvsvsevsvsev:[B

.field private serfwefewfwefewef:Ljavax/crypto/Mac;

.field protected zxcvxvsdvsvsvs:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->sdvsdvsvsevsvsev:[B

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/jce/HMAC;->sdfsdfsdfsdf:I

    return v0
.end method

.method public fsafsdfsfsdfsfsdfsd(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->sdvsdvsvsevsvsev:[B

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->sdvsdvsvsevsvsev:[B

    const/4 v1, 0x1

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->sdvsdvsvsevsvsev:[B

    const/4 v1, 0x2

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->sdvsdvsvsevsvsev:[B

    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->sdvsdvsvsevsvsev:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v3, v1}, Lcom/jcraft/jsch/jce/HMAC;->fsafsdfsfsdfsfsdfsd([BII)V

    return-void
.end method

.method public fsafsdfsfsdfsfsdfsd([B)V
    .locals 3

    const/4 v2, 0x0

    array-length v0, p1

    iget v1, p0, Lcom/jcraft/jsch/jce/HMAC;->sdfsdfsdfsdf:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/jcraft/jsch/jce/HMAC;->sdfsdfsdfsdf:I

    new-array v0, v0, [B

    iget v1, p0, Lcom/jcraft/jsch/jce/HMAC;->sdfsdfsdfsdf:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/jcraft/jsch/jce/HMAC;->zxcvxvsdvsvsvs:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iget-object v1, p0, Lcom/jcraft/jsch/jce/HMAC;->zxcvxvsdvsvsvs:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/jce/HMAC;->serfwefewfwefewef:Ljavax/crypto/Mac;

    iget-object v1, p0, Lcom/jcraft/jsch/jce/HMAC;->serfwefewfwefewef:Ljavax/crypto/Mac;

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    return-void
.end method

.method public fsafsdfsfsdfsfsdfsd([BI)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->serfwefewfwefewef:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Mac;->doFinal([BI)V
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public fsafsdfsfsdfsfsdfsd([BII)V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->serfwefewfwefewef:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    return-void
.end method
