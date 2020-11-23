.class public interface abstract Linstall/app/DOMImplementation;
.super Ljava/lang/Object;
.source "DOMImplementation.java"


# virtual methods
.method public abstract createDocument(Ljava/lang/String;Ljava/lang/String;Linstall/app/DocumentType;)Linstall/app/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method

.method public abstract createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linstall/app/DocumentType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method

.method public abstract hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
.end method
