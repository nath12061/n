.class public interface abstract Linstall/app/AuthScheme;
.super Ljava/lang/Object;
.source "AuthScheme.java"


# virtual methods
.method public abstract authenticate(Linstall/app/Credentials;Linstall/app/HttpRequest;)Linstall/app/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/AuthenticationException;
        }
    .end annotation
.end method

.method public abstract getParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRealm()Ljava/lang/String;
.end method

.method public abstract getSchemeName()Ljava/lang/String;
.end method

.method public abstract isComplete()Z
.end method

.method public abstract isConnectionBased()Z
.end method

.method public abstract processChallenge(Linstall/app/Header;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/MalformedChallengeException;
        }
    .end annotation
.end method
