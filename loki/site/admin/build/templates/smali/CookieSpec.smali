.class public interface abstract Linstall/app/CookieSpec;
.super Ljava/lang/Object;
.source "CookieSpec.java"


# virtual methods
.method public abstract formatCookies(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Linstall/app/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Linstall/app/Header;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersion()I
.end method

.method public abstract getVersionHeader()Linstall/app/Header;
.end method

.method public abstract match(Linstall/app/Cookie;Linstall/app/CookieOrigin;)Z
.end method

.method public abstract parse(Linstall/app/Header;Linstall/app/CookieOrigin;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Header;",
            "Linstall/app/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Linstall/app/Cookie;",
            ">;"
        }
    .end annotation

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
