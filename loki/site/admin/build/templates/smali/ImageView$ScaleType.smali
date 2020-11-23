.class public final enum Linstall/app/ImageView$ScaleType;
.super Ljava/lang/Enum;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/ImageView$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/ImageView$ScaleType;

.field public static final enum CENTER:Linstall/app/ImageView$ScaleType;

.field public static final enum CENTER_CROP:Linstall/app/ImageView$ScaleType;

.field public static final enum CENTER_INSIDE:Linstall/app/ImageView$ScaleType;

.field public static final enum FIT_CENTER:Linstall/app/ImageView$ScaleType;

.field public static final enum FIT_END:Linstall/app/ImageView$ScaleType;

.field public static final enum FIT_START:Linstall/app/ImageView$ScaleType;

.field public static final enum FIT_XY:Linstall/app/ImageView$ScaleType;

.field public static final enum MATRIX:Linstall/app/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Linstall/app/ImageView$ScaleType;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Linstall/app/ImageView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ImageView$ScaleType;->CENTER:Linstall/app/ImageView$ScaleType;

    .line 8
    new-instance v0, Linstall/app/ImageView$ScaleType;

    const-string v1, "CENTER_CROP"

    invoke-direct {v0, v1, v4}, Linstall/app/ImageView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ImageView$ScaleType;->CENTER_CROP:Linstall/app/ImageView$ScaleType;

    .line 9
    new-instance v0, Linstall/app/ImageView$ScaleType;

    const-string v1, "CENTER_INSIDE"

    invoke-direct {v0, v1, v5}, Linstall/app/ImageView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ImageView$ScaleType;->CENTER_INSIDE:Linstall/app/ImageView$ScaleType;

    .line 10
    new-instance v0, Linstall/app/ImageView$ScaleType;

    const-string v1, "FIT_CENTER"

    invoke-direct {v0, v1, v6}, Linstall/app/ImageView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ImageView$ScaleType;->FIT_CENTER:Linstall/app/ImageView$ScaleType;

    .line 11
    new-instance v0, Linstall/app/ImageView$ScaleType;

    const-string v1, "FIT_END"

    invoke-direct {v0, v1, v7}, Linstall/app/ImageView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ImageView$ScaleType;->FIT_END:Linstall/app/ImageView$ScaleType;

    .line 12
    new-instance v0, Linstall/app/ImageView$ScaleType;

    const-string v1, "FIT_START"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Linstall/app/ImageView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ImageView$ScaleType;->FIT_START:Linstall/app/ImageView$ScaleType;

    .line 13
    new-instance v0, Linstall/app/ImageView$ScaleType;

    const-string v1, "FIT_XY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Linstall/app/ImageView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ImageView$ScaleType;->FIT_XY:Linstall/app/ImageView$ScaleType;

    .line 14
    new-instance v0, Linstall/app/ImageView$ScaleType;

    const-string v1, "MATRIX"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Linstall/app/ImageView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ImageView$ScaleType;->MATRIX:Linstall/app/ImageView$ScaleType;

    .line 6
    const/16 v0, 0x8

    new-array v0, v0, [Linstall/app/ImageView$ScaleType;

    sget-object v1, Linstall/app/ImageView$ScaleType;->CENTER:Linstall/app/ImageView$ScaleType;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/ImageView$ScaleType;->CENTER_CROP:Linstall/app/ImageView$ScaleType;

    aput-object v1, v0, v4

    sget-object v1, Linstall/app/ImageView$ScaleType;->CENTER_INSIDE:Linstall/app/ImageView$ScaleType;

    aput-object v1, v0, v5

    sget-object v1, Linstall/app/ImageView$ScaleType;->FIT_CENTER:Linstall/app/ImageView$ScaleType;

    aput-object v1, v0, v6

    sget-object v1, Linstall/app/ImageView$ScaleType;->FIT_END:Linstall/app/ImageView$ScaleType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Linstall/app/ImageView$ScaleType;->FIT_START:Linstall/app/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Linstall/app/ImageView$ScaleType;->FIT_XY:Linstall/app/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Linstall/app/ImageView$ScaleType;->MATRIX:Linstall/app/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Linstall/app/ImageView$ScaleType;->$VALUES:[Linstall/app/ImageView$ScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/ImageView$ScaleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Linstall/app/ImageView$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/ImageView$ScaleType;

    return-object v0
.end method

.method public static values()[Linstall/app/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Linstall/app/ImageView$ScaleType;->$VALUES:[Linstall/app/ImageView$ScaleType;

    invoke-virtual {v0}, [Linstall/app/ImageView$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/ImageView$ScaleType;

    return-object v0
.end method
