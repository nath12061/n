.class public Lcom/jcraft/jsch/jce/ARCFOUR256;
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

    const/16 v0, 0x8

    return v0
.end method

.method public fsafsdfsfsdfsfsdfsd(I[B[B)V
    .locals 7

    const/16 v3, 0x20

    const/4 v1, 0x1

    const/4 v0, 0x0

    array-length v2, p2

    if-le v2, v3, :cond_0

    new-array v2, v3, [B

    array-length v3, v2

    invoke-static {p2, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v2

    :cond_0
    :try_start_0
    const-string v2, "RC4"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/jce/ARCFOUR256;->sdfsdfsdfsdf:Ljavax/crypto/Cipher;

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "RC4"

    invoke-direct {v3, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object v2, Lcom/jcraft/jsch/jce/ARCFOUR256;->fsafsdfsfsdfsfsdfsd:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "javax.crypto.Cipher"

    invoke-static {v2}, Lcom/jcraft/jsch/jce/ARCFOUR256;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/jcraft/jsch/jce/ARCFOUR256;->fsafsdfsfsdfsfsdfsd:Ljava/lang/Class;

    :goto_0
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/jcraft/jsch/jce/ARCFOUR256;->sdfsdfsdfsdf:Ljavax/crypto/Cipher;

    if-nez p1, :cond_2

    :goto_1
    invoke-virtual {v4, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    :try_start_2
    new-array v1, v1, [B

    move v6, v0

    :goto_2
    const/16 v0, 0x600

    if-ge v6, v0, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/jce/ARCFOUR256;->sdfsdfsdfsdf:Ljavax/crypto/Cipher;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_1
    sget-object v2, Lcom/jcraft/jsch/jce/ARCFOUR256;->fsafsdfsfsdfsfsdfsd:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/jce/ARCFOUR256;->sdfsdfsdfsdf:Ljavax/crypto/Cipher;

    throw v0

    :cond_3
    return-void
.end method

.method public fsafsdfsfsdfsfsdfsd([BII[BI)V
    .locals 6

    iget-object v0, p0, Lcom/jcraft/jsch/jce/ARCFOUR256;->sdfsdfsdfsdf:Ljavax/crypto/Cipher;

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

    const/4 v0, 0x0

    return v0
.end method
