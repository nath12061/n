.class public Lcom/jcraft/jsch/jce/DH;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/DH;


# instance fields
.field eryryhrtytujrtujrurt:[B

.field fsafsdfsfsdfsfsdfsd:Ljava/math/BigInteger;

.field hukuiluliulu:Ljava/math/BigInteger;

.field private rthrthrtjrtjrjtdcbcvbc:Ljava/security/KeyPairGenerator;

.field sdfsdfsdfsdf:Ljava/math/BigInteger;

.field sdvsdvsvsevsvsev:Ljava/math/BigInteger;

.field serfwefewfwefewef:[B

.field private wrrgehehehehe:Ljavax/crypto/KeyAgreement;

.field zxcvxvsdvsvsvs:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()V
    .locals 1

    const-string v0, "DH"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->rthrthrtjrtjrjtdcbcvbc:Ljava/security/KeyPairGenerator;

    const-string v0, "DH"

    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->wrrgehehehehe:Ljavax/crypto/KeyAgreement;

    return-void
.end method

.method fsafsdfsfsdfsfsdfsd(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/jce/DH;->fsafsdfsfsdfsfsdfsd:Ljava/math/BigInteger;

    return-void
.end method

.method public fsafsdfsfsdfsfsdfsd([B)V
    .locals 2

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jce/DH;->fsafsdfsfsdfsfsdfsd(Ljava/math/BigInteger;)V

    return-void
.end method

.method sdfsdfsdfsdf(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/jce/DH;->sdfsdfsdfsdf:Ljava/math/BigInteger;

    return-void
.end method

.method public sdfsdfsdfsdf([B)V
    .locals 2

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jce/DH;->sdfsdfsdfsdf(Ljava/math/BigInteger;)V

    return-void
.end method

.method public sdfsdfsdfsdf()[B
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/jce/DH;->zxcvxvsdvsvsvs:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lcom/jcraft/jsch/jce/DH;->fsafsdfsfsdfsfsdfsd:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/jce/DH;->sdfsdfsdfsdf:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object v1, p0, Lcom/jcraft/jsch/jce/DH;->rthrthrtjrtjrjtdcbcvbc:Ljava/security/KeyPairGenerator;

    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v0, p0, Lcom/jcraft/jsch/jce/DH;->rthrthrtjrtjrjtdcbcvbc:Ljava/security/KeyPairGenerator;

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/jce/DH;->wrrgehehehehe:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->zxcvxvsdvsvsvs:Ljava/math/BigInteger;

    iget-object v0, p0, Lcom/jcraft/jsch/jce/DH;->zxcvxvsdvsvsvs:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->serfwefewfwefewef:[B

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jce/DH;->serfwefewfwefewef:[B

    return-object v0
.end method

.method public serfwefewfwefewef()V
    .locals 0

    return-void
.end method

.method zxcvxvsdvsvsvs(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/jce/DH;->sdvsdvsvsevsvsev:Ljava/math/BigInteger;

    return-void
.end method

.method public zxcvxvsdvsvsvs([B)V
    .locals 2

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jce/DH;->zxcvxvsdvsvsvs(Ljava/math/BigInteger;)V

    return-void
.end method

.method public zxcvxvsdvsvsvs()[B
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/jce/DH;->hukuiluliulu:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const-string v0, "DH"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/DHPublicKeySpec;

    iget-object v2, p0, Lcom/jcraft/jsch/jce/DH;->sdvsdvsvsevsvsev:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/jcraft/jsch/jce/DH;->fsafsdfsfsdfsfsdfsd:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/jcraft/jsch/jce/DH;->sdfsdfsdfsdf:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3, v4}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/jce/DH;->wrrgehehehehe:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v1, v0, v5}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    iget-object v0, p0, Lcom/jcraft/jsch/jce/DH;->wrrgehehehehe:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v1, p0, Lcom/jcraft/jsch/jce/DH;->hukuiluliulu:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/jce/DH;->hukuiluliulu:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/jce/DH;->eryryhrtytujrtujrurt:[B

    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->eryryhrtytujrtujrurt:[B

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jce/DH;->eryryhrtytujrtujrurt:[B

    return-object v0
.end method
