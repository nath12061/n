.class public interface abstract Linstall/app/HeaderValueParser;
.super Ljava/lang/Object;
.source "HeaderValueParser.java"


# virtual methods
.method public abstract parseElements(Linstall/app/CharArrayBuffer;Linstall/app/ParserCursor;)[Linstall/app/HeaderElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation
.end method

.method public abstract parseHeaderElement(Linstall/app/CharArrayBuffer;Linstall/app/ParserCursor;)Linstall/app/HeaderElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation
.end method

.method public abstract parseNameValuePair(Linstall/app/CharArrayBuffer;Linstall/app/ParserCursor;)Linstall/app/NameValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation
.end method

.method public abstract parseParameters(Linstall/app/CharArrayBuffer;Linstall/app/ParserCursor;)[Linstall/app/NameValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation
.end method
