.class public Lcom/jcraft/jsch/KeyPairPKCS8;
.super Lcom/jcraft/jsch/KeyPair;


# static fields
.field private static final b:[B

.field private static final c:[B

.field private static final ertertetetetete:[B

.field private static final eryryhrtytujrtujrurt:[B

.field private static final fgjyukukuiki:[B

.field private static final htyjyukuilulululu:[B

.field private static final reyeyreyeyeyey:[B

.field private static final rthrthrtjrtjrjtdcbcvbc:[B

.field private static final uiiliuluiiuluilulu:[B

.field private static final wrrgehehehehe:[B


# instance fields
.field private a:Lcom/jcraft/jsch/KeyPair;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x9

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->eryryhrtytujrtujrurt:[B

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->rthrthrtjrtjrjtdcbcvbc:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->wrrgehehehehe:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->fgjyukukuiki:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->htyjyukuilulululu:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->ertertetetetete:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->uiiliuluiiuluilulu:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->reyeyreyeyeyey:[B

    const-string v0, "-----BEGIN DSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->b:[B

    const-string v0, "-----END DSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->c:[B

    return-void

    :array_0
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x38t
        0x4t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x5t
        0xdt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x5t
        0xct
    .end array-data

    nop

    :array_4
    .array-data 1
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x1t
        0x2t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x1t
        0x16t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x1t
        0x2at
    .end array-data

    nop

    :array_7
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x5t
        0x3t
    .end array-data
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->a:Lcom/jcraft/jsch/KeyPair;

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->a:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v0

    return-object v0
.end method

.method public fsafsdfsfsdfsfsdfsd([B)[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->a:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/KeyPair;->fsafsdfsfsdfsfsdfsd([B)[B

    move-result-object v0

    return-object v0
.end method

.method sdfsdfsdfsdf([B)Z
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    new-instance v1, Lcom/jcraft/jsch/KeyPair$ASN1;

    invoke-direct {v1, p0, p1}, Lcom/jcraft/jsch/KeyPair$ASN1;-><init>(Lcom/jcraft/jsch/KeyPair;[B)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/KeyPair$ASN1;->sdfsdfsdfsdf()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->sdfsdfsdfsdf()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v3

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/jcraft/jsch/KeyPair$ASN1;->sdfsdfsdfsdf()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v5

    array-length v1, v5

    if-lez v1, :cond_0

    move v1, v9

    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_0

    aget-object v6, v5, v1

    invoke-virtual {v6}, Lcom/jcraft/jsch/KeyPair$ASN1;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/jcraft/jsch/KeyPair$ASN1;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v1

    sget-object v4, Lcom/jcraft/jsch/KeyPairPKCS8;->eryryhrtytujrtujrurt:[B

    invoke-static {v3, v4}, Lcom/jcraft/jsch/Util;->sdfsdfsdfsdf([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Lcom/jcraft/jsch/KeyPairRSA;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/JSch;

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;)V

    invoke-virtual {v2, p0}, Lcom/jcraft/jsch/KeyPair;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/KeyPair;)V

    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/KeyPair;->sdfsdfsdfsdf([B)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v2, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->a:Lcom/jcraft/jsch/KeyPair;
    :try_end_0
    .catch Lcom/jcraft/jsch/KeyPair$ASN1Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->a:Lcom/jcraft/jsch/KeyPair;

    if-eqz v1, :cond_5

    move v1, v8

    :goto_2
    move v9, v1

    :goto_3
    return v9

    :cond_2
    :try_start_1
    sget-object v4, Lcom/jcraft/jsch/KeyPairPKCS8;->rthrthrtjrtjrjtdcbcvbc:[B

    invoke-static {v3, v4}, Lcom/jcraft/jsch/Util;->sdfsdfsdfsdf([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/jcraft/jsch/KeyPair$ASN1;

    invoke-direct {v3, p0, v1}, Lcom/jcraft/jsch/KeyPair$ASN1;-><init>(Lcom/jcraft/jsch/KeyPair;[B)V

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->sdfsdfsdfsdf()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v3

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/jcraft/jsch/KeyPair$ASN1;->sdfsdfsdfsdf()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v4

    move v1, v9

    :goto_4
    array-length v5, v4

    if-ge v1, v5, :cond_3

    aget-object v5, v4, v1

    invoke-virtual {v5}, Lcom/jcraft/jsch/KeyPair$ASN1;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_5
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v3, v0

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v4, v0

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v5, v0

    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v7, v0

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v5}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v7}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1, v2, v6}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    new-instance v1, Lcom/jcraft/jsch/KeyPairDSA;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/JSch;

    invoke-direct/range {v1 .. v7}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/KeyPairDSA;->sdfsdfsdfsdf()[B

    move-result-object v1

    new-instance v2, Lcom/jcraft/jsch/KeyPairDSA;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/JSch;

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;)V

    invoke-virtual {v2, p0}, Lcom/jcraft/jsch/KeyPair;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/KeyPair;)V

    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/KeyPair;->sdfsdfsdfsdf([B)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v2, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->a:Lcom/jcraft/jsch/KeyPair;

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/jcraft/jsch/KeyPair$ASN1Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    goto/16 :goto_3

    :cond_5
    move v1, v9

    goto/16 :goto_2
.end method

.method sdfsdfsdfsdf()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method serfwefewfwefewef([B)Lcom/jcraft/jsch/Cipher;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x4

    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->htyjyukuilulululu:[B

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->sdfsdfsdfsdf([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "aes128-cbc"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/JSch;

    invoke-static {v2}, Lcom/jcraft/jsch/JSch;->sdfsdfsdfsdf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    check-cast v0, Lcom/jcraft/jsch/Cipher;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :cond_0
    :try_start_2
    sget-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->ertertetetetete:[B

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->sdfsdfsdfsdf([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "aes192-cbc"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->uiiliuluiiuluilulu:[B

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->sdfsdfsdfsdf([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v2, "aes256-cbc"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unknown oid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->sdfsdfsdfsdf([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "PKCS8: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(ILjava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " is not supported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_2

    :cond_4
    move-object v2, v1

    goto/16 :goto_0
.end method

.method public serfwefewfwefewef()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->a:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->serfwefewfwefewef()[B

    move-result-object v0

    return-object v0
.end method

.method public zxcvxvsdvsvsvs([B)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairPKCS8;->sdvsdvsvsevsvsev()Z

    move-result v0

    if-nez v0, :cond_1

    move v7, v6

    :cond_0
    :goto_0
    return v7

    :cond_1
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairPKCS8;->sdvsdvsvsevsvsev()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    :goto_1
    move v7, v0

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1

    :cond_3
    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/KeyPair$ASN1;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->hukuiluliulu:[B

    invoke-direct {v0, p0, v1}, Lcom/jcraft/jsch/KeyPair$ASN1;-><init>(Lcom/jcraft/jsch/KeyPair;[B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair$ASN1;->sdfsdfsdfsdf()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lcom/jcraft/jsch/KeyPair$ASN1;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair$ASN1;->sdfsdfsdfsdf()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    sget-object v3, Lcom/jcraft/jsch/KeyPairPKCS8;->wrrgehehehehe:[B

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->sdfsdfsdfsdf([B[B)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair$ASN1;->sdfsdfsdfsdf()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->sdfsdfsdfsdf()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->fsafsdfsfsdfsfsdfsd()[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->sdfsdfsdfsdf()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v4

    new-instance v3, Ljava/math/BigInteger;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair$ASN1;->sdfsdfsdfsdf()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair$ASN1;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v8

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPairPKCS8;->serfwefewfwefewef([B)Lcom/jcraft/jsch/Cipher;
    :try_end_0
    .catch Lcom/jcraft/jsch/KeyPair$ASN1Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/JSch;

    const-string v2, "pbkdf"

    invoke-static {v2}, Lcom/jcraft/jsch/JSch;->sdfsdfsdfsdf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/PBKDF;

    check-cast v2, Lcom/jcraft/jsch/PBKDF;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->sdfsdfsdfsdf()I

    move-result v9

    invoke-interface {v2, p1, v4, v5, v9}, Lcom/jcraft/jsch/PBKDF;->fsafsdfsfsdfsfsdfsd([B[BII)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/jcraft/jsch/KeyPair$ASN1Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :try_start_2
    invoke-interface {v0, v3, v2, v8}, Lcom/jcraft/jsch/Cipher;->fsafsdfsfsdfsfsdfsd(I[B[B)V

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->zxcvxvsdvsvsvs([B)V

    array-length v2, v1

    new-array v4, v2, [B

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->fsafsdfsfsdfsfsdfsd([BII[BI)V

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/KeyPairPKCS8;->sdfsdfsdfsdf([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->sdvsdvsvsevsvsev:Z

    move v7, v6

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->reyeyreyeyeyey:[B

    invoke-static {v2, v0}, Lcom/jcraft/jsch/Util;->sdfsdfsdfsdf([B[B)Z
    :try_end_2
    .catch Lcom/jcraft/jsch/KeyPair$ASN1Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method zxcvxvsdvsvsvs()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->a:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->zxcvxvsdvsvsvs()[B

    move-result-object v0

    return-object v0
.end method
