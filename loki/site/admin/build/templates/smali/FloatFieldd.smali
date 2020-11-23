.class public abstract Linstall/app/FloatFieldd;
.super Linstall/app/CursorFieldd;
.source "FloatFieldd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/CursorFieldd",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 8
    const-class v0, Ljava/lang/Float;

    invoke-direct {p0, v0, p1}, Linstall/app/CursorFieldd;-><init>(Ljava/lang/Class;I)V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Ljava/lang/Float;

    invoke-direct {p0, v0, p1}, Linstall/app/CursorFieldd;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public returnValue(Linstall/app/Cursor;)Ljava/lang/Float;
    .locals 1
    .param p1, "cursor"    # Linstall/app/Cursor;

    .prologue
    .line 16
    iget v0, p0, Linstall/app/FloatFieldd;->mColumnIndex:I

    invoke-interface {p1, v0}, Linstall/app/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic returnValue(Linstall/app/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Linstall/app/FloatFieldd;->returnValue(Linstall/app/Cursor;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public saveValue(Linstall/app/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Linstall/app/Cursor;

    .prologue
    .line 20
    return-void
.end method
