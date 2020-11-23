.class public final enum Linstall/app/Matrix$ScaleToFit;
.super Ljava/lang/Enum;
.source "Matrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Matrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleToFit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/Matrix$ScaleToFit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/Matrix$ScaleToFit;

.field public static final enum CENTER:Linstall/app/Matrix$ScaleToFit;

.field public static final enum END:Linstall/app/Matrix$ScaleToFit;

.field public static final enum FILL:Linstall/app/Matrix$ScaleToFit;

.field public static final enum START:Linstall/app/Matrix$ScaleToFit;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Linstall/app/Matrix$ScaleToFit;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v2}, Linstall/app/Matrix$ScaleToFit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Matrix$ScaleToFit;->CENTER:Linstall/app/Matrix$ScaleToFit;

    .line 16
    new-instance v0, Linstall/app/Matrix$ScaleToFit;

    const-string v1, "END"

    invoke-direct {v0, v1, v3}, Linstall/app/Matrix$ScaleToFit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Matrix$ScaleToFit;->END:Linstall/app/Matrix$ScaleToFit;

    .line 17
    new-instance v0, Linstall/app/Matrix$ScaleToFit;

    const-string v1, "FILL"

    invoke-direct {v0, v1, v4}, Linstall/app/Matrix$ScaleToFit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Matrix$ScaleToFit;->FILL:Linstall/app/Matrix$ScaleToFit;

    .line 18
    new-instance v0, Linstall/app/Matrix$ScaleToFit;

    const-string v1, "START"

    invoke-direct {v0, v1, v5}, Linstall/app/Matrix$ScaleToFit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Matrix$ScaleToFit;->START:Linstall/app/Matrix$ScaleToFit;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Linstall/app/Matrix$ScaleToFit;

    sget-object v1, Linstall/app/Matrix$ScaleToFit;->CENTER:Linstall/app/Matrix$ScaleToFit;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/Matrix$ScaleToFit;->END:Linstall/app/Matrix$ScaleToFit;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/Matrix$ScaleToFit;->FILL:Linstall/app/Matrix$ScaleToFit;

    aput-object v1, v0, v4

    sget-object v1, Linstall/app/Matrix$ScaleToFit;->START:Linstall/app/Matrix$ScaleToFit;

    aput-object v1, v0, v5

    sput-object v0, Linstall/app/Matrix$ScaleToFit;->$VALUES:[Linstall/app/Matrix$ScaleToFit;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/Matrix$ScaleToFit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Linstall/app/Matrix$ScaleToFit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/Matrix$ScaleToFit;

    return-object v0
.end method

.method public static values()[Linstall/app/Matrix$ScaleToFit;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Linstall/app/Matrix$ScaleToFit;->$VALUES:[Linstall/app/Matrix$ScaleToFit;

    invoke-virtual {v0}, [Linstall/app/Matrix$ScaleToFit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/Matrix$ScaleToFit;

    return-object v0
.end method
