.class public Linstall/app/ApplicationInfo$DisplayNameComparator;
.super Ljava/lang/Object;
.source "ApplicationInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/ApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Linstall/app/ApplicationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Linstall/app/PackageManager;)V
    .locals 2
    .param p1, "pm"    # Linstall/app/PackageManager;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final compare(Linstall/app/ApplicationInfo;Linstall/app/ApplicationInfo;)I
    .locals 2
    .param p1, "aa"    # Linstall/app/ApplicationInfo;
    .param p2, "ab"    # Linstall/app/ApplicationInfo;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Linstall/app/ApplicationInfo;

    check-cast p2, Linstall/app/ApplicationInfo;

    invoke-virtual {p0, p1, p2}, Linstall/app/ApplicationInfo$DisplayNameComparator;->compare(Linstall/app/ApplicationInfo;Linstall/app/ApplicationInfo;)I

    move-result v0

    return v0
.end method
