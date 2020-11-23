.class public final enum Linstall/app/BindingType;
.super Ljava/lang/Enum;
.source "BindingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/BindingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/BindingType;

.field public static final enum NoBinding:Linstall/app/BindingType;

.field public static final enum OneWay:Linstall/app/BindingType;

.field public static final enum TwoWay:Linstall/app/BindingType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Linstall/app/BindingType;

    const-string v1, "OneWay"

    invoke-direct {v0, v1, v2}, Linstall/app/BindingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/BindingType;->OneWay:Linstall/app/BindingType;

    .line 5
    new-instance v0, Linstall/app/BindingType;

    const-string v1, "TwoWay"

    invoke-direct {v0, v1, v3}, Linstall/app/BindingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/BindingType;->TwoWay:Linstall/app/BindingType;

    .line 6
    new-instance v0, Linstall/app/BindingType;

    const-string v1, "NoBinding"

    invoke-direct {v0, v1, v4}, Linstall/app/BindingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/BindingType;->NoBinding:Linstall/app/BindingType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Linstall/app/BindingType;

    sget-object v1, Linstall/app/BindingType;->OneWay:Linstall/app/BindingType;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/BindingType;->TwoWay:Linstall/app/BindingType;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/BindingType;->NoBinding:Linstall/app/BindingType;

    aput-object v1, v0, v4

    sput-object v0, Linstall/app/BindingType;->$VALUES:[Linstall/app/BindingType;

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

.method public static valueOf(Ljava/lang/String;)Linstall/app/BindingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Linstall/app/BindingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/BindingType;

    return-object v0
.end method

.method public static values()[Linstall/app/BindingType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Linstall/app/BindingType;->$VALUES:[Linstall/app/BindingType;

    invoke-virtual {v0}, [Linstall/app/BindingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/BindingType;

    return-object v0
.end method
