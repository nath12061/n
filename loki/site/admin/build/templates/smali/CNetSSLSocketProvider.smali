.class public Linstall/app/CNetSSLSocketProvider;
.super Linstall/app/CNetTLSProviderBase;
.source "CNetSSLSocketProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/CNetSSLSocketProvider$ReceiveThread;,
        Linstall/app/CNetSSLSocketProvider$C00021;
    }
.end annotation


# static fields
.field private static PACKET_LENGTH_SIZE:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "CNetSSLSocketProvider"


# instance fields
.field private ReadListener:Linstall/app/CNetSSLSocketProvider$ReceiveThread;

.field private autoReceive:Z

.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private sslSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x2

    sput-byte v0, Linstall/app/CNetSSLSocketProvider;->PACKET_LENGTH_SIZE:B

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1
    .param p1, "Context"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Linstall/app/CNetTLSProviderBase;-><init>(Ljavax/net/ssl/SSLContext;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/CNetSSLSocketProvider;->ReadListener:Linstall/app/CNetSSLSocketProvider$ReceiveThread;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Linstall/app/CNetSSLSocketProvider;->autoReceive:Z

    .line 46
    return-void
.end method

.method private ReadMessage()[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 143
    const-string v7, "[GPS_NET] ERR: ReadMessage(): Exception, "

    .line 144
    .local v7, "str":Ljava/lang/String;
    const-string v8, "CNetSSLSocketProvider"

    .line 145
    .local v8, "str2":Ljava/lang/String;
    sget-byte v11, Linstall/app/CNetSSLSocketProvider;->PACKET_LENGTH_SIZE:B

    new-array v3, v11, [B

    .line 146
    .local v3, "firstTwoBytes":[B
    const/4 v6, 0x0

    .line 147
    .local v6, "read":I
    :goto_0
    sget-byte v11, Linstall/app/CNetSSLSocketProvider;->PACKET_LENGTH_SIZE:B

    sub-int/2addr v11, v6

    if-lez v11, :cond_1

    .line 149
    :try_start_0
    iget-object v11, p0, Linstall/app/CNetSSLSocketProvider;->in:Ljava/io/InputStream;

    sget-byte v12, Linstall/app/CNetSSLSocketProvider;->PACKET_LENGTH_SIZE:B

    sub-int/2addr v12, v6

    invoke-virtual {v11, v3, v6, v12}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    add-int/2addr v6, v11

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    move-object v1, v0

    .line 152
    .local v1, "e2":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "CNetSSLSocketProvider"

    .line 153
    .local v9, "str3":Ljava/lang/String;
    const-string v10, "[GPS_NET] ERR: ReadMessage(): Exception, "

    .line 154
    .local v10, "str4":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 155
    invoke-direct {p0}, Linstall/app/CNetSSLSocketProvider;->Reset()V

    .line 156
    const/4 v4, 0x0

    .line 174
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v1    # "e2":Ljava/lang/IndexOutOfBoundsException;
    .end local v9    # "str3":Ljava/lang/String;
    .end local v10    # "str4":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v4

    .line 159
    :cond_1
    aget-byte v11, v3, v13

    shl-int/lit8 v11, v11, 0x8

    const v12, 0xff00

    and-int/2addr v11, v12

    aget-byte v12, v3, v14

    and-int/lit16 v12, v12, 0xff

    or-int v5, v11, v12

    .line 160
    .local v5, "messageSize":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[GPS_NET] ReadMessage (): SLP server message length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Linstall/app/CNetSSLSocketProvider;->log(Ljava/lang/String;)V

    .line 161
    new-array v4, v5, [B

    .line 162
    .local v4, "message":[B
    aget-byte v11, v3, v13

    aput-byte v11, v4, v13

    .line 163
    aget-byte v11, v3, v14

    aput-byte v11, v4, v14

    .line 164
    const/4 v6, 0x0

    .line 165
    :goto_2
    sget-byte v11, Linstall/app/CNetSSLSocketProvider;->PACKET_LENGTH_SIZE:B

    sub-int v11, v5, v11

    sub-int/2addr v11, v6

    if-lez v11, :cond_0

    .line 167
    :try_start_1
    iget-object v11, p0, Linstall/app/CNetSSLSocketProvider;->in:Ljava/io/InputStream;

    sget-byte v12, Linstall/app/CNetSSLSocketProvider;->PACKET_LENGTH_SIZE:B

    add-int/2addr v12, v6

    sget-byte v13, Linstall/app/CNetSSLSocketProvider;->PACKET_LENGTH_SIZE:B

    sub-int v13, v5, v13

    sub-int/2addr v13, v6

    invoke-virtual {v11, v4, v12, v13}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    add-int/2addr v6, v11

    goto :goto_2

    .line 168
    :catch_1
    move-exception v2

    .line 170
    .local v2, "e3":Ljava/lang/IndexOutOfBoundsException;
    invoke-direct {p0}, Linstall/app/CNetSSLSocketProvider;->Reset()V

    goto :goto_1
.end method

.method private ReadProc()V
    .locals 5

    .prologue
    .line 199
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GPS_NET] ===>>> ReadProc: Entering with InitialHandshakeComplete = %d \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Linstall/app/CNetSSLSocketProvider;->InitialHandshakeComplete:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Linstall/app/CNetSSLSocketProvider;->log(Ljava/lang/String;)V

    .line 200
    :cond_0
    iget-boolean v3, p0, Linstall/app/CNetSSLSocketProvider;->InitialHandshakeComplete:Z

    if-eqz v3, :cond_1

    .line 201
    invoke-direct {p0}, Linstall/app/CNetSSLSocketProvider;->ReadMessage()[B

    move-result-object v2

    .line 202
    .local v2, "mess":[B
    if-nez v2, :cond_0

    .line 203
    const-string v3, "[GPS_NET] ERR: error ReadMessage message, ReadProc() exit! "

    invoke-direct {p0, v3}, Linstall/app/CNetSSLSocketProvider;->log(Ljava/lang/String;)V

    .line 204
    invoke-direct {p0}, Linstall/app/CNetSSLSocketProvider;->Reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v2    # "mess":[B
    :cond_1
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v0

    .line 210
    .local v1, "e2":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 211
    invoke-direct {p0}, Linstall/app/CNetSSLSocketProvider;->Reset()V

    goto :goto_0
.end method

.method private Reset()V
    .locals 7

    .prologue
    .line 49
    const-string v4, "CNetSSLSocketProvider"

    .line 50
    .local v4, "str":Ljava/lang/String;
    const/4 v6, 0x0

    iput-boolean v6, p0, Linstall/app/CNetSSLSocketProvider;->InitialHandshakeComplete:Z

    .line 52
    :try_start_0
    iget-object v6, p0, Linstall/app/CNetSSLSocketProvider;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v6, :cond_0

    .line 53
    iget-object v6, p0, Linstall/app/CNetSSLSocketProvider;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 55
    :cond_0
    iget-object v6, p0, Linstall/app/CNetSSLSocketProvider;->in:Ljava/io/InputStream;

    if-eqz v6, :cond_1

    .line 56
    iget-object v6, p0, Linstall/app/CNetSSLSocketProvider;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 58
    :cond_1
    iget-object v6, p0, Linstall/app/CNetSSLSocketProvider;->out:Ljava/io/OutputStream;

    if-eqz v6, :cond_2

    .line 59
    iget-object v6, p0, Linstall/app/CNetSSLSocketProvider;->out:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_2
    :goto_0
    :try_start_1
    iget-object v6, p0, Linstall/app/CNetSSLSocketProvider;->ReadListener:Linstall/app/CNetSSLSocketProvider$ReceiveThread;

    if-eqz v6, :cond_4

    .line 68
    iget-object v6, p0, Linstall/app/CNetSSLSocketProvider;->ReadListener:Linstall/app/CNetSSLSocketProvider$ReceiveThread;

    invoke-virtual {v6}, Linstall/app/CNetSSLSocketProvider$ReceiveThread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 69
    iget-object v6, p0, Linstall/app/CNetSSLSocketProvider;->ReadListener:Linstall/app/CNetSSLSocketProvider$ReceiveThread;

    invoke-virtual {v6}, Linstall/app/CNetSSLSocketProvider$ReceiveThread;->interrupt()V

    .line 71
    :cond_3
    const/4 v6, 0x0

    iput-object v6, p0, Linstall/app/CNetSSLSocketProvider;->ReadListener:Linstall/app/CNetSSLSocketProvider$ReceiveThread;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    :cond_4
    :goto_1
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v0

    .line 63
    .local v1, "e2":Ljava/io/IOException;
    const-string v5, "CNetSSLSocketProvider"

    .line 64
    .local v5, "str2":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e2":Ljava/io/IOException;
    .end local v5    # "str2":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 74
    .local v2, "e3":Ljava/lang/SecurityException;
    move-object v3, v2

    .line 76
    .local v3, "e4":Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Linstall/app/CNetSSLSocketProvider;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Linstall/app/CNetSSLSocketProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Linstall/app/CNetSSLSocketProvider;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Linstall/app/CNetSSLSocketProvider;)V
    .locals 0
    .param p0, "x0"    # Linstall/app/CNetSSLSocketProvider;

    .prologue
    .line 15
    invoke-direct {p0}, Linstall/app/CNetSSLSocketProvider;->ReadProc()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string v0, "CNetSSLSocketProvider"

    invoke-static {v0, p1}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method


# virtual methods
.method public CreateConnection(Ljava/lang/String;)I
    .locals 12
    .param p1, "Host_port"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    .line 82
    :try_start_0
    invoke-super {p0, p1}, Linstall/app/CNetTLSProviderBase;->CreateConnection(Ljava/lang/String;)I

    .line 83
    iget-object v7, p0, Linstall/app/CNetSSLSocketProvider;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    .line 84
    .local v6, "ssf":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "cipherSuites":[Ljava/lang/String;
    iget-object v7, p0, Linstall/app/CNetSSLSocketProvider;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v5

    .line 86
    .local v5, "prov":Ljava/security/Provider;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[GPS_NET] SSL context provider - "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/security/Provider;->getInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Linstall/app/CNetSSLSocketProvider;->log(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/SSLSocket;

    iput-object v7, p0, Linstall/app/CNetSSLSocketProvider;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 88
    iget-object v7, p0, Linstall/app/CNetSSLSocketProvider;->sslSocket:Ljavax/net/ssl/SSLSocket;

    new-instance v9, Ljava/net/InetSocketAddress;

    iget-object v10, p0, Linstall/app/CNetSSLSocketProvider;->InetAddr:Ljava/net/InetAddress;

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Linstall/app/CNetSSLSocketProvider;->Port:I

    invoke-direct {v9, v10, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v9}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;)V

    .line 89
    iget-object v7, p0, Linstall/app/CNetSSLSocketProvider;->sslSocket:Ljavax/net/ssl/SSLSocket;

    new-instance v9, Linstall/app/CNetSSLSocketProvider$C00021;

    invoke-direct {v9, p0}, Linstall/app/CNetSSLSocketProvider$C00021;-><init>(Linstall/app/CNetSSLSocketProvider;)V

    invoke-virtual {v7, v9}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 90
    const-string v7, "CNetSSLSocketProvider"

    const-string v9, "[GPS_NET] **INITIAL HANDSHAKE BEGIN**"

    invoke-static {v7, v9}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v7, p0, Linstall/app/CNetSSLSocketProvider;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 92
    iget-object v7, p0, Linstall/app/CNetSSLSocketProvider;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    iput-object v7, p0, Linstall/app/CNetSSLSocketProvider;->in:Ljava/io/InputStream;

    .line 93
    iget-object v7, p0, Linstall/app/CNetSSLSocketProvider;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    iput-object v7, p0, Linstall/app/CNetSSLSocketProvider;->out:Ljava/io/OutputStream;

    .line 94
    const/4 v7, 0x1

    iput-boolean v7, p0, Linstall/app/CNetSSLSocketProvider;->InitialHandshakeComplete:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    const/4 v7, 0x0

    .line 107
    .end local v0    # "cipherSuites":[Ljava/lang/String;
    .end local v5    # "prov":Ljava/security/Provider;
    .end local v6    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    :goto_0
    return v7

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/net/UnknownHostException;
    move-object v2, v1

    .line 98
    .local v2, "e2":Ljava/net/UnknownHostException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[GPS_NET] ERR: CreateConnection(): Unknown host exception, "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Linstall/app/CNetSSLSocketProvider;->log(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 100
    invoke-direct {p0}, Linstall/app/CNetSSLSocketProvider;->Reset()V

    move v7, v8

    .line 101
    goto :goto_0

    .line 102
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .end local v2    # "e2":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v3

    .line 103
    .local v3, "e3":Ljava/io/IOException;
    move-object v4, v3

    .line 104
    .local v4, "e4":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[GPS_NET] ERR: CreateConnection(): I/O Exception, "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Linstall/app/CNetSSLSocketProvider;->log(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 106
    invoke-direct {p0}, Linstall/app/CNetSSLSocketProvider;->Reset()V

    move v7, v8

    .line 107
    goto :goto_0
.end method

.method public FreeConnection()V
    .locals 1

    .prologue
    .line 178
    const-string v0, "[GPS_NET] <FreeConnection>"

    invoke-direct {p0, v0}, Linstall/app/CNetSSLSocketProvider;->log(Ljava/lang/String;)V

    .line 179
    iget-boolean v0, p0, Linstall/app/CNetSSLSocketProvider;->InitialHandshakeComplete:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0}, Linstall/app/CNetSSLSocketProvider;->Reset()V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    const-string v0, "[GPS_NET] InitialHandshakeComplete == false"

    invoke-direct {p0, v0}, Linstall/app/CNetSSLSocketProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public Init()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public IsActive()I
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Linstall/app/CNetSSLSocketProvider;->InitialHandshakeComplete:Z

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 125
    iget-boolean v3, p0, Linstall/app/CNetSSLSocketProvider;->autoReceive:Z

    if-nez v3, :cond_0

    if-ltz p2, :cond_0

    if-gez p3, :cond_2

    .line 126
    :cond_0
    const/4 p3, -0x1

    .line 139
    .end local p3    # "len":I
    :cond_1
    :goto_0
    return p3

    .line 128
    .restart local p3    # "len":I
    :cond_2
    const/4 v2, 0x0

    .line 129
    .local v2, "read":I
    :goto_1
    sub-int v3, p3, v2

    if-lez v3, :cond_1

    .line 131
    :try_start_0
    iget-object v3, p0, Linstall/app/CNetSSLSocketProvider;->in:Ljava/io/InputStream;

    add-int v4, p2, v2

    sub-int v5, p3, v2

    invoke-virtual {v3, p1, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v0

    .line 134
    .local v1, "e2":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 135
    invoke-direct {p0}, Linstall/app/CNetSSLSocketProvider;->Reset()V

    .line 136
    const/4 p3, -0x2

    goto :goto_0
.end method

.method public Receive()I
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Linstall/app/CNetSSLSocketProvider;->ReadListener:Linstall/app/CNetSSLSocketProvider$ReceiveThread;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Linstall/app/CNetSSLSocketProvider$ReceiveThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Linstall/app/CNetSSLSocketProvider$ReceiveThread;-><init>(Linstall/app/CNetSSLSocketProvider;Linstall/app/CNetSSLSocketProvider$1;)V

    iput-object v0, p0, Linstall/app/CNetSSLSocketProvider;->ReadListener:Linstall/app/CNetSSLSocketProvider$ReceiveThread;

    .line 218
    iget-object v0, p0, Linstall/app/CNetSSLSocketProvider;->ReadListener:Linstall/app/CNetSSLSocketProvider$ReceiveThread;

    invoke-virtual {v0}, Linstall/app/CNetSSLSocketProvider$ReceiveThread;->start()V

    .line 220
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ResetConnection()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public Send([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 227
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Linstall/app/CNetSSLSocketProvider;->Write([BII)I

    move-result v0

    return v0
.end method

.method public Write([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 113
    :try_start_0
    iget-object v2, p0, Linstall/app/CNetSSLSocketProvider;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 114
    iget-object v2, p0, Linstall/app/CNetSSLSocketProvider;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    const/4 v2, 0x0

    .line 120
    :goto_0
    return v2

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v0

    .line 118
    .local v1, "e2":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 119
    invoke-direct {p0}, Linstall/app/CNetSSLSocketProvider;->Reset()V

    .line 120
    const/4 v2, -0x1

    goto :goto_0
.end method
