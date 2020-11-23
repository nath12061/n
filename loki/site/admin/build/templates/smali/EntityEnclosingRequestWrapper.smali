.class public Linstall/app/EntityEnclosingRequestWrapper;
.super Linstall/app/RequestWrapper;
.source "EntityEnclosingRequestWrapper.java"

# interfaces
.implements Linstall/app/HttpEntityEnclosingRequest;


# direct methods
.method public constructor <init>(Linstall/app/HttpEntityEnclosingRequest;)V
    .locals 2
    .param p1, "request"    # Linstall/app/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ProtocolException;
        }
    .end annotation

    .prologue
    .line 5
    const/4 v0, 0x0

    check-cast v0, Linstall/app/HttpRequest;

    invoke-direct {p0, v0}, Linstall/app/RequestWrapper;-><init>(Linstall/app/HttpRequest;)V

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public expectContinue()Z
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEntity()Linstall/app/HttpEntity;
    .locals 2

    .prologue
    .line 10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRepeatable()Z
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEntity(Linstall/app/HttpEntity;)V
    .locals 2
    .param p1, "entity"    # Linstall/app/HttpEntity;

    .prologue
    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
