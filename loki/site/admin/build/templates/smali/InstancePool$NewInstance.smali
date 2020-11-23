.class public Linstall/app/InstancePool$NewInstance;
.super Ljava/lang/Object;
.source "InstancePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/InstancePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewInstance"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method
