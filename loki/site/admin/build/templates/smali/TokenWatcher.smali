.class public abstract Linstall/app/TokenWatcher;
.super Ljava/lang/Object;
.source "TokenWatcher.java"


# direct methods
.method public constructor <init>(Linstall/app/Handler;Ljava/lang/String;)V
    .locals 2
    .param p1, "h"    # Linstall/app/Handler;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public acquire(Linstall/app/IBinder;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Linstall/app/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract acquired()V
.end method

.method public cleanup(Linstall/app/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Linstall/app/IBinder;
    .param p2, "unlink"    # Z

    .prologue
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAcquired()Z
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release(Linstall/app/IBinder;)V
    .locals 2
    .param p1, "token"    # Linstall/app/IBinder;

    .prologue
    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract released()V
.end method
