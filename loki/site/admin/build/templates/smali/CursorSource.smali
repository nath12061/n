.class public final Linstall/app/CursorSource;
.super Linstall/app/Observable;
.source "CursorSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linstall/app/CursorRowModel;",
        ">",
        "Linstall/app/Observable",
        "<",
        "Linstall/app/CursorRowTypeMap;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mRowModelType:Linstall/app/CursorRowTypeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/CursorRowTypeMap",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Linstall/app/CursorRowModel$Factory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Linstall/app/CursorRowModel$Factory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Linstall/app/CursorSource;, "Linstall/app/CursorSource<TT;>;"
    .local p1, "rowModelType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "factory":Linstall/app/CursorRowModel$Factory;, "Linstall/app/CursorRowModel$Factory<TT;>;"
    invoke-direct {p0}, Linstall/app/Observable;-><init>()V

    .line 18
    new-instance v0, Linstall/app/CursorRowTypeMap;

    invoke-direct {v0, p1, p2}, Linstall/app/CursorRowTypeMap;-><init>(Ljava/lang/Class;Linstall/app/CursorRowModel$Factory;)V

    iput-object v0, p0, Linstall/app/CursorSource;->mRowModelType:Linstall/app/CursorRowTypeMap;

    .line 19
    return-void
.end method


# virtual methods
.method protected doSetValue(Linstall/app/CursorRowTypeMap;Ljava/util/AbstractCollection;)V
    .locals 0
    .param p1, "newValue"    # Linstall/app/CursorRowTypeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/CursorRowTypeMap;",
            "Ljava/util/AbstractCollection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Linstall/app/CursorSource;, "Linstall/app/CursorSource<TT;>;"
    .local p2, "abstractCollection":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    return-void
.end method

.method protected bridge synthetic doSetValue(Ljava/lang/Object;Ljava/util/AbstractCollection;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Linstall/app/CursorSource;, "Linstall/app/CursorSource<TT;>;"
    check-cast p1, Linstall/app/CursorRowTypeMap;

    invoke-virtual {p0, p1, p2}, Linstall/app/CursorSource;->doSetValue(Linstall/app/CursorRowTypeMap;Ljava/util/AbstractCollection;)V

    return-void
.end method

.method public get()Linstall/app/CursorRowTypeMap;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Linstall/app/CursorSource;, "Linstall/app/CursorSource<TT;>;"
    iget-object v0, p0, Linstall/app/CursorSource;->mRowModelType:Linstall/app/CursorRowTypeMap;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    .local p0, "this":Linstall/app/CursorSource;, "Linstall/app/CursorSource<TT;>;"
    invoke-virtual {p0}, Linstall/app/CursorSource;->get()Linstall/app/CursorRowTypeMap;

    move-result-object v0

    return-object v0
.end method

.method public getRowModelType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Linstall/app/CursorSource;, "Linstall/app/CursorSource<TT;>;"
    iget-object v0, p0, Linstall/app/CursorSource;->mRowModelType:Linstall/app/CursorRowTypeMap;

    invoke-virtual {v0}, Linstall/app/CursorRowTypeMap;->getRowType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Linstall/app/CursorRowTypeMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Linstall/app/CursorSource;, "Linstall/app/CursorSource<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 13
    .local p0, "this":Linstall/app/CursorSource;, "Linstall/app/CursorSource<TT;>;"
    iget-object v0, p0, Linstall/app/CursorSource;->mRowModelType:Linstall/app/CursorRowTypeMap;

    invoke-virtual {v0, p1}, Linstall/app/CursorRowTypeMap;->setCursor(Landroid/database/Cursor;)V

    .line 14
    invoke-virtual {p0}, Linstall/app/CursorSource;->notifyChanged()V

    .line 15
    return-void
.end method
