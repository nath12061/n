.class public Linstall/app/CNetSocketProvider;
.super Linstall/app/CNetTLSProviderBase;
.source "CNetSocketProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/CNetSocketProvider$ReceiveThread;
    }
.end annotation


# static fields
.field private static PACKET_LENGTH_SIZE:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "CNetSocketProvider"


# instance fields
.field private ReadListener:Linstall/app/CNetSocketProvider$ReceiveThread;

.field private autoReceive:Z

.field private in:Ljava/io/InputStream;

.field private isConnectionActive:Z

.field private nonSecureSocket:Ljava/net/Socket;

.field private out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x2

    sput-byte v0, Linstall/app/CNetSocketProvider;->PACKET_LENGTH_SIZE:B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0}, Linstall/app/CNetTLSProviderBase;-><init>(Ljavax/net/ssl/SSLContext;)V

    .line 14
    iput-object v0, p0, Linstall/app/CNetSocketProvider;->ReadListener:Linstall/app/CNetSocketProvider$ReceiveThread;

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Linstall/app/CNetSocketProvider;->autoReceive:Z

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/CNetSocketProvider;->isConnectionActive:Z

    .line 32
    return-void
.end method

.method private ReadMessage()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 123
    const-string v4, "CNetSocketProvider"

    .line 124
    .local v4, "str":Ljava/lang/String;
    sget-byte v6, Linstall/app/CNetSocketProvider;->PACKET_LENGTH_SIZE:B

    new-array v0, v6, [B

    .line 125
    .local v0, "firstTwoBytes":[B
    const/4 v3, 0x0

    .line 126
    .local v3, "read":I
    const-string v5, "CNetSocketProvider"

    .line 127
    .local v5, "str2":Ljava/lang/String;
    const-string v5, "CNetSocketProvider"

    .line 128
    :goto_0
    sget-byte v6, Linstall/app/CNetSocketProvider;->PACKET_LENGTH_SIZE:B

    sub-int/2addr v6, v3

    if-lez v6, :cond_0

    .line 129
    iget-object v6, p0, Linstall/app/CNetSocketProvider;->in:Ljava/io/InputStream;

    sget-byte v7, Linstall/app/CNetSocketProvider;->PACKET_LENGTH_SIZE:B

    sub-int/2addr v7, v3

    invoke-virtual {v6, v0, v3, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_0

    .line 131
    :cond_0
    const-string v5, "CNetSocketProvider"

    .line 132
    aget-byte v6, v0, v8

    shl-int/lit8 v6, v6, 0x8

    const v7, 0xff00

    and-int/2addr v6, v7

    aget-byte v7, v0, v9

    and-int/lit16 v7, v7, 0xff

    or-int v2, v6, v7

    .line 133
    .local v2, "messageSize":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GPS_NET] ReadMessage (): SLP server message length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Linstall/app/CNetSocketProvider;->log(Ljava/lang/String;)V

    .line 134
    new-array v1, v2, [B

    .line 135
    .local v1, "message":[B
    aget-byte v6, v0, v8

    aput-byte v6, v1, v8

    .line 136
    aget-byte v6, v0, v9

    aput-byte v6, v1, v9

    .line 137
    const/4 v3, 0x0

    .line 138
    const-string v5, "CNetSocketProvider"

    .line 139
    :goto_1
    sget-byte v6, Linstall/app/CNetSocketProvider;->PACKET_LENGTH_SIZE:B

    sub-int v6, v2, v6

    sub-int/2addr v6, v3

    if-lez v6, :cond_1

    .line 140
    iget-object v6, p0, Linstall/app/CNetSocketProvider;->in:Ljava/io/InputStream;

    sget-byte v7, Linstall/app/CNetSocketProvider;->PACKET_LENGTH_SIZE:B

    add-int/2addr v7, v3

    sget-byte v8, Linstall/app/CNetSocketProvider;->PACKET_LENGTH_SIZE:B

    sub-int v8, v2, v8

    sub-int/2addr v8, v3

    invoke-virtual {v6, v1, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_1

    .line 142
    :cond_1
    const-string v5, "CNetSocketProvider"

    .line 143
    return-object v1
.end method

.method private ReadProc()V
    .locals 9

    .prologue
    .line 167
    const-string v6, "CNetSocketProvider"

    .line 169
    .local v6, "str2":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GPS_NET] ReadProc: Entering with isConnectionActive "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Linstall/app/CNetSocketProvider;->isConnectionActive:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Linstall/app/CNetSocketProvider;->log(Ljava/lang/String;)V

    .line 170
    :cond_0
    iget-boolean v7, p0, Linstall/app/CNetSocketProvider;->isConnectionActive:Z

    if-eqz v7, :cond_1

    .line 171
    invoke-direct {p0}, Linstall/app/CNetSocketProvider;->ReadMessage()[B

    move-result-object v4

    .line 172
    .local v4, "mess":[B
    if-nez v4, :cond_0

    .line 173
    const-string v7, "[GPS_NET] ERR: ReadMessage end of stream!"

    invoke-direct {p0, v7}, Linstall/app/CNetSocketProvider;->log(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Linstall/app/CNetSocketProvider;->Reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 187
    .end local v4    # "mess":[B
    :cond_1
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v0

    .line 180
    .local v1, "e2":Ljava/io/IOException;
    const-string v5, "CNetSocketProvider"

    .line 181
    .local v5, "str":Ljava/lang/String;
    invoke-direct {p0}, Linstall/app/CNetSocketProvider;->Reset()V

    goto :goto_0

    .line 182
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e2":Ljava/io/IOException;
    .end local v5    # "str":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 183
    .local v2, "e3":Ljava/lang/ArrayIndexOutOfBoundsException;
    move-object v3, v2

    .line 184
    .local v3, "e4":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v5, "CNetSocketProvider"

    .line 185
    .restart local v5    # "str":Ljava/lang/String;
    invoke-direct {p0}, Linstall/app/CNetSocketProvider;->Reset()V

    goto :goto_0
.end method

.method private Reset()V
    .locals 5

    .prologue
    .line 35
    const-string v3, "CNetSocketProvider"

    .line 37
    .local v3, "str":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Linstall/app/CNetSocketProvider;->nonSecureSocket:Ljava/net/Socket;

    if-eqz v4, :cond_0

    .line 38
    iget-object v4, p0, Linstall/app/CNetSocketProvider;->nonSecureSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    .line 40
    :cond_0
    iget-object v4, p0, Linstall/app/CNetSocketProvider;->in:Ljava/io/InputStream;

    if-eqz v4, :cond_1

    .line 41
    iget-object v4, p0, Linstall/app/CNetSocketProvider;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 43
    :cond_1
    iget-object v4, p0, Linstall/app/CNetSocketProvider;->out:Ljava/io/OutputStream;

    if-eqz v4, :cond_2

    .line 44
    iget-object v4, p0, Linstall/app/CNetSocketProvider;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 46
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Linstall/app/CNetSocketProvider;->isConnectionActive:Z

    .line 47
    const-string v4, "[GPS_NET] Successfully resetting connection"

    invoke-direct {p0, v4}, Linstall/app/CNetSocketProvider;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    :try_start_1
    iget-object v4, p0, Linstall/app/CNetSocketProvider;->ReadListener:Linstall/app/CNetSocketProvider$ReceiveThread;

    if-eqz v4, :cond_4

    .line 54
    iget-object v4, p0, Linstall/app/CNetSocketProvider;->ReadListener:Linstall/app/CNetSocketProvider$ReceiveThread;

    invoke-virtual {v4}, Linstall/app/CNetSocketProvider$ReceiveThread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 55
    iget-object v4, p0, Linstall/app/CNetSocketProvider;->ReadListener:Linstall/app/CNetSocketProvider$ReceiveThread;

    invoke-virtual {v4}, Linstall/app/CNetSocketProvider$ReceiveThread;->interrupt()V

    .line 57
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Linstall/app/CNetSocketProvider;->ReadListener:Linstall/app/CNetSocketProvider$ReceiveThread;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    :cond_4
    :goto_1
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v0

    .line 50
    .local v1, "e2":Ljava/io/IOException;
    const-string v4, "CNetSocketProvider"

    goto :goto_0

    .line 59
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e2":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 60
    .local v2, "e3":Ljava/lang/SecurityException;
    goto :goto_1
.end method

.method static synthetic access$000(Linstall/app/CNetSocketProvider;)V
    .locals 0
    .param p0, "x0"    # Linstall/app/CNetSocketProvider;

    .prologue
    .line 11
    invoke-direct {p0}, Linstall/app/CNetSocketProvider;->ReadProc()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 205
    const-string v0, "CNetSocketProvider"

    invoke-static {v0, p1}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method


# virtual methods
.method public CreateConnection(Ljava/lang/String;)I
    .locals 9
    .param p1, "Host_port"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 67
    :try_start_0
    invoke-super {p0, p1}, Linstall/app/CNetTLSProviderBase;->CreateConnection(Ljava/lang/String;)I

    .line 68
    const-string v5, "[GPS_NET] CreateConnection :: Entering"

    invoke-direct {p0, v5}, Linstall/app/CNetSocketProvider;->log(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v5

    iput-object v5, p0, Linstall/app/CNetSocketProvider;->nonSecureSocket:Ljava/net/Socket;

    .line 70
    iget-object v5, p0, Linstall/app/CNetSocketProvider;->nonSecureSocket:Ljava/net/Socket;

    new-instance v6, Ljava/net/InetSocketAddress;

    iget-object v7, p0, Linstall/app/CNetSocketProvider;->InetAddr:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Linstall/app/CNetSocketProvider;->Port:I

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 71
    iget-object v5, p0, Linstall/app/CNetSocketProvider;->nonSecureSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Linstall/app/CNetSocketProvider;->in:Ljava/io/InputStream;

    .line 72
    iget-object v5, p0, Linstall/app/CNetSocketProvider;->nonSecureSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iput-object v5, p0, Linstall/app/CNetSocketProvider;->out:Ljava/io/OutputStream;

    .line 73
    const/4 v5, 0x1

    iput-boolean v5, p0, Linstall/app/CNetSocketProvider;->isConnectionActive:Z

    .line 74
    const-string v5, "[GPS_NET] CreateConnection :: Exiting Successfully. "

    invoke-direct {p0, v5}, Linstall/app/CNetSocketProvider;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    const/4 v4, 0x0

    .line 85
    :goto_0
    return v4

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/net/UnknownHostException;
    move-object v1, v0

    .line 78
    .local v1, "e2":Ljava/net/UnknownHostException;
    invoke-direct {p0}, Linstall/app/CNetSocketProvider;->Reset()V

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GPS_NET] ERR: CreateConnection(): Unknown host exception, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Linstall/app/CNetSocketProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .end local v1    # "e2":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v2

    .line 82
    .local v2, "e3":Ljava/io/IOException;
    move-object v3, v2

    .line 83
    .local v3, "e4":Ljava/io/IOException;
    invoke-direct {p0}, Linstall/app/CNetSocketProvider;->Reset()V

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GPS_NET] ERR: CreateConnection(): I/O Exception, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Linstall/app/CNetSocketProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public FreeConnection()V
    .locals 1

    .prologue
    .line 147
    const-string v0, "[GPS_NET] <FreeConnection>"

    invoke-direct {p0, v0}, Linstall/app/CNetSocketProvider;->log(Ljava/lang/String;)V

    .line 148
    iget-boolean v0, p0, Linstall/app/CNetSocketProvider;->isConnectionActive:Z

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "[GPS_NET] Reset connection"

    invoke-direct {p0, v0}, Linstall/app/CNetSocketProvider;->log(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Linstall/app/CNetSocketProvider;->Reset()V

    .line 152
    :cond_0
    return-void
.end method

.method public Init()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public IsActive()I
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Linstall/app/CNetSocketProvider;->isConnectionActive:Z

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 162
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
    .line 105
    const-string v3, "[GPS_NET] CNetSocketProvider :: Read to Socket"

    invoke-direct {p0, v3}, Linstall/app/CNetSocketProvider;->log(Ljava/lang/String;)V

    .line 106
    iget-boolean v3, p0, Linstall/app/CNetSocketProvider;->autoReceive:Z

    if-nez v3, :cond_0

    if-ltz p2, :cond_0

    if-gez p3, :cond_2

    .line 107
    :cond_0
    const/4 p3, -0x1

    .line 119
    .end local p3    # "len":I
    :cond_1
    :goto_0
    return p3

    .line 109
    .restart local p3    # "len":I
    :cond_2
    const/4 v2, 0x0

    .line 110
    .local v2, "read":I
    :goto_1
    sub-int v3, p3, v2

    if-lez v3, :cond_1

    .line 112
    :try_start_0
    iget-object v3, p0, Linstall/app/CNetSocketProvider;->in:Ljava/io/InputStream;

    add-int v4, p2, v2

    sub-int v5, p3, v2

    invoke-virtual {v3, p1, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v0

    .line 115
    .local v1, "e2":Ljava/io/IOException;
    invoke-direct {p0}, Linstall/app/CNetSocketProvider;->Reset()V

    .line 116
    const/4 p3, -0x2

    goto :goto_0
.end method

.method public Receive()I
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Linstall/app/CNetSocketProvider;->ReadListener:Linstall/app/CNetSocketProvider$ReceiveThread;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Linstall/app/CNetSocketProvider$ReceiveThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Linstall/app/CNetSocketProvider$ReceiveThread;-><init>(Linstall/app/CNetSocketProvider;Linstall/app/CNetSocketProvider$1;)V

    iput-object v0, p0, Linstall/app/CNetSocketProvider;->ReadListener:Linstall/app/CNetSocketProvider$ReceiveThread;

    .line 192
    iget-object v0, p0, Linstall/app/CNetSocketProvider;->ReadListener:Linstall/app/CNetSocketProvider$ReceiveThread;

    invoke-virtual {v0}, Linstall/app/CNetSocketProvider$ReceiveThread;->start()V

    .line 194
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ResetConnection()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public Send([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 201
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Linstall/app/CNetSocketProvider;->Write([BII)I

    move-result v0

    return v0
.end method

.method public Write([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 90
    const-string v2, "CNetSocketProvider"

    .line 91
    .local v2, "str":Ljava/lang/String;
    const-string v4, "[GPS_NET] CNetSocketProvider :: Write to Socket"

    invoke-direct {p0, v4}, Linstall/app/CNetSocketProvider;->log(Ljava/lang/String;)V

    .line 93
    :try_start_0
    iget-object v4, p0, Linstall/app/CNetSocketProvider;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 94
    iget-object v4, p0, Linstall/app/CNetSocketProvider;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    const/4 v4, 0x0

    .line 100
    :goto_0
    return v4

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v0

    .line 98
    .local v1, "e2":Ljava/io/IOException;
    const-string v3, "CNetSocketProvider"

    .line 99
    .local v3, "str2":Ljava/lang/String;
    invoke-direct {p0}, Linstall/app/CNetSocketProvider;->Reset()V

    .line 100
    const/4 v4, -0x1

    goto :goto_0
.end method
