.class public Linstall/app/CNet;
.super Ljava/lang/Object;
.source "CNet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/CNet$WaitForCloseThread;
    }
.end annotation


# static fields
.field public static final ENGINE_IMPLEMENTATION:Ljava/lang/String; = "Engine"

.field public static final NON_TLS_CONNECTION:Ljava/lang/String; = "Non_TLS"

.field private static Net:Linstall/app/CNetTLSProviderBase; = null

.field private static Pass:Ljava/lang/String; = null

.field private static Path:Ljava/lang/String; = null

.field private static ProtocolType:Ljava/lang/String; = null

.field public static final SOCKET_IMPLEMENTATION:Ljava/lang/String; = "Socket"

.field public static final TAG:Ljava/lang/String; = "CNET"

.field public static final TLS_PROTOCOL:Ljava/lang/String; = "TLS"

.field private static Wait:Ljava/lang/Thread;

.field private static km:Linstall/app/KeySecureManager;

.field public static localhost:Z

.field private static localhost_port:Ljava/lang/String;

.field private static network:Linstall/app/CNet;

.field public static slphost_port:Ljava/lang/String;

.field private static tm:Linstall/app/TrustSecureManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    sput-object v1, Linstall/app/CNet;->Net:Linstall/app/CNetTLSProviderBase;

    .line 18
    const-string v0, "123456"

    sput-object v0, Linstall/app/CNet;->Pass:Ljava/lang/String;

    .line 19
    sput-object v1, Linstall/app/CNet;->Path:Ljava/lang/String;

    .line 20
    const-string v0, "Non_TLS"

    sput-object v0, Linstall/app/CNet;->ProtocolType:Ljava/lang/String;

    .line 24
    sput-object v1, Linstall/app/CNet;->Wait:Ljava/lang/Thread;

    .line 25
    sput-object v1, Linstall/app/CNet;->km:Linstall/app/KeySecureManager;

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Linstall/app/CNet;->localhost:Z

    .line 27
    const-string v0, "127.0.0.1:7275"

    sput-object v0, Linstall/app/CNet;->localhost_port:Ljava/lang/String;

    .line 28
    sput-object v1, Linstall/app/CNet;->network:Linstall/app/CNet;

    .line 29
    const-string v0, "208.8.164.7:7275"

    sput-object v0, Linstall/app/CNet;->slphost_port:Ljava/lang/String;

    .line 30
    sput-object v1, Linstall/app/CNet;->tm:Linstall/app/TrustSecureManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Linstall/app/KeySecureManager;

    invoke-direct {v0}, Linstall/app/KeySecureManager;-><init>()V

    sput-object v0, Linstall/app/CNet;->km:Linstall/app/KeySecureManager;

    .line 54
    new-instance v0, Linstall/app/TrustSecureManager;

    invoke-direct {v0}, Linstall/app/TrustSecureManager;-><init>()V

    sput-object v0, Linstall/app/CNet;->tm:Linstall/app/TrustSecureManager;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "StorePath"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Linstall/app/KeySecureManager;

    invoke-direct {v0}, Linstall/app/KeySecureManager;-><init>()V

    sput-object v0, Linstall/app/CNet;->km:Linstall/app/KeySecureManager;

    .line 59
    new-instance v0, Linstall/app/TrustSecureManager;

    invoke-direct {v0}, Linstall/app/TrustSecureManager;-><init>()V

    sput-object v0, Linstall/app/CNet;->tm:Linstall/app/TrustSecureManager;

    .line 60
    return-void
.end method

.method public static CreateConnection()I
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 278
    :try_start_0
    sget-boolean v6, Linstall/app/CNet;->localhost:Z

    if-eqz v6, :cond_0

    .line 279
    sget-object v0, Linstall/app/CNet;->localhost_port:Ljava/lang/String;

    .line 283
    .local v0, "Host_port":Ljava/lang/String;
    :goto_0
    sget-object v6, Linstall/app/CNet;->Net:Linstall/app/CNetTLSProviderBase;

    invoke-virtual {v6, v0}, Linstall/app/CNetTLSProviderBase;->CreateConnection(Ljava/lang/String;)I

    move-result v5

    .line 293
    :goto_1
    return v5

    .line 281
    .end local v0    # "Host_port":Ljava/lang/String;
    :cond_0
    sget-object v0, Linstall/app/CNet;->slphost_port:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v0    # "Host_port":Ljava/lang/String;
    goto :goto_0

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/net/UnknownHostException;
    move-object v2, v1

    .line 287
    .local v2, "e2":Ljava/net/UnknownHostException;
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_1

    .line 289
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .end local v2    # "e2":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v3

    .line 290
    .local v3, "e3":Ljava/lang/NullPointerException;
    move-object v4, v3

    .line 292
    .local v4, "e4":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public static FreeConnection()V
    .locals 1

    .prologue
    .line 299
    sget-object v0, Linstall/app/CNet;->Net:Linstall/app/CNetTLSProviderBase;

    if-eqz v0, :cond_0

    .line 300
    sget-object v0, Linstall/app/CNet;->Net:Linstall/app/CNetTLSProviderBase;

    invoke-virtual {v0}, Linstall/app/CNetTLSProviderBase;->FreeConnection()V

    .line 304
    :cond_0
    return-void
.end method

.method public static Init()I
    .locals 1

    .prologue
    .line 247
    sget-object v0, Linstall/app/CNet;->network:Linstall/app/CNet;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Linstall/app/CNet;

    invoke-direct {v0}, Linstall/app/CNet;-><init>()V

    sput-object v0, Linstall/app/CNet;->network:Linstall/app/CNet;

    .line 253
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsActive()I
    .locals 1

    .prologue
    .line 307
    sget-object v0, Linstall/app/CNet;->Net:Linstall/app/CNetTLSProviderBase;

    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    :cond_0
    sget-object v0, Linstall/app/CNet;->Net:Linstall/app/CNetTLSProviderBase;

    invoke-virtual {v0}, Linstall/app/CNetTLSProviderBase;->IsActive()I

    move-result v0

    goto :goto_0
.end method

.method private PrintAllProviders()V
    .locals 17

    .prologue
    .line 64
    const-string v10, "[GPS_NET] Suite "

    .line 65
    .local v10, "str2":Ljava/lang/String;
    const-string v10, ":"

    .line 66
    const-string v11, "  :"

    .line 67
    .local v11, "str3":Ljava/lang/String;
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v12

    .line 68
    .local v12, "sysProviders":[Ljava/security/Provider;
    array-length v13, v12

    new-array v8, v13, [Ljavax/net/ssl/SSLContext;

    .line 69
    .local v8, "sslCtx":[Ljavax/net/ssl/SSLContext;
    const/4 v6, 0x0

    .line 70
    .local v6, "i":I
    :goto_0
    array-length v13, v12

    if-ge v6, v13, :cond_2

    .line 73
    :try_start_0
    const-string v13, "TLS"

    aget-object v14, v12, v6

    invoke-static {v13, v14}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v13

    aput-object v13, v8, v6

    .line 74
    aget-object v13, v8, v6

    sget-object v14, Linstall/app/CNet;->km:Linstall/app/KeySecureManager;

    invoke-virtual {v14}, Linstall/app/KeySecureManager;->getKetManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v14

    sget-object v15, Linstall/app/CNet;->tm:Linstall/app/TrustSecureManager;

    invoke-virtual {v15}, Linstall/app/TrustSecureManager;->getKetManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 75
    aget-object v13, v8, v6

    invoke-virtual {v13}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    .line 76
    .local v7, "ssf":Ljavax/net/ssl/SSLSocketFactory;
    aget-object v13, v8, v6

    const-string v14, "208.8.164.3"

    const/16 v15, 0x1c6b

    invoke-virtual {v13, v14, v15}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v5

    .line 77
    .local v5, "engine":Ljavax/net/ssl/SSLEngine;
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 79
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "cipherSuites":[Ljava/lang/String;
    const/4 v6, 0x0

    :goto_1
    array-length v13, v0

    if-ge v6, v13, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 84
    :cond_0
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 85
    const/4 v6, 0x0

    .line 86
    :goto_2
    array-length v13, v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v6, v13, :cond_1

    .line 88
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 90
    .end local v0    # "cipherSuites":[Ljava/lang/String;
    .end local v5    # "engine":Ljavax/net/ssl/SSLEngine;
    .end local v7    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v2, v1

    .line 92
    .local v2, "e2":Ljava/security/NoSuchAlgorithmException;
    const-string v9, "  :"

    .line 94
    .local v9, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 101
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "e2":Ljava/security/NoSuchAlgorithmException;
    .end local v9    # "str":Ljava/lang/String;
    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 95
    :catch_1
    move-exception v3

    .line 96
    .local v3, "e3":Ljava/security/GeneralSecurityException;
    move-object v4, v3

    .line 97
    .local v4, "e4":Ljava/security/GeneralSecurityException;
    const-string v9, "  :"

    .line 99
    .restart local v9    # "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_3

    .line 103
    .end local v3    # "e3":Ljava/security/GeneralSecurityException;
    .end local v4    # "e4":Ljava/security/GeneralSecurityException;
    .end local v9    # "str":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static ReInit()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    sget-object v0, Linstall/app/CNet;->network:Linstall/app/CNet;

    if-nez v0, :cond_0

    .line 261
    invoke-static {}, Linstall/app/CNet;->Init()I

    move-result v0

    .line 271
    :goto_0
    return v0

    .line 263
    :cond_0
    invoke-static {}, Linstall/app/CNet;->IsActive()I

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-static {}, Linstall/app/CNet;->FreeConnection()V

    .line 266
    :cond_1
    sput-object v1, Linstall/app/CNet;->Net:Linstall/app/CNetTLSProviderBase;

    .line 271
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static Receive()I
    .locals 1

    .prologue
    .line 315
    sget-object v0, Linstall/app/CNet;->Net:Linstall/app/CNetTLSProviderBase;

    if-nez v0, :cond_0

    .line 316
    const/4 v0, -0x1

    .line 319
    :goto_0
    return v0

    :cond_0
    sget-object v0, Linstall/app/CNet;->Net:Linstall/app/CNetTLSProviderBase;

    invoke-virtual {v0}, Linstall/app/CNetTLSProviderBase;->Receive()I

    move-result v0

    goto :goto_0
.end method

.method public static ResetConnection()V
    .locals 1

    .prologue
    .line 323
    sget-object v0, Linstall/app/CNet;->Net:Linstall/app/CNetTLSProviderBase;

    if-eqz v0, :cond_0

    .line 324
    sget-object v0, Linstall/app/CNet;->Net:Linstall/app/CNetTLSProviderBase;

    invoke-virtual {v0}, Linstall/app/CNetTLSProviderBase;->ResetConnection()V

    .line 326
    :cond_0
    return-void
.end method

.method public static Send([B)I
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 329
    sget-object v0, Linstall/app/CNet;->Net:Linstall/app/CNetTLSProviderBase;

    if-nez v0, :cond_0

    .line 330
    const/4 v0, -0x1

    .line 333
    :goto_0
    return v0

    :cond_0
    sget-object v0, Linstall/app/CNet;->Net:Linstall/app/CNetTLSProviderBase;

    invoke-virtual {v0, p0}, Linstall/app/CNetTLSProviderBase;->Send([B)I

    move-result v0

    goto :goto_0
.end method

.method public static SetPath(Ljava/lang/String;)V
    .locals 0
    .param p0, "P"    # Ljava/lang/String;

    .prologue
    .line 44
    sput-object p0, Linstall/app/CNet;->Path:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static SetProtocolType(Ljava/lang/String;)V
    .locals 0
    .param p0, "protocol"    # Ljava/lang/String;

    .prologue
    .line 49
    sput-object p0, Linstall/app/CNet;->ProtocolType:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private static StartNativeUnitTest()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public static UnitTest()V
    .locals 8

    .prologue
    .line 209
    const/16 v4, 0x1b

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    .line 210
    .local v3, "message":[B
    const-string v2, "208.8.164.7:7275"

    .line 211
    .local v2, "host_port":Ljava/lang/String;
    invoke-static {}, Linstall/app/CNet;->Init()I

    move-result v4

    if-gez v4, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-static {}, Linstall/app/CNet;->CreateConnection()I

    move-result v4

    if-ltz v4, :cond_0

    .line 218
    invoke-static {}, Linstall/app/CNet;->IsActive()I

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    invoke-static {}, Linstall/app/CNet;->Receive()I

    move-result v4

    if-gez v4, :cond_2

    .line 224
    invoke-static {}, Linstall/app/CNet;->FreeConnection()V

    goto :goto_0

    .line 225
    :cond_2
    invoke-static {v3}, Linstall/app/CNet;->Send([B)I

    move-result v4

    if-gez v4, :cond_3

    .line 227
    invoke-static {}, Linstall/app/CNet;->FreeConnection()V

    goto :goto_0

    .line 230
    :cond_3
    sget-object v5, Linstall/app/CNet;->network:Linstall/app/CNet;

    monitor-enter v5

    .line 232
    :try_start_0
    sget-object v4, Linstall/app/CNet;->network:Linstall/app/CNet;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :goto_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    invoke-static {}, Linstall/app/CNet;->FreeConnection()V

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/InterruptedException;
    move-object v1, v0

    .line 236
    .local v1, "e2":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 238
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "e2":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 209
    :array_0
    .array-data 1
        0x0t
        0x1bt
        0x1t
        0x0t
        0x0t
        -0x7ct
        -0x1et
        0xet
        0x2t
        0x44t
        -0x73t
        0x15t
        -0x62t
        0x24t
        0x7t
        -0x4t
        0x41t
        0x4t
        0x40t
        0xft
        -0x60t
        0xet
        0x50t
        0x1ct
        0x22t
        0x1ct
        -0x80t
    .end array-data
.end method

.method public static UnitTestWithLocalHost()V
    .locals 3

    .prologue
    .line 185
    const/16 v2, 0x1b

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    .line 186
    .local v1, "message":[B
    const-string v0, "127.0.0.1:7275"

    .line 187
    .local v0, "host_port":Ljava/lang/String;
    invoke-static {}, Linstall/app/CNet;->Init()I

    move-result v2

    if-gez v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-static {}, Linstall/app/CNet;->CreateConnection()I

    move-result v2

    if-ltz v2, :cond_0

    .line 194
    invoke-static {}, Linstall/app/CNet;->IsActive()I

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-static {}, Linstall/app/CNet;->Receive()I

    move-result v2

    if-gez v2, :cond_2

    .line 200
    invoke-static {}, Linstall/app/CNet;->FreeConnection()V

    goto :goto_0

    .line 204
    :cond_2
    invoke-static {}, Linstall/app/CNet;->FreeConnection()V

    goto :goto_0

    .line 185
    :array_0
    .array-data 1
        0x0t
        0x1bt
        0x1t
        0x0t
        0x0t
        -0x7ct
        -0x1et
        0xet
        0x2t
        0x44t
        -0x73t
        0x15t
        -0x62t
        0x24t
        0x7t
        -0x4t
        0x41t
        0x4t
        0x40t
        0xft
        -0x60t
        0xet
        0x50t
        0x1ct
        0x22t
        0x1ct
        -0x80t
    .end array-data
.end method

.method public static nativeUnitTest()V
    .locals 0

    .prologue
    .line 178
    invoke-static {}, Linstall/app/CNet;->StartNativeUnitTest()V

    .line 179
    return-void
.end method


# virtual methods
.method public Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "KeyStorePath"    # Ljava/lang/String;
    .param p2, "Password"    # Ljava/lang/String;
    .param p3, "Implementation"    # Ljava/lang/String;
    .param p4, "protocol"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v8, "TLS"

    .line 107
    .local v8, "str":Ljava/lang/String;
    const-string v8, "Socket"

    .line 108
    const-string v9, "CNET"

    .line 110
    .local v9, "str2":Ljava/lang/String;
    sget-object v10, Linstall/app/CNet;->Net:Linstall/app/CNetTLSProviderBase;

    if-eqz v10, :cond_0

    .line 112
    const/4 v10, -0x1

    .line 173
    :goto_0
    return v10

    .line 115
    :cond_0
    if-nez p3, :cond_1

    .line 116
    const-string p3, "Socket"

    .line 119
    :cond_1
    if-nez p4, :cond_2

    .line 120
    const-string p4, "Non_TLS"

    .line 124
    :cond_2
    :try_start_0
    const-string v10, "TLS"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 126
    sget-object v10, Linstall/app/CNet;->tm:Linstall/app/TrustSecureManager;

    invoke-virtual {v10, p1, p2}, Linstall/app/TrustSecureManager;->Init(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v10, Linstall/app/CNet;->km:Linstall/app/KeySecureManager;

    invoke-virtual {v10, p1, p2}, Linstall/app/KeySecureManager;->Init(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v10, "TLS"

    invoke-static {v10}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    .line 129
    .local v7, "sslCtx":Ljavax/net/ssl/SSLContext;
    sget-object v10, Linstall/app/CNet;->km:Linstall/app/KeySecureManager;

    invoke-virtual {v10}, Linstall/app/KeySecureManager;->getKetManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v10

    sget-object v11, Linstall/app/CNet;->tm:Linstall/app/TrustSecureManager;

    invoke-virtual {v11}, Linstall/app/TrustSecureManager;->getKetManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v11, v12}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 130
    invoke-direct {p0}, Linstall/app/CNet;->PrintAllProviders()V

    .line 131
    const-string v10, "Socket"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 132
    new-instance v10, Linstall/app/CNetSSLSocketProvider;

    invoke-direct {v10, v7}, Linstall/app/CNetSSLSocketProvider;-><init>(Ljavax/net/ssl/SSLContext;)V

    sput-object v10, Linstall/app/CNet;->Net:Linstall/app/CNetTLSProviderBase;

    .line 150
    .end local v7    # "sslCtx":Ljavax/net/ssl/SSLContext;
    :goto_1
    sget-object v10, Linstall/app/CNet;->Net:Linstall/app/CNetTLSProviderBase;

    invoke-virtual {v10}, Linstall/app/CNetTLSProviderBase;->Init()I

    .line 151
    const/4 v10, 0x0

    goto :goto_0

    .line 135
    .restart local v7    # "sslCtx":Ljavax/net/ssl/SSLContext;
    :cond_3
    new-instance v10, Linstall/app/CNetSSLEngineProvider;

    invoke-direct {v10, v7}, Linstall/app/CNetSSLEngineProvider;-><init>(Ljavax/net/ssl/SSLContext;)V

    sput-object v10, Linstall/app/CNet;->Net:Linstall/app/CNetTLSProviderBase;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 152
    .end local v7    # "sslCtx":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/io/IOException;
    move-object v2, v1

    .line 154
    .local v2, "e2":Ljava/io/IOException;
    const-string v8, "CNET"

    .line 156
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    const/4 v10, 0x0

    sput-object v10, Linstall/app/CNet;->tm:Linstall/app/TrustSecureManager;

    .line 158
    const/4 v10, 0x0

    sput-object v10, Linstall/app/CNet;->km:Linstall/app/KeySecureManager;

    .line 159
    const/4 v10, -0x1

    goto :goto_0

    .line 138
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e2":Ljava/io/IOException;
    :cond_4
    :try_start_1
    const-string v10, "Socket"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "Non_TLS"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 140
    new-instance v10, Linstall/app/CNetSocketProvider;

    invoke-direct {v10}, Linstall/app/CNetSocketProvider;-><init>()V

    sput-object v10, Linstall/app/CNet;->Net:Linstall/app/CNetTLSProviderBase;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 160
    :catch_1
    move-exception v3

    .line 161
    .local v3, "e3":Ljava/security/GeneralSecurityException;
    move-object v4, v3

    .line 162
    .local v4, "e4":Ljava/security/GeneralSecurityException;
    const-string v8, "CNET"

    .line 164
    invoke-virtual {v4}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 165
    const/4 v10, 0x0

    sput-object v10, Linstall/app/CNet;->tm:Linstall/app/TrustSecureManager;

    .line 166
    const/4 v10, 0x0

    sput-object v10, Linstall/app/CNet;->km:Linstall/app/KeySecureManager;

    .line 167
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 144
    .end local v3    # "e3":Ljava/security/GeneralSecurityException;
    .end local v4    # "e4":Ljava/security/GeneralSecurityException;
    :cond_5
    :try_start_2
    const-string p3, "Socket"

    .line 145
    const-string p4, "Non_TLS"

    .line 146
    new-instance v10, Linstall/app/CNetSocketProvider;

    invoke-direct {v10}, Linstall/app/CNetSocketProvider;-><init>()V

    sput-object v10, Linstall/app/CNet;->Net:Linstall/app/CNetTLSProviderBase;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 168
    :catch_2
    move-exception v5

    .line 169
    .local v5, "e5":Ljava/lang/NullPointerException;
    move-object v6, v5

    .line 170
    .local v6, "e6":Ljava/lang/NullPointerException;
    const-string v8, "CNET"

    .line 172
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 173
    const/4 v10, -0x1

    goto/16 :goto_0
.end method
