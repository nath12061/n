.class public Linstall/app/PackageItemInfo$DisplayNameComparator;
.super Ljava/lang/Object;
.source "PackageItemInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/PackageItemInfo;
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
        "Linstall/app/PackageItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Linstall/app/PackageManager;)V
    .locals 2
    .param p1, "pm"    # Linstall/app/PackageManager;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final compare(Linstall/app/PackageItemInfo;Linstall/app/PackageItemInfo;)I
    .locals 2
    .param p1, "aa"    # Linstall/app/PackageItemInfo;
    .param p2, "ab"    # Linstall/app/PackageItemInfo;

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 13
    check-cast p1, Linstall/app/PackageItemInfo;

    check-cast p2, Linstall/app/PackageItemInfo;

    invoke-virtual {p0, p1, p2}, Linstall/app/PackageItemInfo$DisplayNameComparator;->compare(Linstall/app/PackageItemInfo;Linstall/app/PackageItemInfo;)I

    move-result v0

    return v0
.end method
