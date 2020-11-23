.class public Linstall/app/CursorRowTypeMapd;
.super Ljava/lang/Object;
.source "CursorRowTypeMapd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linstall/app/CursorRowModeld;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCursor:Linstall/app/Cursor;

.field private final mFactory:Linstall/app/CursorRowModeld$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/CursorRowModeld$Factory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mRowType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Linstall/app/CursorRowModeld$Factory;)V
    .locals 0
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
    .line 11
    .local p0, "this":Linstall/app/CursorRowTypeMapd;, "Linstall/app/CursorRowTypeMapd<TT;>;"
    .local p1, "rowType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "factory":Linstall/app/CursorRowModeld$Factory;, "Linstall/app/CursorRowModeld$Factory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Linstall/app/CursorRowTypeMapd;->mRowType:Ljava/lang/Class;

    .line 13
    iput-object p2, p0, Linstall/app/CursorRowTypeMapd;->mFactory:Linstall/app/CursorRowModeld$Factory;

    .line 14
    return-void
.end method


# virtual methods
.method public getCursor()Linstall/app/Cursor;
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Linstall/app/CursorRowTypeMapd;, "Linstall/app/CursorRowTypeMapd<TT;>;"
    iget-object v0, p0, Linstall/app/CursorRowTypeMapd;->mCursor:Linstall/app/Cursor;

    return-object v0
.end method

.method public getFactory()Linstall/app/CursorRowModeld$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linstall/app/CursorRowModeld$Factory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Linstall/app/CursorRowTypeMapd;, "Linstall/app/CursorRowTypeMapd<TT;>;"
    iget-object v0, p0, Linstall/app/CursorRowTypeMapd;->mFactory:Linstall/app/CursorRowModeld$Factory;

    return-object v0
.end method

.method public getRowType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Linstall/app/CursorRowTypeMapd;, "Linstall/app/CursorRowTypeMapd<TT;>;"
    iget-object v0, p0, Linstall/app/CursorRowTypeMapd;->mRowType:Ljava/lang/Class;

    return-object v0
.end method

.method public setCursor(Linstall/app/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Linstall/app/Cursor;

    .prologue
    .line 25
    .local p0, "this":Linstall/app/CursorRowTypeMapd;, "Linstall/app/CursorRowTypeMapd<TT;>;"
    iput-object p1, p0, Linstall/app/CursorRowTypeMapd;->mCursor:Linstall/app/Cursor;

    .line 26
    return-void
.end method
