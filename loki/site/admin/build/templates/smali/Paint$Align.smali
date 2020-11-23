.class public final enum Linstall/app/Paint$Align;
.super Ljava/lang/Enum;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Align"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/Paint$Align;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/Paint$Align;

.field public static final enum CENTER:Linstall/app/Paint$Align;

.field public static final enum LEFT:Linstall/app/Paint$Align;

.field public static final enum RIGHT:Linstall/app/Paint$Align;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Linstall/app/Paint$Align;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v2}, Linstall/app/Paint$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Paint$Align;->CENTER:Linstall/app/Paint$Align;

    .line 16
    new-instance v0, Linstall/app/Paint$Align;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3}, Linstall/app/Paint$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Paint$Align;->LEFT:Linstall/app/Paint$Align;

    .line 17
    new-instance v0, Linstall/app/Paint$Align;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Linstall/app/Paint$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Paint$Align;->RIGHT:Linstall/app/Paint$Align;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Linstall/app/Paint$Align;

    sget-object v1, Linstall/app/Paint$Align;->CENTER:Linstall/app/Paint$Align;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/Paint$Align;->LEFT:Linstall/app/Paint$Align;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/Paint$Align;->RIGHT:Linstall/app/Paint$Align;

    aput-object v1, v0, v4

    sput-object v0, Linstall/app/Paint$Align;->$VALUES:[Linstall/app/Paint$Align;

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

.method public static valueOf(Ljava/lang/String;)Linstall/app/Paint$Align;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Linstall/app/Paint$Align;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/Paint$Align;

    return-object v0
.end method

.method public static values()[Linstall/app/Paint$Align;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Linstall/app/Paint$Align;->$VALUES:[Linstall/app/Paint$Align;

    invoke-virtual {v0}, [Linstall/app/Paint$Align;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/Paint$Align;

    return-object v0
.end method
