.class public final enum Linstall/app/Path$Direction;
.super Ljava/lang/Enum;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/Path$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/Path$Direction;

.field public static final enum CCW:Linstall/app/Path$Direction;

.field public static final enum CW:Linstall/app/Path$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Linstall/app/Path$Direction;

    const-string v1, "CCW"

    invoke-direct {v0, v1, v2}, Linstall/app/Path$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Path$Direction;->CCW:Linstall/app/Path$Direction;

    .line 7
    new-instance v0, Linstall/app/Path$Direction;

    const-string v1, "CW"

    invoke-direct {v0, v1, v3}, Linstall/app/Path$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Path$Direction;->CW:Linstall/app/Path$Direction;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Linstall/app/Path$Direction;

    sget-object v1, Linstall/app/Path$Direction;->CCW:Linstall/app/Path$Direction;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/Path$Direction;->CW:Linstall/app/Path$Direction;

    aput-object v1, v0, v3

    sput-object v0, Linstall/app/Path$Direction;->$VALUES:[Linstall/app/Path$Direction;

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

.method public static valueOf(Ljava/lang/String;)Linstall/app/Path$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Linstall/app/Path$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/Path$Direction;

    return-object v0
.end method

.method public static values()[Linstall/app/Path$Direction;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Linstall/app/Path$Direction;->$VALUES:[Linstall/app/Path$Direction;

    invoke-virtual {v0}, [Linstall/app/Path$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/Path$Direction;

    return-object v0
.end method
