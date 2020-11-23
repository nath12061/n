.class public Lcom/jcraft/jsch/jce/ECDHN;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/ECDH;


# static fields
.field private static sdvsdvsvsevsvsev:Ljava/math/BigInteger;

.field private static serfwefewfwefewef:Ljava/math/BigInteger;


# instance fields
.field fsafsdfsfsdfsfsdfsd:[B

.field sdfsdfsdfsdf:Ljava/security/interfaces/ECPublicKey;

.field private zxcvxvsdvsvsvs:Ljavax/crypto/KeyAgreement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/jce/ECDHN;->serfwefewfwefewef:Ljava/math/BigInteger;

    sget-object v0, Lcom/jcraft/jsch/jce/ECDHN;->serfwefewfwefewef:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/jce/ECDHN;->sdvsdvsvsevsvsev:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zxcvxvsdvsvsvs([B[B)[B
    .locals 4

    const/4 v3, 0x0

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v1, 0x4

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd(I)V
    .locals 3

    const-string v0, "ECDH"

    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/ECDHN;->zxcvxvsdvsvsvs:Ljavax/crypto/KeyAgreement;

    new-instance v0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;

    invoke-direct {v0}, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;-><init>()V

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->fsafsdfsfsdfsfsdfsd(I)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->zxcvxvsdvsvsvs()Ljava/security/interfaces/ECPublicKey;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/jce/ECDHN;->sdfsdfsdfsdf:Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->sdfsdfsdfsdf()[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/jce/ECDHN;->zxcvxvsdvsvsvs([B[B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/jce/ECDHN;->fsafsdfsfsdfsfsdfsd:[B

    iget-object v1, p0, Lcom/jcraft/jsch/jce/ECDHN;->zxcvxvsdvsvsvs:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->serfwefewfwefewef()Ljava/security/interfaces/ECPrivateKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    return-void
.end method

.method public fsafsdfsfsdfsfsdfsd()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/jce/ECDHN;->fsafsdfsfsdfsfsdfsd:[B

    return-object v0
.end method

.method public fsafsdfsfsdfsfsdfsd([B[B)[B
    .locals 5

    const/4 v4, 0x1

    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/ECPoint;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v4, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    iget-object v3, p0, Lcom/jcraft/jsch/jce/ECDHN;->sdfsdfsdfsdf:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v3}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/jce/ECDHN;->zxcvxvsdvsvsvs:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v1, v0, v4}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    iget-object v0, p0, Lcom/jcraft/jsch/jce/ECDHN;->zxcvxvsdvsvsvs:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v0

    return-object v0
.end method

.method public sdfsdfsdfsdf([B[B)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v2, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-direct {v0, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sget-object v5, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    invoke-virtual {v0, v5}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jce/ECDHN;->sdfsdfsdfsdf:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    check-cast v0, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gtz v7, :cond_1

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-lez v6, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lcom/jcraft/jsch/jce/ECDHN;->sdvsdvsvsevsvsev:Ljava/math/BigInteger;

    invoke-virtual {v3, v6, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v5, Lcom/jcraft/jsch/jce/ECDHN;->serfwefewfwefewef:Ljava/math/BigInteger;

    invoke-virtual {v4, v5, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method
