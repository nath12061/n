.class Linstall/app/WeakList$WeakListIterator;
.super Ljava/lang/Object;
.source "WeakList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/WeakList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeakListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private f0i:I

.field private f1n:I

.field final synthetic this$0:Linstall/app/WeakList;


# direct methods
.method public constructor <init>(Linstall/app/WeakList;)V
    .locals 1

    .prologue
    .line 16
    .local p0, "this":Linstall/app/WeakList$WeakListIterator;, "Linstall/app/WeakList<TE;>.WeakListIterator;"
    iput-object p1, p0, Linstall/app/WeakList$WeakListIterator;->this$0:Linstall/app/WeakList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Linstall/app/WeakList$WeakListIterator;->f0i:I

    .line 17
    invoke-virtual {p1}, Linstall/app/WeakList;->size()I

    move-result v0

    iput v0, p0, Linstall/app/WeakList$WeakListIterator;->f1n:I

    .line 18
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 21
    .local p0, "this":Linstall/app/WeakList$WeakListIterator;, "Linstall/app/WeakList<TE;>.WeakListIterator;"
    iget v0, p0, Linstall/app/WeakList$WeakListIterator;->f0i:I

    iget v1, p0, Linstall/app/WeakList$WeakListIterator;->f1n:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Linstall/app/WeakList$WeakListIterator;, "Linstall/app/WeakList<TE;>.WeakListIterator;"
    iget-object v1, p0, Linstall/app/WeakList$WeakListIterator;->this$0:Linstall/app/WeakList;

    .line 26
    .local v1, "weakList":Linstall/app/WeakList;
    iget v0, p0, Linstall/app/WeakList$WeakListIterator;->f0i:I

    .line 27
    .local v0, "i":I
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Linstall/app/WeakList$WeakListIterator;->f0i:I

    .line 28
    invoke-virtual {v1, v0}, Linstall/app/WeakList;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Linstall/app/WeakList$WeakListIterator;, "Linstall/app/WeakList<TE;>.WeakListIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
