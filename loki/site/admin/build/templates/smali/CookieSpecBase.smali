.class public abstract Linstall/app/CookieSpecBase;
.super Linstall/app/AbstractCookieSpec;
.source "CookieSpecBase.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Linstall/app/AbstractCookieSpec;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static getDefaultDomain(Linstall/app/CookieOrigin;)Ljava/lang/String;
    .locals 2
    .param p0, "origin"    # Linstall/app/CookieOrigin;

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static getDefaultPath(Linstall/app/CookieOrigin;)Ljava/lang/String;
    .locals 2
    .param p0, "origin"    # Linstall/app/CookieOrigin;

    .prologue
    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public match(Linstall/app/Cookie;Linstall/app/CookieOrigin;)Z
    .locals 2
    .param p1, "cookie"    # Linstall/app/Cookie;
    .param p2, "origin"    # Linstall/app/CookieOrigin;

    .prologue
    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected parse([Linstall/app/HeaderElement;Linstall/app/CookieOrigin;)Ljava/util/List;
    .locals 2
    .param p1, "elems"    # [Linstall/app/HeaderElement;
    .param p2, "origin"    # Linstall/app/CookieOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Linstall/app/HeaderElement;",
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

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validate(Linstall/app/Cookie;Linstall/app/CookieOrigin;)V
    .locals 2
    .param p1, "cookie"    # Linstall/app/Cookie;
    .param p2, "origin"    # Linstall/app/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
