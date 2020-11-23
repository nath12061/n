.class public abstract Linstall/app/CursorFieldd;
.super Linstall/app/Observabled;
.source "CursorFieldd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Linstall/app/Observabled",
        "<TT;>;"
    }
.end annotation


# static fields
.field protected static final COLUMN_NOT_FOUND:I = -0x1

.field protected static final COLUMN_UNSET:I = -0xa


# instance fields
.field protected mColumnIndex:I

.field protected final mColumnName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .param p2, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Linstall/app/CursorFieldd;, "Linstall/app/CursorFieldd<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Linstall/app/Observabled;-><init>(Ljava/lang/Class;)V

    .line 15
    const/16 v0, -0xa

    iput v0, p0, Linstall/app/CursorFieldd;->mColumnIndex:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/CursorFieldd;->mColumnName:Ljava/lang/String;

    .line 17
    iput p2, p0, Linstall/app/CursorFieldd;->mColumnIndex:I

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p2, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Linstall/app/CursorFieldd;, "Linstall/app/CursorFieldd<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Linstall/app/Observabled;-><init>(Ljava/lang/Class;)V

    .line 22
    const/16 v0, -0xa

    iput v0, p0, Linstall/app/CursorFieldd;->mColumnIndex:I

    .line 23
    iput-object p2, p0, Linstall/app/CursorFieldd;->mColumnName:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public fillValue(Linstall/app/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Linstall/app/Cursor;

    .prologue
    .line 27
    .local p0, "this":Linstall/app/CursorFieldd;, "Linstall/app/CursorFieldd<TT;>;"
    iget v0, p0, Linstall/app/CursorFieldd;->mColumnIndex:I

    if-ltz v0, :cond_1

    .line 28
    invoke-virtual {p0, p1}, Linstall/app/CursorFieldd;->returnValue(Linstall/app/Cursor;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Linstall/app/CursorFieldd;->set(Ljava/lang/Object;)V

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    iget v0, p0, Linstall/app/CursorFieldd;->mColumnIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Linstall/app/CursorFieldd;->mColumnIndex:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Linstall/app/CursorFieldd;->mColumnName:Ljava/lang/String;

    invoke-interface {p1, v0}, Linstall/app/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linstall/app/CursorFieldd;->mColumnIndex:I

    .line 31
    invoke-virtual {p0, p1}, Linstall/app/CursorFieldd;->fillValue(Linstall/app/Cursor;)V

    goto :goto_0
.end method

.method public abstract returnValue(Linstall/app/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract saveValue(Linstall/app/Cursor;)V
.end method
