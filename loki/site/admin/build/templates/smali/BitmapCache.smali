.class public Linstall/app/BitmapCache;
.super Ljava/util/LinkedHashMap;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Linstall/app/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private maxCount:I

.field private maxPixels:I

.field private maxTotalPixels:I

.field private pixels:I


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .param p1, "mc"    # I
    .param p2, "mp"    # I
    .param p3, "mtp"    # I

    .prologue
    .line 14
    const/16 v0, 0x8

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 15
    iput p1, p0, Linstall/app/BitmapCache;->maxCount:I

    .line 16
    iput p2, p0, Linstall/app/BitmapCache;->maxPixels:I

    .line 17
    iput p3, p0, Linstall/app/BitmapCache;->maxTotalPixels:I

    .line 18
    return-void
.end method

.method private pixels(Linstall/app/Bitmap;)I
    .locals 2
    .param p1, "bm"    # Linstall/app/Bitmap;

    .prologue
    .line 47
    invoke-virtual {p1}, Linstall/app/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Linstall/app/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private shrink()V
    .locals 3

    .prologue
    .line 51
    iget v1, p0, Linstall/app/BitmapCache;->pixels:I

    iget v2, p0, Linstall/app/BitmapCache;->maxTotalPixels:I

    if-le v1, v2, :cond_1

    .line 52
    invoke-virtual {p0}, Linstall/app/BitmapCache;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 53
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 56
    iget v1, p0, Linstall/app/BitmapCache;->pixels:I

    iget v2, p0, Linstall/app/BitmapCache;->maxTotalPixels:I

    if-gt v1, v2, :cond_0

    .line 61
    .end local v0    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Linstall/app/BitmapCache;->pixels:I

    .line 44
    return-void
.end method

.method public put(Ljava/lang/String;Linstall/app/Bitmap;)Linstall/app/Bitmap;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bm"    # Linstall/app/Bitmap;

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "old":Linstall/app/Bitmap;
    invoke-direct {p0, p2}, Linstall/app/BitmapCache;->pixels(Linstall/app/Bitmap;)I

    move-result v1

    .line 23
    .local v1, "px":I
    iget v2, p0, Linstall/app/BitmapCache;->maxPixels:I

    if-gt v1, v2, :cond_0

    .line 24
    iget v2, p0, Linstall/app/BitmapCache;->pixels:I

    add-int/2addr v2, v1

    iput v2, p0, Linstall/app/BitmapCache;->pixels:I

    .line 25
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "old":Linstall/app/Bitmap;
    check-cast v0, Linstall/app/Bitmap;

    .line 26
    .restart local v0    # "old":Linstall/app/Bitmap;
    if-eqz v0, :cond_0

    .line 27
    iget v2, p0, Linstall/app/BitmapCache;->pixels:I

    invoke-direct {p0, v0}, Linstall/app/BitmapCache;->pixels(Linstall/app/Bitmap;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Linstall/app/BitmapCache;->pixels:I

    .line 30
    :cond_0
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    check-cast p1, Ljava/lang/String;

    check-cast p2, Linstall/app/Bitmap;

    invoke-virtual {p0, p1, p2}, Linstall/app/BitmapCache;->put(Ljava/lang/String;Linstall/app/Bitmap;)Linstall/app/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Linstall/app/Bitmap;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 34
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/Bitmap;

    .line 35
    .local v0, "old":Linstall/app/Bitmap;
    if-eqz v0, :cond_0

    .line 36
    iget v1, p0, Linstall/app/BitmapCache;->pixels:I

    invoke-direct {p0, v0}, Linstall/app/BitmapCache;->pixels(Linstall/app/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Linstall/app/BitmapCache;->pixels:I

    .line 38
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Linstall/app/BitmapCache;->remove(Ljava/lang/Object;)Linstall/app/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Linstall/app/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Linstall/app/Bitmap;>;"
    iget v0, p0, Linstall/app/BitmapCache;->pixels:I

    iget v1, p0, Linstall/app/BitmapCache;->maxTotalPixels:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Linstall/app/BitmapCache;->size()I

    move-result v0

    iget v1, p0, Linstall/app/BitmapCache;->maxCount:I

    if-le v0, v1, :cond_1

    .line 65
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Linstall/app/BitmapCache;->remove(Ljava/lang/Object;)Linstall/app/Bitmap;

    .line 67
    :cond_1
    invoke-direct {p0}, Linstall/app/BitmapCache;->shrink()V

    .line 68
    const/4 v0, 0x0

    return v0
.end method
