.class public Linstall/app/RemoteCallbackList;
.super Ljava/lang/Object;
.source "RemoteCallbackList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Linstall/app/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 4
    .local p0, "this":Linstall/app/RemoteCallbackList;, "Linstall/app/RemoteCallbackList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginBroadcast()I
    .locals 2

    .prologue
    .line 25
    .local p0, "this":Linstall/app/RemoteCallbackList;, "Linstall/app/RemoteCallbackList<TE;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finishBroadcast()V
    .locals 2

    .prologue
    .line 33
    .local p0, "this":Linstall/app/RemoteCallbackList;, "Linstall/app/RemoteCallbackList<TE;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBroadcastItem(I)Linstall/app/IInterface;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Linstall/app/RemoteCallbackList;, "Linstall/app/RemoteCallbackList<TE;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public kill()V
    .locals 2

    .prologue
    .line 17
    .local p0, "this":Linstall/app/RemoteCallbackList;, "Linstall/app/RemoteCallbackList<TE;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCallbackDied(Linstall/app/IInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Linstall/app/RemoteCallbackList;, "Linstall/app/RemoteCallbackList<TE;>;"
    .local p1, "e":Linstall/app/IInterface;, "TE;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public register(Linstall/app/IInterface;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 9
    .local p0, "this":Linstall/app/RemoteCallbackList;, "Linstall/app/RemoteCallbackList<TE;>;"
    .local p1, "e":Linstall/app/IInterface;, "TE;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregister(Linstall/app/IInterface;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Linstall/app/RemoteCallbackList;, "Linstall/app/RemoteCallbackList<TE;>;"
    .local p1, "e":Linstall/app/IInterface;, "TE;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
