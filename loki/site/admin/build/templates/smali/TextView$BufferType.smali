.class public final enum Linstall/app/TextView$BufferType;
.super Ljava/lang/Enum;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BufferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/TextView$BufferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/TextView$BufferType;

.field public static final enum EDITABLE:Linstall/app/TextView$BufferType;

.field public static final enum NORMAL:Linstall/app/TextView$BufferType;

.field public static final enum SPANNABLE:Linstall/app/TextView$BufferType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Linstall/app/TextView$BufferType;

    const-string v1, "EDITABLE"

    invoke-direct {v0, v1, v2}, Linstall/app/TextView$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/TextView$BufferType;->EDITABLE:Linstall/app/TextView$BufferType;

    .line 21
    new-instance v0, Linstall/app/TextView$BufferType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Linstall/app/TextView$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/TextView$BufferType;->NORMAL:Linstall/app/TextView$BufferType;

    .line 22
    new-instance v0, Linstall/app/TextView$BufferType;

    const-string v1, "SPANNABLE"

    invoke-direct {v0, v1, v4}, Linstall/app/TextView$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/TextView$BufferType;->SPANNABLE:Linstall/app/TextView$BufferType;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Linstall/app/TextView$BufferType;

    sget-object v1, Linstall/app/TextView$BufferType;->EDITABLE:Linstall/app/TextView$BufferType;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/TextView$BufferType;->NORMAL:Linstall/app/TextView$BufferType;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/TextView$BufferType;->SPANNABLE:Linstall/app/TextView$BufferType;

    aput-object v1, v0, v4

    sput-object v0, Linstall/app/TextView$BufferType;->$VALUES:[Linstall/app/TextView$BufferType;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/TextView$BufferType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Linstall/app/TextView$BufferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/TextView$BufferType;

    return-object v0
.end method

.method public static values()[Linstall/app/TextView$BufferType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Linstall/app/TextView$BufferType;->$VALUES:[Linstall/app/TextView$BufferType;

    invoke-virtual {v0}, [Linstall/app/TextView$BufferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/TextView$BufferType;

    return-object v0
.end method
