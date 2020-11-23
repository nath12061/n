.class public Lcom/jcraft/jsch/ProxySOCKS4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Proxy;


# static fields
.field private static fsafsdfsfsdfsfsdfsd:I


# instance fields
.field private eryryhrtytujrtujrurt:Ljava/lang/String;

.field private hukuiluliulu:Ljava/net/Socket;

.field private sdfsdfsdfsdf:Ljava/lang/String;

.field private sdvsdvsvsevsvsev:Ljava/io/OutputStream;

.field private serfwefewfwefewef:Ljava/io/InputStream;

.field private zxcvxvsdvsvsvs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x438

    sput v0, Lcom/jcraft/jsch/ProxySOCKS4;->fsafsdfsfsdfsfsdfsd:I

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->serfwefewfwefewef:Ljava/io/InputStream;

    return-object v0
.end method

.method public fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V
    .locals 7

    const/4 v1, 0x4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->sdfsdfsdfsdf:Ljava/lang/String;

    iget v3, p0, Lcom/jcraft/jsch/ProxySOCKS4;->zxcvxvsdvsvsvs:I

    invoke-static {v2, v3, p4}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->hukuiluliulu:Ljava/net/Socket;

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->hukuiluliulu:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->serfwefewfwefewef:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->hukuiluliulu:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;

    :goto_0
    if-lez p4, :cond_0

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->hukuiluliulu:Ljava/net/Socket;

    invoke-virtual {v2, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->hukuiluliulu:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/16 v2, 0x400

    new-array v4, v2, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x4

    aput-byte v5, v4, v2

    const/4 v2, 0x2

    const/4 v5, 0x1

    aput-byte v5, v4, v3

    const/4 v3, 0x3

    ushr-int/lit8 v5, p3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    and-int/lit16 v2, p3, 0xff

    int-to-byte v2, v2

    aput-byte v2, v4, v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    move v2, v0

    :goto_1
    array-length v3, v5

    if-ge v2, v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    aget-byte v6, v5, v2

    aput-byte v6, v4, v1
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->sdfsdfsdfsdf:Ljava/lang/String;

    iget v3, p0, Lcom/jcraft/jsch/ProxySOCKS4;->zxcvxvsdvsvsvs:I

    invoke-interface {p1, v2, v3}, Lcom/jcraft/jsch/SocketFactory;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->hukuiluliulu:Ljava/net/Socket;

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->hukuiluliulu:Ljava/net/Socket;

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/SocketFactory;->fsafsdfsfsdfsfsdfsd(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->serfwefewfwefewef:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->hukuiluliulu:Ljava/net/Socket;

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/SocketFactory;->sdfsdfsdfsdf(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "ProxySOCKS4: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->hukuiluliulu:Ljava/net/Socket;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->hukuiluliulu:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_2
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "ProxySOCKS4: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->eryryhrtytujrtujrurt:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->eryryhrtytujrtujrurt:Ljava/lang/String;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/jcraft/jsch/ProxySOCKS4;->eryryhrtytujrtujrurt:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->eryryhrtytujrtujrurt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    :cond_4
    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    aput-byte v3, v4, v1

    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    const/16 v1, 0x8

    :goto_3
    if-ge v0, v1, :cond_6

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->serfwefewfwefewef:Ljava/io/InputStream;

    sub-int v3, v1, v0

    invoke-virtual {v2, v4, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_5

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "ProxySOCKS4: stream is closed"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/2addr v0, v2

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    aget-byte v0, v4, v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "ProxySOCKS4: server returns VN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v0, 0x1

    aget-byte v0, v4, v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_8

    :try_start_6
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->hukuiluliulu:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_4
    :try_start_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ProxySOCKS4: server returns CD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_8
    return-void

    :catch_3
    move-exception v1

    goto/16 :goto_2

    :catch_4
    move-exception v0

    goto :goto_4
.end method

.method public sdfsdfsdfsdf()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;

    return-object v0
.end method

.method public serfwefewfwefewef()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->serfwefewfwefewef:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->serfwefewfwefewef:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->hukuiluliulu:Ljava/net/Socket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->hukuiluliulu:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->serfwefewfwefewef:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->sdvsdvsvsevsvsev:Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->hukuiluliulu:Ljava/net/Socket;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public zxcvxvsdvsvsvs()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->hukuiluliulu:Ljava/net/Socket;

    return-object v0
.end method
