.class public interface abstract Linstall/app/CookieStore;
.super Ljava/lang/Object;
.source "CookieStore.java"


# virtual methods
.method public abstract addCookie(Linstall/app/Cookie;)V
.end method

.method public abstract clear()V
.end method

.method public abstract clearExpired(Ljava/util/Date;)Z
.end method

.method public abstract getCookies()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Linstall/app/Cookie;",
            ">;"
        }
    .end annotation
.end method
