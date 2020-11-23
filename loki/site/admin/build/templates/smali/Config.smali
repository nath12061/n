.class public final Linstall/app/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final LOGD:Z = true

.field public static final LOGV:Z = false

.field public static final PROFILE:Z = false

.field public static final RELEASE:Z = true


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
