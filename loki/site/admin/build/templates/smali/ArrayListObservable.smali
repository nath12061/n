.class public abstract Linstall/app/ArrayListObservable;
.super Linstall/app/ObservableCollection;
.source "ArrayListObservable.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Linstall/app/ObservableCollection",
        "<TT;>;",
        "Ljava/util/Collection",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, "this":Linstall/app/ArrayListObservable;, "Linstall/app/ArrayListObservable<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Linstall/app/ObservableCollection;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linstall/app/ArrayListObservable;->mArray:Ljava/util/ArrayList;

    .line 12
    iput-object p1, p0, Linstall/app/ArrayListObservable;->mType:Ljava/lang/Class;

    .line 13
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Linstall/app/ArrayListObservable;, "Linstall/app/ArrayListObservable<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Linstall/app/ArrayListObservable;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 97
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Linstall/app/ArrayListObservable;->notifyCollectionChanged()V

    .line 100
    :cond_0
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Linstall/app/ArrayListObservable;, "Linstall/app/ArrayListObservable<TT;>;"
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    iget-object v1, p0, Linstall/app/ArrayListObservable;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 49
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Linstall/app/ArrayListObservable;->notifyCollectionChanged()V

    .line 52
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 23
    .local p0, "this":Linstall/app/ArrayListObservable;, "Linstall/app/ArrayListObservable<TT;>;"
    iget-object v0, p0, Linstall/app/ArrayListObservable;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    invoke-virtual {p0}, Linstall/app/ArrayListObservable;->notifyCollectionChanged()V

    .line 25
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 104
    .local p0, "this":Linstall/app/ArrayListObservable;, "Linstall/app/ArrayListObservable<TT;>;"
    iget-object v0, p0, Linstall/app/ArrayListObservable;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Linstall/app/ArrayListObservable;, "Linstall/app/ArrayListObservable<TT;>;"
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Linstall/app/ArrayListObservable;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public getComponentType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Linstall/app/ArrayListObservable;, "Linstall/app/ArrayListObservable<TT;>;"
    iget-object v0, p0, Linstall/app/ArrayListObservable;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Linstall/app/ArrayListObservable;, "Linstall/app/ArrayListObservable<TT;>;"
    iget-object v0, p0, Linstall/app/ArrayListObservable;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Linstall/app/ArrayListObservable;, "Linstall/app/ArrayListObservable<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Linstall/app/ArrayListObservable;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Linstall/app/ArrayListObservable;, "Linstall/app/ArrayListObservable<TT;>;"
    iget-object v0, p0, Linstall/app/ArrayListObservable;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Linstall/app/ArrayListObservable;, "Linstall/app/ArrayListObservable<TT;>;"
    iget-object v0, p0, Linstall/app/ArrayListObservable;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public onLoad(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 20
    .local p0, "this":Linstall/app/ArrayListObservable;, "Linstall/app/ArrayListObservable<TT;>;"
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 108
    .local p0, "this":Linstall/app/ArrayListObservable;, "Linstall/app/ArrayListObservable<TT;>;"
    iget-object v1, p0, Linstall/app/ArrayListObservable;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 109
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Linstall/app/ArrayListObservable;->notifyCollectionChanged()V

    .line 112
    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Linstall/app/ArrayListObservable;, "Linstall/app/ArrayListObservable<TT;>;"
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Linstall/app/ArrayListObservable;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 69
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Linstall/app/ArrayListObservable;->notifyCollectionChanged()V

    .line 72
    :cond_0
    return v0
.end method

.method public replaceItem(ILjava/lang/Object;)V
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Linstall/app/ArrayListObservable;, "Linstall/app/ArrayListObservable<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Linstall/app/ArrayListObservable;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {p0}, Linstall/app/ArrayListObservable;->notifyCollectionChanged()V

    .line 37
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Linstall/app/ArrayListObservable;, "Linstall/app/ArrayListObservable<TT;>;"
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Linstall/app/ArrayListObservable;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 77
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Linstall/app/ArrayListObservable;->notifyCollectionChanged()V

    .line 80
    :cond_0
    return v0
.end method

.method public setArray([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Linstall/app/ArrayListObservable;, "Linstall/app/ArrayListObservable<TT;>;"
    .local p1, "newArray":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Linstall/app/ArrayListObservable;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 29
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Linstall/app/ArrayListObservable;->notifyCollectionChanged()V

    .line 32
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Linstall/app/ArrayListObservable;, "Linstall/app/ArrayListObservable<TT;>;"
    iget-object v0, p0, Linstall/app/ArrayListObservable;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Linstall/app/ArrayListObservable;, "Linstall/app/ArrayListObservable<TT;>;"
    iget-object v0, p0, Linstall/app/ArrayListObservable;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Ta:",
            "Ljava/lang/Object;",
            ">([TTa;)[TTa;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Linstall/app/ArrayListObservable;, "Linstall/app/ArrayListObservable<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TTa;"
    iget-object v0, p0, Linstall/app/ArrayListObservable;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
