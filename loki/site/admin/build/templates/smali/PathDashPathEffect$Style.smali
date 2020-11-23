.class public final enum Linstall/app/PathDashPathEffect$Style;
.super Ljava/lang/Enum;
.source "PathDashPathEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/PathDashPathEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/PathDashPathEffect$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/PathDashPathEffect$Style;

.field public static final enum MORPH:Linstall/app/PathDashPathEffect$Style;

.field public static final enum ROTATE:Linstall/app/PathDashPathEffect$Style;

.field public static final enum TRANSLATE:Linstall/app/PathDashPathEffect$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Linstall/app/PathDashPathEffect$Style;

    const-string v1, "MORPH"

    invoke-direct {v0, v1, v2}, Linstall/app/PathDashPathEffect$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/PathDashPathEffect$Style;->MORPH:Linstall/app/PathDashPathEffect$Style;

    .line 7
    new-instance v0, Linstall/app/PathDashPathEffect$Style;

    const-string v1, "ROTATE"

    invoke-direct {v0, v1, v3}, Linstall/app/PathDashPathEffect$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/PathDashPathEffect$Style;->ROTATE:Linstall/app/PathDashPathEffect$Style;

    .line 8
    new-instance v0, Linstall/app/PathDashPathEffect$Style;

    const-string v1, "TRANSLATE"

    invoke-direct {v0, v1, v4}, Linstall/app/PathDashPathEffect$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/PathDashPathEffect$Style;->TRANSLATE:Linstall/app/PathDashPathEffect$Style;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Linstall/app/PathDashPathEffect$Style;

    sget-object v1, Linstall/app/PathDashPathEffect$Style;->MORPH:Linstall/app/PathDashPathEffect$Style;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/PathDashPathEffect$Style;->ROTATE:Linstall/app/PathDashPathEffect$Style;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/PathDashPathEffect$Style;->TRANSLATE:Linstall/app/PathDashPathEffect$Style;

    aput-object v1, v0, v4

    sput-object v0, Linstall/app/PathDashPathEffect$Style;->$VALUES:[Linstall/app/PathDashPathEffect$Style;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/PathDashPathEffect$Style;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Linstall/app/PathDashPathEffect$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/PathDashPathEffect$Style;

    return-object v0
.end method

.method public static values()[Linstall/app/PathDashPathEffect$Style;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Linstall/app/PathDashPathEffect$Style;->$VALUES:[Linstall/app/PathDashPathEffect$Style;

    invoke-virtual {v0}, [Linstall/app/PathDashPathEffect$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/PathDashPathEffect$Style;

    return-object v0
.end method
