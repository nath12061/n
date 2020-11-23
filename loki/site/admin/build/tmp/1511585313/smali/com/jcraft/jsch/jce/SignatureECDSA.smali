.class public Lcom/jcraft/jsch/jce/SignatureECDSA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/SignatureECDSA;


# static fields
.field static zxcvxvsdvsvsvs:Ljava/lang/Class;


# instance fields
.field fsafsdfsfsdfsfsdfsd:Ljava/security/Signature;

.field sdfsdfsdfsdf:Ljava/security/KeyFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private hukuiluliulu([B)V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sdvsdvsvsevsvsev([B)[B
    .locals 4

    const/4 v3, 0x0

    aget-byte v0, p1, v3

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    const/4 v1, 0x1

    array-length v2, v0

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/jce/SignatureECDSA;->hukuiluliulu([B)V

    move-object p1, v0

    goto :goto_0
.end method

.method private serfwefewfwefewef([B)[B
    .locals 4

    const/4 v3, 0x0

    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/jce/SignatureECDSA;->hukuiluliulu([B)V

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()V
    .locals 1

    const-string v0, "SHA256withECDSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/SignatureECDSA;->fsafsdfsfsdfsfsdfsd:Ljava/security/Signature;

    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/SignatureECDSA;->sdfsdfsdfsdf:Ljava/security/KeyFactory;

    return-void
.end method

.method public fsafsdfsfsdfsfsdfsd([B)V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/jce/SignatureECDSA;->fsafsdfsfsdfsfsdfsd:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    return-void
.end method

.method public fsafsdfsfsdfsfsdfsd([B[B)V
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/jce/SignatureECDSA;->serfwefewfwefewef([B)[B

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/jce/SignatureECDSA;->serfwefewfwefewef([B)[B

    move-result-object v2

    const-string v0, "secp256r1"

    array-length v3, v1

    const/16 v4, 0x40

    if-lt v3, v4, :cond_1

    const-string v0, "secp521r1"

    :cond_0
    :goto_0
    const-string v3, "EC"

    invoke-static {v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    new-instance v4, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v4, v0}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    sget-object v0, Lcom/jcraft/jsch/jce/SignatureECDSA;->zxcvxvsdvsvsvs:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.security.spec.ECParameterSpec"

    invoke-static {v0}, Lcom/jcraft/jsch/jce/SignatureECDSA;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/jce/SignatureECDSA;->zxcvxvsdvsvsvs:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v3, v4, v1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object v1, p0, Lcom/jcraft/jsch/jce/SignatureECDSA;->sdfsdfsdfsdf:Ljava/security/KeyFactory;

    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v2, v3, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/jce/SignatureECDSA;->fsafsdfsfsdfsfsdfsd:Ljava/security/Signature;

    invoke-virtual {v1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    return-void

    :cond_1
    array-length v3, v1

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const-string v0, "secp384r1"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/jcraft/jsch/jce/SignatureECDSA;->zxcvxvsdvsvsvs:Ljava/lang/Class;

    goto :goto_1
.end method

.method public sdfsdfsdfsdf([B)Z
    .locals 9

    const/4 v8, 0x3

    const/16 v4, 0x30

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    aget-byte v0, p1, v5

    if-ne v0, v4, :cond_0

    aget-byte v0, p1, v7

    add-int/lit8 v0, v0, 0x2

    array-length v1, p1

    if-eq v0, v1, :cond_1

    aget-byte v0, p1, v7

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    aget-byte v0, p1, v6

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x3

    array-length v1, p1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->eryryhrtytujrtujrurt()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->eryryhrtytujrtujrurt()[B

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/jce/SignatureECDSA;->serfwefewfwefewef([B)[B

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/jce/SignatureECDSA;->serfwefewfwefewef([B)[B

    move-result-object v2

    array-length v0, v1

    const/16 v3, 0x40

    if-ge v0, v3, :cond_2

    array-length v0, v1

    add-int/lit8 v0, v0, 0x6

    array-length v3, v2

    add-int/2addr v0, v3

    new-array v0, v0, [B

    aput-byte v4, v0, v5

    array-length v3, v1

    add-int/lit8 v3, v3, 0x4

    array-length v4, v2

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v7

    aput-byte v6, v0, v6

    array-length v3, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v8

    const/4 v3, 0x4

    array-length v4, v1

    invoke-static {v1, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v1

    add-int/lit8 v3, v3, 0x4

    aput-byte v6, v0, v3

    array-length v3, v1

    add-int/lit8 v3, v3, 0x5

    array-length v4, v2

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    array-length v1, v1

    add-int/lit8 v1, v1, 0x6

    array-length v3, v2

    invoke-static {v2, v5, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    move-object p1, v0

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/jce/SignatureECDSA;->fsafsdfsfsdfsfsdfsd:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    return v0

    :cond_2
    array-length v0, v1

    add-int/lit8 v0, v0, 0x6

    array-length v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    aput-byte v4, v0, v5

    const/16 v3, -0x7f

    aput-byte v3, v0, v7

    array-length v3, v1

    add-int/lit8 v3, v3, 0x4

    array-length v4, v2

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v6

    aput-byte v6, v0, v8

    const/4 v3, 0x4

    array-length v4, v1

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/4 v3, 0x5

    array-length v4, v1

    invoke-static {v1, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v1

    add-int/lit8 v3, v3, 0x5

    aput-byte v6, v0, v3

    array-length v3, v1

    add-int/lit8 v3, v3, 0x6

    array-length v4, v2

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    array-length v1, v1

    add-int/lit8 v1, v1, 0x7

    array-length v3, v2

    invoke-static {v2, v5, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public sdfsdfsdfsdf()[B
    .locals 7

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/jce/SignatureECDSA;->fsafsdfsfsdfsfsdfsd:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    aget-byte v0, v1, v6

    const/16 v2, 0x30

    if-ne v0, v2, :cond_2

    aget-byte v0, v1, v3

    add-int/lit8 v0, v0, 0x2

    array-length v2, v1

    if-eq v0, v2, :cond_0

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x3

    array-length v2, v1

    if-ne v0, v2, :cond_2

    :cond_0
    const/4 v0, 0x3

    aget-byte v2, v1, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x3

    array-length v3, v1

    if-ne v2, v3, :cond_1

    const/4 v0, 0x4

    :cond_1
    aget-byte v2, v1, v0

    new-array v2, v2, [B

    add-int/lit8 v3, v0, 0x2

    aget-byte v4, v1, v0

    add-int/2addr v3, v4

    aget-byte v3, v1, v3

    new-array v3, v3, [B

    add-int/lit8 v4, v0, 0x1

    array-length v5, v2

    invoke-static {v1, v4, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v0, 0x3

    aget-byte v0, v1, v0

    add-int/2addr v0, v4

    array-length v4, v3

    invoke-static {v1, v0, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v2}, Lcom/jcraft/jsch/jce/SignatureECDSA;->sdvsdvsvsevsvsev([B)[B

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/jcraft/jsch/jce/SignatureECDSA;->sdvsdvsvsevsvsev([B)[B

    move-result-object v1

    new-instance v2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v2}, Lcom/jcraft/jsch/Buffer;-><init>()V

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs([B)V

    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs([B)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v2, v6}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs(I)V

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef([B)V

    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public zxcvxvsdvsvsvs([B)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/jce/SignatureECDSA;->serfwefewfwefewef([B)[B

    move-result-object v1

    const-string v0, "secp256r1"

    array-length v2, v1

    const/16 v3, 0x40

    if-lt v2, v3, :cond_1

    const-string v0, "secp521r1"

    :cond_0
    :goto_0
    const-string v2, "EC"

    invoke-static {v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    new-instance v3, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v3, v0}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    sget-object v0, Lcom/jcraft/jsch/jce/SignatureECDSA;->zxcvxvsdvsvsvs:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.security.spec.ECParameterSpec"

    invoke-static {v0}, Lcom/jcraft/jsch/jce/SignatureECDSA;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/jce/SignatureECDSA;->zxcvxvsdvsvsvs:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v2, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v1, p0, Lcom/jcraft/jsch/jce/SignatureECDSA;->sdfsdfsdfsdf:Ljava/security/KeyFactory;

    new-instance v3, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {v3, v2, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/jce/SignatureECDSA;->fsafsdfsfsdfsfsdfsd:Ljava/security/Signature;

    invoke-virtual {v1, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    return-void

    :cond_1
    array-length v2, v1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const-string v0, "secp384r1"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/jcraft/jsch/jce/SignatureECDSA;->zxcvxvsdvsvsvs:Ljava/lang/Class;

    goto :goto_1
.end method
