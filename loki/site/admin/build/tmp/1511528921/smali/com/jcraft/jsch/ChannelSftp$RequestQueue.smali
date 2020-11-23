.class Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
.super Ljava/lang/Object;


# instance fields
.field fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

.field sdfsdfsdfsdf:I

.field private final serfwefewfwefewef:Lcom/jcraft/jsch/ChannelSftp;

.field zxcvxvsdvsvsvs:I


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;I)V
    .locals 3

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->serfwefewfwefewef:Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    new-array v0, p2, [Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    new-instance v2, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    invoke-direct {v2, p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;-><init>(Lcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd()V

    return-void
.end method


# virtual methods
.method fsafsdfsfsdfsfsdfsd(I)Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->zxcvxvsdvsvsvs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->zxcvxvsdvsvsvs:I

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->sdfsdfsdfsdf:I

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->sdfsdfsdfsdf:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->sdfsdfsdfsdf:I

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->sdfsdfsdfsdf:I

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->sdfsdfsdfsdf:I

    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->fsafsdfsfsdfsfsdfsd:I

    if-eq v2, p1, :cond_4

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->serfwefewfwefewef()J

    move-result-wide v4

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->fsafsdfsfsdfsfsdfsd:I

    if-ne v2, p1, :cond_2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v0, v3, v0

    iput v1, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->fsafsdfsfsdfsfsdfsd:I

    move v1, v2

    :cond_1
    if-eqz v1, :cond_3

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;

    invoke-direct {v0, p0, v4, v5}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;-><init>(Lcom/jcraft/jsch/ChannelSftp$RequestQueue;J)V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "RequestQueue: unknown request id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v2, v2, v0

    iput v1, v2, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->fsafsdfsfsdfsfsdfsd:I

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v0, v1, v0

    return-object v0
.end method

.method fsafsdfsfsdfsfsdfsd()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->zxcvxvsdvsvsvs:I

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->sdfsdfsdfsdf:I

    return-void
.end method

.method fsafsdfsfsdfsfsdfsd(IJI)V
    .locals 4

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->zxcvxvsdvsvsvs:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->sdfsdfsdfsdf:I

    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->sdfsdfsdfsdf:I

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->zxcvxvsdvsvsvs:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v1, v1

    sub-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v1, v1, v0

    iput p1, v1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->fsafsdfsfsdfsfsdfsd:I

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v1, v1, v0

    iput-wide p2, v1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->sdfsdfsdfsdf:J

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v0, v1, v0

    int-to-long v2, p4

    iput-wide v2, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->zxcvxvsdvsvsvs:J

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->zxcvxvsdvsvsvs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->zxcvxvsdvsvsvs:I

    return-void
.end method

.method fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V
    .locals 7

    const/4 v1, 0x0

    iget v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->zxcvxvsdvsvsvs:I

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->serfwefewfwefewef:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    iget v4, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->fsafsdfsfsdfsfsdfsd:I

    move v0, v1

    :goto_1
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->fsafsdfsfsdfsfsdfsd:I

    iget v6, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->zxcvxvsdvsvsvs:I

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v0, v5, v0

    iput v1, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->fsafsdfsfsdfsfsdfsd:I

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->serfwefewfwefewef:Lcom/jcraft/jsch/ChannelSftp;

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/ChannelSftp;J)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd()V

    return-void
.end method

.method sdfsdfsdfsdf()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->zxcvxvsdvsvsvs:I

    return v0
.end method

.method serfwefewfwefewef()J
    .locals 6

    const-wide v2, 0x7fffffffffffffffL

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->fsafsdfsfsdfsfsdfsd:I

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->sdfsdfsdfsdf:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v1, v1, v0

    iget-wide v2, v1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->sdfsdfsdfsdf:J

    goto :goto_1

    :cond_2
    return-wide v2
.end method

.method zxcvxvsdvsvsvs()I
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v0, v0

    return v0
.end method
