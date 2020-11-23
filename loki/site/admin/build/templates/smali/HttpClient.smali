.class public interface abstract Linstall/app/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# virtual methods
.method public abstract execute(Linstall/app/HttpHost;Linstall/app/HttpRequest;)Linstall/app/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/ClientProtocolException;
        }
    .end annotation
.end method

.method public abstract execute(Linstall/app/HttpHost;Linstall/app/HttpRequest;Linstall/app/HttpContext;)Linstall/app/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/ClientProtocolException;
        }
    .end annotation
.end method

.method public abstract execute(Linstall/app/HttpUriRequest;)Linstall/app/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/ClientProtocolException;
        }
    .end annotation
.end method

.method public abstract execute(Linstall/app/HttpUriRequest;Linstall/app/HttpContext;)Linstall/app/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/ClientProtocolException;
        }
    .end annotation
.end method

.method public abstract execute(Linstall/app/HttpHost;Linstall/app/HttpRequest;Linstall/app/ResponseHandler;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Linstall/app/HttpHost;",
            "Linstall/app/HttpRequest;",
            "Linstall/app/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/ClientProtocolException;
        }
    .end annotation
.end method

.method public abstract execute(Linstall/app/HttpHost;Linstall/app/HttpRequest;Linstall/app/ResponseHandler;Linstall/app/HttpContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Linstall/app/HttpHost;",
            "Linstall/app/HttpRequest;",
            "Linstall/app/ResponseHandler",
            "<+TT;>;",
            "Linstall/app/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/ClientProtocolException;
        }
    .end annotation
.end method

.method public abstract execute(Linstall/app/HttpUriRequest;Linstall/app/ResponseHandler;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Linstall/app/HttpUriRequest;",
            "Linstall/app/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/ClientProtocolException;
        }
    .end annotation
.end method

.method public abstract execute(Linstall/app/HttpUriRequest;Linstall/app/ResponseHandler;Linstall/app/HttpContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Linstall/app/HttpUriRequest;",
            "Linstall/app/ResponseHandler",
            "<+TT;>;",
            "Linstall/app/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/ClientProtocolException;
        }
    .end annotation
.end method

.method public abstract getConnectionManager()Linstall/app/ClientConnectionManager;
.end method

.method public abstract getParams()Linstall/app/HttpParams;
.end method
