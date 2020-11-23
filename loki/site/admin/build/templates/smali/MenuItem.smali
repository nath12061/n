.class public interface abstract Linstall/app/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/MenuItem$OnMenuItemClickListener;
    }
.end annotation


# virtual methods
.method public abstract getAlphabeticShortcut()C
.end method

.method public abstract getGroupId()I
.end method

.method public abstract getIcon()Linstall/app/Drawable;
.end method

.method public abstract getIntent()Linstall/app/Intent;
.end method

.method public abstract getItemId()I
.end method

.method public abstract getMenuInfo()Linstall/app/ContextMenu$ContextMenuInfo;
.end method

.method public abstract getNumericShortcut()C
.end method

.method public abstract getOrder()I
.end method

.method public abstract getSubMenu()Landroid/view/SubMenu;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract getTitleCondensed()Ljava/lang/CharSequence;
.end method

.method public abstract hasSubMenu()Z
.end method

.method public abstract isCheckable()Z
.end method

.method public abstract isChecked()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract setAlphabeticShortcut(C)Linstall/app/MenuItem;
.end method

.method public abstract setCheckable(Z)Linstall/app/MenuItem;
.end method

.method public abstract setChecked(Z)Linstall/app/MenuItem;
.end method

.method public abstract setEnabled(Z)Linstall/app/MenuItem;
.end method

.method public abstract setIcon(I)Linstall/app/MenuItem;
.end method

.method public abstract setIcon(Linstall/app/Drawable;)Linstall/app/MenuItem;
.end method

.method public abstract setIntent(Linstall/app/Intent;)Linstall/app/MenuItem;
.end method

.method public abstract setNumericShortcut(C)Linstall/app/MenuItem;
.end method

.method public abstract setOnMenuItemClickListener(Linstall/app/MenuItem$OnMenuItemClickListener;)Linstall/app/MenuItem;
.end method

.method public abstract setShortcut(CC)Linstall/app/MenuItem;
.end method

.method public abstract setTitle(I)Linstall/app/MenuItem;
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)Linstall/app/MenuItem;
.end method

.method public abstract setTitleCondensed(Ljava/lang/CharSequence;)Linstall/app/MenuItem;
.end method

.method public abstract setVisible(Z)Linstall/app/MenuItem;
.end method
