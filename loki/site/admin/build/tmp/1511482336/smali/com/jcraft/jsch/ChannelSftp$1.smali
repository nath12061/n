.class Lcom/jcraft/jsch/ChannelSftp$1;
.super Ljava/io/OutputStream;


# instance fields
.field private final ertertetetetete:Lcom/jcraft/jsch/SftpProgressMonitor;

.field private eryryhrtytujrtujrurt:I

.field private final fgjyukukuiki:[B

.field fsafsdfsfsdfsfsdfsd:[B

.field private final htyjyukuilulululu:[J

.field private hukuiluliulu:I

.field private rthrthrtjrtjrjtdcbcvbc:I

.field private sdfsdfsdfsdf:Z

.field private sdvsdvsvsevsvsev:I

.field private serfwefewfwefewef:[I

.field private final uiiliuluiiuluilulu:Lcom/jcraft/jsch/ChannelSftp;

.field private wrrgehehehehe:Lcom/jcraft/jsch/ChannelSftp$Header;

.field private zxcvxvsdvsvsvs:Z


# virtual methods
.method public close()V
    .locals 3

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->zxcvxvsdvsvsvs:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$1;->flush()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ertertetetetete:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ertertetetetete:Lcom/jcraft/jsch/SftpProgressMonitor;

    invoke-interface {v0}, Lcom/jcraft/jsch/SftpProgressMonitor;->fsafsdfsfsdfsfsdfsd()V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->uiiliuluiiuluilulu:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->fgjyukukuiki:[B

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->wrrgehehehehe:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->zxcvxvsdvsvsvs:Z

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public flush()V
    .locals 3

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->zxcvxvsdvsvsvs:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->sdfsdfsdfsdf:Z

    if-nez v0, :cond_1

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->rthrthrtjrtjrjtdcbcvbc:I

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->eryryhrtytujrtujrurt:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->uiiliuluiiuluilulu:Lcom/jcraft/jsch/ChannelSftp;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->wrrgehehehehe:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->eryryhrtytujrtujrurt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->eryryhrtytujrtujrurt:I
    :try_end_0
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->fsafsdfsfsdfsfsdfsd:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->fsafsdfsfsdfsfsdfsd:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp$1;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/ChannelSftp$1;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 12

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->sdfsdfsdfsdf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->uiiliuluiiuluilulu:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->sdvsdvsvsevsvsev:I

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->uiiliuluiiuluilulu:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->hukuiluliulu:I

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->sdfsdfsdfsdf:Z

    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->zxcvxvsdvsvsvs:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v6, p3

    move v5, p2

    :cond_2
    if-lez v6, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->uiiliuluiiuluilulu:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->fgjyukukuiki:[B

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->htyjyukuilulululu:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/ChannelSftp;[BJ[BII)I

    move-result v0

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->rthrthrtjrtjrjtdcbcvbc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->rthrthrtjrtjrjtdcbcvbc:I

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->htyjyukuilulululu:[J

    const/4 v2, 0x0

    aget-wide v8, v1, v2

    int-to-long v10, v0

    add-long/2addr v8, v10

    aput-wide v8, v1, v2

    add-int/2addr v5, v0

    sub-int/2addr v6, v0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->uiiliuluiiuluilulu:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->sdvsdvsvsevsvsev:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->uiiliuluiiuluilulu:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->sdfsdfsdfsdf(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/16 v1, 0x400

    if-lt v0, v1, :cond_2

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->uiiliuluiiuluilulu:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->sdfsdfsdfsdf(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->uiiliuluiiuluilulu:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->serfwefewfwefewef:[I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->wrrgehehehehe:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->serfwefewfwefewef:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->hukuiluliulu:I

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->sdvsdvsvsevsvsev:I

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->hukuiluliulu:I

    if-gt v0, v1, :cond_4

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->hukuiluliulu:I

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->uiiliuluiiuluilulu:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_5

    :cond_4
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_5
    :try_start_1
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->eryryhrtytujrtujrurt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->eryryhrtytujrtujrurt:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ertertetetetete:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ertertetetetete:Lcom/jcraft/jsch/SftpProgressMonitor;

    int-to-long v2, p3

    invoke-interface {v0, v2, v3}, Lcom/jcraft/jsch/SftpProgressMonitor;->fsafsdfsfsdfsfsdfsd(J)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$1;->close()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_7
    return-void
.end method
