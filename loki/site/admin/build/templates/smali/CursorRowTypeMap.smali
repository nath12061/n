.class public Linstall/app/CursorRowTypeMap;
.super Ljava/lang/Object;
.source "CursorRowTypeMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linstall/app/CursorRowModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private final mFactory:Linstall/app/CursorRowModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/CursorRowModel$Factory",
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
.method public constructor <init>(Ljava/lang/Class;Linstall/app/CursorRowModel$Factory;)V
    .locals 0
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
    .line 11
    .local p0, "this":Linstall/app/CursorRowTypeMap;, "Linstall/app/CursorRowTypeMap<TT;>;"
    .local p1, "rowType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "factory":Linstall/app/CursorRowModel$Factory;, "Linstall/app/CursorRowModel$Factory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Linstall/app/CursorRowTypeMap;->mRowType:Ljava/lang/Class;

    .line 13
    iput-object p2, p0, Linstall/app/CursorRowTypeMap;->mFactory:Linstall/app/CursorRowModel$Factory;

    .line 14
    return-void
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Linstall/app/CursorRowTypeMap;, "Linstall/app/CursorRowTypeMap<TT;>;"
    iget-object v0, p0, Linstall/app/CursorRowTypeMap;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getFactory()Linstall/app/CursorRowModel$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linstall/app/CursorRowModel$Factory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Linstall/app/CursorRowTypeMap;, "Linstall/app/CursorRowTypeMap<TT;>;"
    iget-object v0, p0, Linstall/app/CursorRowTypeMap;->mFactory:Linstall/app/CursorRowModel$Factory;

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
    .local p0, "this":Linstall/app/CursorRowTypeMap;, "Linstall/app/CursorRowTypeMap<TT;>;"
    iget-object v0, p0, Linstall/app/CursorRowTypeMap;->mRowType:Ljava/lang/Class;

    return-object v0
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 25
    .local p0, "this":Linstall/app/CursorRowTypeMap;, "Linstall/app/CursorRowTypeMap<TT;>;"
    iput-object p1, p0, Linstall/app/CursorRowTypeMap;->mCursor:Landroid/database/Cursor;

    .line 26
    return-void
.end method
