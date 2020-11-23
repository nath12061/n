.class public final enum Linstall/app/Canvas$VertexMode;
.super Ljava/lang/Enum;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VertexMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/Canvas$VertexMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/Canvas$VertexMode;

.field public static final enum TRIANGLES:Linstall/app/Canvas$VertexMode;

.field public static final enum TRIANGLE_FAN:Linstall/app/Canvas$VertexMode;

.field public static final enum TRIANGLE_STRIP:Linstall/app/Canvas$VertexMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Linstall/app/Canvas$VertexMode;

    const-string v1, "TRIANGLES"

    invoke-direct {v0, v1, v2}, Linstall/app/Canvas$VertexMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Canvas$VertexMode;->TRIANGLES:Linstall/app/Canvas$VertexMode;

    .line 23
    new-instance v0, Linstall/app/Canvas$VertexMode;

    const-string v1, "TRIANGLE_FAN"

    invoke-direct {v0, v1, v3}, Linstall/app/Canvas$VertexMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Canvas$VertexMode;->TRIANGLE_FAN:Linstall/app/Canvas$VertexMode;

    .line 24
    new-instance v0, Linstall/app/Canvas$VertexMode;

    const-string v1, "TRIANGLE_STRIP"

    invoke-direct {v0, v1, v4}, Linstall/app/Canvas$VertexMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Canvas$VertexMode;->TRIANGLE_STRIP:Linstall/app/Canvas$VertexMode;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Linstall/app/Canvas$VertexMode;

    sget-object v1, Linstall/app/Canvas$VertexMode;->TRIANGLES:Linstall/app/Canvas$VertexMode;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/Canvas$VertexMode;->TRIANGLE_FAN:Linstall/app/Canvas$VertexMode;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/Canvas$VertexMode;->TRIANGLE_STRIP:Linstall/app/Canvas$VertexMode;

    aput-object v1, v0, v4

    sput-object v0, Linstall/app/Canvas$VertexMode;->$VALUES:[Linstall/app/Canvas$VertexMode;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/Canvas$VertexMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Linstall/app/Canvas$VertexMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/Canvas$VertexMode;

    return-object v0
.end method

.method public static values()[Linstall/app/Canvas$VertexMode;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Linstall/app/Canvas$VertexMode;->$VALUES:[Linstall/app/Canvas$VertexMode;

    invoke-virtual {v0}, [Linstall/app/Canvas$VertexMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/Canvas$VertexMode;

    return-object v0
.end method
