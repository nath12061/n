.class public Linstall/app/Preference$BaseSavedState;
.super Linstall/app/AbsSavedState;
.source "Preference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseSavedState"
.end annotation


# static fields
.field public static final CREATOR:Linstall/app/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/Parcelable$Creator",
            "<",
            "Linstall/app/Preference$BaseSavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Linstall/app/Preference$BaseSavedState;->CREATOR:Linstall/app/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Linstall/app/Parcel;)V
    .locals 2
    .param p1, "source"    # Linstall/app/Parcel;

    .prologue
    .line 10
    const/4 v0, 0x0

    check-cast v0, Linstall/app/Parcel;

    invoke-direct {p0, v0}, Linstall/app/AbsSavedState;-><init>(Linstall/app/Parcel;)V

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Parcelable;)V
    .locals 2
    .param p1, "superState"    # Linstall/app/Parcelable;

    .prologue
    .line 15
    const/4 v0, 0x0

    check-cast v0, Linstall/app/Parcel;

    invoke-direct {p0, v0}, Linstall/app/AbsSavedState;-><init>(Linstall/app/Parcel;)V

    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
