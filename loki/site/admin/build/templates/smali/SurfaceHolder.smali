.class public interface abstract Linstall/app/SurfaceHolder;
.super Ljava/lang/Object;
.source "SurfaceHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/SurfaceHolder$BadSurfaceTypeException;,
        Linstall/app/SurfaceHolder$Callback;
    }
.end annotation


# static fields
.field public static final SURFACE_TYPE_GPU:I = 0x2

.field public static final SURFACE_TYPE_HARDWARE:I = 0x1

.field public static final SURFACE_TYPE_NORMAL:I = 0x0

.field public static final SURFACE_TYPE_PUSH_BUFFERS:I = 0x3


# virtual methods
.method public abstract addCallback(Linstall/app/SurfaceHolder$Callback;)V
.end method

.method public abstract getSurface()Landroid/view/Surface;
.end method

.method public abstract getSurfaceFrame()Linstall/app/Rect;
.end method

.method public abstract isCreating()Z
.end method

.method public abstract lockCanvas()Linstall/app/Canvas;
.end method

.method public abstract lockCanvas(Linstall/app/Rect;)Linstall/app/Canvas;
.end method

.method public abstract removeCallback(Linstall/app/SurfaceHolder$Callback;)V
.end method

.method public abstract setFixedSize(II)V
.end method

.method public abstract setFormat(I)V
.end method

.method public abstract setKeepScreenOn(Z)V
.end method

.method public abstract setSizeFromLayout()V
.end method

.method public abstract setType(I)V
.end method

.method public abstract unlockCanvasAndPost(Linstall/app/Canvas;)V
.end method
