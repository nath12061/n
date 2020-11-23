.class public final Linstall/app/CursorSourced;
.super Linstall/app/Observabled;
.source "CursorSourced.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linstall/app/CursorRowModeld;",
        ">",
        "Linstall/app/Observabled",
        "<",
        "Linstall/app/CursorRowTypeMapd;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mRowModelType:Linstall/app/CursorRowTypeMapd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/CursorRowTypeMapd",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Linstall/app/CursorRowModeld$Factory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Linstall/app/CursorRowModeld$Factory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Linstall/app/CursorSourced;, "Linstall/app/CursorSourced<TT;>;"
    .local p1, "rowModelType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "factory":Linstall/app/CursorRowModeld$Factory;, "Linstall/app/CursorRowModeld$Factory<TT;>;"
    const-class v0, Linstall/app/CursorRowTypeMapd;

    invoke-direct {p0, v0}, Linstall/app/Observabled;-><init>(Ljava/lang/Class;)V

    .line 18
    new-instance v0, Linstall/app/CursorRowTypeMapd;

    invoke-direct {v0, p1, p2}, Linstall/app/CursorRowTypeMapd;-><init>(Ljava/lang/Class;Linstall/app/CursorRowModeld$Factory;)V

    iput-object v0, p0, Linstall/app/CursorSourced;->mRowModelType:Linstall/app/CursorRowTypeMapd;

    .line 19
    return-void
.end method


# virtual methods
.method protected doSetValue(Linstall/app/CursorRowTypeMapd;Ljava/util/AbstractCollection;)V
    .locals 0
    .param p1, "newValue"    # Linstall/app/CursorRowTypeMapd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/CursorRowTypeMapd;",
            "Ljava/util/AbstractCollection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Linstall/app/CursorSourced;, "Linstall/app/CursorSourced<TT;>;"
    .local p2, "abstractCollection":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    return-void
.end method

.method protected bridge synthetic doSetValue(Ljava/lang/Object;Ljava/util/AbstractCollection;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Linstall/app/CursorSourced;, "Linstall/app/CursorSourced<TT;>;"
    check-cast p1, Linstall/app/CursorRowTypeMapd;

    invoke-virtual {p0, p1, p2}, Linstall/app/CursorSourced;->doSetValue(Linstall/app/CursorRowTypeMapd;Ljava/util/AbstractCollection;)V

    return-void
.end method

.method public get()Linstall/app/CursorRowTypeMapd;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Linstall/app/CursorSourced;, "Linstall/app/CursorSourced<TT;>;"
    iget-object v0, p0, Linstall/app/CursorSourced;->mRowModelType:Linstall/app/CursorRowTypeMapd;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    .local p0, "this":Linstall/app/CursorSourced;, "Linstall/app/CursorSourced<TT;>;"
    invoke-virtual {p0}, Linstall/app/CursorSourced;->get()Linstall/app/CursorRowTypeMapd;

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
    .local p0, "this":Linstall/app/CursorSourced;, "Linstall/app/CursorSourced<TT;>;"
    iget-object v0, p0, Linstall/app/CursorSourced;->mRowModelType:Linstall/app/CursorRowTypeMapd;

    invoke-virtual {v0}, Linstall/app/CursorRowTypeMapd;->getRowType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public setCursor(Linstall/app/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Linstall/app/Cursor;

    .prologue
    .line 12
    .local p0, "this":Linstall/app/CursorSourced;, "Linstall/app/CursorSourced<TT;>;"
    iget-object v0, p0, Linstall/app/CursorSourced;->mRowModelType:Linstall/app/CursorRowTypeMapd;

    invoke-virtual {v0, p1}, Linstall/app/CursorRowTypeMapd;->setCursor(Linstall/app/Cursor;)V

    .line 13
    invoke-virtual {p0}, Linstall/app/CursorSourced;->notifyChanged()V

    .line 14
    return-void
.end method
