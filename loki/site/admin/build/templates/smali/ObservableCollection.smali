.class public abstract Linstall/app/ObservableCollection;
.super Ljava/lang/Object;
.source "ObservableCollection.java"

# interfaces
.implements Linstall/app/IObservableCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Linstall/app/IObservableCollection",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    .local p0, "this":Linstall/app/ObservableCollection;, "Linstall/app/ObservableCollection<TT;>;"
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
    .local p0, "this":Linstall/app/ObservableCollection;, "Linstall/app/ObservableCollection<TT;>;"
    .local p2, "abstractCollection":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    return-void
.end method

.method public final get()Linstall/app/IObservableCollection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linstall/app/IObservableCollection",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Linstall/app/ObservableCollection;, "Linstall/app/ObservableCollection<TT;>;"
    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    .local p0, "this":Linstall/app/ObservableCollection;, "Linstall/app/ObservableCollection<TT;>;"
    invoke-virtual {p0}, Linstall/app/ObservableCollection;->get()Linstall/app/IObservableCollection;

    move-result-object v0

    return-object v0
.end method

.method public final getAllObservers()[Linstall/app/Observer;
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Linstall/app/ObservableCollection;, "Linstall/app/ObservableCollection<TT;>;"
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
            "Linstall/app/IObservableCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9
    .local p0, "this":Linstall/app/ObservableCollection;, "Linstall/app/ObservableCollection<TT;>;"
    const-class v0, Linstall/app/IObservableCollection;

    return-object v0
.end method

.method public final notifyChanged()V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Linstall/app/ObservableCollection;, "Linstall/app/ObservableCollection<TT;>;"
    return-void
.end method

.method public final notifyChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1, "initiator"    # Ljava/lang/Object;

    .prologue
    .line 23
    .local p0, "this":Linstall/app/ObservableCollection;, "Linstall/app/ObservableCollection<TT;>;"
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
    .local p0, "this":Linstall/app/ObservableCollection;, "Linstall/app/ObservableCollection<TT;>;"
    .local p1, "abstractCollection":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    return-void
.end method

.method public notifyCollectionChanged()V
    .locals 0

    .prologue
    .line 50
    .local p0, "this":Linstall/app/ObservableCollection;, "Linstall/app/ObservableCollection<TT;>;"
    return-void
.end method

.method public final set(Linstall/app/IObservableCollection;)V
    .locals 0
    .param p1, "newValue"    # Linstall/app/IObservableCollection;

    .prologue
    .line 35
    .local p0, "this":Linstall/app/ObservableCollection;, "Linstall/app/ObservableCollection<TT;>;"
    return-void
.end method

.method public final set(Linstall/app/To;Ljava/util/AbstractCollection;)V
    .locals 0
    .param p1, "newValue"    # Linstall/app/To;
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

    .prologue
    .line 32
    .local p0, "this":Linstall/app/ObservableCollection;, "Linstall/app/ObservableCollection<TT;>;"
    .local p2, "initiators":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 6
    .local p0, "this":Linstall/app/ObservableCollection;, "Linstall/app/ObservableCollection<TT;>;"
    check-cast p1, Linstall/app/IObservableCollection;

    invoke-virtual {p0, p1}, Linstall/app/ObservableCollection;->set(Linstall/app/IObservableCollection;)V

    return-void
.end method

.method public subscribe(Linstall/app/CollectionObserver;)V
    .locals 0
    .param p1, "c"    # Linstall/app/CollectionObserver;

    .prologue
    .line 45
    .local p0, "this":Linstall/app/ObservableCollection;, "Linstall/app/ObservableCollection<TT;>;"
    return-void
.end method

.method public final subscribe(Linstall/app/Observer;)V
    .locals 0
    .param p1, "o"    # Linstall/app/Observer;

    .prologue
    .line 13
    .local p0, "this":Linstall/app/ObservableCollection;, "Linstall/app/ObservableCollection<TT;>;"
    return-void
.end method

.method public final unsubscribe(Linstall/app/Observer;)V
    .locals 0
    .param p1, "o"    # Linstall/app/Observer;

    .prologue
    .line 16
    .local p0, "this":Linstall/app/ObservableCollection;, "Linstall/app/ObservableCollection<TT;>;"
    return-void
.end method
