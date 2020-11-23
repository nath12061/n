.class public interface abstract Linstall/app/ContextMenu;
.super Ljava/lang/Object;
.source "ContextMenu.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/ContextMenu$ContextMenuInfo;
    }
.end annotation


# virtual methods
.method public abstract clearHeader()V
.end method

.method public abstract setHeaderIcon(I)Linstall/app/ContextMenu;
.end method

.method public abstract setHeaderIcon(Linstall/app/Drawable;)Linstall/app/ContextMenu;
.end method

.method public abstract setHeaderTitle(I)Linstall/app/ContextMenu;
.end method

.method public abstract setHeaderTitle(Ljava/lang/CharSequence;)Linstall/app/ContextMenu;
.end method

.method public abstract setHeaderView(Landroid/view/View;)Linstall/app/ContextMenu;
.end method
