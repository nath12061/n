.class public abstract Linstall/app/PackageManager;
.super Ljava/lang/Object;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/PackageManager$NameNotFoundException;
    }
.end annotation


# static fields
.field public static final COMPONENT_ENABLED_STATE_DEFAULT:I = 0x0

.field public static final COMPONENT_ENABLED_STATE_DISABLED:I = 0x2

.field public static final COMPONENT_ENABLED_STATE_ENABLED:I = 0x1

.field public static final DONT_KILL_APP:I = 0x1

.field public static final FORWARD_LOCK_PACKAGE:I = 0x1

.field public static final GET_ACTIVITIES:I = 0x1

.field public static final GET_CONFIGURATIONS:I = 0x4000

.field public static final GET_DISABLED_COMPONENTS:I = 0x200

.field public static final GET_GIDS:I = 0x100

.field public static final GET_INSTRUMENTATION:I = 0x10

.field public static final GET_INTENT_FILTERS:I = 0x20

.field public static final GET_META_DATA:I = 0x80

.field public static final GET_PERMISSIONS:I = 0x1000

.field public static final GET_PROVIDERS:I = 0x8

.field public static final GET_RECEIVERS:I = 0x2

.field public static final GET_RESOLVED_FILTER:I = 0x40

.field public static final GET_SERVICES:I = 0x4

.field public static final GET_SHARED_LIBRARY_FILES:I = 0x400

.field public static final GET_SIGNATURES:I = 0x40

.field public static final GET_UNINSTALLED_PACKAGES:I = 0x2000

.field public static final GET_URI_PERMISSION_PATTERNS:I = 0x800

.field public static final INSTALL_FAILED_ALREADY_EXISTS:I = -0x1

.field public static final INSTALL_FAILED_CONFLICTING_PROVIDER:I = -0xd

.field public static final INSTALL_FAILED_DEXOPT:I = -0xb

.field public static final INSTALL_FAILED_DUPLICATE_PACKAGE:I = -0x5

.field public static final INSTALL_FAILED_INSUFFICIENT_STORAGE:I = -0x4

.field public static final INSTALL_FAILED_INVALID_APK:I = -0x2

.field public static final INSTALL_FAILED_INVALID_URI:I = -0x3

.field public static final INSTALL_FAILED_MISSING_SHARED_LIBRARY:I = -0x9

.field public static final INSTALL_FAILED_NO_SHARED_USER:I = -0x6

.field public static final INSTALL_FAILED_OLDER_SDK:I = -0xc

.field public static final INSTALL_FAILED_REPLACE_COULDNT_DELETE:I = -0xa

.field public static final INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:I = -0x8

.field public static final INSTALL_FAILED_UPDATE_INCOMPATIBLE:I = -0x7

.field public static final INSTALL_PARSE_FAILED_BAD_MANIFEST:I = -0x65

.field public static final INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME:I = -0x6a

.field public static final INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID:I = -0x6b

.field public static final INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING:I = -0x69

.field public static final INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES:I = -0x68

.field public static final INSTALL_PARSE_FAILED_MANIFEST_EMPTY:I = -0x6d

.field public static final INSTALL_PARSE_FAILED_MANIFEST_MALFORMED:I = -0x6c

.field public static final INSTALL_PARSE_FAILED_NOT_APK:I = -0x64

.field public static final INSTALL_PARSE_FAILED_NO_CERTIFICATES:I = -0x67

.field public static final INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION:I = -0x66

.field public static final INSTALL_SUCCEEDED:I = 0x1

.field public static final MATCH_DEFAULT_ONLY:I = 0x10000

.field public static final PERMISSION_DENIED:I = -0x1

.field public static final PERMISSION_GRANTED:I = 0x0

.field public static final PKG_INSTALL_COMPLETE:I = 0x1

.field public static final PKG_INSTALL_INCOMPLETE:I = 0x0

.field public static final REPLACE_EXISTING_PACKAGE:I = 0x2

.field public static final SIGNATURE_FIRST_NOT_SIGNED:I = -0x1

.field public static final SIGNATURE_MATCH:I = 0x0

.field public static final SIGNATURE_NEITHER_SIGNED:I = 0x1

.field public static final SIGNATURE_NO_MATCH:I = -0x3

.field public static final SIGNATURE_SECOND_NOT_SIGNED:I = -0x2

.field public static final SIGNATURE_UNKNOWN_PACKAGE:I = -0x4


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract addPackageToPreferred(Ljava/lang/String;)V
.end method

.method public abstract addPermission(Linstall/app/PermissionInfo;)Z
.end method

.method public abstract addPreferredActivity(Linstall/app/IntentFilter;I[Linstall/app/ComponentName;Linstall/app/ComponentName;)V
.end method

.method public abstract checkPermission(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract clearPackagePreferredActivities(Ljava/lang/String;)V
.end method

.method public abstract getActivityIcon(Linstall/app/ComponentName;)Linstall/app/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getActivityIcon(Linstall/app/Intent;)Linstall/app/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getActivityInfo(Linstall/app/ComponentName;I)Linstall/app/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getAllPermissionGroups(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Linstall/app/PermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getApplicationEnabledSetting(Ljava/lang/String;)I
.end method

.method public abstract getApplicationIcon(Linstall/app/ApplicationInfo;)Linstall/app/Drawable;
.end method

.method public abstract getApplicationIcon(Ljava/lang/String;)Linstall/app/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getApplicationInfo(Ljava/lang/String;I)Linstall/app/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getApplicationLabel(Linstall/app/ApplicationInfo;)Ljava/lang/CharSequence;
.end method

.method public abstract getComponentEnabledSetting(Linstall/app/ComponentName;)I
.end method

.method public abstract getDefaultActivityIcon()Linstall/app/Drawable;
.end method

.method public abstract getDrawable(Ljava/lang/String;ILinstall/app/ApplicationInfo;)Linstall/app/Drawable;
.end method

.method public abstract getInstalledApplications(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Linstall/app/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstalledPackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Linstall/app/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstrumentationInfo(Linstall/app/ComponentName;I)Linstall/app/InstrumentationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getLaunchIntentForPackage(Ljava/lang/String;)Linstall/app/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getNameForUid(I)Ljava/lang/String;
.end method

.method public getPackageArchiveInfo(Ljava/lang/String;I)Linstall/app/PackageInfo;
    .locals 2
    .param p1, "archiveFilePath"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 187
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getPackageGids(Ljava/lang/String;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPackageInfo(Ljava/lang/String;I)Linstall/app/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPackagesForUid(I)[Ljava/lang/String;
.end method

.method public abstract getPermissionGroupInfo(Ljava/lang/String;I)Linstall/app/PermissionGroupInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPermissionInfo(Ljava/lang/String;I)Linstall/app/PermissionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Linstall/app/IntentFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Linstall/app/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation
.end method

.method public abstract getPreferredPackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Linstall/app/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReceiverInfo(Linstall/app/ComponentName;I)Linstall/app/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getResourcesForActivity(Linstall/app/ComponentName;)Linstall/app/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getResourcesForApplication(Linstall/app/ApplicationInfo;)Linstall/app/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getResourcesForApplication(Ljava/lang/String;)Linstall/app/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getServiceInfo(Linstall/app/ComponentName;I)Linstall/app/ServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getSystemSharedLibraryNames()[Ljava/lang/String;
.end method

.method public abstract getText(Ljava/lang/String;ILinstall/app/ApplicationInfo;)Ljava/lang/CharSequence;
.end method

.method public abstract getXml(Ljava/lang/String;ILinstall/app/ApplicationInfo;)Linstall/app/XmlResourceParser;
.end method

.method public installPackage(Linstall/app/Uri;)V
    .locals 2
    .param p1, "packageURI"    # Linstall/app/Uri;

    .prologue
    .line 191
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract installPackage(Linstall/app/Uri;Linstall/app/IPackageInstallObserver;I)V
.end method

.method public abstract isSafeMode()Z
.end method

.method public abstract queryBroadcastReceivers(Linstall/app/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Linstall/app/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Linstall/app/ProviderInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Linstall/app/InstrumentationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentActivities(Linstall/app/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Linstall/app/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentActivityOptions(Linstall/app/ComponentName;[Linstall/app/Intent;Linstall/app/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/ComponentName;",
            "[",
            "Linstall/app/Intent;",
            "Linstall/app/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Linstall/app/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentServices(Linstall/app/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Linstall/app/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Linstall/app/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract removePackageFromPreferred(Ljava/lang/String;)V
.end method

.method public abstract removePermission(Ljava/lang/String;)V
.end method

.method public abstract resolveActivity(Linstall/app/Intent;I)Linstall/app/ResolveInfo;
.end method

.method public abstract resolveContentProvider(Ljava/lang/String;I)Linstall/app/ProviderInfo;
.end method

.method public abstract resolveService(Linstall/app/Intent;I)Linstall/app/ResolveInfo;
.end method

.method public abstract setApplicationEnabledSetting(Ljava/lang/String;II)V
.end method

.method public abstract setComponentEnabledSetting(Linstall/app/ComponentName;II)V
.end method
