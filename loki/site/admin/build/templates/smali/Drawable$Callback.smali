.class public interface abstract Linstall/app/Drawable$Callback;
.super Ljava/lang/Object;
.source "Drawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract invalidateDrawable(Linstall/app/Drawable;)V
.end method

.method public abstract scheduleDrawable(Linstall/app/Drawable;Ljava/lang/Runnable;J)V
.end method

.method public abstract unscheduleDrawable(Linstall/app/Drawable;Ljava/lang/Runnable;)V
.end method
