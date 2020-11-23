.class public Linstall/app/PixelFormat;
.super Ljava/lang/Object;
.source "PixelFormat.java"


# static fields
.field public static final A_8:I = 0x8

.field public static final JPEG:I = 0x100

.field public static final LA_88:I = 0xa

.field public static final L_8:I = 0x9

.field public static final OPAQUE:I = -0x1

.field public static final RGBA_4444:I = 0x7

.field public static final RGBA_5551:I = 0x6

.field public static final RGBA_8888:I = 0x1

.field public static final RGBX_8888:I = 0x2

.field public static final RGB_332:I = 0xb

.field public static final RGB_565:I = 0x4

.field public static final RGB_888:I = 0x3

.field public static final TRANSLUCENT:I = -0x3

.field public static final TRANSPARENT:I = -0x2

.field public static final UNKNOWN:I = 0x0

.field public static final YCbCr_420_SP:I = 0x11

.field public static final YCbCr_422_SP:I = 0x10


# instance fields
.field public bitsPerPixel:I

.field public bytesPerPixel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static formatHasAlpha(I)Z
    .locals 2
    .param p0, "format"    # I

    .prologue
    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native getPixelFormatInfo(ILinstall/app/PixelFormat;)V
.end method
