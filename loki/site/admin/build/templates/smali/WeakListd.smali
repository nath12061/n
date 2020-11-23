.class public abstract Linstall/app/WeakListd;
.super Ljava/util/AbstractList;
.source "WeakListd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/WeakListd$WeakListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Linstall/app/WeakListd;, "Linstall/app/WeakListd<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linstall/app/WeakListd;->items:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Linstall/app/WeakListd;->addAll(ILjava/util/Collection;)Z

    .line 39
    return-void
.end method

.method private removeReleased()V
    .locals 3

    .prologue
    .line 59
    .local p0, "this":Linstall/app/WeakListd;, "Linstall/app/WeakListd<TE;>;"
    iget-object v2, p0, Linstall/app/WeakListd;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 60
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<TE;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 62
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TE;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 63
    iget-object v2, p0, Linstall/app/WeakListd;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TE;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Linstall/app/WeakListd;, "Linstall/app/WeakListd<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Linstall/app/WeakListd;->items:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 43
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Linstall/app/WeakListd;, "Linstall/app/WeakListd<TE;>;"
    new-instance v0, Linstall/app/WeakListd$WeakListIterator;

    invoke-direct {v0, p0}, Linstall/app/WeakListd$WeakListIterator;-><init>(Linstall/app/WeakListd;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Linstall/app/WeakListd;, "Linstall/app/WeakListd<TE;>;"
    invoke-direct {p0}, Linstall/app/WeakListd;->removeReleased()V

    .line 51
    iget-object v0, p0, Linstall/app/WeakListd;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
