.class public interface abstract Linstall/app/HttpResponseInterceptor;
.super Ljava/lang/Object;
.source "HttpResponseInterceptor.java"


# virtual methods
.method public abstract process(Linstall/app/HttpResponse;Linstall/app/HttpContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
