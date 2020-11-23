.class public interface abstract Linstall/app/ErrorHandler;
.super Ljava/lang/Object;
.source "ErrorHandler.java"


# virtual methods
.method public abstract error(Linstall/app/SAXParseException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXException;
        }
    .end annotation
.end method

.method public abstract fatalError(Linstall/app/SAXParseException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXException;
        }
    .end annotation
.end method

.method public abstract warning(Linstall/app/SAXParseException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXException;
        }
    .end annotation
.end method
