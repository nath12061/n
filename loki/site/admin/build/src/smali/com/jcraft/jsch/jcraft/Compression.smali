.class public Lcom/jcraft/jsch/jcraft/Compression;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Compression;


# instance fields
.field private final fsafsdfsfsdfsfsdfsd:I

.field private sdfsdfsdfsdf:I

.field private sdvsdvsvsevsvsev:[B

.field private serfwefewfwefewef:[B

.field private zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x34

    iput v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->fsafsdfsfsdfsfsdfsd:I

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->serfwefewfwefewef:[B

    new-instance v0, Lcom/jcraft/jzlib/ZStream;

    invoke-direct {v0}, Lcom/jcraft/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd(II)V
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {v0, p2}, Lcom/jcraft/jzlib/ZStream;->deflateInit(I)I

    iput v1, p0, Lcom/jcraft/jsch/jcraft/Compression;->sdfsdfsdfsdf:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {v0}, Lcom/jcraft/jzlib/ZStream;->inflateInit()I

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->sdvsdvsvsevsvsev:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->sdfsdfsdfsdf:I

    goto :goto_0
.end method

.method public fsafsdfsfsdfsfsdfsd([BI[I)[B
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    iput-object p1, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    iput p2, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    aget v1, p3, v4

    sub-int/2addr v1, p2

    iput v1, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    iget-object v1, p0, Lcom/jcraft/jsch/jcraft/Compression;->serfwefewfwefewef:[B

    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    iput v4, v0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    const/16 v1, 0x1000

    iput v1, v0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/ZStream;->deflate(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "compress: deflate returnd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-eqz v0, :cond_0

    aput p2, p3, v4

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    rsub-int v1, v0, 0x1000

    array-length v0, p1

    add-int v2, p2, v1

    add-int/lit8 v2, v2, 0x34

    if-ge v0, v2, :cond_1

    add-int v0, p2, v1

    add-int/lit8 v0, v0, 0x34

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    array-length v2, p1

    invoke-static {p1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->serfwefewfwefewef:[B

    invoke-static {v0, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public sdfsdfsdfsdf([BI[I)[B
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    iput-object p1, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    iput p2, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    aget v2, p3, v1

    iput v2, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    iget-object v3, p0, Lcom/jcraft/jsch/jcraft/Compression;->serfwefewfwefewef:[B

    iput-object v3, v2, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    const/16 v3, 0x1000

    iput v3, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jcraft/jzlib/ZStream;->inflate(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "uncompress: inflate returnd "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_1
    return-object p1

    :sswitch_0
    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->sdvsdvsvsevsvsev:[B

    array-length v2, v2

    add-int/lit16 v3, v0, 0x1000

    iget-object v4, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->sdvsdvsvsevsvsev:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v3, v0, 0x1000

    iget-object v4, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    add-int/lit16 v2, v0, 0x1000

    iget-object v3, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    iget v3, v3, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v2, v3

    :cond_0
    new-array v2, v2, [B

    iget-object v3, p0, Lcom/jcraft/jsch/jcraft/Compression;->sdvsdvsvsevsvsev:[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->sdvsdvsvsevsvsev:[B

    :cond_1
    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->serfwefewfwefewef:[B

    iget-object v3, p0, Lcom/jcraft/jsch/jcraft/Compression;->sdvsdvsvsevsvsev:[B

    iget-object v4, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    rsub-int v4, v4, 0x1000

    invoke-static {v2, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->zxcvxvsdvsvsvs:Lcom/jcraft/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    rsub-int v2, v2, 0x1000

    add-int/2addr v0, v2

    aput v0, p3, v1

    goto :goto_0

    :sswitch_1
    array-length v2, p1

    sub-int/2addr v2, p2

    if-le v0, v2, :cond_2

    add-int v2, v0, p2

    new-array v2, v2, [B

    invoke-static {p1, v1, v2, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/jcraft/jsch/jcraft/Compression;->sdvsdvsvsevsvsev:[B

    invoke-static {v3, v1, v2, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    :goto_2
    aput v0, p3, v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->sdvsdvsvsevsvsev:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
