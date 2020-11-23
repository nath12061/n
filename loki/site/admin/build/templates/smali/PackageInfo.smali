.class public Linstall/app/PackageInfo;
.super Ljava/lang/Object;
.source "PackageInfo.java"

# interfaces
.implements Linstall/app/Parcelable;


# static fields
.field public static final CREATOR:Linstall/app/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/Parcelable$Creator",
            "<",
            "Linstall/app/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activities:[Linstall/app/ActivityInfo;

.field public applicationInfo:Linstall/app/ApplicationInfo;

.field public configPreferences:[Linstall/app/ConfigurationInfo;

.field public gids:[I

.field public instrumentation:[Linstall/app/InstrumentationInfo;

.field public packageName:Ljava/lang/String;

.field public permissions:[Linstall/app/PermissionInfo;

.field public providers:[Linstall/app/ProviderInfo;

.field public receivers:[Linstall/app/ActivityInfo;

.field public requestedPermissions:[Ljava/lang/String;

.field public services:[Linstall/app/ServiceInfo;

.field public sharedUserId:Ljava/lang/String;

.field public sharedUserLabel:I

.field public signatures:[Linstall/app/Signature;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput-object v0, Linstall/app/PackageInfo;->CREATOR:Linstall/app/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Linstall/app/PackageInfo;->activities:[Linstall/app/ActivityInfo;

    .line 7
    iput-object v0, p0, Linstall/app/PackageInfo;->configPreferences:[Linstall/app/ConfigurationInfo;

    .line 8
    iput-object v0, p0, Linstall/app/PackageInfo;->gids:[I

    .line 9
    iput-object v0, p0, Linstall/app/PackageInfo;->instrumentation:[Linstall/app/InstrumentationInfo;

    .line 11
    iput-object v0, p0, Linstall/app/PackageInfo;->permissions:[Linstall/app/PermissionInfo;

    .line 12
    iput-object v0, p0, Linstall/app/PackageInfo;->providers:[Linstall/app/ProviderInfo;

    .line 13
    iput-object v0, p0, Linstall/app/PackageInfo;->receivers:[Linstall/app/ActivityInfo;

    .line 14
    iput-object v0, p0, Linstall/app/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 15
    iput-object v0, p0, Linstall/app/PackageInfo;->services:[Linstall/app/ServiceInfo;

    .line 18
    iput-object v0, p0, Linstall/app/PackageInfo;->signatures:[Linstall/app/Signature;

    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
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
    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
