.class public interface abstract Linstall/app/ProcessingInstruction;
.super Ljava/lang/Object;
.source "ProcessingInstruction.java"

# interfaces
.implements Linstall/app/Node;


# virtual methods
.method public abstract getData()Ljava/lang/String;
.end method

.method public abstract getTarget()Ljava/lang/String;
.end method

.method public abstract setData(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/DOMException;
        }
    .end annotation
.end method
