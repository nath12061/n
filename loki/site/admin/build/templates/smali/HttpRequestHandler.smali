.class public interface abstract Linstall/app/HttpRequestHandler;
.super Ljava/lang/Object;
.source "HttpRequestHandler.java"


# virtual methods
.method public abstract handle(Linstall/app/HttpRequest;Linstall/app/HttpResponse;Linstall/app/HttpContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
