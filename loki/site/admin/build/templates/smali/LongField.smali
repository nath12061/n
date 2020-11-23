.class public abstract Linstall/app/LongField;
.super Linstall/app/CursorField;
.source "LongField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/CursorField",
        "<",
        "Ljava/lang/Long;",
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
.method public returnValue(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 11
    iget v0, p0, Linstall/app/LongField;->mColumnIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic returnValue(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Linstall/app/LongField;->returnValue(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public saveValue(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 8
    return-void
.end method
