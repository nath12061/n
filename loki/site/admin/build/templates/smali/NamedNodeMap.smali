.class public interface abstract Linstall/app/NamedNodeMap;
.super Ljava/lang/Object;
.source "NamedNodeMap.java"


# virtual methods
.method public abstract getLength()I
.end method

.method public abstract getNamedItem(Ljava/lang/String;)Linstall/app/Node;
.end method

.method public abstract getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Linstall/app/Node;
.end method

.method public abstract item(I)Linstall/app/Node;
.end method

.method public abstract removeNamedItem(Ljava/lang/String;)Linstall/app/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method

.method public abstract removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Linstall/app/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method

.method public abstract setNamedItem(Linstall/app/Node;)Linstall/app/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method

.method public abstract setNamedItemNS(Linstall/app/Node;)Linstall/app/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method
