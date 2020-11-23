.class public interface abstract Linstall/app/AuthenticationHandler;
.super Ljava/lang/Object;
.source "AuthenticationHandler.java"


# virtual methods
.method public abstract getChallenges(Linstall/app/HttpResponse;Linstall/app/HttpContext;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/HttpResponse;",
            "Linstall/app/HttpContext;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Linstall/app/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/MalformedChallengeException;
        }
    .end annotation
.end method

.method public abstract isAuthenticationRequested(Linstall/app/HttpResponse;Linstall/app/HttpContext;)Z
.end method

.method public abstract selectScheme(Ljava/util/Map;Linstall/app/HttpResponse;Linstall/app/HttpContext;)Linstall/app/AuthScheme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Linstall/app/Header;",
            ">;",
            "Linstall/app/HttpResponse;",
            "Linstall/app/HttpContext;",
            ")",
            "Linstall/app/AuthScheme;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/AuthenticationException;
        }
    .end annotation
.end method
