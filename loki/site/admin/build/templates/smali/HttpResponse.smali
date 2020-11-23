.class public interface abstract Linstall/app/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"

# interfaces
.implements Linstall/app/HttpMessage;


# virtual methods
.method public abstract getEntity()Linstall/app/HttpEntity;
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getStatusLine()Linstall/app/StatusLine;
.end method

.method public abstract setEntity(Linstall/app/HttpEntity;)V
.end method

.method public abstract setLocale(Ljava/util/Locale;)V
.end method

.method public abstract setReasonPhrase(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setStatusCode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setStatusLine(Linstall/app/ProtocolVersion;I)V
.end method

.method public abstract setStatusLine(Linstall/app/ProtocolVersion;ILjava/lang/String;)V
.end method

.method public abstract setStatusLine(Linstall/app/StatusLine;)V
.end method
