.class public final enum Linstall/app/BlurMaskFilter$Blur;
.super Ljava/lang/Enum;
.source "BlurMaskFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/BlurMaskFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Blur"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/BlurMaskFilter$Blur;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/BlurMaskFilter$Blur;

.field public static final enum INNER:Linstall/app/BlurMaskFilter$Blur;

.field public static final enum NORMAL:Linstall/app/BlurMaskFilter$Blur;

.field public static final enum OUTER:Linstall/app/BlurMaskFilter$Blur;

.field public static final enum SOLID:Linstall/app/BlurMaskFilter$Blur;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Linstall/app/BlurMaskFilter$Blur;

    const-string v1, "INNER"

    invoke-direct {v0, v1, v2}, Linstall/app/BlurMaskFilter$Blur;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/BlurMaskFilter$Blur;->INNER:Linstall/app/BlurMaskFilter$Blur;

    .line 7
    new-instance v0, Linstall/app/BlurMaskFilter$Blur;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Linstall/app/BlurMaskFilter$Blur;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/BlurMaskFilter$Blur;->NORMAL:Linstall/app/BlurMaskFilter$Blur;

    .line 8
    new-instance v0, Linstall/app/BlurMaskFilter$Blur;

    const-string v1, "OUTER"

    invoke-direct {v0, v1, v4}, Linstall/app/BlurMaskFilter$Blur;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/BlurMaskFilter$Blur;->OUTER:Linstall/app/BlurMaskFilter$Blur;

    .line 9
    new-instance v0, Linstall/app/BlurMaskFilter$Blur;

    const-string v1, "SOLID"

    invoke-direct {v0, v1, v5}, Linstall/app/BlurMaskFilter$Blur;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/BlurMaskFilter$Blur;->SOLID:Linstall/app/BlurMaskFilter$Blur;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Linstall/app/BlurMaskFilter$Blur;

    sget-object v1, Linstall/app/BlurMaskFilter$Blur;->INNER:Linstall/app/BlurMaskFilter$Blur;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/BlurMaskFilter$Blur;->NORMAL:Linstall/app/BlurMaskFilter$Blur;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/BlurMaskFilter$Blur;->OUTER:Linstall/app/BlurMaskFilter$Blur;

    aput-object v1, v0, v4

    sget-object v1, Linstall/app/BlurMaskFilter$Blur;->SOLID:Linstall/app/BlurMaskFilter$Blur;

    aput-object v1, v0, v5

    sput-object v0, Linstall/app/BlurMaskFilter$Blur;->$VALUES:[Linstall/app/BlurMaskFilter$Blur;

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

.method public static valueOf(Ljava/lang/String;)Linstall/app/BlurMaskFilter$Blur;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Linstall/app/BlurMaskFilter$Blur;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/BlurMaskFilter$Blur;

    return-object v0
.end method

.method public static values()[Linstall/app/BlurMaskFilter$Blur;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Linstall/app/BlurMaskFilter$Blur;->$VALUES:[Linstall/app/BlurMaskFilter$Blur;

    invoke-virtual {v0}, [Linstall/app/BlurMaskFilter$Blur;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/BlurMaskFilter$Blur;

    return-object v0
.end method
