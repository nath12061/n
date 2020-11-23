.class public Linstall/app/DefaultClientConnectionOperator;
.super Ljava/lang/Object;
.source "DefaultClientConnectionOperator.java"

# interfaces
.implements Linstall/app/ClientConnectionOperator;


# instance fields
.field protected schemeRegistry:Linstall/app/SchemeRegistry;


# direct methods
.method public constructor <init>(Linstall/app/SchemeRegistry;)V
    .locals 2
    .param p1, "schemes"    # Linstall/app/SchemeRegistry;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createConnection()Linstall/app/OperatedClientConnection;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openConnection(Linstall/app/OperatedClientConnection;Linstall/app/HttpHost;Ljava/net/InetAddress;Linstall/app/HttpContext;Linstall/app/HttpParams;)V
    .locals 2
    .param p1, "conn"    # Linstall/app/OperatedClientConnection;
    .param p2, "target"    # Linstall/app/HttpHost;
    .param p3, "local"    # Ljava/net/InetAddress;
    .param p4, "context"    # Linstall/app/HttpContext;
    .param p5, "params"    # Linstall/app/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected prepareSocket(Ljava/net/Socket;Linstall/app/HttpContext;Linstall/app/HttpParams;)V
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "context"    # Linstall/app/HttpContext;
    .param p3, "params"    # Linstall/app/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateSecureConnection(Linstall/app/OperatedClientConnection;Linstall/app/HttpHost;Linstall/app/HttpContext;Linstall/app/HttpParams;)V
    .locals 2
    .param p1, "conn"    # Linstall/app/OperatedClientConnection;
    .param p2, "target"    # Linstall/app/HttpHost;
    .param p3, "context"    # Linstall/app/HttpContext;
    .param p4, "params"    # Linstall/app/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
