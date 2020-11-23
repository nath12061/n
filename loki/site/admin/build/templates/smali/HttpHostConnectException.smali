.class public Linstall/app/HttpHostConnectException;
.super Ljava/net/ConnectException;
.source "HttpHostConnectException.java"


# direct methods
.method public constructor <init>(Linstall/app/HttpHost;Ljava/net/ConnectException;)V
    .locals 2
    .param p1, "host"    # Linstall/app/HttpHost;
    .param p2, "cause"    # Ljava/net/ConnectException;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/net/ConnectException;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getHost()Linstall/app/HttpHost;
    .locals 2

    .prologue
    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
