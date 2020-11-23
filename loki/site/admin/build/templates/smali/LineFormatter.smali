.class public interface abstract Linstall/app/LineFormatter;
.super Ljava/lang/Object;
.source "LineFormatter.java"


# virtual methods
.method public abstract appendProtocolVersion(Linstall/app/CharArrayBuffer;Linstall/app/ProtocolVersion;)Linstall/app/CharArrayBuffer;
.end method

.method public abstract formatHeader(Linstall/app/CharArrayBuffer;Linstall/app/Header;)Linstall/app/CharArrayBuffer;
.end method

.method public abstract formatRequestLine(Linstall/app/CharArrayBuffer;Linstall/app/RequestLine;)Linstall/app/CharArrayBuffer;
.end method

.method public abstract formatStatusLine(Linstall/app/CharArrayBuffer;Linstall/app/StatusLine;)Linstall/app/CharArrayBuffer;
.end method
