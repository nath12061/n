.class public Linstall/app/HttpConnectionParamBean;
.super Linstall/app/HttpAbstractParamBean;
.source "HttpConnectionParamBean.java"


# direct methods
.method public constructor <init>(Linstall/app/HttpParams;)V
    .locals 2
    .param p1, "params"    # Linstall/app/HttpParams;

    .prologue
    .line 5
    const/4 v0, 0x0

    check-cast v0, Linstall/app/HttpParams;

    invoke-direct {p0, v0}, Linstall/app/HttpAbstractParamBean;-><init>(Linstall/app/HttpParams;)V

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public setConnectionTimeout(I)V
    .locals 2
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLinger(I)V
    .locals 2
    .param p1, "linger"    # I

    .prologue
    .line 22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSoTimeout(I)V
    .locals 2
    .param p1, "soTimeout"    # I

    .prologue
    .line 10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSocketBufferSize(I)V
    .locals 2
    .param p1, "socketBufferSize"    # I

    .prologue
    .line 18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStaleCheckingEnabled(Z)V
    .locals 2
    .param p1, "staleCheckingEnabled"    # Z

    .prologue
    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTcpNoDelay(Z)V
    .locals 2
    .param p1, "tcpNoDelay"    # Z

    .prologue
    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
