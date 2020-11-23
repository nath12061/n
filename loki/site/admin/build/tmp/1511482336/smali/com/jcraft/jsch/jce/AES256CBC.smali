.class public Lcom/jcraft/jsch/jce/AES256CBC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Cipher;


# static fields
.field static fsafsdfsfsdfsfsdfsd:Ljava/lang/Class;


# instance fields
.field private sdfsdfsdfsdf:Ljavax/crypto/Cipher;


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


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public fsafsdfsfsdfsfsdfsd(I[B[B)V
    .locals 5

    const/16 v4, 0x20

    const/16 v2, 0x10

    const/4 v3, 0x0

    const-string v1, "NoPadding"

    array-length v0, p3

    if-le v0, v2, :cond_0

    new-array v0, v2, [B

    array-length v2, v0

    invoke-static {p3, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v0

    :cond_0
    array-length v0, p2

    if-le v0, v4, :cond_1

    new-array v0, v4, [B

    array-length v2, v0

    invoke-static {p2, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v0

    :cond_1
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {v2, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "AES/CBC/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/AES256CBC;->sdfsdfsdfsdf:Ljavax/crypto/Cipher;

    sget-object v0, Lcom/jcraft/jsch/jce/AES256CBC;->fsafsdfsfsdfsfsdfsd:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "javax.crypto.Cipher"

    invoke-static {v0}, Lcom/jcraft/jsch/jce/AES256CBC;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/jce/AES256CBC;->fsafsdfsfsdfsfsdfsd:Ljava/lang/Class;

    move-object v1, v0

    :goto_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/jcraft/jsch/jce/AES256CBC;->sdfsdfsdfsdf:Ljavax/crypto/Cipher;

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v0, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_2
    :try_start_2
    sget-object v0, Lcom/jcraft/jsch/jce/AES256CBC;->fsafsdfsfsdfsfsdfsd:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/jce/AES256CBC;->sdfsdfsdfsdf:Ljavax/crypto/Cipher;

    throw v0
.end method

.method public fsafsdfsfsdfsfsdfsd([BII[BI)V
    .locals 6

    iget-object v0, p0, Lcom/jcraft/jsch/jce/AES256CBC;->sdfsdfsdfsdf:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    return-void
.end method

.method public sdfsdfsdfsdf()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public zxcvxvsdvsvsvs()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
