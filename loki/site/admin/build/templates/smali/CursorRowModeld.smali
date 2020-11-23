.class public abstract Linstall/app/CursorRowModeld;
.super Ljava/lang/Object;
.source "CursorRowModeld.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/CursorRowModeld$Factory;
    }
.end annotation


# instance fields
.field private context:Linstall/app/Context;

.field private cursor:Linstall/app/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Linstall/app/Context;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Linstall/app/CursorRowModeld;->context:Linstall/app/Context;

    return-object v0
.end method

.method public getCursor()Linstall/app/Cursor;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Linstall/app/CursorRowModeld;->cursor:Linstall/app/Cursor;

    return-object v0
.end method

.method public onLoad(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 28
    return-void
.end method

.method public setContext(Linstall/app/Context;)V
    .locals 0
    .param p1, "context"    # Linstall/app/Context;

    .prologue
    .line 24
    iput-object p1, p0, Linstall/app/CursorRowModeld;->context:Linstall/app/Context;

    .line 25
    return-void
.end method

.method setCursor(Linstall/app/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Linstall/app/Cursor;

    .prologue
    .line 16
    iput-object p1, p0, Linstall/app/CursorRowModeld;->cursor:Linstall/app/Cursor;

    .line 17
    return-void
.end method
