.class public abstract Linstall/app/ObservableCollectiond;
.super Ljava/lang/Object;
.source "ObservableCollectiond.java"

# interfaces
.implements Linstall/app/IObservableCollectiond;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Linstall/app/IObservableCollectiond",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    .local p0, "this":Linstall/app/ObservableCollectiond;, "Linstall/app/ObservableCollectiond<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final _setObject(Ljava/lang/Object;Ljava/util/AbstractCollection;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/Object;
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

    .prologue
    .line 38
    .local p0, "this":Linstall/app/ObservableCollectiond;, "Linstall/app/ObservableCollectiond<TT;>;"
    .local p2, "abstractCollection":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    return-void
.end method

.method public final get()Linstall/app/IObservableCollectiond;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linstall/app/IObservableCollectiond",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Linstall/app/ObservableCollectiond;, "Linstall/app/ObservableCollectiond<TT;>;"
    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    .local p0, "this":Linstall/app/ObservableCollectiond;, "Linstall/app/ObservableCollectiond<TT;>;"
    invoke-virtual {p0}, Linstall/app/ObservableCollectiond;->get()Linstall/app/IObservableCollectiond;

    move-result-object v0

    return-object v0
.end method

.method public final getAllObservers()[Linstall/app/Observerd;
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Linstall/app/ObservableCollectiond;, "Linstall/app/ObservableCollectiond<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Linstall/app/IObservableCollectiond;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9
    .local p0, "this":Linstall/app/ObservableCollectiond;, "Linstall/app/ObservableCollectiond<TT;>;"
    const-class v0, Linstall/app/IObservableCollectiond;

    return-object v0
.end method

.method public final notifyChanged()V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Linstall/app/ObservableCollectiond;, "Linstall/app/ObservableCollectiond<TT;>;"
    return-void
.end method

.method public final notifyChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1, "initiator"    # Ljava/lang/Object;

    .prologue
    .line 23
    .local p0, "this":Linstall/app/ObservableCollectiond;, "Linstall/app/ObservableCollectiond<TT;>;"
    return-void
.end method

.method public final notifyChanged(Ljava/util/AbstractCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractCollection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Linstall/app/ObservableCollectiond;, "Linstall/app/ObservableCollectiond<TT;>;"
    .local p1, "abstractCollection":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    return-void
.end method

.method public notifyCollectionChanged()V
    .locals 0

    .prologue
    .line 56
    .local p0, "this":Linstall/app/ObservableCollectiond;, "Linstall/app/ObservableCollectiond<TT;>;"
    return-void
.end method

.method public final set(Linstall/app/IObservableCollectiond;)V
    .locals 0
    .param p1, "newValue"    # Linstall/app/IObservableCollectiond;

    .prologue
    .line 35
    .local p0, "this":Linstall/app/ObservableCollectiond;, "Linstall/app/ObservableCollectiond<TT;>;"
    return-void
.end method

.method public final set(Linstall/app/IObservableCollectiond;Ljava/util/AbstractCollection;)V
    .locals 0
    .param p1, "newValue"    # Linstall/app/IObservableCollectiond;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/IObservableCollectiond;",
            "Ljava/util/AbstractCollection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Linstall/app/ObservableCollectiond;, "Linstall/app/ObservableCollectiond<TT;>;"
    .local p2, "abstractCollection":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 5
    .local p0, "this":Linstall/app/ObservableCollectiond;, "Linstall/app/ObservableCollectiond<TT;>;"
    check-cast p1, Linstall/app/IObservableCollectiond;

    invoke-virtual {p0, p1}, Linstall/app/ObservableCollectiond;->set(Linstall/app/IObservableCollectiond;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/util/AbstractCollection;)V
    .locals 0

    .prologue
    .line 5
    .local p0, "this":Linstall/app/ObservableCollectiond;, "Linstall/app/ObservableCollectiond<TT;>;"
    check-cast p1, Linstall/app/IObservableCollectiond;

    invoke-virtual {p0, p1, p2}, Linstall/app/ObservableCollectiond;->set(Linstall/app/IObservableCollectiond;Ljava/util/AbstractCollection;)V

    return-void
.end method

.method public final subscribe(Linstall/app/Observerd;)V
    .locals 0
    .param p1, "o"    # Linstall/app/Observerd;

    .prologue
    .line 13
    .local p0, "this":Linstall/app/ObservableCollectiond;, "Linstall/app/ObservableCollectiond<TT;>;"
    return-void
.end method

.method public final unsubscribe(Linstall/app/Observerd;)V
    .locals 0
    .param p1, "o"    # Linstall/app/Observerd;

    .prologue
    .line 16
    .local p0, "this":Linstall/app/ObservableCollectiond;, "Linstall/app/ObservableCollectiond<TT;>;"
    return-void
.end method
