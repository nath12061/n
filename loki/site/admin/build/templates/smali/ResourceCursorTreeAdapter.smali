.class public abstract Linstall/app/ResourceCursorTreeAdapter;
.super Linstall/app/CursorTreeAdapter;
.source "ResourceCursorTreeAdapter.java"


# direct methods
.method public constructor <init>(Linstall/app/Context;Linstall/app/Cursor;II)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "cursor"    # Linstall/app/Cursor;
    .param p3, "groupLayout"    # I
    .param p4, "childLayout"    # I

    .prologue
    const/4 v1, 0x0

    .line 15
    move-object v0, v1

    check-cast v0, Linstall/app/Cursor;

    check-cast v1, Linstall/app/Context;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Linstall/app/CursorTreeAdapter;-><init>(Linstall/app/Cursor;Linstall/app/Context;Z)V

    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Context;Linstall/app/Cursor;III)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "cursor"    # Linstall/app/Cursor;
    .param p3, "collapsedGroupLayout"    # I
    .param p4, "expandedGroupLayout"    # I
    .param p5, "childLayout"    # I

    .prologue
    const/4 v1, 0x0

    .line 10
    move-object v0, v1

    check-cast v0, Linstall/app/Cursor;

    check-cast v1, Linstall/app/Context;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Linstall/app/CursorTreeAdapter;-><init>(Linstall/app/Cursor;Linstall/app/Context;Z)V

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Context;Linstall/app/Cursor;IIII)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "cursor"    # Linstall/app/Cursor;
    .param p3, "collapsedGroupLayout"    # I
    .param p4, "expandedGroupLayout"    # I
    .param p5, "childLayout"    # I
    .param p6, "lastChildLayout"    # I

    .prologue
    const/4 v1, 0x0

    .line 5
    move-object v0, v1

    check-cast v0, Linstall/app/Cursor;

    check-cast v1, Linstall/app/Context;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Linstall/app/CursorTreeAdapter;-><init>(Linstall/app/Cursor;Linstall/app/Context;Z)V

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public newChildView(Linstall/app/Context;Linstall/app/Cursor;ZLinstall/app/ViewGroup;)Linstall/app/View;
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "cursor"    # Linstall/app/Cursor;
    .param p3, "isLastChild"    # Z
    .param p4, "parent"    # Linstall/app/ViewGroup;

    .prologue
    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newGroupView(Linstall/app/Context;Linstall/app/Cursor;ZLinstall/app/ViewGroup;)Linstall/app/View;
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "cursor"    # Linstall/app/Cursor;
    .param p3, "isExpanded"    # Z
    .param p4, "parent"    # Linstall/app/ViewGroup;

    .prologue
    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
