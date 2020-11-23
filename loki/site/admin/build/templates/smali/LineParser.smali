.class public interface abstract Linstall/app/LineParser;
.super Ljava/lang/Object;
.source "LineParser.java"


# virtual methods
.method public abstract hasProtocolVersion(Linstall/app/CharArrayBuffer;Linstall/app/ParserCursor;)Z
.end method

.method public abstract parseHeader(Linstall/app/CharArrayBuffer;)Linstall/app/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation
.end method

.method public abstract parseProtocolVersion(Linstall/app/CharArrayBuffer;Linstall/app/ParserCursor;)Linstall/app/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation
.end method

.method public abstract parseRequestLine(Linstall/app/CharArrayBuffer;Linstall/app/ParserCursor;)Linstall/app/RequestLine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation
.end method

.method public abstract parseStatusLine(Linstall/app/CharArrayBuffer;Linstall/app/ParserCursor;)Linstall/app/StatusLine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation
.end method
