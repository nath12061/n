.class public final enum Linstall/app/Bitmap$Config;
.super Ljava/lang/Enum;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/Bitmap$Config;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/Bitmap$Config;

.field public static final enum ALPHA_8:Linstall/app/Bitmap$Config;

.field public static final enum ARGB_4444:Linstall/app/Bitmap$Config;

.field public static final enum ARGB_8888:Linstall/app/Bitmap$Config;

.field public static final enum RGB_565:Linstall/app/Bitmap$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Linstall/app/Bitmap$Config;

    const-string v1, "ALPHA_8"

    invoke-direct {v0, v1, v2}, Linstall/app/Bitmap$Config;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Bitmap$Config;->ALPHA_8:Linstall/app/Bitmap$Config;

    .line 16
    new-instance v0, Linstall/app/Bitmap$Config;

    const-string v1, "ARGB_4444"

    invoke-direct {v0, v1, v3}, Linstall/app/Bitmap$Config;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Bitmap$Config;->ARGB_4444:Linstall/app/Bitmap$Config;

    .line 17
    new-instance v0, Linstall/app/Bitmap$Config;

    const-string v1, "ARGB_8888"

    invoke-direct {v0, v1, v4}, Linstall/app/Bitmap$Config;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Bitmap$Config;->ARGB_8888:Linstall/app/Bitmap$Config;

    .line 18
    new-instance v0, Linstall/app/Bitmap$Config;

    const-string v1, "RGB_565"

    invoke-direct {v0, v1, v5}, Linstall/app/Bitmap$Config;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Bitmap$Config;->RGB_565:Linstall/app/Bitmap$Config;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Linstall/app/Bitmap$Config;

    sget-object v1, Linstall/app/Bitmap$Config;->ALPHA_8:Linstall/app/Bitmap$Config;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/Bitmap$Config;->ARGB_4444:Linstall/app/Bitmap$Config;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/Bitmap$Config;->ARGB_8888:Linstall/app/Bitmap$Config;

    aput-object v1, v0, v4

    sget-object v1, Linstall/app/Bitmap$Config;->RGB_565:Linstall/app/Bitmap$Config;

    aput-object v1, v0, v5

    sput-object v0, Linstall/app/Bitmap$Config;->$VALUES:[Linstall/app/Bitmap$Config;

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

.method public static valueOf(Ljava/lang/String;)Linstall/app/Bitmap$Config;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Linstall/app/Bitmap$Config;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/Bitmap$Config;

    return-object v0
.end method

.method public static values()[Linstall/app/Bitmap$Config;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Linstall/app/Bitmap$Config;->$VALUES:[Linstall/app/Bitmap$Config;

    invoke-virtual {v0}, [Linstall/app/Bitmap$Config;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/Bitmap$Config;

    return-object v0
.end method
