.class public final enum Linstall/app/Paint$Style;
.super Ljava/lang/Enum;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/Paint$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/Paint$Style;

.field public static final enum FILL:Linstall/app/Paint$Style;

.field public static final enum FILL_AND_STROKE:Linstall/app/Paint$Style;

.field public static final enum STROKE:Linstall/app/Paint$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Linstall/app/Paint$Style;

    const-string v1, "FILL"

    invoke-direct {v0, v1, v2}, Linstall/app/Paint$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Paint$Style;->FILL:Linstall/app/Paint$Style;

    .line 62
    new-instance v0, Linstall/app/Paint$Style;

    const-string v1, "FILL_AND_STROKE"

    invoke-direct {v0, v1, v3}, Linstall/app/Paint$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Paint$Style;->FILL_AND_STROKE:Linstall/app/Paint$Style;

    .line 63
    new-instance v0, Linstall/app/Paint$Style;

    const-string v1, "STROKE"

    invoke-direct {v0, v1, v4}, Linstall/app/Paint$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Paint$Style;->STROKE:Linstall/app/Paint$Style;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Linstall/app/Paint$Style;

    sget-object v1, Linstall/app/Paint$Style;->FILL:Linstall/app/Paint$Style;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/Paint$Style;->FILL_AND_STROKE:Linstall/app/Paint$Style;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/Paint$Style;->STROKE:Linstall/app/Paint$Style;

    aput-object v1, v0, v4

    sput-object v0, Linstall/app/Paint$Style;->$VALUES:[Linstall/app/Paint$Style;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/Paint$Style;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Linstall/app/Paint$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/Paint$Style;

    return-object v0
.end method

.method public static values()[Linstall/app/Paint$Style;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Linstall/app/Paint$Style;->$VALUES:[Linstall/app/Paint$Style;

    invoke-virtual {v0}, [Linstall/app/Paint$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/Paint$Style;

    return-object v0
.end method
