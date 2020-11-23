.class public interface abstract Linstall/app/Parcelable;
.super Ljava/lang/Object;
.source "Parcelable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/Parcelable$Creator;
    }
.end annotation


# static fields
.field public static final CONTENTS_FILE_DESCRIPTOR:I = 0x1

.field public static final PARCELABLE_WRITE_RETURN_VALUE:I = 0x1


# virtual methods
.method public abstract describeContents()I
.end method

.method public abstract writeToParcel(Linstall/app/Parcel;I)V
.end method
