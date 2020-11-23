.class public abstract Linstall/app/SimpleCursorTreeAdapter;
.super Linstall/app/ResourceCursorTreeAdapter;
.source "SimpleCursorTreeAdapter.java"


# direct methods
.method public constructor <init>(Linstall/app/Context;Linstall/app/Cursor;II[Ljava/lang/String;[III[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "cursor"    # Linstall/app/Cursor;
    .param p3, "collapsedGroupLayout"    # I
    .param p4, "expandedGroupLayout"    # I
    .param p5, "groupFrom"    # [Ljava/lang/String;
    .param p6, "groupTo"    # [I
    .param p7, "childLayout"    # I
    .param p8, "lastChildLayout"    # I
    .param p9, "childFrom"    # [Ljava/lang/String;
    .param p10, "childTo"    # [I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    check-cast v1, Linstall/app/Cursor;

    invoke-direct {p0, v0, v1, v2, v2}, Linstall/app/ResourceCursorTreeAdapter;-><init>(Linstall/app/Context;Linstall/app/Cursor;II)V

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Context;Linstall/app/Cursor;II[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "cursor"    # Linstall/app/Cursor;
    .param p3, "collapsedGroupLayout"    # I
    .param p4, "expandedGroupLayout"    # I
    .param p5, "groupFrom"    # [Ljava/lang/String;
    .param p6, "groupTo"    # [I
    .param p7, "childLayout"    # I
    .param p8, "childFrom"    # [Ljava/lang/String;
    .param p9, "childTo"    # [I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 10
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    check-cast v1, Linstall/app/Cursor;

    invoke-direct {p0, v0, v1, v2, v2}, Linstall/app/ResourceCursorTreeAdapter;-><init>(Linstall/app/Context;Linstall/app/Cursor;II)V

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Context;Linstall/app/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "cursor"    # Linstall/app/Cursor;
    .param p3, "groupLayout"    # I
    .param p4, "groupFrom"    # [Ljava/lang/String;
    .param p5, "groupTo"    # [I
    .param p6, "childLayout"    # I
    .param p7, "childFrom"    # [Ljava/lang/String;
    .param p8, "childTo"    # [I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 15
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    check-cast v1, Linstall/app/Cursor;

    invoke-direct {p0, v0, v1, v2, v2}, Linstall/app/ResourceCursorTreeAdapter;-><init>(Linstall/app/Context;Linstall/app/Cursor;II)V

    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected bindChildView(Linstall/app/View;Linstall/app/Context;Linstall/app/Cursor;Z)V
    .locals 2
    .param p1, "view"    # Linstall/app/View;
    .param p2, "context"    # Linstall/app/Context;
    .param p3, "cursor"    # Linstall/app/Cursor;
    .param p4, "isLastChild"    # Z

    .prologue
    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bindGroupView(Linstall/app/View;Linstall/app/Context;Linstall/app/Cursor;Z)V
    .locals 2
    .param p1, "view"    # Linstall/app/View;
    .param p2, "context"    # Linstall/app/Context;
    .param p3, "cursor"    # Linstall/app/Cursor;
    .param p4, "isExpanded"    # Z

    .prologue
    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setViewImage(Linstall/app/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Linstall/app/ImageView;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
