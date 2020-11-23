.class public final enum Linstall/app/WebSettings$RenderPriority;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/WebSettings$RenderPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/WebSettings$RenderPriority;

.field public static final enum HIGH:Linstall/app/WebSettings$RenderPriority;

.field public static final enum LOW:Linstall/app/WebSettings$RenderPriority;

.field public static final enum NORMAL:Linstall/app/WebSettings$RenderPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Linstall/app/WebSettings$RenderPriority;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v2}, Linstall/app/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/WebSettings$RenderPriority;->HIGH:Linstall/app/WebSettings$RenderPriority;

    .line 18
    new-instance v0, Linstall/app/WebSettings$RenderPriority;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v3}, Linstall/app/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/WebSettings$RenderPriority;->LOW:Linstall/app/WebSettings$RenderPriority;

    .line 19
    new-instance v0, Linstall/app/WebSettings$RenderPriority;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Linstall/app/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/WebSettings$RenderPriority;->NORMAL:Linstall/app/WebSettings$RenderPriority;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Linstall/app/WebSettings$RenderPriority;

    sget-object v1, Linstall/app/WebSettings$RenderPriority;->HIGH:Linstall/app/WebSettings$RenderPriority;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/WebSettings$RenderPriority;->LOW:Linstall/app/WebSettings$RenderPriority;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/WebSettings$RenderPriority;->NORMAL:Linstall/app/WebSettings$RenderPriority;

    aput-object v1, v0, v4

    sput-object v0, Linstall/app/WebSettings$RenderPriority;->$VALUES:[Linstall/app/WebSettings$RenderPriority;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/WebSettings$RenderPriority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Linstall/app/WebSettings$RenderPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/WebSettings$RenderPriority;

    return-object v0
.end method

.method public static values()[Linstall/app/WebSettings$RenderPriority;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Linstall/app/WebSettings$RenderPriority;->$VALUES:[Linstall/app/WebSettings$RenderPriority;

    invoke-virtual {v0}, [Linstall/app/WebSettings$RenderPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/WebSettings$RenderPriority;

    return-object v0
.end method
