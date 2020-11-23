.class public interface abstract Linstall/app/IObservableCollection;
.super Ljava/lang/Object;
.source "IObservableCollection.java"

# interfaces
.implements Linstall/app/IObservable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Linstall/app/IObservable",
        "<",
        "Linstall/app/IObservableCollection;",
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

.method public abstract subscribe(Linstall/app/CollectionObserver;)V
.end method

.method public abstract unsubscribe(Linstall/app/CollectionObserver;)V
.end method
