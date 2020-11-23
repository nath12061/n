.class public Linstall/app/Float11;
.super Ljava/lang/Object;
.source "Float11.java"


# static fields
.field public static final LOG10:D = 2.302585092994046

.field public static final LOGdiv2:D = -0.6931471805599453

.field public static final SQRT3:D = 1.7320508075688772


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _log(D)D
    .locals 18
    .param p0, "d"    # D

    .prologue
    .line 9
    const-wide/16 v14, 0x0

    cmpg-double v11, p0, v14

    if-gtz v11, :cond_1

    .line 10
    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    .line 32
    :cond_0
    return-wide v6

    .line 12
    :cond_1
    const-wide/16 v0, 0x0

    .line 13
    .local v0, "d2":D
    const/4 v8, 0x0

    .line 14
    .local v8, "i":I
    :goto_0
    const-wide/16 v14, 0x0

    cmpl-double v11, p0, v14

    if-lez v11, :cond_2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v11, p0, v14

    if-gtz v11, :cond_2

    .line 15
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double p0, p0, v14

    .line 16
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 18
    :cond_2
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v2, p0, v14

    .line 19
    .local v2, "d3":D
    add-int/lit8 v9, v8, -0x1

    .line 20
    .local v9, "i2":I
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v14, v2, v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, v2

    div-double v2, v14, v16

    .line 21
    mul-double v4, v2, v2

    .line 22
    .local v4, "d4":D
    const-wide/16 v12, 0x1

    .local v12, "j":J
    :goto_1
    const-wide/16 v14, 0x32

    cmp-long v11, v12, v14

    if-gez v11, :cond_3

    .line 23
    long-to-double v14, v12

    div-double v14, v2, v14

    add-double/2addr v0, v14

    .line 24
    mul-double/2addr v2, v4

    .line 22
    const-wide/16 v14, 0x2

    add-long/2addr v12, v14

    goto :goto_1

    .line 26
    :cond_3
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v6, v0, v14

    .line 27
    .local v6, "d5":D
    const/4 v10, 0x0

    .line 28
    .local v10, "i3":I
    :goto_2
    if-ge v10, v9, :cond_0

    .line 29
    add-int/lit8 v10, v10, 0x1

    .line 30
    const-wide v14, -0x4019d1bd0105c611L    # -0.6931471805599453

    add-double/2addr v6, v14

    goto :goto_2
.end method

.method public static acos(D)D
    .locals 4
    .param p0, "d"    # D

    .prologue
    .line 36
    invoke-static {p0, p1}, Linstall/app/Float11;->asin(D)D

    move-result-wide v0

    .line 37
    .local v0, "asin":D
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .end local v0    # "asin":D
    :goto_0
    return-wide v0

    .restart local v0    # "asin":D
    :cond_0
    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v0, v2, v0

    goto :goto_0
.end method

.method public static asin(D)D
    .locals 6
    .param p0, "d"    # D

    .prologue
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 41
    cmpg-double v0, p0, v4

    if-ltz v0, :cond_0

    cmpl-double v0, p0, v2

    if-lez v0, :cond_1

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    :goto_0
    return-wide v0

    :cond_1
    cmpl-double v0, p0, v4

    if-nez v0, :cond_2

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_0

    :cond_2
    cmpl-double v0, p0, v2

    if-nez v0, :cond_3

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_0

    :cond_3
    mul-double v0, p0, p0

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double v0, p0, v0

    invoke-static {v0, v1}, Linstall/app/Float11;->atan(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static atan(D)D
    .locals 14
    .param p0, "d"    # D

    .prologue
    .line 49
    const/4 v6, 0x0

    .line 50
    .local v6, "i3":I
    const-wide/16 v8, 0x0

    cmpg-double v7, p0, v8

    if-gez v7, :cond_0

    .line 51
    neg-double v0, p0

    .line 52
    .local v0, "d2":D
    const/4 v4, 0x1

    .line 57
    .local v4, "i":I
    :goto_0
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v0, v8

    if-lez v7, :cond_1

    .line 58
    const/4 v5, 0x1

    .line 59
    .local v5, "i2":I
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v2, v8, v0

    .line 64
    .local v2, "d3":D
    :goto_1
    const-wide v8, 0x3fd0c152382d7365L    # 0.2617993877991494

    cmpl-double v7, v2, v8

    if-lez v7, :cond_2

    .line 65
    add-int/lit8 v6, v6, 0x1

    .line 66
    const-wide v8, 0x3ffbb67ae8584caaL    # 1.7320508075688772

    mul-double/2addr v8, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v12, 0x3ffbb67ae8584caaL    # 1.7320508075688772

    add-double/2addr v12, v2

    div-double/2addr v10, v12

    mul-double v2, v8, v10

    goto :goto_1

    .line 54
    .end local v0    # "d2":D
    .end local v2    # "d3":D
    .end local v4    # "i":I
    .end local v5    # "i2":I
    :cond_0
    const/4 v4, 0x0

    .line 55
    .restart local v4    # "i":I
    move-wide v0, p0

    .restart local v0    # "d2":D
    goto :goto_0

    .line 61
    :cond_1
    const/4 v5, 0x0

    .line 62
    .restart local v5    # "i2":I
    move-wide v2, v0

    .restart local v2    # "d3":D
    goto :goto_1

    .line 68
    :cond_2
    mul-double v0, v2, v2

    .line 69
    const-wide v8, 0x3fe1e4737770fabfL    # 0.55913709

    const-wide v10, 0x3ff68a5e27d383a0L    # 1.4087812

    add-double/2addr v10, v0

    div-double/2addr v8, v10

    const-wide v10, 0x3fe34ca4838280f9L    # 0.60310579

    add-double/2addr v8, v10

    const-wide v10, 0x3faa6be90740103bL    # 0.05160454

    mul-double/2addr v10, v0

    sub-double/2addr v8, v10

    mul-double/2addr v2, v8

    .line 70
    :goto_2
    if-lez v6, :cond_3

    .line 71
    const-wide v8, 0x3fe0c152382d7365L    # 0.5235987755982988

    add-double/2addr v2, v8

    .line 72
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 74
    :cond_3
    if-eqz v5, :cond_4

    .line 75
    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v2, v8, v2

    .line 77
    :cond_4
    if-eqz v4, :cond_5

    neg-double v2, v2

    .end local v2    # "d3":D
    :cond_5
    return-wide v2
.end method

.method public static atan2(DD)D
    .locals 6
    .param p0, "d"    # D
    .param p2, "d2"    # D

    .prologue
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    const-wide/16 v0, 0x0

    .line 81
    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    cmpl-double v2, p2, v0

    if-lez v2, :cond_1

    div-double v0, p0, p2

    invoke-static {v0, v1}, Linstall/app/Float11;->atan(D)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    cmpg-double v2, p2, v0

    if-gez v2, :cond_3

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    div-double v0, p0, p2

    invoke-static {v0, v1}, Linstall/app/Float11;->atan(D)D

    move-result-wide v0

    sub-double v0, v4, v0

    neg-double v0, v0

    goto :goto_0

    :cond_2
    neg-double v0, p0

    div-double/2addr v0, p2

    invoke-static {v0, v1}, Linstall/app/Float11;->atan(D)D

    move-result-wide v0

    sub-double v0, v4, v0

    goto :goto_0

    :cond_3
    cmpg-double v0, p0, v0

    if-gez v0, :cond_4

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_0

    :cond_4
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_0
.end method

.method public static exp(D)D
    .locals 14
    .param p0, "d"    # D

    .prologue
    .line 85
    const-wide/16 v10, 0x0

    cmpl-double v9, p0, v10

    if-nez v9, :cond_1

    .line 86
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 101
    :cond_0
    :goto_0
    return-wide v2

    .line 88
    :cond_1
    const-wide/16 v10, 0x0

    cmpg-double v9, p0, v10

    if-gez v9, :cond_3

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 89
    .local v8, "obj":Ljava/lang/Integer;
    :goto_1
    if-eqz v8, :cond_2

    .line 90
    neg-double p0, p0

    .line 92
    :cond_2
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double v0, p0, v10

    .line 93
    .local v0, "d2":D
    const-wide/16 v6, 0x2

    .line 94
    .local v6, "j":J
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 95
    .local v2, "d3":D
    :goto_2
    const-wide/16 v10, 0x32

    cmp-long v9, v6, v10

    if-gez v9, :cond_4

    .line 96
    add-double v4, v2, v0

    .line 97
    .local v4, "d4":D
    mul-double v10, v0, p0

    long-to-double v12, v6

    div-double v0, v10, v12

    .line 98
    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    .line 99
    move-wide v2, v4

    .line 100
    goto :goto_2

    .line 88
    .end local v0    # "d2":D
    .end local v2    # "d3":D
    .end local v4    # "d4":D
    .end local v6    # "j":J
    .end local v8    # "obj":Ljava/lang/Integer;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 101
    .restart local v0    # "d2":D
    .restart local v2    # "d3":D
    .restart local v6    # "j":J
    .restart local v8    # "obj":Ljava/lang/Integer;
    :cond_4
    if-eqz v8, :cond_0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double v2, v10, v2

    goto :goto_0
.end method

.method public static log(D)D
    .locals 6
    .param p0, "d"    # D

    .prologue
    const-wide/16 v0, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 105
    cmpg-double v2, p0, v0

    if-gtz v2, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    cmpl-double v2, p0, v4

    if-eqz v2, :cond_0

    cmpl-double v0, p0, v4

    if-lez v0, :cond_2

    div-double v0, v4, p0

    invoke-static {v0, v1}, Linstall/app/Float11;->_log(D)D

    move-result-wide v0

    neg-double v0, v0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Linstall/app/Float11;->_log(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static log10(D)D
    .locals 4
    .param p0, "d"    # D

    .prologue
    .line 109
    invoke-static {p0, p1}, Linstall/app/Float11;->log(D)D

    move-result-wide v0

    const-wide v2, 0x40026bb1bbb55516L    # 2.302585092994046

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static pow(DD)D
    .locals 10
    .param p0, "d"    # D
    .param p2, "d2"    # D

    .prologue
    .line 113
    const-wide/16 v8, 0x0

    cmpl-double v7, p0, v8

    if-nez v7, :cond_1

    .line 114
    const-wide/16 p0, 0x0

    .line 142
    .end local p0    # "d":D
    :cond_0
    :goto_0
    return-wide p0

    .line 116
    .restart local p0    # "d":D
    :cond_1
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, p0, v8

    if-nez v7, :cond_2

    .line 117
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 119
    :cond_2
    const-wide/16 v8, 0x0

    cmpl-double v7, p2, v8

    if-nez v7, :cond_3

    .line 120
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 122
    :cond_3
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, p2, v8

    if-eqz v7, :cond_0

    .line 125
    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-long v2, v8

    .line 126
    .local v2, "floor":J
    long-to-double v8, v2

    cmpl-double v7, p2, v8

    if-nez v7, :cond_4

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_1
    if-nez v7, :cond_6

    .line 127
    const-wide/16 v8, 0x0

    cmpl-double v7, p0, v8

    if-lez v7, :cond_5

    invoke-static {p0, p1}, Linstall/app/Float11;->log(D)D

    move-result-wide v8

    mul-double/2addr v8, p2

    invoke-static {v8, v9}, Linstall/app/Float11;->exp(D)D

    move-result-wide v8

    :goto_2
    move-wide p0, v8

    goto :goto_0

    .line 126
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 127
    :cond_5
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    goto :goto_2

    .line 129
    :cond_6
    const/4 v6, 0x0

    .line 130
    .local v6, "obj":Ljava/lang/Object;
    const-wide/16 v8, 0x0

    cmpg-double v7, p2, v8

    if-gez v7, :cond_7

    .line 131
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 133
    .end local v6    # "obj":Ljava/lang/Object;
    :cond_7
    const-wide/16 v4, 0x1

    .line 134
    .local v4, "j":J
    move-wide v0, p0

    .line 136
    .local v0, "d3":D
    :goto_3
    if-eqz v6, :cond_9

    neg-long v8, v2

    :goto_4
    cmp-long v7, v4, v8

    if-ltz v7, :cond_a

    .line 142
    if-eqz v6, :cond_8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v0, v8, v0

    .end local v0    # "d3":D
    :cond_8
    move-wide p0, v0

    goto :goto_0

    .restart local v0    # "d3":D
    :cond_9
    move-wide v8, v2

    .line 136
    goto :goto_4

    .line 139
    :cond_a
    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    .line 140
    mul-double/2addr v0, p0

    goto :goto_3
.end method

.method public static toDegrees(D)D
    .locals 4
    .param p0, "d"    # D

    .prologue
    .line 147
    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static toRadians(D)D
    .locals 4
    .param p0, "d"    # D

    .prologue
    .line 151
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method
