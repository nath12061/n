.class public interface abstract Linstall/app/Document;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Linstall/app/Node;


# virtual methods
.method public abstract createAttribute(Ljava/lang/String;)Linstall/app/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method

.method public abstract createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Linstall/app/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method

.method public abstract createCDATASection(Ljava/lang/String;)Linstall/app/CDATASection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method

.method public abstract createComment(Ljava/lang/String;)Linstall/app/Comment;
.end method

.method public abstract createDocumentFragment()Linstall/app/DocumentFragment;
.end method

.method public abstract createElement(Ljava/lang/String;)Linstall/app/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method

.method public abstract createElementNS(Ljava/lang/String;Ljava/lang/String;)Linstall/app/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method

.method public abstract createEntityReference(Ljava/lang/String;)Linstall/app/EntityReference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method

.method public abstract createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Linstall/app/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method

.method public abstract createTextNode(Ljava/lang/String;)Linstall/app/Text;
.end method

.method public abstract getDoctype()Linstall/app/DocumentType;
.end method

.method public abstract getDocumentElement()Linstall/app/Element;
.end method

.method public abstract getElementById(Ljava/lang/String;)Linstall/app/Element;
.end method

.method public abstract getElementsByTagName(Ljava/lang/String;)Linstall/app/NodeList;
.end method

.method public abstract getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Linstall/app/NodeList;
.end method

.method public abstract getImplementation()Linstall/app/DOMImplementation;
.end method

.method public abstract importNode(Linstall/app/Node;Z)Linstall/app/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method
