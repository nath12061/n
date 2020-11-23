.class public interface abstract Linstall/app/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# virtual methods
.method public abstract parse(Linstall/app/InputSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract parse(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setDTDHandler(Linstall/app/DTDHandler;)V
.end method

.method public abstract setDocumentHandler(Linstall/app/DocumentHandler;)V
.end method

.method public abstract setEntityResolver(Linstall/app/EntityResolver;)V
.end method

.method public abstract setErrorHandler(Linstall/app/ErrorHandler;)V
.end method

.method public abstract setLocale(Ljava/util/Locale;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXException;
        }
    .end annotation
.end method
