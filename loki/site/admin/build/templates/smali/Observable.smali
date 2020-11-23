.class public abstract Linstall/app/Observable;
.super Ljava/lang/Object;
.source "Observable.java"

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
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Linstall/app/Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Linstall/app/Observable;, "Linstall/app/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Linstall/app/Observable;, "Linstall/app/Observable<TT;>;"
    .local p1, "charSequenceClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/CharSequence;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public _setObject(Ljava/lang/Object;Ljava/util/AbstractCollection;)V
    .locals 1
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
    .line 62
    .local p0, "this":Linstall/app/Observable;, "Linstall/app/Observable<TT;>;"
    .local p2, "initiators":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual {p0}, Linstall/app/Observable;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected doSetValue(Ljava/lang/Object;Ljava/util/AbstractCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/AbstractCollection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Linstall/app/Observable;, "Linstall/app/Observable<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    .local p2, "abstractCollection":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    iput-object p1, p0, Linstall/app/Observable;->mValue:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Linstall/app/Observable;, "Linstall/app/Observable<TT;>;"
    iget-object v0, p0, Linstall/app/Observable;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getAllObservers()[Linstall/app/Observer;
    .locals 2

    .prologue
    .line 87
    .local p0, "this":Linstall/app/Observable;, "Linstall/app/Observable<TT;>;"
    iget-object v0, p0, Linstall/app/Observable;->observers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Linstall/app/Observer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/Observer;

    check-cast v0, [Linstall/app/Observer;

    return-object v0
.end method

.method public final notifyChanged()V
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Linstall/app/Observable;, "Linstall/app/Observable<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "initiators":Ljava/util/AbstractCollection;
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p0, v0}, Linstall/app/Observable;->notifyChanged(Ljava/util/AbstractCollection;)V

    .line 50
    return-void
.end method

.method public final notifyChanged(Ljava/lang/Object;)V
    .locals 1
    .param p1, "initiator"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Linstall/app/Observable;, "Linstall/app/Observable<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v0, "initiators":Ljava/util/AbstractCollection;
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {p0, v0}, Linstall/app/Observable;->notifyChanged(Ljava/util/AbstractCollection;)V

    .line 33
    return-void
.end method

.method public final notifyChanged(Ljava/util/AbstractCollection;)V
    .locals 3
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
    .line 36
    .local p0, "this":Linstall/app/Observable;, "Linstall/app/Observable<TT;>;"
    .local p1, "initiators":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v2, p0, Linstall/app/Observable;->observers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 38
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linstall/app/Observer;

    .line 40
    .local v1, "o":Linstall/app/Observer;
    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    invoke-interface {v1, p0, p1}, Linstall/app/Observer;->onPropertyChanged(Linstall/app/IObservable;Ljava/util/AbstractCollection;)V

    goto :goto_0

    .line 44
    .end local v1    # "o":Linstall/app/Observer;
    :cond_1
    return-void
.end method

.method public final set(Linstall/app/To;Ljava/util/AbstractCollection;)V
    .locals 1
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
    .line 53
    .local p0, "this":Linstall/app/Observable;, "Linstall/app/Observable<TT;>;"
    .local p2, "initiators":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    invoke-virtual {p2, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0, p1, p2}, Linstall/app/Observable;->doSetValue(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    .line 55
    invoke-virtual {p2, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p0, p2}, Linstall/app/Observable;->notifyChanged(Ljava/util/AbstractCollection;)V

    .line 58
    :cond_0
    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Linstall/app/Observable;, "Linstall/app/Observable<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Linstall/app/Observable;->doSetValue(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    .line 70
    invoke-virtual {p0, p0}, Linstall/app/Observable;->notifyChanged(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method protected final setWithoutNotify(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Linstall/app/Observable;, "Linstall/app/Observable<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Linstall/app/Observable;->mValue:Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public final subscribe(Linstall/app/Observer;)V
    .locals 1
    .param p1, "o"    # Linstall/app/Observer;

    .prologue
    .line 22
    .local p0, "this":Linstall/app/Observable;, "Linstall/app/Observable<TT;>;"
    iget-object v0, p0, Linstall/app/Observable;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public final unsubscribe(Linstall/app/Observer;)V
    .locals 1
    .param p1, "o"    # Linstall/app/Observer;

    .prologue
    .line 26
    .local p0, "this":Linstall/app/Observable;, "Linstall/app/Observable<TT;>;"
    iget-object v0, p0, Linstall/app/Observable;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method
