.class public Linstall/app/BasicMaxAgeHandler;
.super Linstall/app/AbstractCookieAttributeHandler;
.source "BasicMaxAgeHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 4
    invoke-direct {p0}, Linstall/app/AbstractCookieAttributeHandler;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public parse(Linstall/app/SetCookie;Ljava/lang/String;)V
    .locals 2
    .param p1, "cookie"    # Linstall/app/SetCookie;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
