.class public Linstall/app/Observabled;
.super Ljava/lang/Object;
.source "Observabled.java"

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
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

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
            "Linstall/app/Observerd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Linstall/app/Observabled;, "Linstall/app/Observabled<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Linstall/app/Observabled;->observers:Ljava/util/ArrayList;

    .line 14
    iput-object p1, p0, Linstall/app/Observabled;->mType:Ljava/lang/Class;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Linstall/app/Observabled;, "Linstall/app/Observabled<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "initValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Linstall/app/Observabled;-><init>(Ljava/lang/Class;)V

    .line 19
    iput-object p2, p0, Linstall/app/Observabled;->mValue:Ljava/lang/Object;

    .line 20
    return-void
.end method


# virtual methods
.method public _setObject(Ljava/lang/Object;Ljava/util/AbstractCollection;)V
    .locals 2
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
    .line 63
    .local p0, "this":Linstall/app/Observabled;, "Linstall/app/Observabled<TT;>;"
    .local p2, "initiators":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual {p0}, Linstall/app/Observabled;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0, v0, p2}, Linstall/app/Observabled;->set(Ljava/lang/Object;Ljava/util/AbstractCollection;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v1

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
    .line 77
    .local p0, "this":Linstall/app/Observabled;, "Linstall/app/Observabled<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    .local p2, "abstractCollection":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    iput-object p1, p0, Linstall/app/Observabled;->mValue:Ljava/lang/Object;

    .line 78
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
    .line 85
    .local p0, "this":Linstall/app/Observabled;, "Linstall/app/Observabled<TT;>;"
    iget-object v0, p0, Linstall/app/Observabled;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getAllObservers()[Linstall/app/Observerd;
    .locals 2

    .prologue
    .line 93
    .local p0, "this":Linstall/app/Observabled;, "Linstall/app/Observabled<TT;>;"
    iget-object v0, p0, Linstall/app/Observabled;->observers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Linstall/app/Observerd;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/Observerd;

    check-cast v0, [Linstall/app/Observerd;

    return-object v0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Linstall/app/Observabled;, "Linstall/app/Observabled<TT;>;"
    iget-object v0, p0, Linstall/app/Observabled;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public final notifyChanged()V
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Linstall/app/Observabled;, "Linstall/app/Observabled<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "initiators":Ljava/util/AbstractCollection;
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p0, v0}, Linstall/app/Observabled;->notifyChanged(Ljava/util/AbstractCollection;)V

    .line 51
    return-void
.end method

.method public final notifyChanged(Ljava/lang/Object;)V
    .locals 1
    .param p1, "initiator"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Linstall/app/Observabled;, "Linstall/app/Observabled<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v0, "initiators":Ljava/util/AbstractCollection;
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {p0, v0}, Linstall/app/Observabled;->notifyChanged(Ljava/util/AbstractCollection;)V

    .line 34
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
    .line 37
    .local p0, "this":Linstall/app/Observabled;, "Linstall/app/Observabled<TT;>;"
    .local p1, "initiators":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v2, p0, Linstall/app/Observabled;->observers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 39
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linstall/app/Observerd;

    .line 41
    .local v1, "o":Linstall/app/Observerd;
    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    invoke-interface {v1, p0, p1}, Linstall/app/Observerd;->onPropertyChanged(Linstall/app/IObservabled;Ljava/util/AbstractCollection;)V

    goto :goto_0

    .line 45
    .end local v1    # "o":Linstall/app/Observerd;
    :cond_1
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
    .line 72
    .local p0, "this":Linstall/app/Observabled;, "Linstall/app/Observabled<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Linstall/app/Observabled;->doSetValue(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    .line 73
    invoke-virtual {p0, p0}, Linstall/app/Observabled;->notifyChanged(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public final set(Ljava/lang/Object;Ljava/util/AbstractCollection;)V
    .locals 1
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
    .line 54
    .local p0, "this":Linstall/app/Observabled;, "Linstall/app/Observabled<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    .local p2, "initiators":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    invoke-virtual {p2, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0, p1, p2}, Linstall/app/Observabled;->doSetValue(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    .line 56
    invoke-virtual {p2, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0, p2}, Linstall/app/Observabled;->notifyChanged(Ljava/util/AbstractCollection;)V

    .line 59
    :cond_0
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
    .line 81
    .local p0, "this":Linstall/app/Observabled;, "Linstall/app/Observabled<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Linstall/app/Observabled;->mValue:Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public final subscribe(Linstall/app/Observerd;)V
    .locals 1
    .param p1, "o"    # Linstall/app/Observerd;

    .prologue
    .line 23
    .local p0, "this":Linstall/app/Observabled;, "Linstall/app/Observabled<TT;>;"
    iget-object v0, p0, Linstall/app/Observabled;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public final unsubscribe(Linstall/app/Observerd;)V
    .locals 1
    .param p1, "o"    # Linstall/app/Observerd;

    .prologue
    .line 27
    .local p0, "this":Linstall/app/Observabled;, "Linstall/app/Observabled<TT;>;"
    iget-object v0, p0, Linstall/app/Observabled;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method
