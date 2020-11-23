.class public interface abstract Linstall/app/HttpRequestInterceptor;
.super Ljava/lang/Object;
.source "HttpRequestInterceptor.java"


# virtual methods
.method public abstract process(Linstall/app/HttpRequest;Linstall/app/HttpContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
