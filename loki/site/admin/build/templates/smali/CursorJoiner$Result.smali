.class public final enum Linstall/app/CursorJoiner$Result;
.super Ljava/lang/Enum;
.source "CursorJoiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/CursorJoiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/CursorJoiner$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/CursorJoiner$Result;

.field public static final enum BOTH:Linstall/app/CursorJoiner$Result;

.field public static final enum LEFT:Linstall/app/CursorJoiner$Result;

.field public static final enum RIGHT:Linstall/app/CursorJoiner$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Linstall/app/CursorJoiner$Result;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v2}, Linstall/app/CursorJoiner$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/CursorJoiner$Result;->BOTH:Linstall/app/CursorJoiner$Result;

    .line 9
    new-instance v0, Linstall/app/CursorJoiner$Result;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3}, Linstall/app/CursorJoiner$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/CursorJoiner$Result;->LEFT:Linstall/app/CursorJoiner$Result;

    .line 10
    new-instance v0, Linstall/app/CursorJoiner$Result;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Linstall/app/CursorJoiner$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/CursorJoiner$Result;->RIGHT:Linstall/app/CursorJoiner$Result;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Linstall/app/CursorJoiner$Result;

    sget-object v1, Linstall/app/CursorJoiner$Result;->BOTH:Linstall/app/CursorJoiner$Result;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/CursorJoiner$Result;->LEFT:Linstall/app/CursorJoiner$Result;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/CursorJoiner$Result;->RIGHT:Linstall/app/CursorJoiner$Result;

    aput-object v1, v0, v4

    sput-object v0, Linstall/app/CursorJoiner$Result;->$VALUES:[Linstall/app/CursorJoiner$Result;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/CursorJoiner$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Linstall/app/CursorJoiner$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/CursorJoiner$Result;

    return-object v0
.end method

.method public static values()[Linstall/app/CursorJoiner$Result;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Linstall/app/CursorJoiner$Result;->$VALUES:[Linstall/app/CursorJoiner$Result;

    invoke-virtual {v0}, [Linstall/app/CursorJoiner$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/CursorJoiner$Result;

    return-object v0
.end method
