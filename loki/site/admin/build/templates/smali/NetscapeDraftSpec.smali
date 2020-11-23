.class public Linstall/app/NetscapeDraftSpec;
.super Linstall/app/CookieSpecBase;
.source "NetscapeDraftSpec.java"


# static fields
.field protected static final EXPIRES_PATTERN:Ljava/lang/String; = "EEE, dd-MMM-yyyy HH:mm:ss z"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Linstall/app/CookieSpecBase;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "datepatterns"    # [Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Linstall/app/CookieSpecBase;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
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
    .line 21
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Linstall/app/Cookie;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersion()I
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersionHeader()Linstall/app/Header;
    .locals 2

    .prologue
    .line 29
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
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
