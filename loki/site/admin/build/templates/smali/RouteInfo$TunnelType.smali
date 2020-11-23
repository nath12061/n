.class public final enum Linstall/app/RouteInfo$TunnelType;
.super Ljava/lang/Enum;
.source "RouteInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/RouteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TunnelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/RouteInfo$TunnelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/RouteInfo$TunnelType;

.field public static final enum PLAIN:Linstall/app/RouteInfo$TunnelType;

.field public static final enum TUNNELLED:Linstall/app/RouteInfo$TunnelType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Linstall/app/RouteInfo$TunnelType;

    const-string v1, "PLAIN"

    invoke-direct {v0, v1, v2}, Linstall/app/RouteInfo$TunnelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/RouteInfo$TunnelType;->PLAIN:Linstall/app/RouteInfo$TunnelType;

    .line 14
    new-instance v0, Linstall/app/RouteInfo$TunnelType;

    const-string v1, "TUNNELLED"

    invoke-direct {v0, v1, v3}, Linstall/app/RouteInfo$TunnelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/RouteInfo$TunnelType;->TUNNELLED:Linstall/app/RouteInfo$TunnelType;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Linstall/app/RouteInfo$TunnelType;

    sget-object v1, Linstall/app/RouteInfo$TunnelType;->PLAIN:Linstall/app/RouteInfo$TunnelType;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/RouteInfo$TunnelType;->TUNNELLED:Linstall/app/RouteInfo$TunnelType;

    aput-object v1, v0, v3

    sput-object v0, Linstall/app/RouteInfo$TunnelType;->$VALUES:[Linstall/app/RouteInfo$TunnelType;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/RouteInfo$TunnelType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Linstall/app/RouteInfo$TunnelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/RouteInfo$TunnelType;

    return-object v0
.end method

.method public static values()[Linstall/app/RouteInfo$TunnelType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Linstall/app/RouteInfo$TunnelType;->$VALUES:[Linstall/app/RouteInfo$TunnelType;

    invoke-virtual {v0}, [Linstall/app/RouteInfo$TunnelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/RouteInfo$TunnelType;

    return-object v0
.end method
