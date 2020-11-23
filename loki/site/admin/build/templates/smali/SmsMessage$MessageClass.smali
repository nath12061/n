.class public final enum Linstall/app/SmsMessage$MessageClass;
.super Ljava/lang/Enum;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/SmsMessage$MessageClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/SmsMessage$MessageClass;

.field public static final enum CLASS_0:Linstall/app/SmsMessage$MessageClass;

.field public static final enum CLASS_1:Linstall/app/SmsMessage$MessageClass;

.field public static final enum CLASS_2:Linstall/app/SmsMessage$MessageClass;

.field public static final enum CLASS_3:Linstall/app/SmsMessage$MessageClass;

.field public static final enum UNKNOWN:Linstall/app/SmsMessage$MessageClass;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Linstall/app/SmsMessage$MessageClass;

    const-string v1, "CLASS_0"

    invoke-direct {v0, v1, v2}, Linstall/app/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/SmsMessage$MessageClass;->CLASS_0:Linstall/app/SmsMessage$MessageClass;

    .line 14
    new-instance v0, Linstall/app/SmsMessage$MessageClass;

    const-string v1, "CLASS_1"

    invoke-direct {v0, v1, v3}, Linstall/app/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/SmsMessage$MessageClass;->CLASS_1:Linstall/app/SmsMessage$MessageClass;

    .line 15
    new-instance v0, Linstall/app/SmsMessage$MessageClass;

    const-string v1, "CLASS_2"

    invoke-direct {v0, v1, v4}, Linstall/app/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/SmsMessage$MessageClass;->CLASS_2:Linstall/app/SmsMessage$MessageClass;

    .line 16
    new-instance v0, Linstall/app/SmsMessage$MessageClass;

    const-string v1, "CLASS_3"

    invoke-direct {v0, v1, v5}, Linstall/app/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/SmsMessage$MessageClass;->CLASS_3:Linstall/app/SmsMessage$MessageClass;

    .line 17
    new-instance v0, Linstall/app/SmsMessage$MessageClass;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Linstall/app/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/SmsMessage$MessageClass;->UNKNOWN:Linstall/app/SmsMessage$MessageClass;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Linstall/app/SmsMessage$MessageClass;

    sget-object v1, Linstall/app/SmsMessage$MessageClass;->CLASS_0:Linstall/app/SmsMessage$MessageClass;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/SmsMessage$MessageClass;->CLASS_1:Linstall/app/SmsMessage$MessageClass;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/SmsMessage$MessageClass;->CLASS_2:Linstall/app/SmsMessage$MessageClass;

    aput-object v1, v0, v4

    sget-object v1, Linstall/app/SmsMessage$MessageClass;->CLASS_3:Linstall/app/SmsMessage$MessageClass;

    aput-object v1, v0, v5

    sget-object v1, Linstall/app/SmsMessage$MessageClass;->UNKNOWN:Linstall/app/SmsMessage$MessageClass;

    aput-object v1, v0, v6

    sput-object v0, Linstall/app/SmsMessage$MessageClass;->$VALUES:[Linstall/app/SmsMessage$MessageClass;

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

.method public static valueOf(Ljava/lang/String;)Linstall/app/SmsMessage$MessageClass;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Linstall/app/SmsMessage$MessageClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/SmsMessage$MessageClass;

    return-object v0
.end method

.method public static values()[Linstall/app/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Linstall/app/SmsMessage$MessageClass;->$VALUES:[Linstall/app/SmsMessage$MessageClass;

    invoke-virtual {v0}, [Linstall/app/SmsMessage$MessageClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/SmsMessage$MessageClass;

    return-object v0
.end method
