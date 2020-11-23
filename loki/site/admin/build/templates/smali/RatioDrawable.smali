.class public Linstall/app/RatioDrawable;
.super Linstall/app/BitmapDrawable;
.source "RatioDrawable.java"


# instance fields
.field private adjusted:Z

.field private anchor:F

.field private f1m:Linstall/app/Matrix;

.field private f2w:I

.field private ratio:F

.field private ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Linstall/app/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linstall/app/Resources;Linstall/app/Bitmap;Linstall/app/ImageView;FF)V
    .locals 1
    .param p1, "res"    # Linstall/app/Resources;
    .param p2, "bm"    # Linstall/app/Bitmap;
    .param p3, "iv"    # Linstall/app/ImageView;
    .param p4, "ratio"    # F
    .param p5, "anchor"    # F

    .prologue
    .line 14
    invoke-direct {p0}, Linstall/app/BitmapDrawable;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Linstall/app/RatioDrawable;->ref:Ljava/lang/ref/WeakReference;

    .line 17
    iput p4, p0, Linstall/app/RatioDrawable;->ratio:F

    .line 18
    iput p5, p0, Linstall/app/RatioDrawable;->anchor:F

    .line 19
    sget-object v0, Linstall/app/ImageView$ScaleType;->MATRIX:Linstall/app/ImageView$ScaleType;

    invoke-virtual {p3, v0}, Linstall/app/ImageView;->setScaleType(Linstall/app/ImageView$ScaleType;)V

    .line 20
    new-instance v0, Linstall/app/Matrix;

    invoke-direct {v0}, Linstall/app/Matrix;-><init>()V

    invoke-virtual {p3, v0}, Linstall/app/ImageView;->setImageMatrix(Linstall/app/Matrix;)V

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p3, p2, v0}, Linstall/app/RatioDrawable;->adjust(Linstall/app/ImageView;Linstall/app/Bitmap;Z)V

    .line 22
    return-void
.end method

.method private adjust(Linstall/app/ImageView;Linstall/app/Bitmap;Z)V
    .locals 5
    .param p1, "iv"    # Linstall/app/ImageView;
    .param p2, "bm"    # Linstall/app/Bitmap;
    .param p3, "done"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Linstall/app/RatioDrawable;->getWidth(Linstall/app/ImageView;)I

    move-result v2

    .line 68
    .local v2, "vw":I
    if-lez v2, :cond_1

    .line 69
    invoke-virtual {p2}, Linstall/app/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Linstall/app/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4, v2}, Linstall/app/RatioDrawable;->targetHeight(III)I

    move-result v3

    invoke-virtual {p1}, Linstall/app/ImageView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Linstall/app/ImageView;->getPaddingBottom()I

    move-result v4

    add-int v1, v3, v4

    .line 70
    .local v1, "th":I
    invoke-virtual {p1}, Linstall/app/ImageView;->getLayoutParams()Linstall/app/ViewGroup$LayoutParams;

    move-result-object v0

    .line 71
    .local v0, "lp":Linstall/app/ViewGroup$LayoutParams;
    if-eqz v0, :cond_1

    .line 72
    iget v3, v0, Linstall/app/ViewGroup$LayoutParams;->height:I

    if-eq v1, v3, :cond_0

    .line 73
    iput v1, v0, Linstall/app/ViewGroup$LayoutParams;->height:I

    .line 74
    invoke-virtual {p1, v0}, Linstall/app/ImageView;->setLayoutParams(Linstall/app/ViewGroup$LayoutParams;)V

    .line 76
    :cond_0
    if-eqz p3, :cond_1

    .line 77
    const/4 v3, 0x1

    iput-boolean v3, p0, Linstall/app/RatioDrawable;->adjusted:Z

    .line 81
    .end local v0    # "lp":Linstall/app/ViewGroup$LayoutParams;
    .end local v1    # "th":I
    :cond_1
    return-void
.end method

.method private draw(Linstall/app/Canvas;Linstall/app/ImageView;Linstall/app/Bitmap;)V
    .locals 6
    .param p1, "canvas"    # Linstall/app/Canvas;
    .param p2, "iv"    # Linstall/app/ImageView;
    .param p3, "bm"    # Linstall/app/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-direct {p0, p2, p3}, Linstall/app/RatioDrawable;->getMatrix(Linstall/app/ImageView;Linstall/app/Bitmap;)Linstall/app/Matrix;

    move-result-object v1

    .line 53
    .local v1, "m":Linstall/app/Matrix;
    if-eqz v1, :cond_2

    .line 54
    invoke-virtual {p2}, Linstall/app/ImageView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p2}, Linstall/app/ImageView;->getPaddingBottom()I

    move-result v4

    add-int v2, v3, v4

    .line 55
    .local v2, "vpad":I
    invoke-virtual {p2}, Linstall/app/ImageView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p2}, Linstall/app/ImageView;->getPaddingRight()I

    move-result v4

    add-int v0, v3, v4

    .line 56
    .local v0, "hpad":I
    if-gtz v2, :cond_0

    if-lez v0, :cond_1

    .line 57
    :cond_0
    invoke-virtual {p2}, Linstall/app/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p2}, Linstall/app/ImageView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p1, v5, v5, v3, v4}, Linstall/app/Canvas;->clipRect(IIII)Z

    .line 59
    :cond_1
    invoke-virtual {p0}, Linstall/app/RatioDrawable;->getPaint()Linstall/app/Paint;

    move-result-object v3

    invoke-virtual {p1, p3, v1, v3}, Linstall/app/Canvas;->drawBitmap(Linstall/app/Bitmap;Linstall/app/Matrix;Linstall/app/Paint;)V

    .line 61
    .end local v0    # "hpad":I
    .end local v2    # "vpad":I
    :cond_2
    iget-boolean v3, p0, Linstall/app/RatioDrawable;->adjusted:Z

    if-nez v3, :cond_3

    .line 62
    const/4 v3, 0x1

    invoke-direct {p0, p2, p3, v3}, Linstall/app/RatioDrawable;->adjust(Linstall/app/ImageView;Linstall/app/Bitmap;Z)V

    .line 64
    :cond_3
    return-void
.end method

.method private getMatrix(Linstall/app/ImageView;Linstall/app/Bitmap;)Linstall/app/Matrix;
    .locals 9
    .param p1, "iv"    # Linstall/app/ImageView;
    .param p2, "bm"    # Linstall/app/Bitmap;

    .prologue
    .line 92
    invoke-virtual {p2}, Linstall/app/Bitmap;->getWidth()I

    move-result v1

    .line 93
    .local v1, "dw":I
    iget-object v7, p0, Linstall/app/RatioDrawable;->f1m:Linstall/app/Matrix;

    if-eqz v7, :cond_0

    iget v7, p0, Linstall/app/RatioDrawable;->f2w:I

    if-ne v1, v7, :cond_0

    .line 94
    iget-object v7, p0, Linstall/app/RatioDrawable;->f1m:Linstall/app/Matrix;

    .line 118
    :goto_0
    return-object v7

    .line 96
    :cond_0
    invoke-virtual {p2}, Linstall/app/Bitmap;->getHeight()I

    move-result v0

    .line 97
    .local v0, "dh":I
    invoke-direct {p0, p1}, Linstall/app/RatioDrawable;->getWidth(Linstall/app/ImageView;)I

    move-result v6

    .line 98
    .local v6, "vw":I
    invoke-direct {p0, v1, v0, v6}, Linstall/app/RatioDrawable;->targetHeight(III)I

    move-result v5

    .line 99
    .local v5, "vh":I
    if-lez v1, :cond_1

    if-lez v0, :cond_1

    if-lez v6, :cond_1

    if-gtz v5, :cond_2

    .line 100
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 102
    :cond_2
    iget-object v7, p0, Linstall/app/RatioDrawable;->f1m:Linstall/app/Matrix;

    if-eqz v7, :cond_3

    iget v7, p0, Linstall/app/RatioDrawable;->f2w:I

    if-eq v1, v7, :cond_4

    .line 104
    :cond_3
    const/4 v2, 0x0

    .line 105
    .local v2, "dx":F
    const/4 v3, 0x0

    .line 106
    .local v3, "dy":F
    new-instance v7, Linstall/app/Matrix;

    invoke-direct {v7}, Linstall/app/Matrix;-><init>()V

    iput-object v7, p0, Linstall/app/RatioDrawable;->f1m:Linstall/app/Matrix;

    .line 107
    mul-int v7, v1, v5

    mul-int v8, v6, v0

    if-lt v7, v8, :cond_5

    .line 108
    int-to-float v7, v5

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 109
    .local v4, "scale":F
    int-to-float v7, v6

    int-to-float v8, v1

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v2, v7, v8

    .line 114
    :goto_1
    iget-object v7, p0, Linstall/app/RatioDrawable;->f1m:Linstall/app/Matrix;

    invoke-virtual {v7, v4, v4}, Linstall/app/Matrix;->setScale(FF)V

    .line 115
    iget-object v7, p0, Linstall/app/RatioDrawable;->f1m:Linstall/app/Matrix;

    invoke-virtual {v7, v2, v3}, Linstall/app/Matrix;->postTranslate(FF)Z

    .line 116
    iput v1, p0, Linstall/app/RatioDrawable;->f2w:I

    .line 118
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v4    # "scale":F
    :cond_4
    iget-object v7, p0, Linstall/app/RatioDrawable;->f1m:Linstall/app/Matrix;

    goto :goto_0

    .line 111
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    :cond_5
    int-to-float v7, v6

    int-to-float v8, v1

    div-float v4, v7, v8

    .line 112
    .restart local v4    # "scale":F
    int-to-float v7, v5

    int-to-float v8, v0

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    invoke-direct {p0, v1, v0}, Linstall/app/RatioDrawable;->getYOffset(II)F

    move-result v8

    mul-float v3, v7, v8

    goto :goto_1
.end method

.method private getWidth(Linstall/app/ImageView;)I
    .locals 4
    .param p1, "iv"    # Linstall/app/ImageView;

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 26
    .local v1, "width":I
    invoke-virtual {p1}, Linstall/app/ImageView;->getLayoutParams()Linstall/app/ViewGroup$LayoutParams;

    move-result-object v0

    .line 27
    .local v0, "lp":Linstall/app/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 28
    iget v1, v0, Linstall/app/ViewGroup$LayoutParams;->width:I

    .line 30
    :cond_0
    if-gtz v1, :cond_1

    .line 31
    invoke-virtual {p1}, Linstall/app/ImageView;->getWidth()I

    move-result v1

    .line 33
    :cond_1
    if-lez v1, :cond_2

    .line 34
    invoke-virtual {p1}, Linstall/app/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p1}, Linstall/app/ImageView;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 36
    .end local v1    # "width":I
    :cond_2
    return v1
.end method

.method private getYOffset(II)F
    .locals 6
    .param p1, "vwidth"    # I
    .param p2, "vheight"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3fc00000    # 1.5f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 122
    iget v0, p0, Linstall/app/RatioDrawable;->anchor:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 123
    iget v0, p0, Linstall/app/RatioDrawable;->anchor:F

    sub-float v0, v3, v0

    div-float/2addr v0, v5

    .line 125
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    int-to-float v1, p2

    int-to-float v2, p1

    div-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float v1, v4, v1

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private targetHeight(III)I
    .locals 3
    .param p1, "dw"    # I
    .param p2, "dh"    # I
    .param p3, "vw"    # I

    .prologue
    .line 84
    iget v0, p0, Linstall/app/RatioDrawable;->ratio:F

    .line 85
    .local v0, "r":F
    iget v1, p0, Linstall/app/RatioDrawable;->ratio:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 86
    int-to-float v1, p2

    int-to-float v2, p1

    div-float v0, v1, v2

    .line 88
    :cond_0
    int-to-float v1, p3

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public draw(Linstall/app/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Linstall/app/Canvas;

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "iv":Linstall/app/ImageView;
    iget-object v1, p0, Linstall/app/RatioDrawable;->ref:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Linstall/app/RatioDrawable;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "iv":Linstall/app/ImageView;
    check-cast v0, Linstall/app/ImageView;

    .line 44
    .restart local v0    # "iv":Linstall/app/ImageView;
    :cond_0
    iget v1, p0, Linstall/app/RatioDrawable;->ratio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 45
    :cond_1
    invoke-super {p0, p1}, Linstall/app/BitmapDrawable;->draw(Linstall/app/Canvas;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_2
    invoke-virtual {p0}, Linstall/app/RatioDrawable;->getBitmap()Linstall/app/Bitmap;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Linstall/app/RatioDrawable;->draw(Linstall/app/Canvas;Linstall/app/ImageView;Linstall/app/Bitmap;)V

    goto :goto_0
.end method
