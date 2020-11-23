.class public Lcom/jcraft/jsch/HostKey;
.super Ljava/lang/Object;


# static fields
.field private static final hukuiluliulu:[[B


# instance fields
.field protected fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

.field protected sdfsdfsdfsdf:Ljava/lang/String;

.field protected sdvsdvsvsevsvsev:Ljava/lang/String;

.field protected serfwefewfwefewef:[B

.field protected zxcvxvsdvsvsvs:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [[B

    const/4 v1, 0x0

    const-string v2, "ssh-dss"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ssh-rsa"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ecdsa-sha2-nistp256"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ecdsa-sha2-nistp384"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ecdsa-sha2-nistp521"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/jcraft/jsch/HostKey;->hukuiluliulu:[[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[BLjava/lang/String;)V
    .locals 6

    const-string v1, ""

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V
    .locals 5

    const/16 v4, 0x61

    const/16 v3, 0x14

    const/16 v2, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/HostKey;->fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

    iput-object p2, p0, Lcom/jcraft/jsch/HostKey;->sdfsdfsdfsdf:Ljava/lang/String;

    if-nez p3, :cond_5

    aget-byte v0, p4, v2

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/HostKey;->zxcvxvsdvsvsvs:I

    :goto_0
    iput-object p4, p0, Lcom/jcraft/jsch/HostKey;->serfwefewfwefewef:[B

    iput-object p5, p0, Lcom/jcraft/jsch/HostKey;->sdvsdvsvsevsvsev:Ljava/lang/String;

    return-void

    :cond_0
    aget-byte v0, p4, v2

    const/16 v1, 0x72

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/jcraft/jsch/HostKey;->zxcvxvsdvsvsvs:I

    goto :goto_0

    :cond_1
    aget-byte v0, p4, v2

    if-ne v0, v4, :cond_2

    aget-byte v0, p4, v3

    const/16 v1, 0x32

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iput v0, p0, Lcom/jcraft/jsch/HostKey;->zxcvxvsdvsvsvs:I

    goto :goto_0

    :cond_2
    aget-byte v0, p4, v2

    if-ne v0, v4, :cond_3

    aget-byte v0, p4, v3

    const/16 v1, 0x33

    if-ne v0, v1, :cond_3

    const/4 v0, 0x4

    iput v0, p0, Lcom/jcraft/jsch/HostKey;->zxcvxvsdvsvsvs:I

    goto :goto_0

    :cond_3
    aget-byte v0, p4, v2

    if-ne v0, v4, :cond_4

    aget-byte v0, p4, v3

    const/16 v1, 0x35

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iput v0, p0, Lcom/jcraft/jsch/HostKey;->zxcvxvsdvsvsvs:I

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "invalid key type"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput p3, p0, Lcom/jcraft/jsch/HostKey;->zxcvxvsdvsvsvs:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[B)V

    return-void
.end method

.method protected static fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/jcraft/jsch/HostKey;->hukuiluliulu:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/jcraft/jsch/HostKey;->hukuiluliulu:[[B

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_1
.end method

.method private zxcvxvsdvsvsvs(Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->sdfsdfsdfsdf:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v4

    :goto_0
    if-ge v2, v6, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const/4 v3, -0x1

    if-ne v7, v3, :cond_2

    sub-int v3, v6, v2

    if-eq v5, v3, :cond_1

    :cond_0
    :goto_1
    return v4

    :cond_1
    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    goto :goto_1

    :cond_2
    sub-int v3, v7, v2

    if-ne v5, v3, :cond_3

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v7, 0x1

    goto :goto_0
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->sdfsdfsdfsdf:Ljava/lang/String;

    return-object v0
.end method

.method public sdfsdfsdfsdf()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/jcraft/jsch/HostKey;->zxcvxvsdvsvsvs:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jcraft/jsch/HostKey;->zxcvxvsdvsvsvs:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jcraft/jsch/HostKey;->zxcvxvsdvsvsvs:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jcraft/jsch/HostKey;->zxcvxvsdvsvsvs:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jcraft/jsch/HostKey;->zxcvxvsdvsvsvs:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/jcraft/jsch/HostKey;->hukuiluliulu:[[B

    iget v1, p0, Lcom/jcraft/jsch/HostKey;->zxcvxvsdvsvsvs:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method sdfsdfsdfsdf(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/HostKey;->zxcvxvsdvsvsvs(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sdvsdvsvsevsvsev()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

    return-object v0
.end method

.method public serfwefewfwefewef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->sdvsdvsvsevsvsev:Ljava/lang/String;

    return-object v0
.end method

.method public zxcvxvsdvsvsvs()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->serfwefewfwefewef:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/HostKey;->serfwefewfwefewef:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/Util;->sdfsdfsdfsdf([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
