.class public interface abstract Linstall/app/ClientConnectionOperator;
.super Ljava/lang/Object;
.source "ClientConnectionOperator.java"


# virtual methods
.method public abstract createConnection()Linstall/app/OperatedClientConnection;
.end method

.method public abstract openConnection(Linstall/app/OperatedClientConnection;Linstall/app/HttpHost;Ljava/net/InetAddress;Linstall/app/HttpContext;Linstall/app/HttpParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract updateSecureConnection(Linstall/app/OperatedClientConnection;Linstall/app/HttpHost;Linstall/app/HttpContext;Linstall/app/HttpParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
