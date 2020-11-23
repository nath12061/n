.class public final enum Linstall/app/WebSettings$TextSize;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/WebSettings$TextSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/WebSettings$TextSize;

.field public static final enum LARGER:Linstall/app/WebSettings$TextSize;

.field public static final enum LARGEST:Linstall/app/WebSettings$TextSize;

.field public static final enum NORMAL:Linstall/app/WebSettings$TextSize;

.field public static final enum SMALLER:Linstall/app/WebSettings$TextSize;

.field public static final enum SMALLEST:Linstall/app/WebSettings$TextSize;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Linstall/app/WebSettings$TextSize;

    const-string v1, "LARGER"

    invoke-direct {v0, v1, v2}, Linstall/app/WebSettings$TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/WebSettings$TextSize;->LARGER:Linstall/app/WebSettings$TextSize;

    .line 24
    new-instance v0, Linstall/app/WebSettings$TextSize;

    const-string v1, "LARGEST"

    invoke-direct {v0, v1, v3}, Linstall/app/WebSettings$TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/WebSettings$TextSize;->LARGEST:Linstall/app/WebSettings$TextSize;

    .line 25
    new-instance v0, Linstall/app/WebSettings$TextSize;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Linstall/app/WebSettings$TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/WebSettings$TextSize;->NORMAL:Linstall/app/WebSettings$TextSize;

    .line 26
    new-instance v0, Linstall/app/WebSettings$TextSize;

    const-string v1, "SMALLER"

    invoke-direct {v0, v1, v5}, Linstall/app/WebSettings$TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/WebSettings$TextSize;->SMALLER:Linstall/app/WebSettings$TextSize;

    .line 27
    new-instance v0, Linstall/app/WebSettings$TextSize;

    const-string v1, "SMALLEST"

    invoke-direct {v0, v1, v6}, Linstall/app/WebSettings$TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/WebSettings$TextSize;->SMALLEST:Linstall/app/WebSettings$TextSize;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Linstall/app/WebSettings$TextSize;

    sget-object v1, Linstall/app/WebSettings$TextSize;->LARGER:Linstall/app/WebSettings$TextSize;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/WebSettings$TextSize;->LARGEST:Linstall/app/WebSettings$TextSize;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/WebSettings$TextSize;->NORMAL:Linstall/app/WebSettings$TextSize;

    aput-object v1, v0, v4

    sget-object v1, Linstall/app/WebSettings$TextSize;->SMALLER:Linstall/app/WebSettings$TextSize;

    aput-object v1, v0, v5

    sget-object v1, Linstall/app/WebSettings$TextSize;->SMALLEST:Linstall/app/WebSettings$TextSize;

    aput-object v1, v0, v6

    sput-object v0, Linstall/app/WebSettings$TextSize;->$VALUES:[Linstall/app/WebSettings$TextSize;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/WebSettings$TextSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Linstall/app/WebSettings$TextSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/WebSettings$TextSize;

    return-object v0
.end method

.method public static values()[Linstall/app/WebSettings$TextSize;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Linstall/app/WebSettings$TextSize;->$VALUES:[Linstall/app/WebSettings$TextSize;

    invoke-virtual {v0}, [Linstall/app/WebSettings$TextSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/WebSettings$TextSize;

    return-object v0
.end method
