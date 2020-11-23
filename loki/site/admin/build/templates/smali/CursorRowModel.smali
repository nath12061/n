.class public abstract Linstall/app/CursorRowModel;
.super Linstall/app/CursorRowModeld;
.source "CursorRowModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/CursorRowModel$Factory;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private cursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Linstall/app/CursorRowModeld;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 26
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    iput-object p1, p0, Linstall/app/CursorRowModel;->context:Landroid/content/Context;

    .line 23
    return-void
.end method

.method setCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 17
    iput-object p1, p0, Linstall/app/CursorRowModel;->cursor:Landroid/database/Cursor;

    .line 18
    return-void
.end method
