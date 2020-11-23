.class public interface abstract Linstall/app/XMLReader;
.super Ljava/lang/Object;
.source "XMLReader.java"


# virtual methods
.method public abstract getContentHandler()Linstall/app/ContentHandler;
.end method

.method public abstract getDTDHandler()Linstall/app/DTDHandler;
.end method

.method public abstract getEntityResolver()Linstall/app/EntityResolver;
.end method

.method public abstract getErrorHandler()Linstall/app/ErrorHandler;
.end method

.method public abstract getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXNotRecognizedException;,
            Linstall/app/SAXNotSupportedException;
        }
    .end annotation
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXNotRecognizedException;,
            Linstall/app/SAXNotSupportedException;
        }
    .end annotation
.end method

.method public abstract parse(Linstall/app/InputSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/SAXException;
        }
    .end annotation
.end method

.method public abstract parse(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/SAXException;
        }
    .end annotation
.end method

.method public abstract setContentHandler(Linstall/app/ContentHandler;)V
.end method

.method public abstract setDTDHandler(Linstall/app/DTDHandler;)V
.end method

.method public abstract setEntityResolver(Linstall/app/EntityResolver;)V
.end method

.method public abstract setErrorHandler(Linstall/app/ErrorHandler;)V
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXNotRecognizedException;,
            Linstall/app/SAXNotSupportedException;
        }
    .end annotation
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXNotRecognizedException;,
            Linstall/app/SAXNotSupportedException;
        }
    .end annotation
.end method
