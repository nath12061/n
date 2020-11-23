.class public interface abstract Linstall/app/HttpMessage;
.super Ljava/lang/Object;
.source "HttpMessage.java"


# virtual methods
.method public abstract addHeader(Linstall/app/Header;)V
.end method

.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract containsHeader(Ljava/lang/String;)Z
.end method

.method public abstract getAllHeaders()[Linstall/app/Header;
.end method

.method public abstract getFirstHeader(Ljava/lang/String;)Linstall/app/Header;
.end method

.method public abstract getHeaders(Ljava/lang/String;)[Linstall/app/Header;
.end method

.method public abstract getLastHeader(Ljava/lang/String;)Linstall/app/Header;
.end method

.method public abstract getParams()Linstall/app/HttpParams;
.end method

.method public abstract getProtocolVersion()Linstall/app/ProtocolVersion;
.end method

.method public abstract headerIterator()Linstall/app/HeaderIterator;
.end method

.method public abstract headerIterator(Ljava/lang/String;)Linstall/app/HeaderIterator;
.end method

.method public abstract removeHeader(Linstall/app/Header;)V
.end method

.method public abstract removeHeaders(Ljava/lang/String;)V
.end method

.method public abstract setHeader(Linstall/app/Header;)V
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setHeaders([Linstall/app/Header;)V
.end method

.method public abstract setParams(Linstall/app/HttpParams;)V
.end method
