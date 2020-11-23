.class public abstract Linstall/app/HashMapObservabled;
.super Linstall/app/ObservableCollectiond;
.source "HashMapObservabled.java"

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
        "Linstall/app/ObservableCollectiond",
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
    .line 13
    .local p0, "this":Linstall/app/HashMapObservabled;, "Linstall/app/HashMapObservabled<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Linstall/app/ObservableCollectiond;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linstall/app/HashMapObservabled;->mMap:Ljava/util/HashMap;

    .line 14
    iput-object p1, p0, Linstall/app/HashMapObservabled;->mKeyType:Ljava/lang/Class;

    .line 15
    iput-object p2, p0, Linstall/app/HashMapObservabled;->mValueType:Ljava/lang/Class;

    .line 16
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Linstall/app/HashMapObservabled;, "Linstall/app/HashMapObservabled<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservabled;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 39
    invoke-virtual {p0}, Linstall/app/HashMapObservabled;->notifyCollectionChanged()V

    .line 40
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 43
    .local p0, "this":Linstall/app/HashMapObservabled;, "Linstall/app/HashMapObservabled<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservabled;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 47
    .local p0, "this":Linstall/app/HashMapObservabled;, "Linstall/app/HashMapObservabled<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservabled;->mMap:Ljava/util/HashMap;

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
    .line 51
    .local p0, "this":Linstall/app/HashMapObservabled;, "Linstall/app/HashMapObservabled<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservabled;->mMap:Ljava/util/HashMap;

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
    .line 55
    .local p0, "this":Linstall/app/HashMapObservabled;, "Linstall/app/HashMapObservabled<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservabled;->mMap:Ljava/util/HashMap;

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
    .line 30
    .local p0, "this":Linstall/app/HashMapObservabled;, "Linstall/app/HashMapObservabled<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservabled;->mValueType:Ljava/lang/Class;

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
    .line 26
    .local p0, "this":Linstall/app/HashMapObservabled;, "Linstall/app/HashMapObservabled<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservabled;->mKeyType:Ljava/lang/Class;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Linstall/app/HashMapObservabled;, "Linstall/app/HashMapObservabled<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservabled;->mMap:Ljava/util/HashMap;

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
    .line 63
    .local p0, "this":Linstall/app/HashMapObservabled;, "Linstall/app/HashMapObservabled<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservabled;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public onLoad(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 23
    .local p0, "this":Linstall/app/HashMapObservabled;, "Linstall/app/HashMapObservabled<TK;TV;>;"
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
    .line 67
    .local p0, "this":Linstall/app/HashMapObservabled;, "Linstall/app/HashMapObservabled<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Linstall/app/HashMapObservabled;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    .local v0, "result":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Linstall/app/HashMapObservabled;->notifyCollectionChanged()V

    .line 69
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
    .line 73
    .local p0, "this":Linstall/app/HashMapObservabled;, "Linstall/app/HashMapObservabled<TK;TV;>;"
    .local p1, "arg0":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservabled;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 74
    invoke-virtual {p0}, Linstall/app/HashMapObservabled;->notifyCollectionChanged()V

    .line 75
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
    .line 78
    .local p0, "this":Linstall/app/HashMapObservabled;, "Linstall/app/HashMapObservabled<TK;TV;>;"
    iget-object v1, p0, Linstall/app/HashMapObservabled;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "result":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Linstall/app/HashMapObservabled;->notifyCollectionChanged()V

    .line 80
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Linstall/app/HashMapObservabled;, "Linstall/app/HashMapObservabled<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservabled;->mMap:Ljava/util/HashMap;

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
    .line 84
    .local p0, "this":Linstall/app/HashMapObservabled;, "Linstall/app/HashMapObservabled<TK;TV;>;"
    iget-object v0, p0, Linstall/app/HashMapObservabled;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
