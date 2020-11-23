.class public Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;
.super Ljava/lang/Thread;


# instance fields
.field private fsafsdfsfsdfsfsdfsd:Ljava/io/InputStream;

.field private sdfsdfsdfsdf:I

.field private zxcvxvsdvsvsvs:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    const v0, 0x19000

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput v0, p0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->sdfsdfsdfsdf:I

    iput-object p1, p0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd:Ljava/io/InputStream;

    iput-object p2, p0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->zxcvxvsdvsvsvs:Ljava/io/OutputStream;

    return-void
.end method

.method public static fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [C

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v3, v1, -0x1

    xor-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    aput-char v0, v2, v1

    if-ltz v3, :cond_0

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/lit8 v1, v1, 0x9

    int-to-char v1, v1

    aput-char v1, v2, v3

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->sdfsdfsdfsdf:I

    new-array v2, v0, [B

    move v0, v1

    :goto_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd:Ljava/io/InputStream;

    const/4 v3, 0x0

    iget v4, p0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->sdfsdfsdfsdf:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v0, p0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->zxcvxvsdvsvsvs:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    :cond_1
    iget-object v0, p0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->zxcvxvsdvsvsvs:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method
