.class public abstract Linstall/app/GeomUtils;
.super Ljava/lang/Object;
.source "GeomUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static indexOfBiggest([I)I
    .locals 4
    .param p0, "iArr"    # [I

    .prologue
    .line 7
    const/4 v0, 0x0

    .line 8
    .local v0, "i":I
    const/4 v3, 0x0

    aget v1, p0, v3

    .line 9
    .local v1, "i2":I
    const/4 v2, 0x1

    .local v2, "i3":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 10
    aget v3, p0, v2

    if-le v3, v1, :cond_0

    .line 11
    aget v1, p0, v2

    .line 12
    move v0, v2

    .line 9
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_1
    return v0
.end method

.method static indexOfLeast([I)I
    .locals 4
    .param p0, "iArr"    # [I

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "i":I
    const/4 v3, 0x0

    aget v1, p0, v3

    .line 21
    .local v1, "i2":I
    const/4 v2, 0x1

    .local v2, "i3":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 22
    aget v3, p0, v2

    if-ge v3, v1, :cond_0

    .line 23
    aget v1, p0, v2

    .line 24
    move v0, v2

    .line 21
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    :cond_1
    return v0
.end method

.method public static max(III)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "i2"    # I
    .param p2, "i3"    # I

    .prologue
    .line 31
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static min(III)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "i2"    # I
    .param p2, "i3"    # I

    .prologue
    .line 35
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private static sameSide(IIIIIIII)Z
    .locals 5
    .param p0, "i"    # I
    .param p1, "i2"    # I
    .param p2, "i3"    # I
    .param p3, "i4"    # I
    .param p4, "i5"    # I
    .param p5, "i6"    # I
    .param p6, "i7"    # I
    .param p7, "i8"    # I

    .prologue
    .line 39
    sub-int v0, p0, p4

    sub-int v1, p7, p5

    mul-int/2addr v0, v1

    sub-int v1, p6, p4

    sub-int v2, p1, p5

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-int v2, p2, p4

    sub-int v3, p7, p5

    mul-int/2addr v2, v3

    sub-int v3, p6, p4

    sub-int v4, p3, p5

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static split([I[III)[[[I
    .locals 11
    .param p0, "iArr"    # [I
    .param p1, "iArr2"    # [I
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 44
    if-ge p3, p2, :cond_0

    array-length v6, p0

    sub-int/2addr v6, p2

    add-int/2addr v6, p3

    add-int/lit8 v3, v6, 0x1

    .line 45
    .local v3, "length":I
    :goto_0
    array-length v6, p0

    sub-int/2addr v6, v3

    add-int/lit8 v4, v6, 0x2

    .line 46
    .local v4, "length2":I
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v7, v10, [I

    aput v10, v7, v8

    aput v3, v7, v9

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    move-object v1, v6

    check-cast v1, [[I

    .line 47
    .local v1, "iArr3":[[I
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v7, v10, [I

    aput v10, v7, v8

    aput v4, v7, v9

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    move-object v2, v6

    check-cast v2, [[I

    .line 48
    .local v2, "iArr4":[[I
    const/4 v0, 0x0

    .local v0, "i3":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 49
    add-int v6, p2, v0

    array-length v7, p0

    rem-int v5, v6, v7

    .line 50
    .local v5, "length3":I
    aget-object v6, v1, v8

    aget v7, p0, v5

    aput v7, v6, v0

    .line 51
    aget-object v6, v1, v9

    aget v7, p1, v5

    aput v7, v6, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    .end local v0    # "i3":I
    .end local v1    # "iArr3":[[I
    .end local v2    # "iArr4":[[I
    .end local v3    # "length":I
    .end local v4    # "length2":I
    .end local v5    # "length3":I
    :cond_0
    sub-int v6, p3, p2

    add-int/lit8 v3, v6, 0x1

    goto :goto_0

    .line 53
    .restart local v0    # "i3":I
    .restart local v1    # "iArr3":[[I
    .restart local v2    # "iArr4":[[I
    .restart local v3    # "length":I
    .restart local v4    # "length2":I
    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    .line 54
    add-int v6, p3, v3

    array-length v7, p0

    rem-int v0, v6, v7

    .line 55
    aget-object v6, v2, v8

    aget v7, p0, v0

    aput v7, v6, v3

    .line 56
    aget-object v6, v2, v9

    aget v7, p1, v0

    aput v7, v6, v3

    .line 53
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 58
    :cond_2
    new-array v6, v10, [[[I

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    return-object v6
.end method

.method static trimEar([I[II)[[I
    .locals 5
    .param p0, "iArr"    # [I
    .param p1, "iArr2"    # [I
    .param p2, "i"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "i2":I
    const/4 v3, 0x2

    new-array v2, v3, [[I

    const/4 v3, 0x0

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [I

    aput-object v4, v2, v3

    const/4 v3, 0x1

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [I

    aput-object v4, v2, v3

    .line 64
    .local v2, "iArr3":[[I
    const/4 v1, 0x0

    .line 65
    .local v1, "i3":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 66
    if-eq v0, p2, :cond_0

    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    return-object v2
.end method

.method public static withinBounds(IIIIIIII)Z
    .locals 8
    .param p0, "i"    # I
    .param p1, "i2"    # I
    .param p2, "i3"    # I
    .param p3, "i4"    # I
    .param p4, "i5"    # I
    .param p5, "i6"    # I
    .param p6, "i7"    # I
    .param p7, "i8"    # I

    .prologue
    .line 76
    invoke-static {p2, p4, p6}, Linstall/app/GeomUtils;->min(III)I

    move-result v0

    if-lt p0, v0, :cond_0

    invoke-static {p2, p4, p6}, Linstall/app/GeomUtils;->max(III)I

    move-result v0

    if-gt p0, v0, :cond_0

    invoke-static {p3, p5, p7}, Linstall/app/GeomUtils;->min(III)I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-static {p3, p5, p7}, Linstall/app/GeomUtils;->max(III)I

    move-result v0

    if-le p1, v0, :cond_1

    .line 77
    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    :cond_1
    invoke-static/range {p0 .. p7}, Linstall/app/GeomUtils;->sameSide(IIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, p0

    move v1, p1

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Linstall/app/GeomUtils;->sameSide(IIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, p0

    move v1, p1

    move v2, p6

    move v3, p7

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Linstall/app/GeomUtils;->sameSide(IIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
