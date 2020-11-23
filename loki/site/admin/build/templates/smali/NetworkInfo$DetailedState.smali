.class public final enum Linstall/app/NetworkInfo$DetailedState;
.super Ljava/lang/Enum;
.source "NetworkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetailedState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/NetworkInfo$DetailedState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/NetworkInfo$DetailedState;

.field public static final enum AUTHENTICATING:Linstall/app/NetworkInfo$DetailedState;

.field public static final enum CONNECTED:Linstall/app/NetworkInfo$DetailedState;

.field public static final enum CONNECTING:Linstall/app/NetworkInfo$DetailedState;

.field public static final enum DISCONNECTED:Linstall/app/NetworkInfo$DetailedState;

.field public static final enum DISCONNECTING:Linstall/app/NetworkInfo$DetailedState;

.field public static final enum FAILED:Linstall/app/NetworkInfo$DetailedState;

.field public static final enum IDLE:Linstall/app/NetworkInfo$DetailedState;

.field public static final enum OBTAINING_IPADDR:Linstall/app/NetworkInfo$DetailedState;

.field public static final enum SCANNING:Linstall/app/NetworkInfo$DetailedState;

.field public static final enum SUSPENDED:Linstall/app/NetworkInfo$DetailedState;


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
    new-instance v0, Linstall/app/NetworkInfo$DetailedState;

    const-string v1, "AUTHENTICATING"

    invoke-direct {v0, v1, v3}, Linstall/app/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/NetworkInfo$DetailedState;->AUTHENTICATING:Linstall/app/NetworkInfo$DetailedState;

    .line 7
    new-instance v0, Linstall/app/NetworkInfo$DetailedState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Linstall/app/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/NetworkInfo$DetailedState;->CONNECTED:Linstall/app/NetworkInfo$DetailedState;

    .line 8
    new-instance v0, Linstall/app/NetworkInfo$DetailedState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v5}, Linstall/app/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/NetworkInfo$DetailedState;->CONNECTING:Linstall/app/NetworkInfo$DetailedState;

    .line 9
    new-instance v0, Linstall/app/NetworkInfo$DetailedState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v6}, Linstall/app/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/NetworkInfo$DetailedState;->DISCONNECTED:Linstall/app/NetworkInfo$DetailedState;

    .line 10
    new-instance v0, Linstall/app/NetworkInfo$DetailedState;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v7}, Linstall/app/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/NetworkInfo$DetailedState;->DISCONNECTING:Linstall/app/NetworkInfo$DetailedState;

    .line 11
    new-instance v0, Linstall/app/NetworkInfo$DetailedState;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Linstall/app/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/NetworkInfo$DetailedState;->FAILED:Linstall/app/NetworkInfo$DetailedState;

    .line 12
    new-instance v0, Linstall/app/NetworkInfo$DetailedState;

    const-string v1, "IDLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Linstall/app/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/NetworkInfo$DetailedState;->IDLE:Linstall/app/NetworkInfo$DetailedState;

    .line 13
    new-instance v0, Linstall/app/NetworkInfo$DetailedState;

    const-string v1, "OBTAINING_IPADDR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Linstall/app/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Linstall/app/NetworkInfo$DetailedState;

    .line 14
    new-instance v0, Linstall/app/NetworkInfo$DetailedState;

    const-string v1, "SCANNING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Linstall/app/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/NetworkInfo$DetailedState;->SCANNING:Linstall/app/NetworkInfo$DetailedState;

    .line 15
    new-instance v0, Linstall/app/NetworkInfo$DetailedState;

    const-string v1, "SUSPENDED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Linstall/app/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/NetworkInfo$DetailedState;->SUSPENDED:Linstall/app/NetworkInfo$DetailedState;

    .line 5
    const/16 v0, 0xa

    new-array v0, v0, [Linstall/app/NetworkInfo$DetailedState;

    sget-object v1, Linstall/app/NetworkInfo$DetailedState;->AUTHENTICATING:Linstall/app/NetworkInfo$DetailedState;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/NetworkInfo$DetailedState;->CONNECTED:Linstall/app/NetworkInfo$DetailedState;

    aput-object v1, v0, v4

    sget-object v1, Linstall/app/NetworkInfo$DetailedState;->CONNECTING:Linstall/app/NetworkInfo$DetailedState;

    aput-object v1, v0, v5

    sget-object v1, Linstall/app/NetworkInfo$DetailedState;->DISCONNECTED:Linstall/app/NetworkInfo$DetailedState;

    aput-object v1, v0, v6

    sget-object v1, Linstall/app/NetworkInfo$DetailedState;->DISCONNECTING:Linstall/app/NetworkInfo$DetailedState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Linstall/app/NetworkInfo$DetailedState;->FAILED:Linstall/app/NetworkInfo$DetailedState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Linstall/app/NetworkInfo$DetailedState;->IDLE:Linstall/app/NetworkInfo$DetailedState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Linstall/app/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Linstall/app/NetworkInfo$DetailedState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Linstall/app/NetworkInfo$DetailedState;->SCANNING:Linstall/app/NetworkInfo$DetailedState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Linstall/app/NetworkInfo$DetailedState;->SUSPENDED:Linstall/app/NetworkInfo$DetailedState;

    aput-object v2, v0, v1

    sput-object v0, Linstall/app/NetworkInfo$DetailedState;->$VALUES:[Linstall/app/NetworkInfo$DetailedState;

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

.method public static valueOf(Ljava/lang/String;)Linstall/app/NetworkInfo$DetailedState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Linstall/app/NetworkInfo$DetailedState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public static values()[Linstall/app/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Linstall/app/NetworkInfo$DetailedState;->$VALUES:[Linstall/app/NetworkInfo$DetailedState;

    invoke-virtual {v0}, [Linstall/app/NetworkInfo$DetailedState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/NetworkInfo$DetailedState;

    return-object v0
.end method
