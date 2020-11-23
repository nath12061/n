.class public final enum Linstall/app/ViewDebug$HierarchyTraceType;
.super Ljava/lang/Enum;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HierarchyTraceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/ViewDebug$HierarchyTraceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/ViewDebug$HierarchyTraceType;

.field public static final enum BUILD_CACHE:Linstall/app/ViewDebug$HierarchyTraceType;

.field public static final enum DRAW:Linstall/app/ViewDebug$HierarchyTraceType;

.field public static final enum INVALIDATE:Linstall/app/ViewDebug$HierarchyTraceType;

.field public static final enum INVALIDATE_CHILD:Linstall/app/ViewDebug$HierarchyTraceType;

.field public static final enum INVALIDATE_CHILD_IN_PARENT:Linstall/app/ViewDebug$HierarchyTraceType;

.field public static final enum ON_LAYOUT:Linstall/app/ViewDebug$HierarchyTraceType;

.field public static final enum ON_MEASURE:Linstall/app/ViewDebug$HierarchyTraceType;

.field public static final enum REQUEST_LAYOUT:Linstall/app/ViewDebug$HierarchyTraceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Linstall/app/ViewDebug$HierarchyTraceType;

    const-string v1, "BUILD_CACHE"

    invoke-direct {v0, v1, v3}, Linstall/app/ViewDebug$HierarchyTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ViewDebug$HierarchyTraceType;->BUILD_CACHE:Linstall/app/ViewDebug$HierarchyTraceType;

    .line 34
    new-instance v0, Linstall/app/ViewDebug$HierarchyTraceType;

    const-string v1, "DRAW"

    invoke-direct {v0, v1, v4}, Linstall/app/ViewDebug$HierarchyTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ViewDebug$HierarchyTraceType;->DRAW:Linstall/app/ViewDebug$HierarchyTraceType;

    .line 35
    new-instance v0, Linstall/app/ViewDebug$HierarchyTraceType;

    const-string v1, "INVALIDATE"

    invoke-direct {v0, v1, v5}, Linstall/app/ViewDebug$HierarchyTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ViewDebug$HierarchyTraceType;->INVALIDATE:Linstall/app/ViewDebug$HierarchyTraceType;

    .line 36
    new-instance v0, Linstall/app/ViewDebug$HierarchyTraceType;

    const-string v1, "INVALIDATE_CHILD"

    invoke-direct {v0, v1, v6}, Linstall/app/ViewDebug$HierarchyTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ViewDebug$HierarchyTraceType;->INVALIDATE_CHILD:Linstall/app/ViewDebug$HierarchyTraceType;

    .line 37
    new-instance v0, Linstall/app/ViewDebug$HierarchyTraceType;

    const-string v1, "INVALIDATE_CHILD_IN_PARENT"

    invoke-direct {v0, v1, v7}, Linstall/app/ViewDebug$HierarchyTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ViewDebug$HierarchyTraceType;->INVALIDATE_CHILD_IN_PARENT:Linstall/app/ViewDebug$HierarchyTraceType;

    .line 38
    new-instance v0, Linstall/app/ViewDebug$HierarchyTraceType;

    const-string v1, "ON_LAYOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Linstall/app/ViewDebug$HierarchyTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ViewDebug$HierarchyTraceType;->ON_LAYOUT:Linstall/app/ViewDebug$HierarchyTraceType;

    .line 39
    new-instance v0, Linstall/app/ViewDebug$HierarchyTraceType;

    const-string v1, "ON_MEASURE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Linstall/app/ViewDebug$HierarchyTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ViewDebug$HierarchyTraceType;->ON_MEASURE:Linstall/app/ViewDebug$HierarchyTraceType;

    .line 40
    new-instance v0, Linstall/app/ViewDebug$HierarchyTraceType;

    const-string v1, "REQUEST_LAYOUT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Linstall/app/ViewDebug$HierarchyTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/ViewDebug$HierarchyTraceType;->REQUEST_LAYOUT:Linstall/app/ViewDebug$HierarchyTraceType;

    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [Linstall/app/ViewDebug$HierarchyTraceType;

    sget-object v1, Linstall/app/ViewDebug$HierarchyTraceType;->BUILD_CACHE:Linstall/app/ViewDebug$HierarchyTraceType;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/ViewDebug$HierarchyTraceType;->DRAW:Linstall/app/ViewDebug$HierarchyTraceType;

    aput-object v1, v0, v4

    sget-object v1, Linstall/app/ViewDebug$HierarchyTraceType;->INVALIDATE:Linstall/app/ViewDebug$HierarchyTraceType;

    aput-object v1, v0, v5

    sget-object v1, Linstall/app/ViewDebug$HierarchyTraceType;->INVALIDATE_CHILD:Linstall/app/ViewDebug$HierarchyTraceType;

    aput-object v1, v0, v6

    sget-object v1, Linstall/app/ViewDebug$HierarchyTraceType;->INVALIDATE_CHILD_IN_PARENT:Linstall/app/ViewDebug$HierarchyTraceType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Linstall/app/ViewDebug$HierarchyTraceType;->ON_LAYOUT:Linstall/app/ViewDebug$HierarchyTraceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Linstall/app/ViewDebug$HierarchyTraceType;->ON_MEASURE:Linstall/app/ViewDebug$HierarchyTraceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Linstall/app/ViewDebug$HierarchyTraceType;->REQUEST_LAYOUT:Linstall/app/ViewDebug$HierarchyTraceType;

    aput-object v2, v0, v1

    sput-object v0, Linstall/app/ViewDebug$HierarchyTraceType;->$VALUES:[Linstall/app/ViewDebug$HierarchyTraceType;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/ViewDebug$HierarchyTraceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Linstall/app/ViewDebug$HierarchyTraceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/ViewDebug$HierarchyTraceType;

    return-object v0
.end method

.method public static values()[Linstall/app/ViewDebug$HierarchyTraceType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Linstall/app/ViewDebug$HierarchyTraceType;->$VALUES:[Linstall/app/ViewDebug$HierarchyTraceType;

    invoke-virtual {v0}, [Linstall/app/ViewDebug$HierarchyTraceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/ViewDebug$HierarchyTraceType;

    return-object v0
.end method
