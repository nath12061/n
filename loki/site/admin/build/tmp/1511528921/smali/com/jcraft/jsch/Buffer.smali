.class public Lcom/jcraft/jsch/Buffer;
.super Ljava/lang/Object;


# instance fields
.field final fsafsdfsfsdfsfsdfsd:[B

.field sdfsdfsdfsdf:[B

.field serfwefewfwefewef:I

.field zxcvxvsdvsvsvs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x5000

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    iput v1, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    iput v1, p0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd:[B

    iput-object p1, p0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    iput v1, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    iput v1, p0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    return-void
.end method

.method static fsafsdfsfsdfsfsdfsd([[B)Lcom/jcraft/jsch/Buffer;
    .locals 4

    const/4 v1, 0x0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    move v2, v0

    move v0, v1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-object v3, p0, v0

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method


# virtual methods
.method ertertetetetete()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    return-void
.end method

.method public eryryhrtytujrtujrurt()[B
    .locals 3

    const/16 v1, 0x2000

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    move-result v0

    if-ltz v0, :cond_0

    if-le v0, v1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs([BII)V

    return-object v1
.end method

.method public fgjyukukuiki()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    return-void
.end method

.method public fsafsdfsfsdfsfsdfsd()I
    .locals 2

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public fsafsdfsfsdfsfsdfsd(B)V
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public fsafsdfsfsdfsfsdfsd(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd:[B

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd:[B

    const/4 v1, 0x1

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd:[B

    const/4 v1, 0x2

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd:[B

    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    iget v2, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    const/4 v3, 0x4

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    return-void
.end method

.method public fsafsdfsfsdfsfsdfsd(J)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd:[B

    const/16 v1, 0x38

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd:[B

    const/16 v1, 0x30

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd:[B

    const/16 v1, 0x28

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd:[B

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    iget v2, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    invoke-static {v0, v4, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd:[B

    const/16 v1, 0x18

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd:[B

    const/16 v1, 0x10

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd:[B

    const/16 v1, 0x8

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd:[B

    long-to-int v1, p1

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    iget v2, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    add-int/lit8 v2, v2, 0x4

    invoke-static {v0, v4, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    return-void
.end method

.method public fsafsdfsfsdfsfsdfsd([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd([BII)V

    return-void
.end method

.method public fsafsdfsfsdfsfsdfsd([BII)V
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    return-void
.end method

.method fsafsdfsfsdfsfsdfsd([I[I)[B
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef(I)I

    move-result v1

    aput v1, p1, v2

    aput v0, p2, v2

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    return-object v0
.end method

.method fsafsdfsfsdfsfsdfsd(ILjava/lang/String;)[[B
    .locals 4

    new-array v1, p1, [[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    move-result v2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd()I

    move-result v3

    if-ge v3, v2, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v0, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v2, v2, [B

    aput-object v2, v1, v0

    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public htyjyukuilulululu()V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    iget-object v2, p0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    iget v3, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    iget v4, p0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    iput v5, p0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    goto :goto_0
.end method

.method public hukuiluliulu()I
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public rthrthrtjrtjrjtdcbcvbc()[B
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    invoke-virtual {p0, v1, v4, v0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs([BII)V

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    aput-byte v4, v0, v4

    const/4 v2, 0x1

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public sdfsdfsdfsdf()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    return v0
.end method

.method sdfsdfsdfsdf(I)V
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    return-void
.end method

.method public sdfsdfsdfsdf([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([BII)V

    return-void
.end method

.method public sdfsdfsdfsdf([BII)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd([BII)V

    return-void
.end method

.method sdvsdvsvsevsvsev()I
    .locals 2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method sdvsdvsvsevsvsev(I)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    add-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x80

    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    array-length v1, v1

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    if-ge v1, v0, :cond_1

    :goto_0
    new-array v0, v0, [B

    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    iget v2, p0, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public serfwefewfwefewef(I)I
    .locals 2

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    return v0
.end method

.method public serfwefewfwefewef()J
    .locals 8

    const-wide/32 v6, 0xff00

    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v4

    and-long/2addr v0, v6

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v4

    and-long/2addr v2, v6

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    const/16 v4, 0x10

    shl-long/2addr v0, v4

    const-wide/32 v4, -0x10000

    and-long/2addr v0, v4

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public serfwefewfwefewef([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs([BII)V

    return-void
.end method

.method uiiliuluiiuluilulu()B
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    return v0
.end method

.method public wrrgehehehehe()[B
    .locals 3

    const/high16 v1, 0x40000

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    move-result v0

    if-ltz v0, :cond_0

    if-le v0, v1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs([BII)V

    return-object v1
.end method

.method public zxcvxvsdvsvsvs()I
    .locals 3

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->sdvsdvsvsevsvsev()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->sdvsdvsvsevsvsev()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public zxcvxvsdvsvsvs(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    return-void
.end method

.method public zxcvxvsdvsvsvs([B)V
    .locals 3

    const/4 v2, 0x0

    array-length v0, p1

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd([B)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    goto :goto_0
.end method

.method zxcvxvsdvsvsvs([BII)V
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->serfwefewfwefewef:I

    return-void
.end method
