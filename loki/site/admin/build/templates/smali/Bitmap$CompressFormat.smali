.class public final enum Linstall/app/Bitmap$CompressFormat;
.super Ljava/lang/Enum;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompressFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/Bitmap$CompressFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/Bitmap$CompressFormat;

.field public static final enum JPEG:Linstall/app/Bitmap$CompressFormat;

.field public static final enum PNG:Linstall/app/Bitmap$CompressFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Linstall/app/Bitmap$CompressFormat;

    const-string v1, "JPEG"

    invoke-direct {v0, v1, v2}, Linstall/app/Bitmap$CompressFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Bitmap$CompressFormat;->JPEG:Linstall/app/Bitmap$CompressFormat;

    .line 11
    new-instance v0, Linstall/app/Bitmap$CompressFormat;

    const-string v1, "PNG"

    invoke-direct {v0, v1, v3}, Linstall/app/Bitmap$CompressFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Bitmap$CompressFormat;->PNG:Linstall/app/Bitmap$CompressFormat;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Linstall/app/Bitmap$CompressFormat;

    sget-object v1, Linstall/app/Bitmap$CompressFormat;->JPEG:Linstall/app/Bitmap$CompressFormat;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/Bitmap$CompressFormat;->PNG:Linstall/app/Bitmap$CompressFormat;

    aput-object v1, v0, v3

    sput-object v0, Linstall/app/Bitmap$CompressFormat;->$VALUES:[Linstall/app/Bitmap$CompressFormat;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/Bitmap$CompressFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Linstall/app/Bitmap$CompressFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/Bitmap$CompressFormat;

    return-object v0
.end method

.method public static values()[Linstall/app/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Linstall/app/Bitmap$CompressFormat;->$VALUES:[Linstall/app/Bitmap$CompressFormat;

    invoke-virtual {v0}, [Linstall/app/Bitmap$CompressFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/Bitmap$CompressFormat;

    return-object v0
.end method
