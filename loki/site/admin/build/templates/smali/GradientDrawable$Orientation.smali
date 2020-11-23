.class public final enum Linstall/app/GradientDrawable$Orientation;
.super Ljava/lang/Enum;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/GradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/GradientDrawable$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/GradientDrawable$Orientation;

.field public static final enum BL_TR:Linstall/app/GradientDrawable$Orientation;

.field public static final enum BOTTOM_TOP:Linstall/app/GradientDrawable$Orientation;

.field public static final enum BR_TL:Linstall/app/GradientDrawable$Orientation;

.field public static final enum LEFT_RIGHT:Linstall/app/GradientDrawable$Orientation;

.field public static final enum RIGHT_LEFT:Linstall/app/GradientDrawable$Orientation;

.field public static final enum TL_BR:Linstall/app/GradientDrawable$Orientation;

.field public static final enum TOP_BOTTOM:Linstall/app/GradientDrawable$Orientation;

.field public static final enum TR_BL:Linstall/app/GradientDrawable$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Linstall/app/GradientDrawable$Orientation;

    const-string v1, "BL_TR"

    invoke-direct {v0, v1, v3}, Linstall/app/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/GradientDrawable$Orientation;->BL_TR:Linstall/app/GradientDrawable$Orientation;

    .line 16
    new-instance v0, Linstall/app/GradientDrawable$Orientation;

    const-string v1, "BOTTOM_TOP"

    invoke-direct {v0, v1, v4}, Linstall/app/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/GradientDrawable$Orientation;->BOTTOM_TOP:Linstall/app/GradientDrawable$Orientation;

    .line 17
    new-instance v0, Linstall/app/GradientDrawable$Orientation;

    const-string v1, "BR_TL"

    invoke-direct {v0, v1, v5}, Linstall/app/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/GradientDrawable$Orientation;->BR_TL:Linstall/app/GradientDrawable$Orientation;

    .line 18
    new-instance v0, Linstall/app/GradientDrawable$Orientation;

    const-string v1, "LEFT_RIGHT"

    invoke-direct {v0, v1, v6}, Linstall/app/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/GradientDrawable$Orientation;->LEFT_RIGHT:Linstall/app/GradientDrawable$Orientation;

    .line 19
    new-instance v0, Linstall/app/GradientDrawable$Orientation;

    const-string v1, "RIGHT_LEFT"

    invoke-direct {v0, v1, v7}, Linstall/app/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/GradientDrawable$Orientation;->RIGHT_LEFT:Linstall/app/GradientDrawable$Orientation;

    .line 20
    new-instance v0, Linstall/app/GradientDrawable$Orientation;

    const-string v1, "TL_BR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Linstall/app/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/GradientDrawable$Orientation;->TL_BR:Linstall/app/GradientDrawable$Orientation;

    .line 21
    new-instance v0, Linstall/app/GradientDrawable$Orientation;

    const-string v1, "TOP_BOTTOM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Linstall/app/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/GradientDrawable$Orientation;->TOP_BOTTOM:Linstall/app/GradientDrawable$Orientation;

    .line 22
    new-instance v0, Linstall/app/GradientDrawable$Orientation;

    const-string v1, "TR_BL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Linstall/app/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/GradientDrawable$Orientation;->TR_BL:Linstall/app/GradientDrawable$Orientation;

    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [Linstall/app/GradientDrawable$Orientation;

    sget-object v1, Linstall/app/GradientDrawable$Orientation;->BL_TR:Linstall/app/GradientDrawable$Orientation;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/GradientDrawable$Orientation;->BOTTOM_TOP:Linstall/app/GradientDrawable$Orientation;

    aput-object v1, v0, v4

    sget-object v1, Linstall/app/GradientDrawable$Orientation;->BR_TL:Linstall/app/GradientDrawable$Orientation;

    aput-object v1, v0, v5

    sget-object v1, Linstall/app/GradientDrawable$Orientation;->LEFT_RIGHT:Linstall/app/GradientDrawable$Orientation;

    aput-object v1, v0, v6

    sget-object v1, Linstall/app/GradientDrawable$Orientation;->RIGHT_LEFT:Linstall/app/GradientDrawable$Orientation;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Linstall/app/GradientDrawable$Orientation;->TL_BR:Linstall/app/GradientDrawable$Orientation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Linstall/app/GradientDrawable$Orientation;->TOP_BOTTOM:Linstall/app/GradientDrawable$Orientation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Linstall/app/GradientDrawable$Orientation;->TR_BL:Linstall/app/GradientDrawable$Orientation;

    aput-object v2, v0, v1

    sput-object v0, Linstall/app/GradientDrawable$Orientation;->$VALUES:[Linstall/app/GradientDrawable$Orientation;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/GradientDrawable$Orientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Linstall/app/GradientDrawable$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/GradientDrawable$Orientation;

    return-object v0
.end method

.method public static values()[Linstall/app/GradientDrawable$Orientation;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Linstall/app/GradientDrawable$Orientation;->$VALUES:[Linstall/app/GradientDrawable$Orientation;

    invoke-virtual {v0}, [Linstall/app/GradientDrawable$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/GradientDrawable$Orientation;

    return-object v0
.end method
