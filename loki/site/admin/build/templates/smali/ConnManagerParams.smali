.class public final Linstall/app/ConnManagerParams;
.super Ljava/lang/Object;
.source "ConnManagerParams.java"

# interfaces
.implements Linstall/app/ConnManagerPNames;


# static fields
.field public static final DEFAULT_MAX_TOTAL_CONNECTIONS:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMaxConnectionsPerRoute(Linstall/app/HttpParams;)Linstall/app/ConnPerRoute;
    .locals 2
    .param p0, "params"    # Linstall/app/HttpParams;

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMaxTotalConnections(Linstall/app/HttpParams;)I
    .locals 2
    .param p0, "params"    # Linstall/app/HttpParams;

    .prologue
    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTimeout(Linstall/app/HttpParams;)J
    .locals 2
    .param p0, "params"    # Linstall/app/HttpParams;

    .prologue
    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setMaxConnectionsPerRoute(Linstall/app/HttpParams;Linstall/app/ConnPerRoute;)V
    .locals 2
    .param p0, "params"    # Linstall/app/HttpParams;
    .param p1, "connPerRoute"    # Linstall/app/ConnPerRoute;

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setMaxTotalConnections(Linstall/app/HttpParams;I)V
    .locals 2
    .param p0, "params"    # Linstall/app/HttpParams;
    .param p1, "maxTotalConnections"    # I

    .prologue
    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setTimeout(Linstall/app/HttpParams;J)V
    .locals 2
    .param p0, "params"    # Linstall/app/HttpParams;
    .param p1, "timeout"    # J

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
