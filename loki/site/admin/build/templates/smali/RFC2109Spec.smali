.class public Linstall/app/RFC2109Spec;
.super Linstall/app/CookieSpecBase;
.source "RFC2109Spec.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Linstall/app/CookieSpecBase;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 2
    .param p1, "datepatterns"    # [Ljava/lang/String;
    .param p2, "oneHeader"    # Z

    .prologue
    .line 6
    invoke-direct {p0}, Linstall/app/CookieSpecBase;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected formatCookieAsVer(Linstall/app/CharArrayBuffer;Linstall/app/Cookie;I)V
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "cookie"    # Linstall/app/Cookie;
    .param p3, "version"    # I

    .prologue
    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 2
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

    .prologue
    .line 23
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Linstall/app/Cookie;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected formatParamAsVer(Linstall/app/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "version"    # I

    .prologue
    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersion()I
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersionHeader()Linstall/app/Header;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Linstall/app/Header;Linstall/app/CookieOrigin;)Ljava/util/List;
    .locals 2
    .param p1, "header"    # Linstall/app/Header;
    .param p2, "origin"    # Linstall/app/CookieOrigin;
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

    .prologue
    .line 15
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
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
