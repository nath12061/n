.class Linstall/app/ObservableMapperd$MockObservable;
.super Linstall/app/Observabled;
.source "ObservableMapperd.java"

# interfaces
.implements Linstall/app/Observerd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/ObservableMapperd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MockObservable"
.end annotation

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
.field public observingProperty:Linstall/app/IObservabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/IObservabled",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Linstall/app/ObservableMapperd$MockObservable;, "Linstall/app/ObservableMapperd$MockObservable<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Linstall/app/Observabled;-><init>(Ljava/lang/Class;)V

    .line 43
    return-void
.end method


# virtual methods
.method public changeObservingProperty(Linstall/app/IObservabled;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/IObservabled",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Linstall/app/ObservableMapperd$MockObservable;, "Linstall/app/ObservableMapperd$MockObservable<TT;>;"
    .local p1, "newProperty":Linstall/app/IObservabled;, "Linstall/app/IObservabled<TT;>;"
    iget-object v0, p0, Linstall/app/ObservableMapperd$MockObservable;->observingProperty:Linstall/app/IObservabled;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Linstall/app/ObservableMapperd$MockObservable;->observingProperty:Linstall/app/IObservabled;

    invoke-interface {v0, p0}, Linstall/app/IObservabled;->unsubscribe(Linstall/app/Observerd;)V

    .line 56
    :cond_0
    invoke-interface {p1, p0}, Linstall/app/IObservabled;->subscribe(Linstall/app/Observerd;)V

    .line 57
    iput-object p1, p0, Linstall/app/ObservableMapperd$MockObservable;->observingProperty:Linstall/app/IObservabled;

    .line 58
    invoke-virtual {p0, p0}, Linstall/app/ObservableMapperd$MockObservable;->notifyChanged(Ljava/lang/Object;)V

    .line 59
    return-void
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
    .line 71
    .local p0, "this":Linstall/app/ObservableMapperd$MockObservable;, "Linstall/app/ObservableMapperd$MockObservable<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    .local p2, "initiators":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    iget-object v0, p0, Linstall/app/ObservableMapperd$MockObservable;->observingProperty:Linstall/app/IObservabled;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Linstall/app/ObservableMapperd$MockObservable;->observingProperty:Linstall/app/IObservabled;

    invoke-interface {v0, p1, p2}, Linstall/app/IObservabled;->set(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    .line 74
    :cond_0
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
    .line 46
    .local p0, "this":Linstall/app/ObservableMapperd$MockObservable;, "Linstall/app/ObservableMapperd$MockObservable<TT;>;"
    iget-object v0, p0, Linstall/app/ObservableMapperd$MockObservable;->observingProperty:Linstall/app/IObservabled;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Linstall/app/ObservableMapperd$MockObservable;->observingProperty:Linstall/app/IObservabled;

    invoke-interface {v0}, Linstall/app/IObservabled;->get()Ljava/lang/Object;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPropertyChanged(Linstall/app/IObservabled;Ljava/util/AbstractCollection;)V
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
    .line 62
    .local p0, "this":Linstall/app/ObservableMapperd$MockObservable;, "Linstall/app/ObservableMapperd$MockObservable<TT;>;"
    .local p1, "prop":Linstall/app/IObservabled;, "Linstall/app/IObservabled<*>;"
    .local p2, "initiators":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    iget-object v0, p0, Linstall/app/ObservableMapperd$MockObservable;->observingProperty:Linstall/app/IObservabled;

    if-eq p1, v0, :cond_0

    .line 63
    invoke-interface {p1, p0}, Linstall/app/IObservabled;->unsubscribe(Linstall/app/Observerd;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p2, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p0, p2}, Linstall/app/ObservableMapperd$MockObservable;->notifyChanged(Ljava/util/AbstractCollection;)V

    goto :goto_0
.end method
