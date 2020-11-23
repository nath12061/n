.class public final enum Linstall/app/AvoidXfermode$Mode;
.super Ljava/lang/Enum;
.source "AvoidXfermode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/AvoidXfermode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/AvoidXfermode$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/AvoidXfermode$Mode;

.field public static final enum AVOID:Linstall/app/AvoidXfermode$Mode;

.field public static final enum TARGET:Linstall/app/AvoidXfermode$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Linstall/app/AvoidXfermode$Mode;

    const-string v1, "AVOID"

    invoke-direct {v0, v1, v2}, Linstall/app/AvoidXfermode$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/AvoidXfermode$Mode;->AVOID:Linstall/app/AvoidXfermode$Mode;

    .line 7
    new-instance v0, Linstall/app/AvoidXfermode$Mode;

    const-string v1, "TARGET"

    invoke-direct {v0, v1, v3}, Linstall/app/AvoidXfermode$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/AvoidXfermode$Mode;->TARGET:Linstall/app/AvoidXfermode$Mode;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Linstall/app/AvoidXfermode$Mode;

    sget-object v1, Linstall/app/AvoidXfermode$Mode;->AVOID:Linstall/app/AvoidXfermode$Mode;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/AvoidXfermode$Mode;->TARGET:Linstall/app/AvoidXfermode$Mode;

    aput-object v1, v0, v3

    sput-object v0, Linstall/app/AvoidXfermode$Mode;->$VALUES:[Linstall/app/AvoidXfermode$Mode;

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

.method public static valueOf(Ljava/lang/String;)Linstall/app/AvoidXfermode$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Linstall/app/AvoidXfermode$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/AvoidXfermode$Mode;

    return-object v0
.end method

.method public static values()[Linstall/app/AvoidXfermode$Mode;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Linstall/app/AvoidXfermode$Mode;->$VALUES:[Linstall/app/AvoidXfermode$Mode;

    invoke-virtual {v0}, [Linstall/app/AvoidXfermode$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/AvoidXfermode$Mode;

    return-object v0
.end method
