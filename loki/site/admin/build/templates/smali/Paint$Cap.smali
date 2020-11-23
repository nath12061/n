.class public final enum Linstall/app/Paint$Cap;
.super Ljava/lang/Enum;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Cap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/Paint$Cap;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/Paint$Cap;

.field public static final enum BUTT:Linstall/app/Paint$Cap;

.field public static final enum ROUND:Linstall/app/Paint$Cap;

.field public static final enum SQUARE:Linstall/app/Paint$Cap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Linstall/app/Paint$Cap;

    const-string v1, "BUTT"

    invoke-direct {v0, v1, v2}, Linstall/app/Paint$Cap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Paint$Cap;->BUTT:Linstall/app/Paint$Cap;

    .line 22
    new-instance v0, Linstall/app/Paint$Cap;

    const-string v1, "ROUND"

    invoke-direct {v0, v1, v3}, Linstall/app/Paint$Cap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Paint$Cap;->ROUND:Linstall/app/Paint$Cap;

    .line 23
    new-instance v0, Linstall/app/Paint$Cap;

    const-string v1, "SQUARE"

    invoke-direct {v0, v1, v4}, Linstall/app/Paint$Cap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Paint$Cap;->SQUARE:Linstall/app/Paint$Cap;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Linstall/app/Paint$Cap;

    sget-object v1, Linstall/app/Paint$Cap;->BUTT:Linstall/app/Paint$Cap;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/Paint$Cap;->ROUND:Linstall/app/Paint$Cap;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/Paint$Cap;->SQUARE:Linstall/app/Paint$Cap;

    aput-object v1, v0, v4

    sput-object v0, Linstall/app/Paint$Cap;->$VALUES:[Linstall/app/Paint$Cap;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/Paint$Cap;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Linstall/app/Paint$Cap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/Paint$Cap;

    return-object v0
.end method

.method public static values()[Linstall/app/Paint$Cap;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Linstall/app/Paint$Cap;->$VALUES:[Linstall/app/Paint$Cap;

    invoke-virtual {v0}, [Linstall/app/Paint$Cap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/Paint$Cap;

    return-object v0
.end method
