.class public interface abstract Linstall/app/ResponseHandler;
.super Ljava/lang/Object;
.source "ResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract handleResponse(Linstall/app/HttpResponse;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/HttpResponse;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
