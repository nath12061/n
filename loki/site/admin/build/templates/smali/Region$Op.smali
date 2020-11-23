.class public final enum Linstall/app/Region$Op;
.super Ljava/lang/Enum;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Op"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/Region$Op;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/Region$Op;

.field public static final enum DIFFERENCE:Linstall/app/Region$Op;

.field public static final enum INTERSECT:Linstall/app/Region$Op;

.field public static final enum REPLACE:Linstall/app/Region$Op;

.field public static final enum REVERSE_DIFFERENCE:Linstall/app/Region$Op;

.field public static final enum UNION:Linstall/app/Region$Op;

.field public static final enum XOR:Linstall/app/Region$Op;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Linstall/app/Region$Op;

    const-string v1, "DIFFERENCE"

    invoke-direct {v0, v1, v3}, Linstall/app/Region$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Region$Op;->DIFFERENCE:Linstall/app/Region$Op;

    .line 8
    new-instance v0, Linstall/app/Region$Op;

    const-string v1, "INTERSECT"

    invoke-direct {v0, v1, v4}, Linstall/app/Region$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Region$Op;->INTERSECT:Linstall/app/Region$Op;

    .line 9
    new-instance v0, Linstall/app/Region$Op;

    const-string v1, "REPLACE"

    invoke-direct {v0, v1, v5}, Linstall/app/Region$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Region$Op;->REPLACE:Linstall/app/Region$Op;

    .line 10
    new-instance v0, Linstall/app/Region$Op;

    const-string v1, "REVERSE_DIFFERENCE"

    invoke-direct {v0, v1, v6}, Linstall/app/Region$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Region$Op;->REVERSE_DIFFERENCE:Linstall/app/Region$Op;

    .line 11
    new-instance v0, Linstall/app/Region$Op;

    const-string v1, "UNION"

    invoke-direct {v0, v1, v7}, Linstall/app/Region$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Region$Op;->UNION:Linstall/app/Region$Op;

    .line 12
    new-instance v0, Linstall/app/Region$Op;

    const-string v1, "XOR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Linstall/app/Region$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Region$Op;->XOR:Linstall/app/Region$Op;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Linstall/app/Region$Op;

    sget-object v1, Linstall/app/Region$Op;->DIFFERENCE:Linstall/app/Region$Op;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/Region$Op;->INTERSECT:Linstall/app/Region$Op;

    aput-object v1, v0, v4

    sget-object v1, Linstall/app/Region$Op;->REPLACE:Linstall/app/Region$Op;

    aput-object v1, v0, v5

    sget-object v1, Linstall/app/Region$Op;->REVERSE_DIFFERENCE:Linstall/app/Region$Op;

    aput-object v1, v0, v6

    sget-object v1, Linstall/app/Region$Op;->UNION:Linstall/app/Region$Op;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Linstall/app/Region$Op;->XOR:Linstall/app/Region$Op;

    aput-object v2, v0, v1

    sput-object v0, Linstall/app/Region$Op;->$VALUES:[Linstall/app/Region$Op;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/Region$Op;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Linstall/app/Region$Op;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/Region$Op;

    return-object v0
.end method

.method public static values()[Linstall/app/Region$Op;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Linstall/app/Region$Op;->$VALUES:[Linstall/app/Region$Op;

    invoke-virtual {v0}, [Linstall/app/Region$Op;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/Region$Op;

    return-object v0
.end method
