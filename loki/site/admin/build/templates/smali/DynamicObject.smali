.class public abstract Linstall/app/DynamicObject;
.super Linstall/app/Observable;
.source "DynamicObject.java"

# interfaces
.implements Linstall/app/IPropertyContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/Observable",
        "<",
        "Linstall/app/DynamicObject;",
        ">;",
        "Linstall/app/IPropertyContainer;"
    }
.end annotation


# instance fields
.field private observables:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Linstall/app/IObservable",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Linstall/app/Observable;-><init>()V

    .line 6
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Linstall/app/DynamicObject;->observables:Ljava/util/WeakHashMap;

    .line 10
    return-void
.end method


# virtual methods
.method public get()Linstall/app/DynamicObject;
    .locals 0

    .prologue
    .line 30
    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Linstall/app/DynamicObject;->get()Linstall/app/DynamicObject;

    move-result-object v0

    return-object v0
.end method

.method public getCommandByName(Ljava/lang/String;)Linstall/app/Command;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObservableByName(Ljava/lang/String;)Linstall/app/IObservable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Linstall/app/IObservable",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Linstall/app/DynamicObject;->observables:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/IObservable;

    return-object v0
.end method

.method public getValueByName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public observableExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    iget-object v0, p0, Linstall/app/DynamicObject;->observables:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public putObservable(Ljava/lang/String;Linstall/app/IObservable;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Linstall/app/IObservable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p2, "observable":Linstall/app/IObservable;, "Linstall/app/IObservable<*>;"
    iget-object v0, p0, Linstall/app/DynamicObject;->observables:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void
.end method
