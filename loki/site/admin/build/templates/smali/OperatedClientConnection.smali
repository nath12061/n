.class public interface abstract Linstall/app/OperatedClientConnection;
.super Ljava/lang/Object;
.source "OperatedClientConnection.java"

# interfaces
.implements Linstall/app/HttpClientConnection;
.implements Linstall/app/HttpInetConnection;


# virtual methods
.method public abstract getSocket()Ljava/net/Socket;
.end method

.method public abstract getTargetHost()Linstall/app/HttpHost;
.end method

.method public abstract isSecure()Z
.end method

.method public abstract openCompleted(ZLinstall/app/HttpParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract opening(Ljava/net/Socket;Linstall/app/HttpHost;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract update(Ljava/net/Socket;Linstall/app/HttpHost;ZLinstall/app/HttpParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
