.class public interface abstract Linstall/app/Attr;
.super Ljava/lang/Object;
.source "Attr.java"

# interfaces
.implements Linstall/app/Node;


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOwnerElement()Linstall/app/Element;
.end method

.method public abstract getSpecified()Z
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract setValue(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method
