.class public final enum Linstall/app/SupplicantState;
.super Ljava/lang/Enum;
.source "SupplicantState.java"

# interfaces
.implements Linstall/app/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/SupplicantState;",
        ">;",
        "Linstall/app/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/SupplicantState;

.field public static final enum ASSOCIATED:Linstall/app/SupplicantState;

.field public static final enum ASSOCIATING:Linstall/app/SupplicantState;

.field public static final enum COMPLETED:Linstall/app/SupplicantState;

.field public static final enum DISCONNECTED:Linstall/app/SupplicantState;

.field public static final enum DORMANT:Linstall/app/SupplicantState;

.field public static final enum FOUR_WAY_HANDSHAKE:Linstall/app/SupplicantState;

.field public static final enum GROUP_HANDSHAKE:Linstall/app/SupplicantState;

.field public static final enum INACTIVE:Linstall/app/SupplicantState;

.field public static final enum INVALID:Linstall/app/SupplicantState;

.field public static final enum SCANNING:Linstall/app/SupplicantState;

.field public static final enum UNINITIALIZED:Linstall/app/SupplicantState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Linstall/app/SupplicantState;

    const-string v1, "ASSOCIATED"

    invoke-direct {v0, v1, v3}, Linstall/app/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/SupplicantState;->ASSOCIATED:Linstall/app/SupplicantState;

    .line 5
    new-instance v0, Linstall/app/SupplicantState;

    const-string v1, "ASSOCIATING"

    invoke-direct {v0, v1, v4}, Linstall/app/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/SupplicantState;->ASSOCIATING:Linstall/app/SupplicantState;

    .line 6
    new-instance v0, Linstall/app/SupplicantState;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v5}, Linstall/app/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/SupplicantState;->COMPLETED:Linstall/app/SupplicantState;

    .line 7
    new-instance v0, Linstall/app/SupplicantState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v6}, Linstall/app/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/SupplicantState;->DISCONNECTED:Linstall/app/SupplicantState;

    .line 8
    new-instance v0, Linstall/app/SupplicantState;

    const-string v1, "DORMANT"

    invoke-direct {v0, v1, v7}, Linstall/app/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/SupplicantState;->DORMANT:Linstall/app/SupplicantState;

    .line 9
    new-instance v0, Linstall/app/SupplicantState;

    const-string v1, "FOUR_WAY_HANDSHAKE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Linstall/app/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/SupplicantState;->FOUR_WAY_HANDSHAKE:Linstall/app/SupplicantState;

    .line 10
    new-instance v0, Linstall/app/SupplicantState;

    const-string v1, "GROUP_HANDSHAKE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Linstall/app/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/SupplicantState;->GROUP_HANDSHAKE:Linstall/app/SupplicantState;

    .line 11
    new-instance v0, Linstall/app/SupplicantState;

    const-string v1, "INACTIVE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Linstall/app/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/SupplicantState;->INACTIVE:Linstall/app/SupplicantState;

    .line 12
    new-instance v0, Linstall/app/SupplicantState;

    const-string v1, "INVALID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Linstall/app/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/SupplicantState;->INVALID:Linstall/app/SupplicantState;

    .line 13
    new-instance v0, Linstall/app/SupplicantState;

    const-string v1, "SCANNING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Linstall/app/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/SupplicantState;->SCANNING:Linstall/app/SupplicantState;

    .line 14
    new-instance v0, Linstall/app/SupplicantState;

    const-string v1, "UNINITIALIZED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Linstall/app/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/SupplicantState;->UNINITIALIZED:Linstall/app/SupplicantState;

    .line 3
    const/16 v0, 0xb

    new-array v0, v0, [Linstall/app/SupplicantState;

    sget-object v1, Linstall/app/SupplicantState;->ASSOCIATED:Linstall/app/SupplicantState;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/SupplicantState;->ASSOCIATING:Linstall/app/SupplicantState;

    aput-object v1, v0, v4

    sget-object v1, Linstall/app/SupplicantState;->COMPLETED:Linstall/app/SupplicantState;

    aput-object v1, v0, v5

    sget-object v1, Linstall/app/SupplicantState;->DISCONNECTED:Linstall/app/SupplicantState;

    aput-object v1, v0, v6

    sget-object v1, Linstall/app/SupplicantState;->DORMANT:Linstall/app/SupplicantState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Linstall/app/SupplicantState;->FOUR_WAY_HANDSHAKE:Linstall/app/SupplicantState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Linstall/app/SupplicantState;->GROUP_HANDSHAKE:Linstall/app/SupplicantState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Linstall/app/SupplicantState;->INACTIVE:Linstall/app/SupplicantState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Linstall/app/SupplicantState;->INVALID:Linstall/app/SupplicantState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Linstall/app/SupplicantState;->SCANNING:Linstall/app/SupplicantState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Linstall/app/SupplicantState;->UNINITIALIZED:Linstall/app/SupplicantState;

    aput-object v2, v0, v1

    sput-object v0, Linstall/app/SupplicantState;->$VALUES:[Linstall/app/SupplicantState;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static isValidState(Linstall/app/SupplicantState;)Z
    .locals 2
    .param p0, "state"    # Linstall/app/SupplicantState;

    .prologue
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/SupplicantState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Linstall/app/SupplicantState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/SupplicantState;

    return-object v0
.end method

.method public static values()[Linstall/app/SupplicantState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Linstall/app/SupplicantState;->$VALUES:[Linstall/app/SupplicantState;

    invoke-virtual {v0}, [Linstall/app/SupplicantState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/SupplicantState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Linstall/app/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Linstall/app/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
