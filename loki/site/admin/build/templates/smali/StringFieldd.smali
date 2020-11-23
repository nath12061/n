.class public Linstall/app/StringFieldd;
.super Linstall/app/CursorFieldd;
.source "StringFieldd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/CursorFieldd",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 7
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Linstall/app/CursorFieldd;-><init>(Ljava/lang/Class;I)V

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Linstall/app/CursorFieldd;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic returnValue(Linstall/app/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Linstall/app/StringFieldd;->returnValue(Linstall/app/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public returnValue(Linstall/app/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Linstall/app/Cursor;

    .prologue
    .line 18
    iget v0, p0, Linstall/app/StringFieldd;->mColumnIndex:I

    invoke-interface {p1, v0}, Linstall/app/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveValue(Linstall/app/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Linstall/app/Cursor;

    .prologue
    .line 15
    return-void
.end method
