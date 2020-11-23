.class public interface abstract Linstall/app/DTDHandler;
.super Ljava/lang/Object;
.source "DTDHandler.java"


# virtual methods
.method public abstract notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXException;
        }
    .end annotation
.end method

.method public abstract unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXException;
        }
    .end annotation
.end method
