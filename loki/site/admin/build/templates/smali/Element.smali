.class public interface abstract Linstall/app/Element;
.super Ljava/lang/Object;
.source "Element.java"

# interfaces
.implements Linstall/app/Node;


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAttributeNode(Ljava/lang/String;)Linstall/app/Attr;
.end method

.method public abstract getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Linstall/app/Attr;
.end method

.method public abstract getElementsByTagName(Ljava/lang/String;)Linstall/app/NodeList;
.end method

.method public abstract getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Linstall/app/NodeList;
.end method

.method public abstract getTagName()Ljava/lang/String;
.end method

.method public abstract hasAttribute(Ljava/lang/String;)Z
.end method

.method public abstract hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract removeAttribute(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method

.method public abstract removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method

.method public abstract removeAttributeNode(Linstall/app/Attr;)Linstall/app/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method

.method public abstract setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method

.method public abstract setAttributeNode(Linstall/app/Attr;)Linstall/app/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method

.method public abstract setAttributeNodeNS(Linstall/app/Attr;)Linstall/app/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method
