.class public interface abstract Linstall/app/HttpRequestFactory;
.super Ljava/lang/Object;
.source "HttpRequestFactory.java"


# virtual methods
.method public abstract newHttpRequest(Linstall/app/RequestLine;)Linstall/app/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/MethodNotSupportedException;
        }
    .end annotation
.end method

.method public abstract newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Linstall/app/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/MethodNotSupportedException;
        }
    .end annotation
.end method
