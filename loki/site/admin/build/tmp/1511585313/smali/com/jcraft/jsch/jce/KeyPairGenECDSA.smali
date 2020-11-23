.class public Lcom/jcraft/jsch/jce/KeyPairGenECDSA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/KeyPairGenECDSA;


# instance fields
.field fsafsdfsfsdfsfsdfsd:[B

.field hukuiluliulu:Ljava/security/spec/ECParameterSpec;

.field sdfsdfsdfsdf:[B

.field sdvsdvsvsevsvsev:Ljava/security/interfaces/ECPrivateKey;

.field serfwefewfwefewef:Ljava/security/interfaces/ECPublicKey;

.field zxcvxvsdvsvsvs:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fsafsdfsfsdfsfsdfsd([B)[B
    .locals 4

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->sdfsdfsdfsdf([B)V

    return-object v0
.end method

.method private sdfsdfsdfsdf([B)V
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


# virtual methods
.method public fsafsdfsfsdfsfsdfsd(I)V
    .locals 7

    const/16 v6, 0x209

    const/16 v5, 0x180

    const/16 v4, 0x100

    if-ne p1, v4, :cond_1

    const-string v0, "secp256r1"

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    const/16 v0, 0x3e8

    if-ge v2, v0, :cond_5

    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    new-instance v3, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v3, v1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    iput-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->sdvsdvsvsevsvsev:Ljava/security/interfaces/ECPrivateKey;

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    iput-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->serfwefewfwefewef:Ljava/security/interfaces/ECPublicKey;

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->serfwefewfwefewef:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->hukuiluliulu:Ljava/security/spec/ECParameterSpec;

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->sdvsdvsvsevsvsev:Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->fsafsdfsfsdfsfsdfsd:[B

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->serfwefewfwefewef:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->sdfsdfsdfsdf:[B

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->zxcvxvsdvsvsvs:[B

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->sdfsdfsdfsdf:[B

    array-length v0, v0

    iget-object v3, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->zxcvxvsdvsvsvs:[B

    array-length v3, v3

    if-eq v0, v3, :cond_4

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    if-ne p1, v5, :cond_2

    const-string v0, "secp384r1"

    move-object v1, v0

    goto :goto_0

    :cond_2
    if-ne p1, v6, :cond_3

    const-string v0, "secp521r1"

    move-object v1, v0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unsupported key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-ne p1, v4, :cond_7

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->sdfsdfsdfsdf:[B

    array-length v0, v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_7

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->fsafsdfsfsdfsfsdfsd:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->sdfsdfsdfsdf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->fsafsdfsfsdfsfsdfsd:[B

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->fsafsdfsfsdfsfsdfsd([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->fsafsdfsfsdfsfsdfsd:[B

    :cond_6
    return-void

    :cond_7
    if-ne p1, v5, :cond_8

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->sdfsdfsdfsdf:[B

    array-length v0, v0

    const/16 v3, 0x30

    if-eq v0, v3, :cond_5

    :cond_8
    if-ne p1, v6, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->sdfsdfsdfsdf:[B

    array-length v0, v0

    const/16 v3, 0x42

    if-ne v0, v3, :cond_0

    goto :goto_2
.end method

.method public fsafsdfsfsdfsfsdfsd()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->sdfsdfsdfsdf:[B

    return-object v0
.end method

.method public sdfsdfsdfsdf()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->zxcvxvsdvsvsvs:[B

    return-object v0
.end method

.method serfwefewfwefewef()Ljava/security/interfaces/ECPrivateKey;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->sdvsdvsvsevsvsev:Ljava/security/interfaces/ECPrivateKey;

    return-object v0
.end method

.method zxcvxvsdvsvsvs()Ljava/security/interfaces/ECPublicKey;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->serfwefewfwefewef:Ljava/security/interfaces/ECPublicKey;

    return-object v0
.end method
