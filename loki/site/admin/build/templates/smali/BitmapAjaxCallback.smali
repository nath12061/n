.class public abstract Linstall/app/BitmapAjaxCallback;
.super Linstall/app/AbstractAjaxCallback;
.source "BitmapAjaxCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/AbstractAjaxCallback",
        "<",
        "Linstall/app/Bitmap;",
        "Linstall/app/BitmapAjaxCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static BIG_MAX:I = 0x0

.field private static BIG_PIXELS:I = 0x0

.field private static BIG_TPIXELS:I = 0x0

.field private static final FADE_DUR:I = 0x12c

.field private static SMALL_MAX:I

.field private static SMALL_PIXELS:I

.field private static bigCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Linstall/app/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static invalidCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Linstall/app/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static queueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/WeakHashMap",
            "<",
            "Linstall/app/ImageView;",
            "Linstall/app/BitmapAjaxCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private static smallCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Linstall/app/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anchor:F

.field private animation:I

.field private bm:Linstall/app/Bitmap;

.field private f0v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Linstall/app/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private fallback:I

.field private imageFile:Ljava/io/File;

.field private invalid:Z

.field private preset:Linstall/app/Bitmap;

.field private ratio:F

.field private round:I

.field private targetDim:Z

.field private targetWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 14
    sput v1, Linstall/app/BitmapAjaxCallback;->BIG_MAX:I

    .line 15
    const v0, 0x27100

    sput v0, Linstall/app/BitmapAjaxCallback;->BIG_PIXELS:I

    .line 16
    const v0, 0xf4240

    sput v0, Linstall/app/BitmapAjaxCallback;->BIG_TPIXELS:I

    .line 18
    sput v1, Linstall/app/BitmapAjaxCallback;->SMALL_MAX:I

    .line 19
    const/16 v0, 0x9c4

    sput v0, Linstall/app/BitmapAjaxCallback;->SMALL_PIXELS:I

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Linstall/app/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Linstall/app/AbstractAjaxCallback;-><init>()V

    .line 25
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Linstall/app/BitmapAjaxCallback;->anchor:F

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Linstall/app/BitmapAjaxCallback;->targetDim:Z

    .line 40
    return-void
.end method

.method private addQueue(Ljava/lang/String;Linstall/app/ImageView;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "iv"    # Linstall/app/ImageView;

    .prologue
    .line 376
    sget-object v1, Linstall/app/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    .line 377
    .local v0, "ivs":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Linstall/app/ImageView;Linstall/app/BitmapAjaxCallback;>;"
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :goto_0
    return-void

    .line 379
    :cond_0
    sget-object v1, Linstall/app/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    new-instance v0, Ljava/util/WeakHashMap;

    .end local v0    # "ivs":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Linstall/app/ImageView;Linstall/app/BitmapAjaxCallback;>;"
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 381
    .restart local v0    # "ivs":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Linstall/app/ImageView;Linstall/app/BitmapAjaxCallback;>;"
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v1, Linstall/app/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 384
    :cond_1
    sget-object v1, Linstall/app/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static async(Linstall/app/Activity;Linstall/app/Context;Linstall/app/ImageView;Ljava/lang/String;ZZIILinstall/app/Bitmap;IFFLjava/lang/Object;Linstall/app/AccountHandle;II)V
    .locals 9
    .param p0, "act"    # Linstall/app/Activity;
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "iv"    # Linstall/app/ImageView;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "memCache"    # Z
    .param p5, "fileCache"    # Z
    .param p6, "targetWidth"    # I
    .param p7, "fallbackId"    # I
    .param p8, "preset"    # Linstall/app/Bitmap;
    .param p9, "animation"    # I
    .param p10, "ratio"    # F
    .param p11, "anchor"    # F
    .param p12, "progress"    # Ljava/lang/Object;
    .param p13, "ah"    # Linstall/app/AccountHandle;
    .param p14, "policy"    # I
    .param p15, "round"    # I

    .prologue
    .line 362
    const/4 v2, 0x0

    .line 363
    .local v2, "bm":Linstall/app/Bitmap;
    if-eqz p4, :cond_0

    .line 364
    move/from16 v0, p15

    invoke-static {p3, p6, v0}, Linstall/app/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Linstall/app/Bitmap;

    move-result-object v2

    .line 366
    :cond_0
    if-eqz v2, :cond_1

    .line 368
    const/4 v8, 0x4

    move-object v1, p2

    move-object/from16 v3, p8

    move/from16 v4, p7

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    invoke-static/range {v1 .. v8}, Linstall/app/BitmapAjaxCallback;->setBmAnimate(Linstall/app/ImageView;Linstall/app/Bitmap;Linstall/app/Bitmap;IIFFI)V

    .line 372
    :cond_1
    return-void
.end method

.method private checkCb(Linstall/app/BitmapAjaxCallback;Ljava/lang/String;Linstall/app/ImageView;Linstall/app/Bitmap;Linstall/app/AjaxStatus;)V
    .locals 0
    .param p1, "cb"    # Linstall/app/BitmapAjaxCallback;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "v"    # Linstall/app/ImageView;
    .param p4, "bm"    # Linstall/app/Bitmap;
    .param p5, "status"    # Linstall/app/AjaxStatus;

    .prologue
    .line 160
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 192
    sput-object v0, Linstall/app/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    .line 193
    sput-object v0, Linstall/app/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    .line 194
    sput-object v0, Linstall/app/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    .line 195
    return-void
.end method

.method protected static clearTasks()V
    .locals 1

    .prologue
    .line 198
    sget-object v0, Linstall/app/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 199
    return-void
.end method

.method private static fadeIn(II)Z
    .locals 2
    .param p0, "animation"    # I
    .param p1, "source"    # I

    .prologue
    const/4 v0, 0x1

    .line 344
    packed-switch p0, :pswitch_data_0

    .line 355
    :cond_0
    :pswitch_0
    if-ne p1, v0, :cond_1

    .line 358
    :goto_0
    :pswitch_1
    return v0

    .line 346
    :pswitch_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 358
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static filter(Linstall/app/View;Linstall/app/Bitmap;I)Linstall/app/Bitmap;
    .locals 1
    .param p0, "iv"    # Linstall/app/View;
    .param p1, "bm"    # Linstall/app/Bitmap;
    .param p2, "fallback"    # I

    .prologue
    .line 282
    if-eqz p1, :cond_1

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linstall/app/View;->setVisibility(I)V

    .line 289
    :cond_0
    :goto_0
    return-object p1

    .line 284
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    .line 285
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Linstall/app/View;->setVisibility(I)V

    goto :goto_0

    .line 286
    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 287
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Linstall/app/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private static getBCache()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Linstall/app/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    sget-object v0, Linstall/app/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Linstall/app/BitmapCache;

    sget v1, Linstall/app/BitmapAjaxCallback;->BIG_MAX:I

    sget v2, Linstall/app/BitmapAjaxCallback;->BIG_PIXELS:I

    sget v3, Linstall/app/BitmapAjaxCallback;->BIG_TPIXELS:I

    invoke-direct {v0, v1, v2, v3}, Linstall/app/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Linstall/app/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    .line 205
    :cond_0
    sget-object v0, Linstall/app/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    return-object v0
.end method

.method private getFallback()Linstall/app/Bitmap;
    .locals 5

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "bm":Linstall/app/Bitmap;
    iget-object v3, p0, Linstall/app/BitmapAjaxCallback;->f0v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linstall/app/View;

    .line 117
    .local v2, "view":Linstall/app/View;
    if-eqz v2, :cond_0

    .line 118
    iget v3, p0, Linstall/app/BitmapAjaxCallback;->fallback:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Linstall/app/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Linstall/app/Bitmap;

    move-result-object v0

    .line 120
    if-nez v0, :cond_0

    .line 121
    invoke-virtual {v2}, Linstall/app/View;->getResources()Linstall/app/Resources;

    move-result-object v3

    iget v4, p0, Linstall/app/BitmapAjaxCallback;->fallback:I

    invoke-static {v3, v4}, Linstall/app/BitmapFactory;->decodeResource(Linstall/app/Resources;I)Linstall/app/Bitmap;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0, v1, v0}, Linstall/app/BitmapAjaxCallback;->memPut(Ljava/lang/String;Linstall/app/Bitmap;)V

    .line 127
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getICache()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Linstall/app/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    sget-object v0, Linstall/app/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Linstall/app/BitmapCache;

    const/16 v1, 0x64

    sget v2, Linstall/app/BitmapAjaxCallback;->BIG_PIXELS:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Linstall/app/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Linstall/app/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    .line 219
    :cond_0
    sget-object v0, Linstall/app/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    return-object v0
.end method

.method private static getKey(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I
    .param p2, "round"    # I

    .prologue
    .line 252
    if-lez p1, :cond_0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 255
    :cond_0
    if-lez p2, :cond_1

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 258
    .end local p0    # "url":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public static getMemoryCached(Linstall/app/Context;I)Linstall/app/Bitmap;
    .locals 3
    .param p0, "context"    # Linstall/app/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1, v2, v2}, Linstall/app/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Linstall/app/Bitmap;

    move-result-object v0

    .line 133
    .local v0, "bm":Linstall/app/Bitmap;
    if-nez v0, :cond_0

    .line 135
    if-eqz v0, :cond_0

    .line 136
    invoke-static {v1, v2, v2, v0, v2}, Linstall/app/BitmapAjaxCallback;->memPut(Ljava/lang/String;IILinstall/app/Bitmap;Z)V

    .line 139
    :cond_0
    return-object v0
.end method

.method public static getMemoryCached(Ljava/lang/String;I)Linstall/app/Bitmap;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Linstall/app/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Linstall/app/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getRoundedCornerBitmap(Linstall/app/Bitmap;I)Linstall/app/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Linstall/app/Bitmap;
    .param p1, "pixels"    # I

    .prologue
    const/4 v6, 0x0

    .line 389
    new-instance v0, Linstall/app/Paint;

    invoke-direct {v0}, Linstall/app/Paint;-><init>()V

    .line 390
    .local v0, "paint":Linstall/app/Paint;
    new-instance v1, Linstall/app/Rect;

    invoke-virtual {p0}, Linstall/app/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Linstall/app/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v1, v6, v6, v4, v5}, Linstall/app/Rect;-><init>(IIII)V

    .line 391
    .local v1, "rect":Linstall/app/Rect;
    new-instance v2, Linstall/app/RectF;

    invoke-direct {v2, v1}, Linstall/app/RectF;-><init>(Linstall/app/Rect;)V

    .line 392
    .local v2, "rectF":Linstall/app/RectF;
    int-to-float v3, p1

    .line 393
    .local v3, "roundPx":F
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Linstall/app/Paint;->setAntiAlias(Z)V

    .line 395
    new-instance v4, Linstall/app/PorterDuffXfermode;

    sget-object v5, Linstall/app/PorterDuff$Mode;->SRC_IN:Linstall/app/PorterDuff$Mode;

    invoke-direct {v4, v5}, Linstall/app/PorterDuffXfermode;-><init>(Linstall/app/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Linstall/app/Paint;->setXfermode(Linstall/app/Xfermode;)Linstall/app/Xfermode;

    .line 396
    const/4 v4, 0x0

    return-object v4
.end method

.method private static getSCache()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Linstall/app/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    sget-object v0, Linstall/app/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Linstall/app/BitmapCache;

    sget v1, Linstall/app/BitmapAjaxCallback;->SMALL_MAX:I

    sget v2, Linstall/app/BitmapAjaxCallback;->SMALL_PIXELS:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Linstall/app/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Linstall/app/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    .line 212
    :cond_0
    sget-object v0, Linstall/app/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    return-object v0
.end method

.method private static makeDrawable(Linstall/app/ImageView;Linstall/app/Bitmap;FF)Linstall/app/Drawable;
    .locals 6
    .param p0, "iv"    # Linstall/app/ImageView;
    .param p1, "bm"    # Linstall/app/Bitmap;
    .param p2, "ratio"    # F
    .param p3, "anchor"    # F

    .prologue
    .line 307
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 308
    new-instance v0, Linstall/app/RatioDrawable;

    invoke-virtual {p0}, Linstall/app/ImageView;->getResources()Linstall/app/Resources;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Linstall/app/RatioDrawable;-><init>(Linstall/app/Resources;Linstall/app/Bitmap;Linstall/app/ImageView;FF)V

    .line 311
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static memGet(Ljava/lang/String;II)Linstall/app/Bitmap;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I
    .param p2, "round"    # I

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-static {p0, p1, p2}, Linstall/app/BitmapAjaxCallback;->getKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 238
    invoke-static {}, Linstall/app/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/Bitmap;

    .line 239
    .local v0, "result":Linstall/app/Bitmap;
    if-nez v0, :cond_0

    .line 240
    invoke-static {}, Linstall/app/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Linstall/app/Bitmap;
    check-cast v0, Linstall/app/Bitmap;

    .line 242
    .restart local v0    # "result":Linstall/app/Bitmap;
    :cond_0
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 248
    :goto_0
    return-object v1

    .line 245
    :cond_1
    invoke-static {}, Linstall/app/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Linstall/app/Bitmap;
    check-cast v0, Linstall/app/Bitmap;

    .line 247
    .restart local v0    # "result":Linstall/app/Bitmap;
    sput-object v1, Linstall/app/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    goto :goto_0
.end method

.method private static memPut(Ljava/lang/String;IILinstall/app/Bitmap;Z)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I
    .param p2, "round"    # I
    .param p3, "bm"    # Linstall/app/Bitmap;
    .param p4, "invalid"    # Z

    .prologue
    .line 262
    if-eqz p3, :cond_0

    .line 264
    invoke-virtual {p3}, Linstall/app/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Linstall/app/Bitmap;->getHeight()I

    move-result v3

    mul-int v1, v2, v3

    .line 265
    .local v1, "pixels":I
    if-eqz p4, :cond_1

    .line 266
    invoke-static {}, Linstall/app/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object v0

    .line 272
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Linstall/app/Bitmap;>;"
    :goto_0
    invoke-static {p0, p1, p2}, Linstall/app/BitmapAjaxCallback;->getKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .end local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Linstall/app/Bitmap;>;"
    .end local v1    # "pixels":I
    :cond_0
    return-void

    .line 267
    .restart local v1    # "pixels":I
    :cond_1
    sget v2, Linstall/app/BitmapAjaxCallback;->SMALL_PIXELS:I

    if-gt v1, v2, :cond_2

    .line 268
    invoke-static {}, Linstall/app/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object v0

    .restart local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Linstall/app/Bitmap;>;"
    goto :goto_0

    .line 270
    .end local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Linstall/app/Bitmap;>;"
    :cond_2
    invoke-static {}, Linstall/app/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object v0

    .restart local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Linstall/app/Bitmap;>;"
    goto :goto_0
.end method

.method private presetBitmap(Ljava/lang/String;Linstall/app/ImageView;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "v"    # Linstall/app/ImageView;

    .prologue
    .line 294
    return-void
.end method

.method private static sampleSize(II)I
    .locals 3
    .param p0, "width"    # I
    .param p1, "target"    # I

    .prologue
    .line 95
    const/4 v1, 0x1

    .line 96
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, p1, 0x2

    if-lt p0, v2, :cond_0

    .line 97
    div-int/lit8 p0, p0, 0x2

    .line 98
    mul-int/lit8 v1, v1, 0x2

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return v1
.end method

.method private setBitmap(Ljava/lang/String;Linstall/app/ImageView;Linstall/app/Bitmap;Z)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "iv"    # Linstall/app/ImageView;
    .param p3, "bm"    # Linstall/app/Bitmap;
    .param p4, "isPreset"    # Z

    .prologue
    .line 297
    if-nez p3, :cond_1

    .line 298
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Linstall/app/ImageView;->setImageDrawable(Linstall/app/Drawable;)V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    if-eqz p4, :cond_2

    .line 300
    iget v0, p0, Linstall/app/BitmapAjaxCallback;->ratio:F

    iget v1, p0, Linstall/app/BitmapAjaxCallback;->anchor:F

    invoke-static {p2, p3, v0, v1}, Linstall/app/BitmapAjaxCallback;->makeDrawable(Linstall/app/ImageView;Linstall/app/Bitmap;FF)Linstall/app/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Linstall/app/ImageView;->setImageDrawable(Linstall/app/Drawable;)V

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Linstall/app/BitmapAjaxCallback;->status:Linstall/app/AjaxStatus;

    if-eqz v0, :cond_0

    .line 302
    iget-object v2, p0, Linstall/app/BitmapAjaxCallback;->preset:Linstall/app/Bitmap;

    iget v3, p0, Linstall/app/BitmapAjaxCallback;->fallback:I

    iget v4, p0, Linstall/app/BitmapAjaxCallback;->animation:I

    iget v5, p0, Linstall/app/BitmapAjaxCallback;->ratio:F

    iget v6, p0, Linstall/app/BitmapAjaxCallback;->anchor:F

    iget-object v0, p0, Linstall/app/BitmapAjaxCallback;->status:Linstall/app/AjaxStatus;

    invoke-virtual {v0}, Linstall/app/AjaxStatus;->getSource()I

    move-result v7

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v7}, Linstall/app/BitmapAjaxCallback;->setBmAnimate(Linstall/app/ImageView;Linstall/app/Bitmap;Linstall/app/Bitmap;IIFFI)V

    goto :goto_0
.end method

.method private static setBmAnimate(Linstall/app/ImageView;Linstall/app/Bitmap;Linstall/app/Bitmap;IIFFI)V
    .locals 7
    .param p0, "iv"    # Linstall/app/ImageView;
    .param p1, "bm"    # Linstall/app/Bitmap;
    .param p2, "preset"    # Linstall/app/Bitmap;
    .param p3, "fallback"    # I
    .param p4, "animation"    # I
    .param p5, "ratio"    # F
    .param p6, "anchor"    # F
    .param p7, "source"    # I

    .prologue
    const/4 v6, 0x0

    .line 315
    invoke-static {p0, p1, p3}, Linstall/app/BitmapAjaxCallback;->filter(Linstall/app/View;Linstall/app/Bitmap;I)Linstall/app/Bitmap;

    move-result-object p1

    .line 316
    if-nez p1, :cond_0

    .line 317
    invoke-virtual {p0, v6}, Linstall/app/ImageView;->setImageBitmap(Linstall/app/Bitmap;)V

    .line 341
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-static {p0, p1, p5, p6}, Linstall/app/BitmapAjaxCallback;->makeDrawable(Linstall/app/ImageView;Linstall/app/Bitmap;FF)Linstall/app/Drawable;

    move-result-object v1

    .line 321
    .local v1, "d":Linstall/app/Drawable;
    const/4 v0, 0x0

    .line 322
    .local v0, "anim":Linstall/app/Animation;
    invoke-static {p4, p7}, Linstall/app/BitmapAjaxCallback;->fadeIn(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 323
    if-nez p2, :cond_2

    .line 324
    new-instance v0, Linstall/app/AlphaAnimation;

    .end local v0    # "anim":Linstall/app/Animation;
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Linstall/app/AlphaAnimation;-><init>(FF)V

    .line 325
    .restart local v0    # "anim":Linstall/app/Animation;
    new-instance v3, Linstall/app/DecelerateInterpolator;

    invoke-direct {v3}, Linstall/app/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Linstall/app/Animation;->setInterpolator(Linstall/app/Interpolators;)V

    .line 326
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Linstall/app/Animation;->setDuration(J)V

    .line 335
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Linstall/app/ImageView;->setImageDrawable(Linstall/app/Drawable;)V

    .line 336
    if-eqz v0, :cond_4

    .line 337
    invoke-static {}, Linstall/app/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Linstall/app/Animation;->setStartTime(J)V

    goto :goto_0

    .line 328
    :cond_2
    new-instance v2, Linstall/app/TransitionDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Linstall/app/Drawable;

    const/4 v4, 0x0

    invoke-static {p0, p2, p5, p6}, Linstall/app/BitmapAjaxCallback;->makeDrawable(Linstall/app/ImageView;Linstall/app/Bitmap;FF)Linstall/app/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Linstall/app/TransitionDrawable;-><init>([Linstall/app/Drawable;)V

    .line 331
    .local v2, "td":Linstall/app/Drawable;
    move-object v1, v2

    .line 332
    goto :goto_1

    .line 333
    .end local v2    # "td":Linstall/app/Drawable;
    :cond_3
    if-lez p4, :cond_1

    goto :goto_1

    .line 340
    :cond_4
    invoke-virtual {p0, v6}, Linstall/app/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static setCacheLimit(I)V
    .locals 0
    .param p0, "limit"    # I

    .prologue
    .line 172
    sput p0, Linstall/app/BitmapAjaxCallback;->BIG_MAX:I

    .line 173
    invoke-static {}, Linstall/app/BitmapAjaxCallback;->clearCache()V

    .line 174
    return-void
.end method

.method public static setIconCacheLimit(I)V
    .locals 0
    .param p0, "limit"    # I

    .prologue
    .line 167
    sput p0, Linstall/app/BitmapAjaxCallback;->SMALL_MAX:I

    .line 168
    invoke-static {}, Linstall/app/BitmapAjaxCallback;->clearCache()V

    .line 169
    return-void
.end method

.method public static setMaxPixelLimit(I)V
    .locals 0
    .param p0, "pixels"    # I

    .prologue
    .line 187
    sput p0, Linstall/app/BitmapAjaxCallback;->BIG_TPIXELS:I

    .line 188
    invoke-static {}, Linstall/app/BitmapAjaxCallback;->clearCache()V

    .line 189
    return-void
.end method

.method public static setPixelLimit(I)V
    .locals 0
    .param p0, "pixels"    # I

    .prologue
    .line 177
    sput p0, Linstall/app/BitmapAjaxCallback;->BIG_PIXELS:I

    .line 178
    invoke-static {}, Linstall/app/BitmapAjaxCallback;->clearCache()V

    .line 179
    return-void
.end method

.method public static setSmallPixel(I)V
    .locals 0
    .param p0, "pixels"    # I

    .prologue
    .line 182
    sput p0, Linstall/app/BitmapAjaxCallback;->SMALL_PIXELS:I

    .line 183
    invoke-static {}, Linstall/app/BitmapAjaxCallback;->clearCache()V

    .line 184
    return-void
.end method


# virtual methods
.method protected accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Linstall/app/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Linstall/app/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    :cond_0
    iget-object v0, p0, Linstall/app/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    return-object v0
.end method

.method public anchor(F)Linstall/app/BitmapAjaxCallback;
    .locals 0
    .param p1, "anchor"    # F

    .prologue
    .line 83
    iput p1, p0, Linstall/app/BitmapAjaxCallback;->anchor:F

    .line 84
    return-object p0
.end method

.method public animation(I)Linstall/app/BitmapAjaxCallback;
    .locals 0
    .param p1, "animation"    # I

    .prologue
    .line 73
    iput p1, p0, Linstall/app/BitmapAjaxCallback;->animation:I

    .line 74
    return-object p0
.end method

.method public bitmap(Linstall/app/Bitmap;)Linstall/app/BitmapAjaxCallback;
    .locals 0
    .param p1, "bm"    # Linstall/app/Bitmap;

    .prologue
    .line 63
    iput-object p1, p0, Linstall/app/BitmapAjaxCallback;->bm:Linstall/app/Bitmap;

    .line 64
    return-object p0
.end method

.method public final callback(Ljava/lang/String;Linstall/app/Bitmap;Linstall/app/AjaxStatus;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bm"    # Linstall/app/Bitmap;
    .param p3, "status"    # Linstall/app/AjaxStatus;

    .prologue
    .line 144
    iget-object v0, p0, Linstall/app/BitmapAjaxCallback;->f0v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linstall/app/ImageView;

    .line 145
    .local v3, "firstView":Linstall/app/ImageView;
    sget-object v0, Linstall/app/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/WeakHashMap;

    .line 146
    .local v10, "ivs":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Linstall/app/ImageView;Linstall/app/BitmapAjaxCallback;>;"
    if-eqz v10, :cond_0

    invoke-virtual {v10, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 147
    invoke-direct/range {v0 .. v5}, Linstall/app/BitmapAjaxCallback;->checkCb(Linstall/app/BitmapAjaxCallback;Ljava/lang/String;Linstall/app/ImageView;Linstall/app/Bitmap;Linstall/app/AjaxStatus;)V

    .line 149
    :cond_1
    if-eqz v10, :cond_2

    .line 150
    invoke-virtual {v10}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linstall/app/ImageView;

    .line 151
    .local v7, "view":Linstall/app/ImageView;
    invoke-virtual {v10, v7}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linstall/app/BitmapAjaxCallback;

    .line 152
    .local v5, "cb":Linstall/app/BitmapAjaxCallback;
    iput-object p3, v5, Linstall/app/BitmapAjaxCallback;->status:Linstall/app/AjaxStatus;

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p3

    .line 153
    invoke-direct/range {v4 .. v9}, Linstall/app/BitmapAjaxCallback;->checkCb(Linstall/app/BitmapAjaxCallback;Ljava/lang/String;Linstall/app/ImageView;Linstall/app/Bitmap;Linstall/app/AjaxStatus;)V

    goto :goto_0

    .line 156
    .end local v5    # "cb":Linstall/app/BitmapAjaxCallback;
    .end local v7    # "view":Linstall/app/ImageView;
    :cond_2
    return-void
.end method

.method protected callback(Ljava/lang/String;Linstall/app/ImageView;Linstall/app/Bitmap;Linstall/app/AjaxStatus;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "iv"    # Linstall/app/ImageView;
    .param p3, "bm"    # Linstall/app/Bitmap;
    .param p4, "status"    # Linstall/app/AjaxStatus;

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Linstall/app/ImageView;Linstall/app/Bitmap;Z)V

    .line 164
    return-void
.end method

.method public fallback(I)Linstall/app/BitmapAjaxCallback;
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 68
    iput p1, p0, Linstall/app/BitmapAjaxCallback;->fallback:I

    .line 69
    return-object p0
.end method

.method public file(Ljava/io/File;)Linstall/app/BitmapAjaxCallback;
    .locals 0
    .param p1, "imageFile"    # Ljava/io/File;

    .prologue
    .line 53
    iput-object p1, p0, Linstall/app/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    .line 54
    return-object p0
.end method

.method public imageView(Linstall/app/ImageView;)Linstall/app/BitmapAjaxCallback;
    .locals 1
    .param p1, "view"    # Linstall/app/ImageView;

    .prologue
    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Linstall/app/BitmapAjaxCallback;->f0v:Ljava/lang/ref/WeakReference;

    .line 44
    return-object p0
.end method

.method protected memGet(Ljava/lang/String;)Linstall/app/Bitmap;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Linstall/app/BitmapAjaxCallback;->bm:Linstall/app/Bitmap;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Linstall/app/BitmapAjaxCallback;->bm:Linstall/app/Bitmap;

    .line 229
    :goto_0
    return-object v0

    .line 226
    :cond_0
    iget-boolean v0, p0, Linstall/app/BitmapAjaxCallback;->memCache:Z

    if-eqz v0, :cond_1

    .line 227
    iget v0, p0, Linstall/app/BitmapAjaxCallback;->targetWidth:I

    iget v1, p0, Linstall/app/BitmapAjaxCallback;->round:I

    invoke-static {p1, v0, v1}, Linstall/app/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Linstall/app/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected memPut(Ljava/lang/String;Linstall/app/Bitmap;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bm"    # Linstall/app/Bitmap;

    .prologue
    .line 277
    iget v0, p0, Linstall/app/BitmapAjaxCallback;->targetWidth:I

    iget v1, p0, Linstall/app/BitmapAjaxCallback;->round:I

    iget-boolean v2, p0, Linstall/app/BitmapAjaxCallback;->invalid:Z

    invoke-static {p1, v0, v1, p2, v2}, Linstall/app/BitmapAjaxCallback;->memPut(Ljava/lang/String;IILinstall/app/Bitmap;Z)V

    .line 278
    return-void
.end method

.method public preset(Linstall/app/Bitmap;)Linstall/app/BitmapAjaxCallback;
    .locals 0
    .param p1, "preset"    # Linstall/app/Bitmap;

    .prologue
    .line 58
    iput-object p1, p0, Linstall/app/BitmapAjaxCallback;->preset:Linstall/app/Bitmap;

    .line 59
    return-object p0
.end method

.method public ratio(F)Linstall/app/BitmapAjaxCallback;
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 78
    iput p1, p0, Linstall/app/BitmapAjaxCallback;->ratio:F

    .line 79
    return-object p0
.end method

.method public round(I)Linstall/app/BitmapAjaxCallback;
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 88
    iput p1, p0, Linstall/app/BitmapAjaxCallback;->round:I

    .line 89
    return-object p0
.end method

.method public targetWidth(I)Linstall/app/BitmapAjaxCallback;
    .locals 0
    .param p1, "targetWidth"    # I

    .prologue
    .line 48
    iput p1, p0, Linstall/app/BitmapAjaxCallback;->targetWidth:I

    .line 49
    return-object p0
.end method
