.class public Linstall/app/BasicHttpEntityEnclosingRequest;
.super Linstall/app/BasicHttpRequest;
.source "BasicHttpEntityEnclosingRequest.java"

# interfaces
.implements Linstall/app/HttpEntityEnclosingRequest;


# direct methods
.method public constructor <init>(Linstall/app/RequestLine;)V
    .locals 2
    .param p1, "requestline"    # Linstall/app/RequestLine;

    .prologue
    .line 15
    const/4 v0, 0x0

    check-cast v0, Linstall/app/RequestLine;

    invoke-direct {p0, v0}, Linstall/app/BasicHttpRequest;-><init>(Linstall/app/RequestLine;)V

    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 5
    const/4 v0, 0x0

    check-cast v0, Linstall/app/RequestLine;

    invoke-direct {p0, v0}, Linstall/app/BasicHttpRequest;-><init>(Linstall/app/RequestLine;)V

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Linstall/app/ProtocolVersion;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "ver"    # Linstall/app/ProtocolVersion;

    .prologue
    .line 10
    const/4 v0, 0x0

    check-cast v0, Linstall/app/RequestLine;

    invoke-direct {p0, v0}, Linstall/app/BasicHttpRequest;-><init>(Linstall/app/RequestLine;)V

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public expectContinue()Z
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEntity()Linstall/app/HttpEntity;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEntity(Linstall/app/HttpEntity;)V
    .locals 2
    .param p1, "entity"    # Linstall/app/HttpEntity;

    .prologue
    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
