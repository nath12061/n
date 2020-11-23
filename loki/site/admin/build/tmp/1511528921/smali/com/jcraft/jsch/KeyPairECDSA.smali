.class public Lcom/jcraft/jsch/KeyPairECDSA;
.super Lcom/jcraft/jsch/KeyPair;


# static fields
.field private static final a:[B

.field private static eryryhrtytujrtujrurt:[[B

.field private static final reyeyreyeyeyey:[B

.field private static rthrthrtjrtjrjtdcbcvbc:[Ljava/lang/String;


# instance fields
.field private ertertetetetete:[B

.field private fgjyukukuiki:[B

.field private htyjyukuilulululu:[B

.field private uiiliuluiiuluilulu:I

.field private wrrgehehehehe:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x7

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [[B

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    new-array v1, v6, [B

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    new-array v1, v6, [B

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    sput-object v0, Lcom/jcraft/jsch/KeyPairECDSA;->eryryhrtytujrtujrurt:[[B

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "nistp256"

    aput-object v1, v0, v2

    const-string v1, "nistp384"

    aput-object v1, v0, v3

    const-string v1, "nistp521"

    aput-object v1, v0, v4

    sput-object v0, Lcom/jcraft/jsch/KeyPairECDSA;->rthrthrtjrtjrjtdcbcvbc:[Ljava/lang/String;

    const-string v0, "-----BEGIN EC PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairECDSA;->reyeyreyeyeyey:[B

    const-string v0, "-----END EC PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairECDSA;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6t
        0x5t
        0x2bt
        -0x7ft
        0x4t
        0x0t
        0x22t
    .end array-data

    :array_2
    .array-data 1
        0x6t
        0x5t
        0x2bt
        -0x7ft
        0x4t
        0x0t
        0x23t
    .end array-data
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/KeyPairECDSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B[B)V

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;[B[B[B[B)V
    .locals 3

    const/16 v0, 0x100

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch;)V

    sget-object v1, Lcom/jcraft/jsch/KeyPairECDSA;->rthrthrtjrtjrjtdcbcvbc:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->wrrgehehehehe:[B

    iput v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->uiiliuluiiuluilulu:I

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->wrrgehehehehe:[B

    :cond_0
    iput-object p3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->fgjyukukuiki:[B

    iput-object p4, p0, Lcom/jcraft/jsch/KeyPairECDSA;->htyjyukuilulululu:[B

    iput-object p5, p0, Lcom/jcraft/jsch/KeyPairECDSA;->ertertetetetete:[B

    if-eqz p5, :cond_2

    array-length v1, p5

    const/16 v2, 0x40

    if-lt v1, v2, :cond_3

    const/16 v0, 0x209

    :cond_1
    :goto_0
    iput v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->uiiliuluiiuluilulu:I

    :cond_2
    return-void

    :cond_3
    array-length v1, p5

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    const/16 v0, 0x180

    goto :goto_0
.end method

.method static fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/JSch;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .locals 8

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x5

    const-string v1, "invalid key format"

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(ILjava/lang/String;)[[B

    move-result-object v6

    aget-object v2, v6, v4

    const/4 v0, 0x2

    aget-object v0, v6, v0

    invoke-static {v0}, Lcom/jcraft/jsch/KeyPairECDSA;->serfwefewfwefewef([B)[[B

    move-result-object v0

    aget-object v3, v0, v7

    aget-object v4, v0, v4

    const/4 v0, 0x3

    aget-object v5, v6, v0

    new-instance v0, Lcom/jcraft/jsch/KeyPairECDSA;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/KeyPairECDSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B[B)V

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v2, v6, v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/jcraft/jsch/KeyPairECDSA;->sdfsdfsdfsdf:Ljava/lang/String;

    iput v7, v0, Lcom/jcraft/jsch/KeyPairECDSA;->fsafsdfsfsdfsfsdfsd:I

    return-object v0
.end method

.method static sdfsdfsdfsdf([B[B)[B
    .locals 4

    const/4 v3, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v1, 0x4

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    array-length v2, p0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static serfwefewfwefewef([B)[[B
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    aget-byte v2, p0, v0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x2

    new-array v2, v2, [[B

    array-length v3, p0

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    array-length v4, p0

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [B

    array-length v5, v3

    invoke-static {p0, v0, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v3

    add-int/2addr v0, v5

    array-length v5, v4

    invoke-static {p0, v0, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v3, v2, v1

    const/4 v0, 0x1

    aput-object v4, v2, v0

    return-object v2
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()[B
    .locals 4

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairECDSA;->sdvsdvsvsevsvsev()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "key is encrypted."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "ecdsa-sha2-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->wrrgehehehehe:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->wrrgehehehehe:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->fgjyukukuiki:[B

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->htyjyukuilulululu:[B

    invoke-static {v1, v2}, Lcom/jcraft/jsch/KeyPairECDSA;->sdfsdfsdfsdf([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->ertertetetetete:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->sdfsdfsdfsdf:Ljava/lang/String;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs([BII)V

    return-object v1
.end method

.method public fsafsdfsfsdfsfsdfsd([B)[B
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/JSch;

    const-string v0, "signature.ecdsa"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->sdfsdfsdfsdf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureECDSA;

    check-cast v0, Lcom/jcraft/jsch/SignatureECDSA;

    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureECDSA;->fsafsdfsfsdfsfsdfsd()V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->ertertetetetete:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/SignatureECDSA;->zxcvxvsdvsvsvs([B)V

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/SignatureECDSA;->fsafsdfsfsdfsfsdfsd([B)V

    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureECDSA;->sdfsdfsdfsdf()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "ecdsa-sha2-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairECDSA;->wrrgehehehehe:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hukuiluliulu()V
    .locals 1

    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->hukuiluliulu()V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->ertertetetetete:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->zxcvxvsdvsvsvs([B)V

    return-void
.end method

.method sdfsdfsdfsdf([B)Z
    .locals 8

    const/16 v7, 0x30

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->fsafsdfsfsdfsfsdfsd:I

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->fsafsdfsfsdfsfsdfsd:I

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    if-ne v2, v7, :cond_0

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_2

    and-int/lit8 v2, v2, 0x7f

    move v4, v2

    move v6, v0

    move v2, v3

    :goto_1
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_3

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v2, v6

    move v6, v2

    move v2, v4

    move v4, v5

    goto :goto_1

    :cond_2
    move v2, v3

    :cond_3
    aget-byte v4, p1, v2

    if-ne v4, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_4

    and-int/lit8 v2, v2, 0x7f

    move v4, v2

    move v2, v0

    :goto_2
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_4

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto :goto_2

    :cond_4
    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_5

    and-int/lit8 v2, v2, 0x7f

    move v4, v2

    move v2, v0

    :goto_3
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_5

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto :goto_3

    :cond_5
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairECDSA;->ertertetetetete:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairECDSA;->ertertetetetete:[B

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_6

    and-int/lit8 v2, v2, 0x7f

    move v4, v2

    move v2, v0

    :goto_4
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_6

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto :goto_4

    :cond_6
    new-array v4, v2, [B

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v2

    move v2, v0

    :goto_5
    sget-object v5, Lcom/jcraft/jsch/KeyPairECDSA;->eryryhrtytujrtujrurt:[[B

    array-length v5, v5

    if-ge v2, v5, :cond_7

    sget-object v5, Lcom/jcraft/jsch/KeyPairECDSA;->eryryhrtytujrtujrurt:[[B

    aget-object v5, v5, v2

    invoke-static {v5, v4}, Lcom/jcraft/jsch/Util;->sdfsdfsdfsdf([B[B)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v4, Lcom/jcraft/jsch/KeyPairECDSA;->rthrthrtjrtjrjtdcbcvbc:[Ljava/lang/String;

    aget-object v2, v4, v2

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->wrrgehehehehe:[B

    :cond_7
    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_9

    and-int/lit8 v2, v2, 0x7f

    move v4, v2

    move v2, v0

    :goto_6
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_9

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto :goto_6

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    new-array v4, v2, [B

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    invoke-static {v4}, Lcom/jcraft/jsch/KeyPairECDSA;->serfwefewfwefewef([B)[[B

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->fgjyukukuiki:[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->htyjyukuilulululu:[B

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->ertertetetetete:[B

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->ertertetetetete:[B

    array-length v2, v2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_b

    const/16 v2, 0x209

    :goto_7
    iput v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->uiiliuluiiuluilulu:I

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->ertertetetetete:[B

    array-length v2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v7, :cond_c

    const/16 v2, 0x180

    goto :goto_7

    :cond_c
    const/16 v2, 0x100

    goto :goto_7

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method sdfsdfsdfsdf()[B
    .locals 10

    const/4 v1, 0x2

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v5, v2, [B

    aput-byte v2, v5, v3

    sget-object v6, Lcom/jcraft/jsch/KeyPairECDSA;->eryryhrtytujrtujrurt:[[B

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->fgjyukukuiki:[B

    array-length v0, v0

    const/16 v7, 0x40

    if-lt v0, v7, :cond_0

    move v0, v1

    :goto_0
    aget-object v6, v6, v0

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->fgjyukukuiki:[B

    iget-object v7, p0, Lcom/jcraft/jsch/KeyPairECDSA;->htyjyukuilulululu:[B

    invoke-static {v0, v7}, Lcom/jcraft/jsch/KeyPairECDSA;->sdfsdfsdfsdf([B[B)[B

    move-result-object v7

    array-length v0, v7

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    move v0, v4

    :goto_1
    array-length v8, v7

    add-int/2addr v8, v0

    new-array v8, v8, [B

    array-length v9, v7

    invoke-static {v7, v3, v8, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v4, v8, v3

    if-ne v0, v4, :cond_3

    array-length v0, v7

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, v8, v2

    :goto_2
    array-length v0, v5

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPairECDSA;->fsafsdfsfsdfsfsdfsd(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    array-length v1, v5

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->ertertetetetete:[B

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPairECDSA;->fsafsdfsfsdfsfsdfsd(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->ertertetetetete:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    array-length v1, v6

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPairECDSA;->fsafsdfsfsdfsfsdfsd(I)I

    move-result v1

    add-int/2addr v0, v1

    array-length v1, v6

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    array-length v1, v8

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPairECDSA;->fsafsdfsfsdfsfsdfsd(I)I

    move-result v1

    add-int/2addr v0, v1

    array-length v1, v8

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPairECDSA;->fsafsdfsfsdfsfsdfsd(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    new-array v1, v1, [B

    invoke-virtual {p0, v1, v3, v0}, Lcom/jcraft/jsch/KeyPairECDSA;->fsafsdfsfsdfsfsdfsd([BII)I

    move-result v0

    invoke-virtual {p0, v1, v0, v5}, Lcom/jcraft/jsch/KeyPairECDSA;->fsafsdfsfsdfsfsdfsd([BI[B)I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->ertertetetetete:[B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPairECDSA;->sdfsdfsdfsdf([BI[B)I

    move-result v0

    const/16 v2, -0x60

    invoke-virtual {p0, v1, v2, v0, v6}, Lcom/jcraft/jsch/KeyPairECDSA;->fsafsdfsfsdfsfsdfsd([BBI[B)I

    move-result v0

    const/16 v2, -0x5f

    invoke-virtual {p0, v1, v2, v0, v8}, Lcom/jcraft/jsch/KeyPairECDSA;->fsafsdfsfsdfsfsdfsd([BBI[B)I

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->fgjyukukuiki:[B

    array-length v0, v0

    const/16 v7, 0x30

    if-lt v0, v7, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    const/16 v0, -0x7f

    aput-byte v0, v8, v2

    array-length v0, v7

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, v8, v1

    goto :goto_2
.end method

.method public serfwefewfwefewef()[B
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->serfwefewfwefewef()[B

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->fgjyukukuiki:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [[B

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "ecdsa-sha2-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->wrrgehehehehe:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->wrrgehehehehe:[B

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->fgjyukukuiki:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->htyjyukuilulululu:[B

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    aput-object v1, v0, v4

    aget-object v1, v0, v4

    const/4 v2, 0x4

    aput-byte v2, v1, v5

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->fgjyukukuiki:[B

    aget-object v2, v0, v4

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->fgjyukukuiki:[B

    array-length v3, v3

    invoke-static {v1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->htyjyukuilulululu:[B

    aget-object v2, v0, v4

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->fgjyukukuiki:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairECDSA;->htyjyukuilulululu:[B

    array-length v4, v4

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    goto :goto_0
.end method

.method zxcvxvsdvsvsvs()[B
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ecdsa-sha2-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->wrrgehehehehe:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
