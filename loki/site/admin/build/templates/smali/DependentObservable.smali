.class public abstract Linstall/app/DependentObservable;
.super Linstall/app/Observable;
.source "DependentObservable.java"

# interfaces
.implements Linstall/app/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Linstall/app/Observable",
        "<TT;>;",
        "Linstall/app/Observer;"
    }
.end annotation


# instance fields
.field protected dependents:[Linstall/app/IObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Linstall/app/IObservable",
            "<*>;"
        }
    .end annotation
.end field

.field private dirty:Z


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;[Linstall/app/IObservable;)V
    .locals 4
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
    .line 12
    .local p0, "this":Linstall/app/DependentObservable;, "Linstall/app/DependentObservable<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "dependents":[Linstall/app/IObservable;, "[Linstall/app/IObservable<*>;"
    invoke-direct {p0}, Linstall/app/Observable;-><init>()V

    .line 8
    const/4 v2, 0x0

    iput-boolean v2, p0, Linstall/app/DependentObservable;->dirty:Z

    .line 14
    const/4 v0, 0x0

    .line 16
    .local v0, "i":I
    array-length v1, p2

    .line 17
    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 18
    aget-object v2, p2, v0

    invoke-interface {v2, p0}, Linstall/app/IObservable;->subscribe(Linstall/app/Observer;)V

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    iput-object p2, p0, Linstall/app/DependentObservable;->dependents:[Linstall/app/IObservable;

    .line 22
    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v2, v3}, Linstall/app/DependentObservable;->onPropertyChanged(Linstall/app/IObservable;Ljava/util/AbstractCollection;)V

    .line 23
    return-void
.end method


# virtual methods
.method public varargs abstract calculateValue([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Linstall/app/DependentObservable;, "Linstall/app/DependentObservable<TT;>;"
    iget-boolean v4, p0, Linstall/app/DependentObservable;->dirty:Z

    if-eqz v4, :cond_1

    .line 33
    iget-object v4, p0, Linstall/app/DependentObservable;->dependents:[Linstall/app/IObservable;

    array-length v2, v4

    .line 34
    .local v2, "len":I
    new-array v3, v2, [Ljava/lang/Object;

    .line 35
    .local v3, "values":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 36
    iget-object v4, p0, Linstall/app/DependentObservable;->dependents:[Linstall/app/IObservable;

    aget-object v4, v4, v1

    invoke-interface {v4}, Linstall/app/IObservable;->get()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    :try_start_0
    invoke-virtual {p0, v3}, Linstall/app/DependentObservable;->calculateValue([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Linstall/app/DependentObservable;->setWithoutNotify(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Linstall/app/DependentObservable;->dirty:Z

    .line 45
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "values":[Ljava/lang/Object;
    :cond_1
    invoke-super {p0}, Linstall/app/Observable;->get()Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 40
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "values":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DependentObservabled.CalculateValue()"

    invoke-static {v4, v0}, Linstall/app/BindingLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public final onPropertyChanged(Linstall/app/IObservable;Ljava/util/AbstractCollection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/IObservable",
            "<*>;",
            "Ljava/util/AbstractCollection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Linstall/app/DependentObservable;, "Linstall/app/DependentObservable<TT;>;"
    .local p1, "iObservable":Linstall/app/IObservable;, "Linstall/app/IObservable<*>;"
    .local p2, "initiators":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Linstall/app/DependentObservable;->dirty:Z

    .line 27
    invoke-virtual {p2, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {p0, p2}, Linstall/app/DependentObservable;->notifyChanged(Ljava/util/AbstractCollection;)V

    .line 29
    return-void
.end method
