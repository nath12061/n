.class public Linstall/app/Debug$MemoryInfo;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryInfo"
.end annotation


# instance fields
.field public dalvikPrivateDirty:I

.field public dalvikPss:I

.field public dalvikSharedDirty:I

.field public nativePrivateDirty:I

.field public nativePss:I

.field public nativeSharedDirty:I

.field public otherPrivateDirty:I

.field public otherPss:I

.field public otherSharedDirty:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
