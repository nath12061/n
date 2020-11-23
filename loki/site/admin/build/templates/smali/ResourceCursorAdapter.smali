.class public abstract Linstall/app/ResourceCursorAdapter;
.super Linstall/app/CursorAdapter;
.source "ResourceCursorAdapter.java"


# direct methods
.method public constructor <init>(Linstall/app/Context;ILinstall/app/Cursor;)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Linstall/app/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 5
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    check-cast v1, Linstall/app/Cursor;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Linstall/app/CursorAdapter;-><init>(Linstall/app/Context;Linstall/app/Cursor;Z)V

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Context;ILinstall/app/Cursor;Z)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Linstall/app/Cursor;
    .param p4, "autoRequery"    # Z

    .prologue
    const/4 v1, 0x0

    .line 10
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    check-cast v1, Linstall/app/Cursor;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Linstall/app/CursorAdapter;-><init>(Linstall/app/Context;Linstall/app/Cursor;Z)V

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public newDropDownView(Linstall/app/Context;Linstall/app/Cursor;Linstall/app/ViewGroup;)Linstall/app/View;
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

.method public newView(Linstall/app/Context;Linstall/app/Cursor;Linstall/app/ViewGroup;)Linstall/app/View;
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "cursor"    # Linstall/app/Cursor;
    .param p3, "parent"    # Linstall/app/ViewGroup;

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDropDownViewResource(I)V
    .locals 2
    .param p1, "dropDownLayout"    # I

    .prologue
    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setViewResource(I)V
    .locals 2
    .param p1, "layout"    # I

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
