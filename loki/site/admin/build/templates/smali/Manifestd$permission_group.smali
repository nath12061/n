.class public final Linstall/app/Manifestd$permission_group;
.super Ljava/lang/Object;
.source "Manifestd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Manifestd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission_group"
.end annotation


# static fields
.field public static final ACCOUNTS:Ljava/lang/String; = "android.permission-group.ACCOUNTS"

.field public static final COST_MONEY:Ljava/lang/String; = "android.permission-group.COST_MONEY"

.field public static final DEVELOPMENT_TOOLS:Ljava/lang/String; = "android.permission-group.DEVELOPMENT_TOOLS"

.field public static final HARDWARE_CONTROLS:Ljava/lang/String; = "android.permission-group.HARDWARE_CONTROLS"

.field public static final LOCATION:Ljava/lang/String; = "android.permission-group.LOCATION"

.field public static final MESSAGES:Ljava/lang/String; = "android.permission-group.MESSAGES"

.field public static final NETWORK:Ljava/lang/String; = "android.permission-group.NETWORK"

.field public static final PERSONAL_INFO:Ljava/lang/String; = "android.permission-group.PERSONAL_INFO"

.field public static final PHONE_CALLS:Ljava/lang/String; = "android.permission-group.PHONE_CALLS"

.field public static final SYSTEM_TOOLS:Ljava/lang/String; = "android.permission-group.SYSTEM_TOOLS"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
