.class public interface abstract Linstall/app/RequestDirector;
.super Ljava/lang/Object;
.source "RequestDirector.java"


# virtual methods
.method public abstract execute(Linstall/app/HttpHost;Linstall/app/HttpRequest;Linstall/app/HttpContext;)Linstall/app/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
