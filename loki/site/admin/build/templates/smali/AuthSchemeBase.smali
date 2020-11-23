.class public abstract Linstall/app/AuthSchemeBase;
.super Ljava/lang/Object;
.source "AuthSchemeBase.java"

# interfaces
.implements Linstall/app/AuthScheme;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public isProxy()Z
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract parseChallenge(Linstall/app/CharArrayBuffer;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/MalformedChallengeException;
        }
    .end annotation
.end method

.method public processChallenge(Linstall/app/Header;)V
    .locals 2
    .param p1, "header"    # Linstall/app/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
