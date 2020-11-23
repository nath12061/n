.class public abstract Linstall/app/DependentObservabled;
.super Linstall/app/Observabled;
.source "DependentObservabled.java"

# interfaces
.implements Linstall/app/Observerd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Linstall/app/Observabled",
        "<TT;>;",
        "Linstall/app/Observerd;"
    }
.end annotation


# instance fields
.field protected dependents:[Linstall/app/IObservabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Linstall/app/IObservabled",
            "<*>;"
        }
    .end annotation
.end field

.field private dirty:Z

.field i:I

.field length:I


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
    .local p0, "this":Linstall/app/DependentObservabled;, "Linstall/app/DependentObservabled<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1}, Linstall/app/Observabled;-><init>(Ljava/lang/Class;)V

    .line 7
    iput-boolean v0, p0, Linstall/app/DependentObservabled;->dirty:Z

    .line 16
    iput v0, p0, Linstall/app/DependentObservabled;->i:I

    .line 18
    iget-object v0, p0, Linstall/app/DependentObservabled;->dependents:[Linstall/app/IObservabled;

    array-length v0, v0

    iput v0, p0, Linstall/app/DependentObservabled;->length:I

    .line 11
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
    .line 34
    .local p0, "this":Linstall/app/DependentObservabled;, "Linstall/app/DependentObservabled<TT;>;"
    iget-boolean v4, p0, Linstall/app/DependentObservabled;->dirty:Z

    if-eqz v4, :cond_1

    .line 35
    iget-object v4, p0, Linstall/app/DependentObservabled;->dependents:[Linstall/app/IObservabled;

    array-length v2, v4

    .line 36
    .local v2, "len":I
    new-array v3, v2, [Ljava/lang/Object;

    .line 37
    .local v3, "values":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 38
    iget-object v4, p0, Linstall/app/DependentObservabled;->dependents:[Linstall/app/IObservabled;

    aget-object v4, v4, v1

    invoke-interface {v4}, Linstall/app/IObservabled;->get()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_0
    :try_start_0
    invoke-virtual {p0, v3}, Linstall/app/DependentObservabled;->calculateValue([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Linstall/app/DependentObservabled;->setWithoutNotify(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Linstall/app/DependentObservabled;->dirty:Z

    .line 47
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "values":[Ljava/lang/Object;
    :cond_1
    invoke-super {p0}, Linstall/app/Observabled;->get()Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 42
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "values":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DependentObservabled.CalculateValue()"

    invoke-static {v4, v0}, Linstall/app/BindingLogd;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public final onPropertyChanged(Linstall/app/IObservabled;Ljava/util/AbstractCollection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/IObservabled",
            "<*>;",
            "Ljava/util/AbstractCollection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Linstall/app/DependentObservabled;, "Linstall/app/DependentObservabled<TT;>;"
    .local p1, "iObservable":Linstall/app/IObservabled;, "Linstall/app/IObservabled<*>;"
    .local p2, "initiators":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Linstall/app/DependentObservabled;->dirty:Z

    .line 29
    invoke-virtual {p2, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {p0, p2}, Linstall/app/DependentObservabled;->notifyChanged(Ljava/util/AbstractCollection;)V

    .line 31
    return-void
.end method
