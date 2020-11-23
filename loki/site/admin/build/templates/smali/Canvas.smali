.class public Linstall/app/Canvas;
.super Ljava/lang/Object;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/Canvas$VertexMode;,
        Linstall/app/Canvas$EdgeType;
    }
.end annotation


# static fields
.field public static final ALL_SAVE_FLAG:I = 0x1f

.field public static final CLIP_SAVE_FLAG:I = 0x2

.field public static final CLIP_TO_LAYER_SAVE_FLAG:I = 0x10

.field public static final FULL_COLOR_LAYER_SAVE_FLAG:I = 0x8

.field public static final HAS_ALPHA_LAYER_SAVE_FLAG:I = 0x4

.field public static final MATRIX_SAVE_FLAG:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Linstall/app/Bitmap;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native freeGlCaches()V
.end method


# virtual methods
.method public clipPath(Linstall/app/Path;)Z
    .locals 2
    .param p1, "path"    # Linstall/app/Path;

    .prologue
    .line 150
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clipPath(Linstall/app/Path;Linstall/app/Region$Op;)Z
    .locals 2
    .param p1, "path"    # Linstall/app/Path;
    .param p2, "op"    # Linstall/app/Region$Op;

    .prologue
    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native clipRect(FFFF)Z
.end method

.method public clipRect(FFFFLinstall/app/Region$Op;)Z
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "op"    # Linstall/app/Region$Op;

    .prologue
    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native clipRect(IIII)Z
.end method

.method public native clipRect(Linstall/app/Rect;)Z
.end method

.method public clipRect(Linstall/app/Rect;Linstall/app/Region$Op;)Z
    .locals 2
    .param p1, "rect"    # Linstall/app/Rect;
    .param p2, "op"    # Linstall/app/Region$Op;

    .prologue
    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native clipRect(Linstall/app/RectF;)Z
.end method

.method public clipRect(Linstall/app/RectF;Linstall/app/Region$Op;)Z
    .locals 2
    .param p1, "rect"    # Linstall/app/RectF;
    .param p2, "op"    # Linstall/app/Region$Op;

    .prologue
    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clipRegion(Linstall/app/Region;)Z
    .locals 2
    .param p1, "region"    # Linstall/app/Region;

    .prologue
    .line 158
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clipRegion(Linstall/app/Region;Linstall/app/Region$Op;)Z
    .locals 2
    .param p1, "region"    # Linstall/app/Region;
    .param p2, "op"    # Linstall/app/Region$Op;

    .prologue
    .line 154
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public concat(Linstall/app/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Linstall/app/Matrix;

    .prologue
    .line 118
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawARGB(IIII)V
    .locals 2
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .prologue
    .line 194
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawArc(Linstall/app/RectF;FFZLinstall/app/Paint;)V
    .locals 2
    .param p1, "oval"    # Linstall/app/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "useCenter"    # Z
    .param p5, "paint"    # Linstall/app/Paint;

    .prologue
    .line 242
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawBitmap(Linstall/app/Bitmap;FFLinstall/app/Paint;)V
    .locals 2
    .param p1, "bitmap"    # Linstall/app/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Linstall/app/Paint;

    .prologue
    .line 254
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawBitmap(Linstall/app/Bitmap;Linstall/app/Matrix;Linstall/app/Paint;)V
    .locals 2
    .param p1, "bitmap"    # Linstall/app/Bitmap;
    .param p2, "matrix"    # Linstall/app/Matrix;
    .param p3, "paint"    # Linstall/app/Paint;

    .prologue
    .line 274
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawBitmap(Linstall/app/Bitmap;Linstall/app/Rect;Linstall/app/Rect;Linstall/app/Paint;)V
    .locals 2
    .param p1, "bitmap"    # Linstall/app/Bitmap;
    .param p2, "src"    # Linstall/app/Rect;
    .param p3, "dst"    # Linstall/app/Rect;
    .param p4, "paint"    # Linstall/app/Paint;

    .prologue
    .line 262
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawBitmap(Linstall/app/Bitmap;Linstall/app/Rect;Linstall/app/RectF;Linstall/app/Paint;)V
    .locals 2
    .param p1, "bitmap"    # Linstall/app/Bitmap;
    .param p2, "src"    # Linstall/app/Rect;
    .param p3, "dst"    # Linstall/app/RectF;
    .param p4, "paint"    # Linstall/app/Paint;

    .prologue
    .line 258
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawBitmap([IIIFFIIZLinstall/app/Paint;)V
    .locals 2
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Linstall/app/Paint;

    .prologue
    .line 266
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawBitmap([IIIIIIIZLinstall/app/Paint;)V
    .locals 2
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Linstall/app/Paint;

    .prologue
    .line 270
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawBitmapMesh(Linstall/app/Bitmap;II[FI[IILinstall/app/Paint;)V
    .locals 2
    .param p1, "bitmap"    # Linstall/app/Bitmap;
    .param p2, "meshWidth"    # I
    .param p3, "meshHeight"    # I
    .param p4, "verts"    # [F
    .param p5, "vertOffset"    # I
    .param p6, "colors"    # [I
    .param p7, "colorOffset"    # I
    .param p8, "paint"    # Linstall/app/Paint;

    .prologue
    .line 278
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawCircle(FFFLinstall/app/Paint;)V
    .locals 2
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "radius"    # F
    .param p4, "paint"    # Linstall/app/Paint;

    .prologue
    .line 238
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 198
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawColor(ILinstall/app/PorterDuff$Mode;)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "mode"    # Linstall/app/PorterDuff$Mode;

    .prologue
    .line 202
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawLine(FFFFLinstall/app/Paint;)V
    .locals 2
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "stopX"    # F
    .param p4, "stopY"    # F
    .param p5, "paint"    # Linstall/app/Paint;

    .prologue
    .line 214
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native drawLines([FIILinstall/app/Paint;)V
.end method

.method public drawLines([FLinstall/app/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Linstall/app/Paint;

    .prologue
    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawOval(Linstall/app/RectF;Linstall/app/Paint;)V
    .locals 2
    .param p1, "oval"    # Linstall/app/RectF;
    .param p2, "paint"    # Linstall/app/Paint;

    .prologue
    .line 234
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawPaint(Linstall/app/Paint;)V
    .locals 2
    .param p1, "paint"    # Linstall/app/Paint;

    .prologue
    .line 206
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawPath(Linstall/app/Path;Linstall/app/Paint;)V
    .locals 2
    .param p1, "path"    # Linstall/app/Path;
    .param p2, "paint"    # Linstall/app/Paint;

    .prologue
    .line 250
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawPicture(Linstall/app/Picture;)V
    .locals 2
    .param p1, "picture"    # Linstall/app/Picture;

    .prologue
    .line 314
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawPicture(Linstall/app/Picture;Linstall/app/Rect;)V
    .locals 2
    .param p1, "picture"    # Linstall/app/Picture;
    .param p2, "dst"    # Linstall/app/Rect;

    .prologue
    .line 322
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawPicture(Linstall/app/Picture;Linstall/app/RectF;)V
    .locals 2
    .param p1, "picture"    # Linstall/app/Picture;
    .param p2, "dst"    # Linstall/app/RectF;

    .prologue
    .line 318
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native drawPoint(FFLinstall/app/Paint;)V
.end method

.method public native drawPoints([FIILinstall/app/Paint;)V
.end method

.method public drawPoints([FLinstall/app/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Linstall/app/Paint;

    .prologue
    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawPosText(Ljava/lang/String;[FLinstall/app/Paint;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # [F
    .param p3, "paint"    # Linstall/app/Paint;

    .prologue
    .line 302
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawPosText([CII[FLinstall/app/Paint;)V
    .locals 2
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "pos"    # [F
    .param p5, "paint"    # Linstall/app/Paint;

    .prologue
    .line 298
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawRGB(III)V
    .locals 2
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 190
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawRect(FFFFLinstall/app/Paint;)V
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Linstall/app/Paint;

    .prologue
    .line 230
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawRect(Linstall/app/Rect;Linstall/app/Paint;)V
    .locals 2
    .param p1, "r"    # Linstall/app/Rect;
    .param p2, "paint"    # Linstall/app/Paint;

    .prologue
    .line 226
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawRect(Linstall/app/RectF;Linstall/app/Paint;)V
    .locals 2
    .param p1, "rect"    # Linstall/app/RectF;
    .param p2, "paint"    # Linstall/app/Paint;

    .prologue
    .line 222
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawRoundRect(Linstall/app/RectF;FFLinstall/app/Paint;)V
    .locals 2
    .param p1, "rect"    # Linstall/app/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "paint"    # Linstall/app/Paint;

    .prologue
    .line 246
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLinstall/app/Paint;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Linstall/app/Paint;

    .prologue
    .line 294
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native drawText(Ljava/lang/String;FFLinstall/app/Paint;)V
.end method

.method public drawText(Ljava/lang/String;IIFFLinstall/app/Paint;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Linstall/app/Paint;

    .prologue
    .line 290
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawText([CIIFFLinstall/app/Paint;)V
    .locals 2
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Linstall/app/Paint;

    .prologue
    .line 286
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawTextOnPath(Ljava/lang/String;Linstall/app/Path;FFLinstall/app/Paint;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Linstall/app/Path;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F
    .param p5, "paint"    # Linstall/app/Paint;

    .prologue
    .line 310
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawTextOnPath([CIILinstall/app/Path;FFLinstall/app/Paint;)V
    .locals 2
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "path"    # Linstall/app/Path;
    .param p5, "hOffset"    # F
    .param p6, "vOffset"    # F
    .param p7, "paint"    # Linstall/app/Paint;

    .prologue
    .line 306
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawVertices(Linstall/app/Canvas$VertexMode;I[FI[FI[II[SIILinstall/app/Paint;)V
    .locals 2
    .param p1, "mode"    # Linstall/app/Canvas$VertexMode;
    .param p2, "vertexCount"    # I
    .param p3, "verts"    # [F
    .param p4, "vertOffset"    # I
    .param p5, "texs"    # [F
    .param p6, "texOffset"    # I
    .param p7, "colors"    # [I
    .param p8, "colorOffset"    # I
    .param p9, "indices"    # [S
    .param p10, "indexOffset"    # I
    .param p11, "indexCount"    # I
    .param p12, "paint"    # Linstall/app/Paint;

    .prologue
    .line 282
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
    .line 326
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getClipBounds()Linstall/app/Rect;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClipBounds(Linstall/app/Rect;)Z
    .locals 2
    .param p1, "bounds"    # Linstall/app/Rect;

    .prologue
    .line 182
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDrawFilter()Linstall/app/DrawFilter;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native getHeight()I
.end method

.method public final getMatrix()Linstall/app/Matrix;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMatrix(Linstall/app/Matrix;)V
    .locals 2
    .param p1, "ctm"    # Linstall/app/Matrix;

    .prologue
    .line 126
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native getSaveCount()I
.end method

.method public native getWidth()I
.end method

.method public native isOpaque()Z
.end method

.method public quickReject(FFFFLinstall/app/Canvas$EdgeType;)Z
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "type"    # Linstall/app/Canvas$EdgeType;

    .prologue
    .line 178
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public quickReject(Linstall/app/Path;Linstall/app/Canvas$EdgeType;)Z
    .locals 2
    .param p1, "path"    # Linstall/app/Path;
    .param p2, "type"    # Linstall/app/Canvas$EdgeType;

    .prologue
    .line 174
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public quickReject(Linstall/app/RectF;Linstall/app/Canvas$EdgeType;)Z
    .locals 2
    .param p1, "rect"    # Linstall/app/RectF;
    .param p2, "type"    # Linstall/app/Canvas$EdgeType;

    .prologue
    .line 170
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native restore()V
.end method

.method public native restoreToCount(I)V
.end method

.method public native rotate(F)V
.end method

.method public final rotate(FFF)V
    .locals 2
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native save()I
.end method

.method public native save(I)I
.end method

.method public saveLayer(FFFFLinstall/app/Paint;I)I
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Linstall/app/Paint;
    .param p6, "saveFlags"    # I

    .prologue
    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveLayer(Linstall/app/RectF;Linstall/app/Paint;I)I
    .locals 2
    .param p1, "bounds"    # Linstall/app/RectF;
    .param p2, "paint"    # Linstall/app/Paint;
    .param p3, "saveFlags"    # I

    .prologue
    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveLayerAlpha(FFFFII)I
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "alpha"    # I
    .param p6, "saveFlags"    # I

    .prologue
    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveLayerAlpha(Linstall/app/RectF;II)I
    .locals 2
    .param p1, "bounds"    # Linstall/app/RectF;
    .param p2, "alpha"    # I
    .param p3, "saveFlags"    # I

    .prologue
    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native scale(FF)V
.end method

.method public final scale(FFFF)V
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBitmap(Linstall/app/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Linstall/app/Bitmap;

    .prologue
    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDrawFilter(Linstall/app/DrawFilter;)V
    .locals 2
    .param p1, "filter"    # Linstall/app/DrawFilter;

    .prologue
    .line 166
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMatrix(Linstall/app/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Linstall/app/Matrix;

    .prologue
    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setViewport(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native skew(FF)V
.end method

.method public native translate(FF)V
.end method
