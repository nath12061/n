.class public final enum Linstall/app/BindingTyped;
.super Ljava/lang/Enum;
.source "BindingTyped.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/BindingTyped;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/BindingTyped;

.field public static final enum NoBinding:Linstall/app/BindingTyped;

.field public static final enum OneWay:Linstall/app/BindingTyped;

.field public static final enum TwoWay:Linstall/app/BindingTyped;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Linstall/app/BindingTyped;

    const-string v1, "OneWay"

    invoke-direct {v0, v1, v2}, Linstall/app/BindingTyped;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/BindingTyped;->OneWay:Linstall/app/BindingTyped;

    .line 5
    new-instance v0, Linstall/app/BindingTyped;

    const-string v1, "TwoWay"

    invoke-direct {v0, v1, v3}, Linstall/app/BindingTyped;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/BindingTyped;->TwoWay:Linstall/app/BindingTyped;

    .line 6
    new-instance v0, Linstall/app/BindingTyped;

    const-string v1, "NoBinding"

    invoke-direct {v0, v1, v4}, Linstall/app/BindingTyped;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/BindingTyped;->NoBinding:Linstall/app/BindingTyped;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Linstall/app/BindingTyped;

    sget-object v1, Linstall/app/BindingTyped;->OneWay:Linstall/app/BindingTyped;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/BindingTyped;->TwoWay:Linstall/app/BindingTyped;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/BindingTyped;->NoBinding:Linstall/app/BindingTyped;

    aput-object v1, v0, v4

    sput-object v0, Linstall/app/BindingTyped;->$VALUES:[Linstall/app/BindingTyped;

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

.method public static valueOf(Ljava/lang/String;)Linstall/app/BindingTyped;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Linstall/app/BindingTyped;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/BindingTyped;

    return-object v0
.end method

.method public static values()[Linstall/app/BindingTyped;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Linstall/app/BindingTyped;->$VALUES:[Linstall/app/BindingTyped;

    invoke-virtual {v0}, [Linstall/app/BindingTyped;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/BindingTyped;

    return-object v0
.end method
