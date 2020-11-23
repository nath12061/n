.class public final enum Linstall/app/PorterDuff$Mode;
.super Ljava/lang/Enum;
.source "PorterDuff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/PorterDuff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/PorterDuff$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/PorterDuff$Mode;

.field public static final enum CLEAR:Linstall/app/PorterDuff$Mode;

.field public static final enum DARKEN:Linstall/app/PorterDuff$Mode;

.field public static final enum DST:Linstall/app/PorterDuff$Mode;

.field public static final enum DST_ATOP:Linstall/app/PorterDuff$Mode;

.field public static final enum DST_IN:Linstall/app/PorterDuff$Mode;

.field public static final enum DST_OUT:Linstall/app/PorterDuff$Mode;

.field public static final enum DST_OVER:Linstall/app/PorterDuff$Mode;

.field public static final enum LIGHTEN:Linstall/app/PorterDuff$Mode;

.field public static final enum MULTIPLY:Linstall/app/PorterDuff$Mode;

.field public static final enum SCREEN:Linstall/app/PorterDuff$Mode;

.field public static final enum SRC:Linstall/app/PorterDuff$Mode;

.field public static final enum SRC_ATOP:Linstall/app/PorterDuff$Mode;

.field public static final enum SRC_IN:Linstall/app/PorterDuff$Mode;

.field public static final enum SRC_OUT:Linstall/app/PorterDuff$Mode;

.field public static final enum SRC_OVER:Linstall/app/PorterDuff$Mode;

.field public static final enum XOR:Linstall/app/PorterDuff$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Linstall/app/PorterDuff$Mode;

    const-string v1, "CLEAR"

    invoke-direct {v0, v1, v3}, Linstall/app/PorterDuff$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/PorterDuff$Mode;->CLEAR:Linstall/app/PorterDuff$Mode;

    .line 7
    new-instance v0, Linstall/app/PorterDuff$Mode;

    const-string v1, "DARKEN"

    invoke-direct {v0, v1, v4}, Linstall/app/PorterDuff$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/PorterDuff$Mode;->DARKEN:Linstall/app/PorterDuff$Mode;

    .line 8
    new-instance v0, Linstall/app/PorterDuff$Mode;

    const-string v1, "DST"

    invoke-direct {v0, v1, v5}, Linstall/app/PorterDuff$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/PorterDuff$Mode;->DST:Linstall/app/PorterDuff$Mode;

    .line 9
    new-instance v0, Linstall/app/PorterDuff$Mode;

    const-string v1, "DST_ATOP"

    invoke-direct {v0, v1, v6}, Linstall/app/PorterDuff$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/PorterDuff$Mode;->DST_ATOP:Linstall/app/PorterDuff$Mode;

    .line 10
    new-instance v0, Linstall/app/PorterDuff$Mode;

    const-string v1, "DST_IN"

    invoke-direct {v0, v1, v7}, Linstall/app/PorterDuff$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/PorterDuff$Mode;->DST_IN:Linstall/app/PorterDuff$Mode;

    .line 11
    new-instance v0, Linstall/app/PorterDuff$Mode;

    const-string v1, "DST_OUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Linstall/app/PorterDuff$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/PorterDuff$Mode;->DST_OUT:Linstall/app/PorterDuff$Mode;

    .line 12
    new-instance v0, Linstall/app/PorterDuff$Mode;

    const-string v1, "DST_OVER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Linstall/app/PorterDuff$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/PorterDuff$Mode;->DST_OVER:Linstall/app/PorterDuff$Mode;

    .line 13
    new-instance v0, Linstall/app/PorterDuff$Mode;

    const-string v1, "LIGHTEN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Linstall/app/PorterDuff$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/PorterDuff$Mode;->LIGHTEN:Linstall/app/PorterDuff$Mode;

    .line 14
    new-instance v0, Linstall/app/PorterDuff$Mode;

    const-string v1, "MULTIPLY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Linstall/app/PorterDuff$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/PorterDuff$Mode;->MULTIPLY:Linstall/app/PorterDuff$Mode;

    .line 15
    new-instance v0, Linstall/app/PorterDuff$Mode;

    const-string v1, "SCREEN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Linstall/app/PorterDuff$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/PorterDuff$Mode;->SCREEN:Linstall/app/PorterDuff$Mode;

    .line 16
    new-instance v0, Linstall/app/PorterDuff$Mode;

    const-string v1, "SRC"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Linstall/app/PorterDuff$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/PorterDuff$Mode;->SRC:Linstall/app/PorterDuff$Mode;

    .line 17
    new-instance v0, Linstall/app/PorterDuff$Mode;

    const-string v1, "SRC_ATOP"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Linstall/app/PorterDuff$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/PorterDuff$Mode;->SRC_ATOP:Linstall/app/PorterDuff$Mode;

    .line 18
    new-instance v0, Linstall/app/PorterDuff$Mode;

    const-string v1, "SRC_IN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Linstall/app/PorterDuff$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/PorterDuff$Mode;->SRC_IN:Linstall/app/PorterDuff$Mode;

    .line 19
    new-instance v0, Linstall/app/PorterDuff$Mode;

    const-string v1, "SRC_OUT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Linstall/app/PorterDuff$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/PorterDuff$Mode;->SRC_OUT:Linstall/app/PorterDuff$Mode;

    .line 20
    new-instance v0, Linstall/app/PorterDuff$Mode;

    const-string v1, "SRC_OVER"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Linstall/app/PorterDuff$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/PorterDuff$Mode;->SRC_OVER:Linstall/app/PorterDuff$Mode;

    .line 21
    new-instance v0, Linstall/app/PorterDuff$Mode;

    const-string v1, "XOR"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Linstall/app/PorterDuff$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/PorterDuff$Mode;->XOR:Linstall/app/PorterDuff$Mode;

    .line 5
    const/16 v0, 0x10

    new-array v0, v0, [Linstall/app/PorterDuff$Mode;

    sget-object v1, Linstall/app/PorterDuff$Mode;->CLEAR:Linstall/app/PorterDuff$Mode;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/PorterDuff$Mode;->DARKEN:Linstall/app/PorterDuff$Mode;

    aput-object v1, v0, v4

    sget-object v1, Linstall/app/PorterDuff$Mode;->DST:Linstall/app/PorterDuff$Mode;

    aput-object v1, v0, v5

    sget-object v1, Linstall/app/PorterDuff$Mode;->DST_ATOP:Linstall/app/PorterDuff$Mode;

    aput-object v1, v0, v6

    sget-object v1, Linstall/app/PorterDuff$Mode;->DST_IN:Linstall/app/PorterDuff$Mode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Linstall/app/PorterDuff$Mode;->DST_OUT:Linstall/app/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Linstall/app/PorterDuff$Mode;->DST_OVER:Linstall/app/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Linstall/app/PorterDuff$Mode;->LIGHTEN:Linstall/app/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Linstall/app/PorterDuff$Mode;->MULTIPLY:Linstall/app/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Linstall/app/PorterDuff$Mode;->SCREEN:Linstall/app/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Linstall/app/PorterDuff$Mode;->SRC:Linstall/app/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Linstall/app/PorterDuff$Mode;->SRC_ATOP:Linstall/app/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Linstall/app/PorterDuff$Mode;->SRC_IN:Linstall/app/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Linstall/app/PorterDuff$Mode;->SRC_OUT:Linstall/app/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Linstall/app/PorterDuff$Mode;->SRC_OVER:Linstall/app/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Linstall/app/PorterDuff$Mode;->XOR:Linstall/app/PorterDuff$Mode;

    aput-object v2, v0, v1

    sput-object v0, Linstall/app/PorterDuff$Mode;->$VALUES:[Linstall/app/PorterDuff$Mode;

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

.method public static valueOf(Ljava/lang/String;)Linstall/app/PorterDuff$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Linstall/app/PorterDuff$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/PorterDuff$Mode;

    return-object v0
.end method

.method public static values()[Linstall/app/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Linstall/app/PorterDuff$Mode;->$VALUES:[Linstall/app/PorterDuff$Mode;

    invoke-virtual {v0}, [Linstall/app/PorterDuff$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/PorterDuff$Mode;

    return-object v0
.end method
