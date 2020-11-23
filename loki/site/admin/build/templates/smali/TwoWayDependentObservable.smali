.class public abstract Linstall/app/TwoWayDependentObservable;
.super Linstall/app/DependentObservable;
.source "TwoWayDependentObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Linstall/app/DependentObservable",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;[Linstall/app/IObservable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Linstall/app/IObservable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p0, "this":Linstall/app/TwoWayDependentObservable;, "Linstall/app/TwoWayDependentObservable<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "dependents":[Linstall/app/IObservable;, "[Linstall/app/IObservable<*>;"
    invoke-direct {p0, p1, p2}, Linstall/app/DependentObservable;-><init>(Ljava/lang/Class;[Linstall/app/IObservable;)V

    .line 10
    return-void
.end method


# virtual methods
.method public abstract ConvertBack(Ljava/lang/Object;[Ljava/lang/Object;)Z
.end method

.method protected doSetValue(Ljava/lang/Object;Ljava/util/AbstractCollection;)V
    .locals 5
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
    .line 13
    .local p0, "this":Linstall/app/TwoWayDependentObservable;, "Linstall/app/TwoWayDependentObservable<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    .local p2, "initiators":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    iget-object v3, p0, Linstall/app/TwoWayDependentObservable;->dependents:[Linstall/app/IObservable;

    array-length v0, v3

    .line 14
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/Object;

    .line 15
    .local v2, "outResult":[Ljava/lang/Object;
    invoke-virtual {p0, p1, v2}, Linstall/app/TwoWayDependentObservable;->ConvertBack(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 17
    iget-object v3, p0, Linstall/app/TwoWayDependentObservable;->dependents:[Linstall/app/IObservable;

    aget-object v3, v3, v1

    aget-object v4, v2, v1

    invoke-interface {v3, v4, p2}, Linstall/app/IObservable;->_setObject(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    .line 16
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
