.class public interface abstract Linstall/app/IObservable;
.super Ljava/lang/Object;
.source "IObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract _setObject(Ljava/lang/Object;Ljava/util/AbstractCollection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/AbstractCollection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getAllObservers()[Linstall/app/Observer;
.end method

.method public abstract getType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract notifyChanged()V
.end method

.method public abstract notifyChanged(Ljava/lang/Object;)V
.end method

.method public abstract notifyChanged(Ljava/util/AbstractCollection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractCollection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract set(Linstall/app/To;Ljava/util/AbstractCollection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/To;",
            "Ljava/util/AbstractCollection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract subscribe(Linstall/app/Observer;)V
.end method

.method public abstract unsubscribe(Linstall/app/Observer;)V
.end method
