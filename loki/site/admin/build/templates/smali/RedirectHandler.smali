.class public interface abstract Linstall/app/RedirectHandler;
.super Ljava/lang/Object;
.source "RedirectHandler.java"


# virtual methods
.method public abstract getLocationURI(Linstall/app/HttpResponse;Linstall/app/HttpContext;)Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ProtocolException;
        }
    .end annotation
.end method

.method public abstract isRedirectRequested(Linstall/app/HttpResponse;Linstall/app/HttpContext;)Z
.end method
