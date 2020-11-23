.class public abstract Linstall/app/CursorField;
.super Linstall/app/Observable;
.source "CursorField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Linstall/app/Observable",
        "<TT;>;"
    }
.end annotation


# static fields
.field protected static final COLUMN_NOT_FOUND:I = -0x1

.field protected static final COLUMN_UNSET:I = -0xa


# instance fields
.field protected mColumnIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    .local p0, "this":Linstall/app/CursorField;, "Linstall/app/CursorField<TT;>;"
    invoke-direct {p0}, Linstall/app/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public fillValue(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 17
    .local p0, "this":Linstall/app/CursorField;, "Linstall/app/CursorField<TT;>;"
    iget v0, p0, Linstall/app/CursorField;->mColumnIndex:I

    if-ltz v0, :cond_1

    .line 18
    invoke-virtual {p0, p1}, Linstall/app/CursorField;->returnValue(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Linstall/app/CursorField;->set(Ljava/lang/Object;)V

    .line 22
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    iget v0, p0, Linstall/app/CursorField;->mColumnIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Linstall/app/CursorField;->mColumnIndex:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Linstall/app/CursorField;->fillValue(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public abstract returnValue(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract saveValue(Landroid/database/Cursor;)V
.end method
