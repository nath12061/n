.class public abstract Linstall/app/CNetTLSProviderBase;
.super Ljava/lang/Object;
.source "CNetTLSProviderBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CNetTLSProviderBase"


# instance fields
.field protected InetAddr:Ljava/net/InetAddress;

.field protected InitialHandshakeComplete:Z

.field protected Port:I

.field protected logging:Z

.field protected sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1
    .param p1, "Context"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/CNetTLSProviderBase;->InitialHandshakeComplete:Z

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Linstall/app/CNetTLSProviderBase;->logging:Z

    .line 31
    iput-object p1, p0, Linstall/app/CNetTLSProviderBase;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 32
    return-void
.end method


# virtual methods
.method public CreateConnection(Ljava/lang/String;)I
    .locals 5
    .param p1, "Host_port"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 35
    const/16 v3, 0x3a

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 36
    .local v0, "Index":I
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "host":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "port":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Linstall/app/CNetTLSProviderBase;->Port:I

    .line 39
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Linstall/app/CNetTLSProviderBase;->InetAddr:Ljava/net/InetAddress;

    .line 40
    return v4
.end method

.method protected native DumpMessage([B)Z
.end method

.method public abstract FreeConnection()V
.end method

.method public abstract Init()I
.end method

.method public abstract IsActive()I
.end method

.method public abstract Receive()I
.end method

.method public abstract ResetConnection()V
.end method

.method public abstract Send([B)I
.end method
