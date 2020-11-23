.class public final Linstall/app/ProviderInfo;
.super Linstall/app/ComponentInfo;
.source "ProviderInfo.java"

# interfaces
.implements Linstall/app/Parcelable;


# static fields
.field public static final CREATOR:Linstall/app/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/Parcelable$Creator",
            "<",
            "Linstall/app/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public authority:Ljava/lang/String;

.field public grantUriPermissions:Z

.field public initOrder:I

.field public isSyncable:Z

.field public multiprocess:Z

.field public readPermission:Ljava/lang/String;

.field public uriPermissionPatterns:[Linstall/app/PatternMatcher;

.field public writePermission:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput-object v0, Linstall/app/ProviderInfo;->CREATOR:Linstall/app/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Linstall/app/ComponentInfo;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/ProviderInfo;->uriPermissionPatterns:[Linstall/app/PatternMatcher;

    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/ProviderInfo;)V
    .locals 2
    .param p1, "orig"    # Linstall/app/ProviderInfo;

    .prologue
    .line 18
    invoke-direct {p0}, Linstall/app/ComponentInfo;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/ProviderInfo;->uriPermissionPatterns:[Linstall/app/PatternMatcher;

    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Linstall/app/Parcel;I)V
    .locals 2
    .param p1, "out"    # Linstall/app/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
