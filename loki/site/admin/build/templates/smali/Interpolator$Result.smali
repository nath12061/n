.class public final enum Linstall/app/Interpolator$Result;
.super Ljava/lang/Enum;
.source "Interpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Interpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/Interpolator$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/Interpolator$Result;

.field public static final enum FREEZE_END:Linstall/app/Interpolator$Result;

.field public static final enum FREEZE_START:Linstall/app/Interpolator$Result;

.field public static final enum NORMAL:Linstall/app/Interpolator$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Linstall/app/Interpolator$Result;

    const-string v1, "FREEZE_END"

    invoke-direct {v0, v1, v2}, Linstall/app/Interpolator$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Interpolator$Result;->FREEZE_END:Linstall/app/Interpolator$Result;

    .line 7
    new-instance v0, Linstall/app/Interpolator$Result;

    const-string v1, "FREEZE_START"

    invoke-direct {v0, v1, v3}, Linstall/app/Interpolator$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Interpolator$Result;->FREEZE_START:Linstall/app/Interpolator$Result;

    .line 8
    new-instance v0, Linstall/app/Interpolator$Result;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Linstall/app/Interpolator$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Interpolator$Result;->NORMAL:Linstall/app/Interpolator$Result;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Linstall/app/Interpolator$Result;

    sget-object v1, Linstall/app/Interpolator$Result;->FREEZE_END:Linstall/app/Interpolator$Result;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/Interpolator$Result;->FREEZE_START:Linstall/app/Interpolator$Result;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/Interpolator$Result;->NORMAL:Linstall/app/Interpolator$Result;

    aput-object v1, v0, v4

    sput-object v0, Linstall/app/Interpolator$Result;->$VALUES:[Linstall/app/Interpolator$Result;

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

.method public static valueOf(Ljava/lang/String;)Linstall/app/Interpolator$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Linstall/app/Interpolator$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/Interpolator$Result;

    return-object v0
.end method

.method public static values()[Linstall/app/Interpolator$Result;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Linstall/app/Interpolator$Result;->$VALUES:[Linstall/app/Interpolator$Result;

    invoke-virtual {v0}, [Linstall/app/Interpolator$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/Interpolator$Result;

    return-object v0
.end method
