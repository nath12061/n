.class public Linstall/app/Surface;
.super Ljava/lang/Object;
.source "Surface.java"

# interfaces
.implements Linstall/app/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/Surface$OutOfResourcesException;
    }
.end annotation


# static fields
.field public static final CREATOR:Linstall/app/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/Parcelable$Creator",
            "<",
            "Linstall/app/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public static final FX_SURFACE_BLUR:I = 0x10000

.field public static final FX_SURFACE_DIM:I = 0x20000

.field public static final FX_SURFACE_MASK:I = 0xf0000

.field public static final FX_SURFACE_NORMAL:I = 0x0

.field public static final GPU:I = 0x28

.field public static final HARDWARE:I = 0x10

.field public static final HIDDEN:I = 0x4

.field public static final NON_PREMULTIPLIED:I = 0x100

.field public static final PUSH_BUFFERS:I = 0x200

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1

.field public static final SECURE:I = 0x80

.field public static final SURACE_FROZEN:I = 0x2

.field public static final SURFACE_BLUR_FREEZE:I = 0x10

.field public static final SURFACE_DITHER:I = 0x4

.field public static final SURFACE_HIDDEN:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput-object v0, Linstall/app/Surface;->CREATOR:Linstall/app/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setOrientation(II)V
    .locals 2
    .param p0, "display"    # I
    .param p1, "orientation"    # I

    .prologue
    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native freeze()V
.end method

.method public native hide()V
.end method

.method public native isValid()Z
.end method

.method public lockCanvas(Linstall/app/Rect;)Linstall/app/Canvas;
    .locals 2
    .param p1, "dirty"    # Linstall/app/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native readFromParcel(Linstall/app/Parcel;)V
.end method

.method public native setAlpha(F)V
.end method

.method public native setFlags(II)V
.end method

.method public native setFreezeTint(I)V
.end method

.method public native setLayer(I)V
.end method

.method public native setMatrix(FFFF)V
.end method

.method public native setPosition(II)V
.end method

.method public native setSize(II)V
.end method

.method public native setTransparentRegionHint(Linstall/app/Region;)V
.end method

.method public native show()V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native unfreeze()V
.end method

.method public native unlockCanvas(Linstall/app/Canvas;)V
.end method

.method public native unlockCanvasAndPost(Linstall/app/Canvas;)V
.end method

.method public native writeToParcel(Linstall/app/Parcel;I)V
.end method
