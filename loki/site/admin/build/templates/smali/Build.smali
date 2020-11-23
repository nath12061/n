.class public Linstall/app/Build;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/Build$VERSION;
    }
.end annotation


# static fields
.field public static final BOARD:Ljava/lang/String;

.field public static final BRAND:Ljava/lang/String;

.field public static final DEVICE:Ljava/lang/String;

.field public static final DISPLAY:Ljava/lang/String;

.field public static final FINGERPRINT:Ljava/lang/String;

.field public static final HOST:Ljava/lang/String;

.field public static final ID:Ljava/lang/String;

.field public static final MODEL:Ljava/lang/String;

.field public static final PRODUCT:Ljava/lang/String;

.field public static final TAGS:Ljava/lang/String;

.field public static final TIME:J

.field public static final TYPE:Ljava/lang/String;

.field public static final USER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4
    sput-object v0, Linstall/app/Build;->BOARD:Ljava/lang/String;

    .line 5
    sput-object v0, Linstall/app/Build;->BRAND:Ljava/lang/String;

    .line 6
    sput-object v0, Linstall/app/Build;->DEVICE:Ljava/lang/String;

    .line 7
    sput-object v0, Linstall/app/Build;->DISPLAY:Ljava/lang/String;

    .line 8
    sput-object v0, Linstall/app/Build;->FINGERPRINT:Ljava/lang/String;

    .line 9
    sput-object v0, Linstall/app/Build;->HOST:Ljava/lang/String;

    .line 10
    sput-object v0, Linstall/app/Build;->ID:Ljava/lang/String;

    .line 11
    sput-object v0, Linstall/app/Build;->MODEL:Ljava/lang/String;

    .line 12
    sput-object v0, Linstall/app/Build;->PRODUCT:Ljava/lang/String;

    .line 13
    sput-object v0, Linstall/app/Build;->TAGS:Ljava/lang/String;

    .line 15
    sput-object v0, Linstall/app/Build;->TYPE:Ljava/lang/String;

    .line 16
    sput-object v0, Linstall/app/Build;->USER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
