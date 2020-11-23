.class public Lcom/jcraft/jsch/IO;
.super Ljava/lang/Object;


# instance fields
.field fsafsdfsfsdfsfsdfsd:Ljava/io/InputStream;

.field private hukuiluliulu:Z

.field sdfsdfsdfsdf:Ljava/io/OutputStream;

.field private sdvsdvsvsevsvsev:Z

.field private serfwefewfwefewef:Z

.field zxcvxvsdvsvsvs:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->serfwefewfwefewef:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->sdvsdvsvsevsvsev:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->hukuiluliulu:Z

    return-void
.end method


# virtual methods
.method fsafsdfsfsdfsfsdfsd()I
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Packet;)V
    .locals 4

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->sdfsdfsdfsdf:Ljava/io/OutputStream;

    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->sdfsdfsdfsdf:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method fsafsdfsfsdfsfsdfsd(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd:Ljava/io/InputStream;

    return-void
.end method

.method fsafsdfsfsdfsfsdfsd(Ljava/io/InputStream;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/jcraft/jsch/IO;->serfwefewfwefewef:Z

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd(Ljava/io/InputStream;)V

    return-void
.end method

.method fsafsdfsfsdfsfsdfsd(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/IO;->sdfsdfsdfsdf:Ljava/io/OutputStream;

    return-void
.end method

.method fsafsdfsfsdfsfsdfsd(Ljava/io/OutputStream;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/jcraft/jsch/IO;->sdvsdvsvsevsvsev:Z

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd(Ljava/io/OutputStream;)V

    return-void
.end method

.method fsafsdfsfsdfsfsdfsd([BII)V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->sdfsdfsdfsdf:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->sdfsdfsdfsdf:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method sdfsdfsdfsdf()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->sdfsdfsdfsdf:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jcraft/jsch/IO;->sdvsdvsvsevsvsev:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->sdfsdfsdfsdf:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/IO;->sdfsdfsdfsdf:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method sdfsdfsdfsdf([BII)V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->zxcvxvsdvsvsvs:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->zxcvxvsdvsvsvs:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public zxcvxvsdvsvsvs()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jcraft/jsch/IO;->serfwefewfwefewef:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/IO;->sdfsdfsdfsdf()V

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->zxcvxvsdvsvsvs:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jcraft/jsch/IO;->hukuiluliulu:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->zxcvxvsdvsvsvs:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/IO;->zxcvxvsdvsvsvs:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method zxcvxvsdvsvsvs([BII)V
    .locals 2

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "End of IO Stream Read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    if-gtz p3, :cond_0

    return-void
.end method
