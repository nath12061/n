.class public abstract Linstall/app/CursorObservable;
.super Linstall/app/Observable;
.source "CursorObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/CursorObservable$DefaultFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linstall/app/CursorRowModel;",
        ">",
        "Linstall/app/Observable",
        "<",
        "Linstall/app/CursorObservable;",
        ">;"
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    .local p0, "this":Linstall/app/CursorObservable;, "Linstall/app/CursorObservable<TT;>;"
    invoke-direct {p0}, Linstall/app/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Linstall/app/CursorObservable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linstall/app/CursorObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Linstall/app/CursorObservable;, "Linstall/app/CursorObservable<TT;>;"
    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    .local p0, "this":Linstall/app/CursorObservable;, "Linstall/app/CursorObservable<TT;>;"
    invoke-virtual {p0}, Linstall/app/CursorObservable;->get()Linstall/app/CursorObservable;

    move-result-object v0

    return-object v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Linstall/app/CursorObservable;, "Linstall/app/CursorObservable<TT;>;"
    iget-object v0, p0, Linstall/app/CursorObservable;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 51
    .local p0, "this":Linstall/app/CursorObservable;, "Linstall/app/CursorObservable<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 34
    .local p0, "this":Linstall/app/CursorObservable;, "Linstall/app/CursorObservable<TT;>;"
    iput-object p1, p0, Linstall/app/CursorObservable;->mCursor:Landroid/database/Cursor;

    .line 35
    invoke-virtual {p0}, Linstall/app/CursorObservable;->notifyChanged()V

    .line 36
    return-void
.end method
