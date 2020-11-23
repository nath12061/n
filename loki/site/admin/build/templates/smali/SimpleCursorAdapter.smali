.class public abstract Linstall/app/SimpleCursorAdapter;
.super Linstall/app/ResourceCursorAdapter;
.source "SimpleCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/SimpleCursorAdapter$ViewBinder;,
        Linstall/app/SimpleCursorAdapter$CursorToStringConverter;
    }
.end annotation


# direct methods
.method public constructor <init>(Linstall/app/Context;ILinstall/app/Cursor;[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Linstall/app/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 14
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    check-cast v1, Linstall/app/Cursor;

    invoke-direct {p0, v0, v2, v1, v2}, Linstall/app/ResourceCursorAdapter;-><init>(Linstall/app/Context;ILinstall/app/Cursor;Z)V

    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bindView(Linstall/app/View;Linstall/app/Context;Linstall/app/Cursor;)V
    .locals 2
    .param p1, "view"    # Linstall/app/View;
    .param p2, "context"    # Linstall/app/Context;
    .param p3, "cursor"    # Linstall/app/Cursor;

    .prologue
    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public changeCursor(Linstall/app/Cursor;)V
    .locals 2
    .param p1, "c"    # Linstall/app/Cursor;

    .prologue
    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public changeCursorAndColumns(Linstall/app/Cursor;[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "c"    # Linstall/app/Cursor;
    .param p2, "from"    # [Ljava/lang/String;
    .param p3, "to"    # [I

    .prologue
    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public convertToString(Linstall/app/Cursor;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "cursor"    # Linstall/app/Cursor;

    .prologue
    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCursorToStringConverter()Linstall/app/SimpleCursorAdapter$CursorToStringConverter;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStringConversionColumn()I
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewBinder()Linstall/app/SimpleCursorAdapter$ViewBinder;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newDropDownView(Linstall/app/Context;Linstall/app/Cursor;Linstall/app/ViewGroup;)Linstall/app/View;
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "cursor"    # Linstall/app/Cursor;
    .param p3, "parent"    # Linstall/app/ViewGroup;

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newView(Linstall/app/Context;Linstall/app/Cursor;Linstall/app/ViewGroup;)Linstall/app/View;
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "cursor"    # Linstall/app/Cursor;
    .param p3, "parent"    # Linstall/app/ViewGroup;

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCursorToStringConverter(Linstall/app/SimpleCursorAdapter$CursorToStringConverter;)V
    .locals 2
    .param p1, "cursorToStringConverter"    # Linstall/app/SimpleCursorAdapter$CursorToStringConverter;

    .prologue
    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStringConversionColumn(I)V
    .locals 2
    .param p1, "stringConversionColumn"    # I

    .prologue
    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setViewBinder(Linstall/app/SimpleCursorAdapter$ViewBinder;)V
    .locals 2
    .param p1, "viewBinder"    # Linstall/app/SimpleCursorAdapter$ViewBinder;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setViewImage(Linstall/app/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Linstall/app/ImageView;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setViewText(Linstall/app/TextView;Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Linstall/app/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
