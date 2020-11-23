.class public Linstall/app/ConstantObservabled;
.super Ljava/lang/Object;
.source "ConstantObservabled.java"

# interfaces
.implements Linstall/app/IObservabled;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Linstall/app/IObservabled",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p0, "this":Linstall/app/ConstantObservabled;, "Linstall/app/ConstantObservabled<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "constantValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Linstall/app/ConstantObservabled;->mType:Ljava/lang/Class;

    .line 11
    iput-object p2, p0, Linstall/app/ConstantObservabled;->mValue:Ljava/lang/Object;

    .line 12
    return-void
.end method


# virtual methods
.method public _setObject(Ljava/lang/Object;Ljava/util/AbstractCollection;)V
    .locals 0
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
    .line 44
    .local p0, "this":Linstall/app/ConstantObservabled;, "Linstall/app/ConstantObservabled<TT;>;"
    .local p2, "abstractCollection":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
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
    .line 47
    .local p0, "this":Linstall/app/ConstantObservabled;, "Linstall/app/ConstantObservabled<TT;>;"
    iget-object v0, p0, Linstall/app/ConstantObservabled;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getAllObservers()[Linstall/app/Observerd;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Linstall/app/ConstantObservabled;, "Linstall/app/ConstantObservabled<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Linstall/app/ConstantObservabled;, "Linstall/app/ConstantObservabled<TT;>;"
    iget-object v0, p0, Linstall/app/ConstantObservabled;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public notifyChanged()V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Linstall/app/ConstantObservabled;, "Linstall/app/ConstantObservabled<TT;>;"
    return-void
.end method

.method public notifyChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1, "initiator"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Linstall/app/ConstantObservabled;, "Linstall/app/ConstantObservabled<TT;>;"
    return-void
.end method

.method public notifyChanged(Ljava/util/AbstractCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractCollection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Linstall/app/ConstantObservabled;, "Linstall/app/ConstantObservabled<TT;>;"
    .local p1, "abstractCollection":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Linstall/app/ConstantObservabled;, "Linstall/app/ConstantObservabled<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public set(Ljava/lang/Object;Ljava/util/AbstractCollection;)V
    .locals 0
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
    .line 38
    .local p0, "this":Linstall/app/ConstantObservabled;, "Linstall/app/ConstantObservabled<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    .local p2, "abstractCollection":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    return-void
.end method

.method public subscribe(Linstall/app/Observerd;)V
    .locals 0
    .param p1, "o"    # Linstall/app/Observerd;

    .prologue
    .line 19
    .local p0, "this":Linstall/app/ConstantObservabled;, "Linstall/app/ConstantObservabled<TT;>;"
    return-void
.end method

.method public unsubscribe(Linstall/app/Observerd;)V
    .locals 0
    .param p1, "o"    # Linstall/app/Observerd;

    .prologue
    .line 22
    .local p0, "this":Linstall/app/ConstantObservabled;, "Linstall/app/ConstantObservabled<TT;>;"
    return-void
.end method
