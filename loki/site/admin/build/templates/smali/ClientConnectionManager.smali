.class public interface abstract Linstall/app/ClientConnectionManager;
.super Ljava/lang/Object;
.source "ClientConnectionManager.java"


# virtual methods
.method public abstract closeExpiredConnections()V
.end method

.method public abstract closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
.end method

.method public abstract getSchemeRegistry()Linstall/app/SchemeRegistry;
.end method

.method public abstract releaseConnection(Linstall/app/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
.end method

.method public abstract requestConnection(Linstall/app/HttpRoute;Ljava/lang/Object;)Linstall/app/ClientConnectionRequest;
.end method

.method public abstract shutdown()V
.end method
