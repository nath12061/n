.class public abstract Linstall/app/FloatField;
.super Linstall/app/CursorField;
.source "FloatField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/CursorField",
        "<",
        "Ljava/lang/Float;",
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
.method public returnValue(Landroid/database/Cursor;)Ljava/lang/Float;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 8
    iget v0, p0, Linstall/app/FloatField;->mColumnIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic returnValue(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Linstall/app/FloatField;->returnValue(Landroid/database/Cursor;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public saveValue(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 12
    return-void
.end method
