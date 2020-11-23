.class public Linstall/app/PolygonGraphics;
.super Ljava/lang/Object;
.source "PolygonGraphics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cursorOnPolygon([Linstall/app/MapPos;II)Z
    .locals 3
    .param p0, "mapPosArr"    # [Linstall/app/MapPos;
    .param p1, "i"    # I
    .param p2, "i2"    # I

    .prologue
    const/4 v2, 0x1

    .line 8
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 9
    .local v0, "stack":Ljava/util/Stack;
    invoke-static {p0, v0, p1, p2}, Linstall/app/PolygonGraphics;->cursorOnPolygon([Linstall/app/MapPos;Ljava/util/Stack;II)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 17
    :goto_0
    return v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Linstall/app/MapPos;

    check-cast v1, [Linstall/app/MapPos;

    invoke-static {v1, v0, p1, p2}, Linstall/app/PolygonGraphics;->cursorOnPolygon([Linstall/app/MapPos;Ljava/util/Stack;II)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 14
    goto :goto_0

    .line 17
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static cursorOnPolygon([Linstall/app/MapPos;Ljava/util/Stack;II)Z
    .locals 12
    .param p0, "mapPosArr"    # [Linstall/app/MapPos;
    .param p1, "stack"    # Ljava/util/Stack;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 21
    const/4 v11, 0x0

    .line 22
    .local v11, "z":Z
    :goto_0
    array-length v0, p0

    const/4 v4, 0x2

    if-le v0, v4, :cond_3

    .line 25
    invoke-static {p0}, Linstall/app/PolygonGraphics;->indexOfLeastX([Linstall/app/MapPos;)I

    move-result v1

    .line 26
    .local v1, "indexOfLeastX":I
    add-int/lit8 v0, v1, 0x1

    array-length v4, p0

    rem-int v2, v0, v4

    .line 27
    .local v2, "length":I
    if-lez v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    .line 28
    .local v3, "length2":I
    :goto_1
    array-length v0, p0

    const/4 v4, 0x3

    if-le v0, v4, :cond_1

    .line 29
    const/4 v7, 0x0

    .line 30
    .local v7, "i4":I
    const/4 v8, 0x0

    .line 31
    .local v8, "obj":Ljava/lang/Object;
    const/4 v6, -0x1

    .line 32
    .local v6, "i3":I
    :goto_2
    array-length v0, p0

    if-ge v7, v0, :cond_2

    .line 36
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 27
    .end local v3    # "length2":I
    .end local v6    # "i3":I
    .end local v7    # "i4":I
    .end local v8    # "obj":Ljava/lang/Object;
    :cond_0
    array-length v0, p0

    add-int/lit8 v3, v0, -0x1

    goto :goto_1

    .line 40
    .restart local v3    # "length2":I
    :cond_1
    const/4 v8, 0x0

    .line 41
    .restart local v8    # "obj":Ljava/lang/Object;
    const/4 v6, -0x1

    .line 43
    .restart local v6    # "i3":I
    :cond_2
    if-eqz v8, :cond_4

    .line 44
    invoke-static {p0, v1, v6}, Linstall/app/PolygonGraphics;->split([Linstall/app/MapPos;II)[[Linstall/app/MapPos;

    move-result-object v10

    .line 45
    .local v10, "split":[[Linstall/app/MapPos;
    const/4 v0, 0x1

    aget-object v0, v10, v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .end local v1    # "indexOfLeastX":I
    .end local v2    # "length":I
    .end local v3    # "length2":I
    .end local v6    # "i3":I
    .end local v8    # "obj":Ljava/lang/Object;
    .end local v10    # "split":[[Linstall/app/MapPos;
    :cond_3
    return v11

    .restart local v1    # "indexOfLeastX":I
    .restart local v2    # "length":I
    .restart local v3    # "length2":I
    .restart local v6    # "i3":I
    .restart local v8    # "obj":Ljava/lang/Object;
    :cond_4
    move-object v0, p0

    move v4, p2

    move v5, p3

    .line 49
    invoke-static/range {v0 .. v5}, Linstall/app/PolygonGraphics;->pointInTriangle([Linstall/app/MapPos;IIIII)Z

    move-result v0

    or-int v9, v0, v11

    .line 50
    .local v9, "pointInTriangle":Z
    invoke-static {p0, v1}, Linstall/app/PolygonGraphics;->trimEar([Linstall/app/MapPos;I)[Linstall/app/MapPos;

    move-result-object p0

    .line 51
    move v11, v9

    .line 52
    goto :goto_0
.end method

.method public static drawPolygon(Linstall/app/Graphics;[I[I)V
    .locals 7
    .param p0, "graphics"    # Linstall/app/Graphics;
    .param p1, "iArr"    # [I
    .param p2, "iArr2"    # [I

    .prologue
    const/4 v6, 0x0

    .line 57
    array-length v2, p1

    add-int/lit8 v1, v2, -0x1

    .line 58
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 59
    aget v2, p1, v0

    aget v3, p2, v0

    add-int/lit8 v4, v0, 0x1

    aget v4, p1, v4

    add-int/lit8 v5, v0, 0x1

    aget v5, p2, v5

    invoke-virtual {p0, v2, v3, v4, v5}, Linstall/app/Graphics;->drawLine(IIII)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    aget v2, p1, v1

    aget v3, p2, v1

    aget v4, p1, v6

    aget v5, p2, v6

    invoke-virtual {p0, v2, v3, v4, v5}, Linstall/app/Graphics;->drawLine(IIII)V

    .line 62
    return-void
.end method

.method static indexOfLeastX([Linstall/app/MapPos;)I
    .locals 1
    .param p0, "mapPosArr"    # [Linstall/app/MapPos;

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 74
    .local v0, "i":I
    return v0
.end method

.method private static final pointInTriangle([Linstall/app/MapPos;IIIII)Z
    .locals 1
    .param p0, "mapPosArr"    # [Linstall/app/MapPos;
    .param p1, "i"    # I
    .param p2, "i2"    # I
    .param p3, "i3"    # I
    .param p4, "i4"    # I
    .param p5, "i5"    # I

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method static split([Linstall/app/MapPos;II)[[Linstall/app/MapPos;
    .locals 7
    .param p0, "mapPosArr"    # [Linstall/app/MapPos;
    .param p1, "i"    # I
    .param p2, "i2"    # I

    .prologue
    .line 82
    if-ge p2, p1, :cond_0

    array-length v5, p0

    sub-int/2addr v5, p1

    add-int/2addr v5, p2

    add-int/lit8 v1, v5, 0x1

    .line 83
    .local v1, "length":I
    :goto_0
    array-length v5, p0

    sub-int/2addr v5, v1

    add-int/lit8 v2, v5, 0x2

    .line 84
    .local v2, "length2":I
    new-array v3, v1, [Linstall/app/MapPos;

    .line 85
    .local v3, "mapPosArr2":[Linstall/app/MapPos;
    new-array v4, v2, [Linstall/app/MapPos;

    .line 86
    .local v4, "mapPosArr3":[Linstall/app/MapPos;
    const/4 v0, 0x0

    .local v0, "i3":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 87
    add-int v5, p1, v0

    array-length v6, p0

    rem-int/2addr v5, v6

    aget-object v5, p0, v5

    aput-object v5, v3, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    .end local v0    # "i3":I
    .end local v1    # "length":I
    .end local v2    # "length2":I
    .end local v3    # "mapPosArr2":[Linstall/app/MapPos;
    .end local v4    # "mapPosArr3":[Linstall/app/MapPos;
    :cond_0
    sub-int v5, p2, p1

    add-int/lit8 v1, v5, 0x1

    goto :goto_0

    .line 89
    .restart local v0    # "i3":I
    .restart local v1    # "length":I
    .restart local v2    # "length2":I
    .restart local v3    # "mapPosArr2":[Linstall/app/MapPos;
    .restart local v4    # "mapPosArr3":[Linstall/app/MapPos;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 90
    add-int v5, p2, v1

    array-length v6, p0

    rem-int/2addr v5, v6

    aget-object v5, p0, v5

    aput-object v5, v4, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 92
    :cond_2
    const/4 v5, 0x2

    new-array v5, v5, [[Linstall/app/MapPos;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    return-object v5
.end method

.method static trimEar([Linstall/app/MapPos;I)[Linstall/app/MapPos;
    .locals 4
    .param p0, "mapPosArr"    # [Linstall/app/MapPos;
    .param p1, "i"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "i2":I
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    new-array v2, v3, [Linstall/app/MapPos;

    .line 98
    .local v2, "mapPosArr2":[Linstall/app/MapPos;
    const/4 v1, 0x0

    .line 99
    .local v1, "i3":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 100
    if-eq v0, p1, :cond_0

    .line 101
    aget-object v3, p0, v0

    aput-object v3, v2, v1

    .line 102
    add-int/lit8 v1, v1, 0x1

    .line 104
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_1
    return-object v2
.end method
