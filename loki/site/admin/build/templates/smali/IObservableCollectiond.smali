.class public interface abstract Linstall/app/IObservableCollectiond;
.super Ljava/lang/Object;
.source "IObservableCollectiond.java"

# interfaces
.implements Linstall/app/IObservabled;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Linstall/app/IObservabled",
        "<",
        "Linstall/app/IObservableCollectiond;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getComponentType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getItem(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public abstract notifyCollectionChanged()V
.end method

.method public abstract onLoad(I)V
.end method

.method public abstract size()I
.end method

.method public abstract subscribe(Linstall/app/CollectionObserverd;)V
.end method

.method public abstract unsubscribe(Linstall/app/CollectionObserverd;)V
.end method
