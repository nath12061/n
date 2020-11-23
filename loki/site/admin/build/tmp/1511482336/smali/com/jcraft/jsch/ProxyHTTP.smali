.class public Lcom/jcraft/jsch/ProxyHTTP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Proxy;


# static fields
.field private static fsafsdfsfsdfsfsdfsd:I


# instance fields
.field private eryryhrtytujrtujrurt:Ljava/lang/String;

.field private hukuiluliulu:Ljava/net/Socket;

.field private rthrthrtjrtjrjtdcbcvbc:Ljava/lang/String;

.field private sdfsdfsdfsdf:Ljava/lang/String;

.field private sdvsdvsvsevsvsev:Ljava/io/OutputStream;

.field private serfwefewfwefewef:Ljava/io/InputStream;

.field private zxcvxvsdvsvsvs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x50

    sput v0, Lcom/jcraft/jsch/ProxyHTTP;->fsafsdfsfsdfsfsdfsd:I

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->serfwefewfwefewef:Ljava/io/InputStream;

    return-object v0
.end method

.method public fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V
    .locals 10

    const/16 v8, 0xd

    const/16 v7, 0xa

    const/4 v2, 0x0

    if-nez p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->sdfsdfsdfsdf:Ljava/lang/String;

    iget v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->zxcvxvsdvsvsvs:I

    invoke-static {v0, v1, p4}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->hukuiluliulu:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->hukuiluliulu:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->serfwefewfwefewef:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->hukuiluliulu:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;

    :goto_0
    if-lez p4, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->hukuiluliulu:Ljava/net/Socket;

    invoke-virtual {v0, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->hukuiluliulu:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "CONNECT "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " HTTP/1.0\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->eryryhrtytujrtujrurt:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->rthrthrtjrtjrjtdcbcvbc:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->eryryhrtytujrtujrurt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->rthrthrtjrtjrjtdcbcvbc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v3, v0

    invoke-static {v0, v1, v3}, Lcom/jcraft/jsch/Util;->sdfsdfsdfsdf([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;

    const-string v3, "Proxy-Authorization: Basic "

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    :cond_2
    :goto_1
    if-ltz v1, :cond_6

    iget-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->serfwefewfwefewef:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v8, :cond_5

    int-to-char v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->sdfsdfsdfsdf:Ljava/lang/String;

    iget v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->zxcvxvsdvsvsvs:I

    invoke-interface {p1, v0, v1}, Lcom/jcraft/jsch/SocketFactory;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->hukuiluliulu:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->hukuiluliulu:Ljava/net/Socket;

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/SocketFactory;->fsafsdfsfsdfsfsdfsd(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->serfwefewfwefewef:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->hukuiluliulu:Ljava/net/Socket;

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/SocketFactory;->sdfsdfsdfsdf(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->hukuiluliulu:Ljava/net/Socket;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->hukuiluliulu:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "ProxyHTTP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Ljava/lang/Throwable;

    if-eqz v2, :cond_d

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v2, v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    :try_start_3
    iget-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->serfwefewfwefewef:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v7, :cond_2

    :cond_6
    if-gez v1, :cond_7

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "Unknow reason"
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v0, -0x1

    const/16 v5, 0x20

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v5, 0x20

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v3

    move v9, v0

    move v0, v1

    move v1, v9

    :goto_3
    const/16 v4, 0xc8

    if-eq v1, v4, :cond_8

    :try_start_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "proxy error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v4

    move v9, v0

    move v0, v1

    move v1, v9

    goto :goto_3

    :cond_8
    move v1, v2

    :cond_9
    :goto_4
    if-ltz v0, :cond_b

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->serfwefewfwefewef:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v3, v8, :cond_a

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->serfwefewfwefewef:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v7, :cond_9

    :cond_b
    if-gez v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_c
    if-nez v1, :cond_8

    return-void

    :cond_d
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v1

    goto/16 :goto_2
.end method

.method public sdfsdfsdfsdf()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;

    return-object v0
.end method

.method public serfwefewfwefewef()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->serfwefewfwefewef:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->serfwefewfwefewef:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->hukuiluliulu:Ljava/net/Socket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->hukuiluliulu:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->serfwefewfwefewef:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->hukuiluliulu:Ljava/net/Socket;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public zxcvxvsdvsvsvs()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->hukuiluliulu:Ljava/net/Socket;

    return-object v0
.end method
