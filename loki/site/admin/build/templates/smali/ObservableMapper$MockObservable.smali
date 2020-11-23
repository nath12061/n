.class abstract Linstall/app/ObservableMapper$MockObservable;
.super Linstall/app/Observable;
.source "ObservableMapper.java"

# interfaces
.implements Linstall/app/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/ObservableMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MockObservable"
.end annotation

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
.field public observingProperty:Linstall/app/IObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/IObservable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    .local p0, "this":Linstall/app/ObservableMapper$MockObservable;, "Linstall/app/ObservableMapper$MockObservable<TT;>;"
    invoke-direct {p0}, Linstall/app/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public changeObservingProperty(Linstall/app/IObservable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/IObservable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Linstall/app/ObservableMapper$MockObservable;, "Linstall/app/ObservableMapper$MockObservable<TT;>;"
    .local p1, "newProperty":Linstall/app/IObservable;, "Linstall/app/IObservable<TT;>;"
    iget-object v0, p0, Linstall/app/ObservableMapper$MockObservable;->observingProperty:Linstall/app/IObservable;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Linstall/app/ObservableMapper$MockObservable;->observingProperty:Linstall/app/IObservable;

    invoke-interface {v0, p0}, Linstall/app/IObservable;->unsubscribe(Linstall/app/Observer;)V

    .line 55
    :cond_0
    invoke-interface {p1, p0}, Linstall/app/IObservable;->subscribe(Linstall/app/Observer;)V

    .line 56
    iput-object p1, p0, Linstall/app/ObservableMapper$MockObservable;->observingProperty:Linstall/app/IObservable;

    .line 57
    invoke-virtual {p0, p0}, Linstall/app/ObservableMapper$MockObservable;->notifyChanged(Ljava/lang/Object;)V

    .line 58
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
    .line 70
    .local p0, "this":Linstall/app/ObservableMapper$MockObservable;, "Linstall/app/ObservableMapper$MockObservable<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    .local p2, "initiators":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    iget-object v0, p0, Linstall/app/ObservableMapper$MockObservable;->observingProperty:Linstall/app/IObservable;

    if-eqz v0, :cond_0

    .line 72
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
    .line 45
    .local p0, "this":Linstall/app/ObservableMapper$MockObservable;, "Linstall/app/ObservableMapper$MockObservable<TT;>;"
    iget-object v0, p0, Linstall/app/ObservableMapper$MockObservable;->observingProperty:Linstall/app/IObservable;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Linstall/app/ObservableMapper$MockObservable;->observingProperty:Linstall/app/IObservable;

    invoke-interface {v0}, Linstall/app/IObservable;->get()Ljava/lang/Object;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPropertyChanged(Linstall/app/IObservable;Ljava/util/AbstractCollection;)V
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
    .line 61
    .local p0, "this":Linstall/app/ObservableMapper$MockObservable;, "Linstall/app/ObservableMapper$MockObservable<TT;>;"
    .local p1, "prop":Linstall/app/IObservable;, "Linstall/app/IObservable<*>;"
    .local p2, "initiators":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    iget-object v0, p0, Linstall/app/ObservableMapper$MockObservable;->observingProperty:Linstall/app/IObservable;

    if-eq p1, v0, :cond_0

    .line 62
    invoke-interface {p1, p0}, Linstall/app/IObservable;->unsubscribe(Linstall/app/Observer;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p2, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p0, p2}, Linstall/app/ObservableMapper$MockObservable;->notifyChanged(Ljava/util/AbstractCollection;)V

    goto :goto_0
.end method
