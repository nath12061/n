.class public abstract Linstall/app/ViewAttributed;
.super Linstall/app/Observabled;
.source "ViewAttributed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/ViewAttributed$Bridge;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Tv:",
        "Linstall/app/View;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Linstall/app/Observabled",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected attributeName:Ljava/lang/String;

.field mBridge:Linstall/app/ViewAttributed$Bridge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/ViewAttributed",
            "<TTv;TT;>.Bridge;"
        }
    .end annotation
.end field

.field protected mView:Linstall/app/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTv;"
        }
    .end annotation
.end field

.field private readonly:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Linstall/app/View;Ljava/lang/String;)V
    .locals 1
    .param p3, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;TTv;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Linstall/app/ViewAttributed;, "Linstall/app/ViewAttributed<TTv;TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "view":Linstall/app/View;, "TTv;"
    invoke-direct {p0, p1}, Linstall/app/Observabled;-><init>(Ljava/lang/Class;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/ViewAttributed;->readonly:Z

    .line 36
    iput-object p2, p0, Linstall/app/ViewAttributed;->mView:Linstall/app/View;

    .line 37
    iput-object p3, p0, Linstall/app/ViewAttributed;->attributeName:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method protected AcceptThisTypeAs(Ljava/lang/Class;)Linstall/app/BindingTyped;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Linstall/app/BindingTyped;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Linstall/app/ViewAttributed;, "Linstall/app/ViewAttributed<TTv;TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Linstall/app/ViewAttributed;->getType()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 89
    sget-object v0, Linstall/app/BindingTyped;->TwoWay:Linstall/app/BindingTyped;

    .line 94
    :goto_0
    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Linstall/app/ViewAttributed;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    sget-object v0, Linstall/app/BindingTyped;->OneWay:Linstall/app/BindingTyped;

    goto :goto_0

    .line 94
    :cond_1
    sget-object v0, Linstall/app/BindingTyped;->NoBinding:Linstall/app/BindingTyped;

    goto :goto_0
.end method

.method public BindTo(Linstall/app/IObservabled;)Linstall/app/BindingTyped;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/IObservabled",
            "<*>;)",
            "Linstall/app/BindingTyped;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Linstall/app/ViewAttributed;, "Linstall/app/ViewAttributed<TTv;TT;>;"
    .local p1, "prop":Linstall/app/IObservabled;, "Linstall/app/IObservabled<*>;"
    if-nez p1, :cond_1

    .line 70
    sget-object v0, Linstall/app/BindingTyped;->NoBinding:Linstall/app/BindingTyped;

    .line 84
    :cond_0
    :goto_0
    return-object v0

    .line 72
    :cond_1
    invoke-interface {p1}, Linstall/app/IObservabled;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Linstall/app/ViewAttributed;->AcceptThisTypeAs(Ljava/lang/Class;)Linstall/app/BindingTyped;

    move-result-object v0

    .line 73
    .local v0, "binding":Linstall/app/BindingTyped;
    sget-object v2, Linstall/app/BindingTyped;->NoBinding:Linstall/app/BindingTyped;

    invoke-virtual {v0, v2}, Linstall/app/BindingTyped;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    new-instance v2, Linstall/app/ViewAttributed$Bridge;

    invoke-direct {v2, p0, p0, p1}, Linstall/app/ViewAttributed$Bridge;-><init>(Linstall/app/ViewAttributed;Linstall/app/ViewAttributed;Linstall/app/IObservabled;)V

    iput-object v2, p0, Linstall/app/ViewAttributed;->mBridge:Linstall/app/ViewAttributed$Bridge;

    .line 77
    iget-object v2, p0, Linstall/app/ViewAttributed;->mBridge:Linstall/app/ViewAttributed$Bridge;

    invoke-interface {p1, v2}, Linstall/app/IObservabled;->subscribe(Linstall/app/Observerd;)V

    .line 78
    sget-object v2, Linstall/app/BindingTyped;->TwoWay:Linstall/app/BindingTyped;

    invoke-virtual {v0, v2}, Linstall/app/BindingTyped;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    iget-object v2, p0, Linstall/app/ViewAttributed;->mBridge:Linstall/app/ViewAttributed$Bridge;

    invoke-virtual {p0, v2}, Linstall/app/ViewAttributed;->subscribe(Linstall/app/Observerd;)V

    .line 81
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, "initiators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {p1}, Linstall/app/IObservabled;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Linstall/app/ViewAttributed;->_setObject(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

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
    .line 63
    .local p0, "this":Linstall/app/ViewAttributed;, "Linstall/app/ViewAttributed<TTv;TT;>;"
    .local p2, "abstractCollection":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    iget-boolean v0, p0, Linstall/app/ViewAttributed;->readonly:Z

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Linstall/app/ViewAttributed;->doSetAttributeValue(Ljava/lang/Object;)V

    .line 66
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
    .line 49
    .local p0, "this":Linstall/app/ViewAttributed;, "Linstall/app/ViewAttributed<TTv;TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    .local p2, "abstractCollection":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    iget-boolean v0, p0, Linstall/app/ViewAttributed;->readonly:Z

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Linstall/app/ViewAttributed;->doSetAttributeValue(Ljava/lang/Object;)V

    .line 52
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

.method public getBindedObservable()Linstall/app/IObservabled;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linstall/app/IObservabled",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Linstall/app/ViewAttributed;, "Linstall/app/ViewAttributed<TTv;TT;>;"
    iget-object v0, p0, Linstall/app/ViewAttributed;->mBridge:Linstall/app/ViewAttributed$Bridge;

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Linstall/app/ViewAttributed;->mBridge:Linstall/app/ViewAttributed$Bridge;

    iget-object v0, v0, Linstall/app/ViewAttributed$Bridge;->mBindedObservable:Linstall/app/IObservabled;

    goto :goto_0
.end method

.method public getView()Linstall/app/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTv;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Linstall/app/ViewAttributed;, "Linstall/app/ViewAttributed<TTv;TT;>;"
    iget-object v0, p0, Linstall/app/ViewAttributed;->mView:Linstall/app/View;

    return-object v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Linstall/app/ViewAttributed;, "Linstall/app/ViewAttributed<TTv;TT;>;"
    iget-boolean v0, p0, Linstall/app/ViewAttributed;->readonly:Z

    return v0
.end method

.method public final onPropertyChanged(Linstall/app/IObservabled;Ljava/util/AbstractCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<To:",
            "Ljava/lang/Object;",
            ">(",
            "Linstall/app/IObservabled",
            "<TTo;>;",
            "Ljava/util/AbstractCollection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Linstall/app/ViewAttributed;, "Linstall/app/ViewAttributed<TTv;TT;>;"
    .local p1, "prop":Linstall/app/IObservabled;, "Linstall/app/IObservabled<TTo;>;"
    .local p2, "initiators":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    return-void
.end method

.method public setReadonly(Z)V
    .locals 0
    .param p1, "readonly"    # Z

    .prologue
    .line 59
    .local p0, "this":Linstall/app/ViewAttributed;, "Linstall/app/ViewAttributed<TTv;TT;>;"
    iput-boolean p1, p0, Linstall/app/ViewAttributed;->readonly:Z

    .line 60
    return-void
.end method
