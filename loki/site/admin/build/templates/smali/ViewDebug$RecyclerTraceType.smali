.class public final enum Linstall/app/ViewDebug$RecyclerTraceType;
.super Ljava/lang/Enum;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecyclerTraceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/ViewDebug$RecyclerTraceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/ViewDebug$RecyclerTraceType;

.field public static final enum BIND_VIEW:Linstall/app/ViewDebug$RecyclerTraceType;

.field public static final enum MOVE_FROM_ACTIVE_TO_SCRAP_HEAP:Linstall/app/ViewDebug$RecyclerTraceType;

.field public static final enum MOVE_TO_ACTIVE_HEAP:Linstall/app/ViewDebug$RecyclerTraceType;

.field public static final enum MOVE_TO_SCRAP_HEAP:Linstall/app/ViewDebug$RecyclerTraceType;

.field public static final enum NEW_VIEW:Linstall/app/ViewDebug$RecyclerTraceType;

.field public static final enum RECYCLE_FROM_ACTIVE_HEAP:Linstall/app/ViewDebug$RecyclerTraceType;

.field public static final enum RECYCLE_FROM_SCRAP_HEAP:Linstall/app/ViewDebug$RecyclerTraceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Linstall/app/ViewDebug$RecyclerTraceType;

    const-string v1, "BIND_VIEW"

    invoke-direct {v0, v1, v3}, Linstall/app/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ViewDebug$RecyclerTraceType;->BIND_VIEW:Linstall/app/ViewDebug$RecyclerTraceType;

    .line 53
    new-instance v0, Linstall/app/ViewDebug$RecyclerTraceType;

    const-string v1, "MOVE_FROM_ACTIVE_TO_SCRAP_HEAP"

    invoke-direct {v0, v1, v4}, Linstall/app/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ViewDebug$RecyclerTraceType;->MOVE_FROM_ACTIVE_TO_SCRAP_HEAP:Linstall/app/ViewDebug$RecyclerTraceType;

    .line 54
    new-instance v0, Linstall/app/ViewDebug$RecyclerTraceType;

    const-string v1, "MOVE_TO_ACTIVE_HEAP"

    invoke-direct {v0, v1, v5}, Linstall/app/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ViewDebug$RecyclerTraceType;->MOVE_TO_ACTIVE_HEAP:Linstall/app/ViewDebug$RecyclerTraceType;

    .line 55
    new-instance v0, Linstall/app/ViewDebug$RecyclerTraceType;

    const-string v1, "MOVE_TO_SCRAP_HEAP"

    invoke-direct {v0, v1, v6}, Linstall/app/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ViewDebug$RecyclerTraceType;->MOVE_TO_SCRAP_HEAP:Linstall/app/ViewDebug$RecyclerTraceType;

    .line 56
    new-instance v0, Linstall/app/ViewDebug$RecyclerTraceType;

    const-string v1, "NEW_VIEW"

    invoke-direct {v0, v1, v7}, Linstall/app/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ViewDebug$RecyclerTraceType;->NEW_VIEW:Linstall/app/ViewDebug$RecyclerTraceType;

    .line 57
    new-instance v0, Linstall/app/ViewDebug$RecyclerTraceType;

    const-string v1, "RECYCLE_FROM_ACTIVE_HEAP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Linstall/app/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ViewDebug$RecyclerTraceType;->RECYCLE_FROM_ACTIVE_HEAP:Linstall/app/ViewDebug$RecyclerTraceType;

    .line 58
    new-instance v0, Linstall/app/ViewDebug$RecyclerTraceType;

    const-string v1, "RECYCLE_FROM_SCRAP_HEAP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Linstall/app/ViewDebug$RecyclerTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ViewDebug$RecyclerTraceType;->RECYCLE_FROM_SCRAP_HEAP:Linstall/app/ViewDebug$RecyclerTraceType;

    .line 51
    const/4 v0, 0x7

    new-array v0, v0, [Linstall/app/ViewDebug$RecyclerTraceType;

    sget-object v1, Linstall/app/ViewDebug$RecyclerTraceType;->BIND_VIEW:Linstall/app/ViewDebug$RecyclerTraceType;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/ViewDebug$RecyclerTraceType;->MOVE_FROM_ACTIVE_TO_SCRAP_HEAP:Linstall/app/ViewDebug$RecyclerTraceType;

    aput-object v1, v0, v4

    sget-object v1, Linstall/app/ViewDebug$RecyclerTraceType;->MOVE_TO_ACTIVE_HEAP:Linstall/app/ViewDebug$RecyclerTraceType;

    aput-object v1, v0, v5

    sget-object v1, Linstall/app/ViewDebug$RecyclerTraceType;->MOVE_TO_SCRAP_HEAP:Linstall/app/ViewDebug$RecyclerTraceType;

    aput-object v1, v0, v6

    sget-object v1, Linstall/app/ViewDebug$RecyclerTraceType;->NEW_VIEW:Linstall/app/ViewDebug$RecyclerTraceType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Linstall/app/ViewDebug$RecyclerTraceType;->RECYCLE_FROM_ACTIVE_HEAP:Linstall/app/ViewDebug$RecyclerTraceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Linstall/app/ViewDebug$RecyclerTraceType;->RECYCLE_FROM_SCRAP_HEAP:Linstall/app/ViewDebug$RecyclerTraceType;

    aput-object v2, v0, v1

    sput-object v0, Linstall/app/ViewDebug$RecyclerTraceType;->$VALUES:[Linstall/app/ViewDebug$RecyclerTraceType;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/ViewDebug$RecyclerTraceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Linstall/app/ViewDebug$RecyclerTraceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/ViewDebug$RecyclerTraceType;

    return-object v0
.end method

.method public static values()[Linstall/app/ViewDebug$RecyclerTraceType;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Linstall/app/ViewDebug$RecyclerTraceType;->$VALUES:[Linstall/app/ViewDebug$RecyclerTraceType;

    invoke-virtual {v0}, [Linstall/app/ViewDebug$RecyclerTraceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/ViewDebug$RecyclerTraceType;

    return-object v0
.end method
