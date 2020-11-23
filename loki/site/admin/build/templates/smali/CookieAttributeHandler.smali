.class public interface abstract Linstall/app/CookieAttributeHandler;
.super Ljava/lang/Object;
.source "CookieAttributeHandler.java"


# virtual methods
.method public abstract match(Linstall/app/Cookie;Linstall/app/CookieOrigin;)Z
.end method

.method public abstract parse(Linstall/app/SetCookie;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/MalformedCookieException;
        }
    .end annotation
.end method

.method public abstract validate(Linstall/app/Cookie;Linstall/app/CookieOrigin;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/MalformedCookieException;
        }
    .end annotation
.end method
