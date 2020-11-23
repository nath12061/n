.class public Linstall/app/ApplicationInfo;
.super Linstall/app/PackageItemInfo;
.source "ApplicationInfo.java"

# interfaces
.implements Linstall/app/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/ApplicationInfo$DisplayNameComparator;
    }
.end annotation


# static fields
.field public static final CREATOR:Linstall/app/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/Parcelable$Creator",
            "<",
            "Linstall/app/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ALLOW_CLEAR_USER_DATA:I = 0x40

.field public static final FLAG_ALLOW_TASK_REPARENTING:I = 0x20

.field public static final FLAG_DEBUGGABLE:I = 0x2

.field public static final FLAG_FACTORY_TEST:I = 0x10

.field public static final FLAG_HAS_CODE:I = 0x4

.field public static final FLAG_PERSISTENT:I = 0x8

.field public static final FLAG_SYSTEM:I = 0x1


# instance fields
.field public className:Ljava/lang/String;

.field public dataDir:Ljava/lang/String;

.field public descriptionRes:I

.field public enabled:Z

.field public flags:I

.field public manageSpaceActivityName:Ljava/lang/String;

.field public permission:Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field public publicSourceDir:Ljava/lang/String;

.field public sharedLibraryFiles:[Ljava/lang/String;

.field public sourceDir:Ljava/lang/String;

.field public taskAffinity:Ljava/lang/String;

.field public theme:I

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-object v0, Linstall/app/ApplicationInfo;->CREATOR:Linstall/app/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Linstall/app/PackageItemInfo;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/ApplicationInfo;)V
    .locals 2
    .param p1, "orig"    # Linstall/app/ApplicationInfo;

    .prologue
    .line 43
    invoke-direct {p0}, Linstall/app/PackageItemInfo;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Linstall/app/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Linstall/app/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadDescription(Linstall/app/PackageManager;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "pm"    # Linstall/app/PackageManager;

    .prologue
    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Linstall/app/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Linstall/app/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
