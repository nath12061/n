.class public abstract Linstall/app/HashMapObservable;
.super Linstall/app/ObservableCollection;
.source "HashMapObservable.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Linstall/app/ObservableCollection",
        "<TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final mKeyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final mValueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Linstall/app/HashMapObservable;, "Linstall/app/HashMapObservable<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Linstall/app/ObservableCollection;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linstall/app/HashMapObservable;->mMap:Ljava/util/HashMap;

    .line 15
    iput-object p1, p0, Linstall/app/HashMapObservable;->mKeyType:Ljava/lang/Class;

    .line 16
    iput-object p2, p0, Linstall/app/HashMapObservable;->mValueType:Ljava/lang/Class;

    .line 17
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Linstall/app/HashMapObservable;, "Linstall/app/HashMapObservable<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservable;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 37
    invoke-virtual {p0}, Linstall/app/HashMapObservable;->notifyCollectionChanged()V

    .line 38
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Linstall/app/HashMapObservable;, "Linstall/app/HashMapObservable<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservable;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 45
    .local p0, "this":Linstall/app/HashMapObservable;, "Linstall/app/HashMapObservable<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservable;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Linstall/app/HashMapObservable;, "Linstall/app/HashMapObservable<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservable;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Linstall/app/HashMapObservable;, "Linstall/app/HashMapObservable<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservable;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getComponentType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Linstall/app/HashMapObservable;, "Linstall/app/HashMapObservable<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservable;->mValueType:Ljava/lang/Class;

    return-object v0
.end method

.method public getKeyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Linstall/app/HashMapObservable;, "Linstall/app/HashMapObservable<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservable;->mKeyType:Ljava/lang/Class;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Linstall/app/HashMapObservable;, "Linstall/app/HashMapObservable<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservable;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Linstall/app/HashMapObservable;, "Linstall/app/HashMapObservable<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservable;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public onLoad(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 21
    .local p0, "this":Linstall/app/HashMapObservable;, "Linstall/app/HashMapObservable<TK;TV;>;"
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Linstall/app/HashMapObservable;, "Linstall/app/HashMapObservable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Linstall/app/HashMapObservable;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    .local v0, "result":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Linstall/app/HashMapObservable;->notifyCollectionChanged()V

    .line 67
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Linstall/app/HashMapObservable;, "Linstall/app/HashMapObservable<TK;TV;>;"
    .local p1, "arg0":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservable;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 72
    invoke-virtual {p0}, Linstall/app/HashMapObservable;->notifyCollectionChanged()V

    .line 73
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Linstall/app/HashMapObservable;, "Linstall/app/HashMapObservable<TK;TV;>;"
    iget-object v1, p0, Linstall/app/HashMapObservable;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    .local v0, "result":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Linstall/app/HashMapObservable;->notifyCollectionChanged()V

    .line 78
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Linstall/app/HashMapObservable;, "Linstall/app/HashMapObservable<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservable;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Linstall/app/HashMapObservable;, "Linstall/app/HashMapObservable<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservable;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
