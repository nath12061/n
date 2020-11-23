.class public final enum Linstall/app/NetworkInfo$State;
.super Ljava/lang/Enum;
.source "NetworkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/NetworkInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/NetworkInfo$State;

.field public static final enum CONNECTED:Linstall/app/NetworkInfo$State;

.field public static final enum CONNECTING:Linstall/app/NetworkInfo$State;

.field public static final enum DISCONNECTED:Linstall/app/NetworkInfo$State;

.field public static final enum DISCONNECTING:Linstall/app/NetworkInfo$State;

.field public static final enum SUSPENDED:Linstall/app/NetworkInfo$State;

.field public static final enum UNKNOWN:Linstall/app/NetworkInfo$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Linstall/app/NetworkInfo$State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Linstall/app/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/NetworkInfo$State;->CONNECTED:Linstall/app/NetworkInfo$State;

    .line 20
    new-instance v0, Linstall/app/NetworkInfo$State;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v4}, Linstall/app/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/NetworkInfo$State;->CONNECTING:Linstall/app/NetworkInfo$State;

    .line 21
    new-instance v0, Linstall/app/NetworkInfo$State;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v5}, Linstall/app/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/NetworkInfo$State;->DISCONNECTED:Linstall/app/NetworkInfo$State;

    .line 22
    new-instance v0, Linstall/app/NetworkInfo$State;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v6}, Linstall/app/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/NetworkInfo$State;->DISCONNECTING:Linstall/app/NetworkInfo$State;

    .line 23
    new-instance v0, Linstall/app/NetworkInfo$State;

    const-string v1, "SUSPENDED"

    invoke-direct {v0, v1, v7}, Linstall/app/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/NetworkInfo$State;->SUSPENDED:Linstall/app/NetworkInfo$State;

    .line 24
    new-instance v0, Linstall/app/NetworkInfo$State;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Linstall/app/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/NetworkInfo$State;->UNKNOWN:Linstall/app/NetworkInfo$State;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Linstall/app/NetworkInfo$State;

    sget-object v1, Linstall/app/NetworkInfo$State;->CONNECTED:Linstall/app/NetworkInfo$State;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/NetworkInfo$State;->CONNECTING:Linstall/app/NetworkInfo$State;

    aput-object v1, v0, v4

    sget-object v1, Linstall/app/NetworkInfo$State;->DISCONNECTED:Linstall/app/NetworkInfo$State;

    aput-object v1, v0, v5

    sget-object v1, Linstall/app/NetworkInfo$State;->DISCONNECTING:Linstall/app/NetworkInfo$State;

    aput-object v1, v0, v6

    sget-object v1, Linstall/app/NetworkInfo$State;->SUSPENDED:Linstall/app/NetworkInfo$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Linstall/app/NetworkInfo$State;->UNKNOWN:Linstall/app/NetworkInfo$State;

    aput-object v2, v0, v1

    sput-object v0, Linstall/app/NetworkInfo$State;->$VALUES:[Linstall/app/NetworkInfo$State;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/NetworkInfo$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Linstall/app/NetworkInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/NetworkInfo$State;

    return-object v0
.end method

.method public static values()[Linstall/app/NetworkInfo$State;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Linstall/app/NetworkInfo$State;->$VALUES:[Linstall/app/NetworkInfo$State;

    invoke-virtual {v0}, [Linstall/app/NetworkInfo$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/NetworkInfo$State;

    return-object v0
.end method
