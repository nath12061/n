.class public abstract Linstall/app/IntegerField;
.super Linstall/app/CursorField;
.source "IntegerField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/CursorField",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Linstall/app/CursorField;-><init>()V

    return-void
.end method


# virtual methods
.method public returnValue(Landroid/database/Cursor;)Ljava/lang/Integer;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 12
    iget v0, p0, Linstall/app/IntegerField;->mColumnIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic returnValue(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Linstall/app/IntegerField;->returnValue(Landroid/database/Cursor;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public saveValue(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 9
    return-void
.end method
