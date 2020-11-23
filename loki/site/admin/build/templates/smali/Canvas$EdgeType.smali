.class public final enum Linstall/app/Canvas$EdgeType;
.super Ljava/lang/Enum;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EdgeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/Canvas$EdgeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/Canvas$EdgeType;

.field public static final enum AA:Linstall/app/Canvas$EdgeType;

.field public static final enum BW:Linstall/app/Canvas$EdgeType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Linstall/app/Canvas$EdgeType;

    const-string v1, "AA"

    invoke-direct {v0, v1, v2}, Linstall/app/Canvas$EdgeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Canvas$EdgeType;->AA:Linstall/app/Canvas$EdgeType;

    .line 18
    new-instance v0, Linstall/app/Canvas$EdgeType;

    const-string v1, "BW"

    invoke-direct {v0, v1, v3}, Linstall/app/Canvas$EdgeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Canvas$EdgeType;->BW:Linstall/app/Canvas$EdgeType;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Linstall/app/Canvas$EdgeType;

    sget-object v1, Linstall/app/Canvas$EdgeType;->AA:Linstall/app/Canvas$EdgeType;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/Canvas$EdgeType;->BW:Linstall/app/Canvas$EdgeType;

    aput-object v1, v0, v3

    sput-object v0, Linstall/app/Canvas$EdgeType;->$VALUES:[Linstall/app/Canvas$EdgeType;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/Canvas$EdgeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Linstall/app/Canvas$EdgeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/Canvas$EdgeType;

    return-object v0
.end method

.method public static values()[Linstall/app/Canvas$EdgeType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Linstall/app/Canvas$EdgeType;->$VALUES:[Linstall/app/Canvas$EdgeType;

    invoke-virtual {v0}, [Linstall/app/Canvas$EdgeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/Canvas$EdgeType;

    return-object v0
.end method
