.class public abstract Linstall/app/ViewAttribute;
.super Linstall/app/Observable;
.source "ViewAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/ViewAttribute$Bridge;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Tv:",
        "Landroid/view/View;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Linstall/app/Observable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected attributeName:Ljava/lang/String;

.field mBridge:Linstall/app/ViewAttribute$Bridge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/ViewAttribute",
            "<TTv;TT;>.Bridge;"
        }
    .end annotation
.end field

.field protected mView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTv;"
        }
    .end annotation
.end field

.field private readonly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    .local p0, "this":Linstall/app/ViewAttribute;, "Linstall/app/ViewAttribute<TTv;TT;>;"
    invoke-direct {p0}, Linstall/app/Observable;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/ViewAttribute;->readonly:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/CharSequence;)V
    .locals 1
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
    .line 20
    .local p0, "this":Linstall/app/ViewAttribute;, "Linstall/app/ViewAttribute<TTv;TT;>;"
    .local p1, "charSequenceClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/CharSequence;>;"
    invoke-direct {p0, p1, p2}, Linstall/app/Observable;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/ViewAttribute;->readonly:Z

    .line 21
    return-void
.end method


# virtual methods
.method protected AcceptThisTypeAs(Ljava/lang/Class;)Linstall/app/BindingType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Linstall/app/BindingType;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Linstall/app/ViewAttribute;, "Linstall/app/ViewAttribute<TTv;TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Linstall/app/ViewAttribute;->getType()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 96
    sget-object v0, Linstall/app/BindingType;->TwoWay:Linstall/app/BindingType;

    .line 101
    :goto_0
    return-object v0

    .line 98
    :cond_0
    invoke-virtual {p0}, Linstall/app/ViewAttribute;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    sget-object v0, Linstall/app/BindingType;->OneWay:Linstall/app/BindingType;

    goto :goto_0

    .line 101
    :cond_1
    sget-object v0, Linstall/app/BindingType;->NoBinding:Linstall/app/BindingType;

    goto :goto_0
.end method

.method public BindTo(Linstall/app/IObservable;)Linstall/app/BindingType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/IObservable",
            "<*>;)",
            "Linstall/app/BindingType;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Linstall/app/ViewAttribute;, "Linstall/app/ViewAttribute<TTv;TT;>;"
    .local p1, "prop":Linstall/app/IObservable;, "Linstall/app/IObservable<*>;"
    if-nez p1, :cond_1

    .line 77
    sget-object v0, Linstall/app/BindingType;->NoBinding:Linstall/app/BindingType;

    .line 91
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    invoke-interface {p1}, Linstall/app/IObservable;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Linstall/app/ViewAttribute;->AcceptThisTypeAs(Ljava/lang/Class;)Linstall/app/BindingType;

    move-result-object v0

    .line 80
    .local v0, "binding":Linstall/app/BindingType;
    sget-object v2, Linstall/app/BindingType;->NoBinding:Linstall/app/BindingType;

    invoke-virtual {v0, v2}, Linstall/app/BindingType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    new-instance v2, Linstall/app/ViewAttribute$Bridge;

    invoke-direct {v2, p0, p0, p1}, Linstall/app/ViewAttribute$Bridge;-><init>(Linstall/app/ViewAttribute;Linstall/app/ViewAttribute;Linstall/app/IObservable;)V

    iput-object v2, p0, Linstall/app/ViewAttribute;->mBridge:Linstall/app/ViewAttribute$Bridge;

    .line 84
    iget-object v2, p0, Linstall/app/ViewAttribute;->mBridge:Linstall/app/ViewAttribute$Bridge;

    invoke-interface {p1, v2}, Linstall/app/IObservable;->subscribe(Linstall/app/Observer;)V

    .line 85
    sget-object v2, Linstall/app/BindingType;->TwoWay:Linstall/app/BindingType;

    invoke-virtual {v0, v2}, Linstall/app/BindingType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    iget-object v2, p0, Linstall/app/ViewAttribute;->mBridge:Linstall/app/ViewAttribute$Bridge;

    invoke-virtual {p0, v2}, Linstall/app/ViewAttribute;->subscribe(Linstall/app/Observer;)V

    .line 88
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v1, "initiators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {p1}, Linstall/app/IObservable;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Linstall/app/ViewAttribute;->_setObject(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    goto :goto_0
.end method

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
    .line 70
    .local p0, "this":Linstall/app/ViewAttribute;, "Linstall/app/ViewAttribute<TTv;TT;>;"
    .local p2, "abstractCollection":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    iget-boolean v0, p0, Linstall/app/ViewAttribute;->readonly:Z

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Linstall/app/ViewAttribute;->doSetAttributeValue(Ljava/lang/Object;)V

    .line 73
    :cond_0
    return-void
.end method

.method protected abstract doSetAttributeValue(Ljava/lang/Object;)V
.end method

.method protected doSetValue(Ljava/lang/Object;Ljava/util/AbstractCollection;)V
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
    .line 56
    .local p0, "this":Linstall/app/ViewAttribute;, "Linstall/app/ViewAttribute<TTv;TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    .local p2, "abstractCollection":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    iget-boolean v0, p0, Linstall/app/ViewAttribute;->readonly:Z

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Linstall/app/ViewAttribute;->doSetAttributeValue(Ljava/lang/Object;)V

    .line 59
    :cond_0
    return-void
.end method

.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getBindedObservable()Linstall/app/IObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linstall/app/IObservable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Linstall/app/ViewAttribute;, "Linstall/app/ViewAttribute<TTv;TT;>;"
    iget-object v0, p0, Linstall/app/ViewAttribute;->mBridge:Linstall/app/ViewAttribute$Bridge;

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Linstall/app/ViewAttribute;->mBridge:Linstall/app/ViewAttribute$Bridge;

    iget-object v0, v0, Linstall/app/ViewAttribute$Bridge;->mBindedObservable:Linstall/app/IObservable;

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTv;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Linstall/app/ViewAttribute;, "Linstall/app/ViewAttribute<TTv;TT;>;"
    iget-object v0, p0, Linstall/app/ViewAttribute;->mView:Landroid/view/View;

    return-object v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Linstall/app/ViewAttribute;, "Linstall/app/ViewAttribute<TTv;TT;>;"
    iget-boolean v0, p0, Linstall/app/ViewAttribute;->readonly:Z

    return v0
.end method

.method public final onPropertyChanged(Linstall/app/IObservable;Ljava/util/AbstractCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<To:",
            "Ljava/lang/Object;",
            ">(",
            "Linstall/app/IObservable",
            "<TTo;>;",
            "Ljava/util/AbstractCollection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Linstall/app/ViewAttribute;, "Linstall/app/ViewAttribute<TTv;TT;>;"
    .local p1, "prop":Linstall/app/IObservable;, "Linstall/app/IObservable<TTo;>;"
    .local p2, "initiators":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    return-void
.end method

.method public setReadonly(Z)V
    .locals 0
    .param p1, "readonly"    # Z

    .prologue
    .line 66
    .local p0, "this":Linstall/app/ViewAttribute;, "Linstall/app/ViewAttribute<TTv;TT;>;"
    iput-boolean p1, p0, Linstall/app/ViewAttribute;->readonly:Z

    .line 67
    return-void
.end method
