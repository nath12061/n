.class public final enum Linstall/app/Path$FillType;
.super Ljava/lang/Enum;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FillType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/Path$FillType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/Path$FillType;

.field public static final enum EVEN_ODD:Linstall/app/Path$FillType;

.field public static final enum INVERSE_EVEN_ODD:Linstall/app/Path$FillType;

.field public static final enum INVERSE_WINDING:Linstall/app/Path$FillType;

.field public static final enum WINDING:Linstall/app/Path$FillType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Linstall/app/Path$FillType;

    const-string v1, "EVEN_ODD"

    invoke-direct {v0, v1, v2}, Linstall/app/Path$FillType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Path$FillType;->EVEN_ODD:Linstall/app/Path$FillType;

    .line 12
    new-instance v0, Linstall/app/Path$FillType;

    const-string v1, "INVERSE_EVEN_ODD"

    invoke-direct {v0, v1, v3}, Linstall/app/Path$FillType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Path$FillType;->INVERSE_EVEN_ODD:Linstall/app/Path$FillType;

    .line 13
    new-instance v0, Linstall/app/Path$FillType;

    const-string v1, "INVERSE_WINDING"

    invoke-direct {v0, v1, v4}, Linstall/app/Path$FillType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Path$FillType;->INVERSE_WINDING:Linstall/app/Path$FillType;

    .line 14
    new-instance v0, Linstall/app/Path$FillType;

    const-string v1, "WINDING"

    invoke-direct {v0, v1, v5}, Linstall/app/Path$FillType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Path$FillType;->WINDING:Linstall/app/Path$FillType;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Linstall/app/Path$FillType;

    sget-object v1, Linstall/app/Path$FillType;->EVEN_ODD:Linstall/app/Path$FillType;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/Path$FillType;->INVERSE_EVEN_ODD:Linstall/app/Path$FillType;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/Path$FillType;->INVERSE_WINDING:Linstall/app/Path$FillType;

    aput-object v1, v0, v4

    sget-object v1, Linstall/app/Path$FillType;->WINDING:Linstall/app/Path$FillType;

    aput-object v1, v0, v5

    sput-object v0, Linstall/app/Path$FillType;->$VALUES:[Linstall/app/Path$FillType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/Path$FillType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Linstall/app/Path$FillType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/Path$FillType;

    return-object v0
.end method

.method public static values()[Linstall/app/Path$FillType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Linstall/app/Path$FillType;->$VALUES:[Linstall/app/Path$FillType;

    invoke-virtual {v0}, [Linstall/app/Path$FillType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/Path$FillType;

    return-object v0
.end method
