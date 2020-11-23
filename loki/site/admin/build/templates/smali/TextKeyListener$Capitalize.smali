.class public final enum Linstall/app/TextKeyListener$Capitalize;
.super Ljava/lang/Enum;
.source "TextKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/TextKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Capitalize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/TextKeyListener$Capitalize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/TextKeyListener$Capitalize;

.field public static final enum CHARACTERS:Linstall/app/TextKeyListener$Capitalize;

.field public static final enum NONE:Linstall/app/TextKeyListener$Capitalize;

.field public static final enum SENTENCES:Linstall/app/TextKeyListener$Capitalize;

.field public static final enum WORDS:Linstall/app/TextKeyListener$Capitalize;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Linstall/app/TextKeyListener$Capitalize;

    const-string v1, "CHARACTERS"

    invoke-direct {v0, v1, v2}, Linstall/app/TextKeyListener$Capitalize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/TextKeyListener$Capitalize;->CHARACTERS:Linstall/app/TextKeyListener$Capitalize;

    .line 11
    new-instance v0, Linstall/app/TextKeyListener$Capitalize;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Linstall/app/TextKeyListener$Capitalize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/TextKeyListener$Capitalize;->NONE:Linstall/app/TextKeyListener$Capitalize;

    .line 12
    new-instance v0, Linstall/app/TextKeyListener$Capitalize;

    const-string v1, "SENTENCES"

    invoke-direct {v0, v1, v4}, Linstall/app/TextKeyListener$Capitalize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/TextKeyListener$Capitalize;->SENTENCES:Linstall/app/TextKeyListener$Capitalize;

    .line 13
    new-instance v0, Linstall/app/TextKeyListener$Capitalize;

    const-string v1, "WORDS"

    invoke-direct {v0, v1, v5}, Linstall/app/TextKeyListener$Capitalize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/TextKeyListener$Capitalize;->WORDS:Linstall/app/TextKeyListener$Capitalize;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Linstall/app/TextKeyListener$Capitalize;

    sget-object v1, Linstall/app/TextKeyListener$Capitalize;->CHARACTERS:Linstall/app/TextKeyListener$Capitalize;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/TextKeyListener$Capitalize;->NONE:Linstall/app/TextKeyListener$Capitalize;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/TextKeyListener$Capitalize;->SENTENCES:Linstall/app/TextKeyListener$Capitalize;

    aput-object v1, v0, v4

    sget-object v1, Linstall/app/TextKeyListener$Capitalize;->WORDS:Linstall/app/TextKeyListener$Capitalize;

    aput-object v1, v0, v5

    sput-object v0, Linstall/app/TextKeyListener$Capitalize;->$VALUES:[Linstall/app/TextKeyListener$Capitalize;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/TextKeyListener$Capitalize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Linstall/app/TextKeyListener$Capitalize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/TextKeyListener$Capitalize;

    return-object v0
.end method

.method public static values()[Linstall/app/TextKeyListener$Capitalize;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Linstall/app/TextKeyListener$Capitalize;->$VALUES:[Linstall/app/TextKeyListener$Capitalize;

    invoke-virtual {v0}, [Linstall/app/TextKeyListener$Capitalize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/TextKeyListener$Capitalize;

    return-object v0
.end method
