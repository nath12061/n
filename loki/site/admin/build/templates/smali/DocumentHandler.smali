.class public interface abstract Linstall/app/DocumentHandler;
.super Ljava/lang/Object;
.source "DocumentHandler.java"


# virtual methods
.method public abstract characters([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXException;
        }
    .end annotation
.end method

.method public abstract endDocument()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXException;
        }
    .end annotation
.end method

.method public abstract endElement(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXException;
        }
    .end annotation
.end method

.method public abstract ignorableWhitespace([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXException;
        }
    .end annotation
.end method

.method public abstract processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXException;
        }
    .end annotation
.end method

.method public abstract setDocumentLocator(Linstall/app/Locator;)V
.end method

.method public abstract startDocument()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXException;
        }
    .end annotation
.end method

.method public abstract startElement(Ljava/lang/String;Linstall/app/AttributeList;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXException;
        }
    .end annotation
.end method
