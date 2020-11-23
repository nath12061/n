.class public interface abstract Linstall/app/WindowManager;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/WindowManager$LayoutParams;,
        Linstall/app/WindowManager$BadTokenException;
    }
.end annotation


# virtual methods
.method public abstract getDefaultDisplay()Landroid/view/Display;
.end method

.method public abstract removeViewImmediate(Landroid/view/View;)V
.end method
