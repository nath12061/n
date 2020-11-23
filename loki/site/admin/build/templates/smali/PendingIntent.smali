.class public final Linstall/app/PendingIntent;
.super Ljava/lang/Object;
.source "PendingIntent.java"

# interfaces
.implements Linstall/app/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/PendingIntent$OnFinished;,
        Linstall/app/PendingIntent$CanceledException;
    }
.end annotation


# static fields
.field public static final CREATOR:Linstall/app/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/Parcelable$Creator",
            "<",
            "Linstall/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_CANCEL_CURRENT:I = 0x10000000

.field public static final FLAG_NO_CREATE:I = 0x20000000

.field public static final FLAG_ONE_SHOT:I = 0x40000000

.field public static final FLAG_UPDATE_CURRENT:I = 0x8000000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput-object v0, Linstall/app/PendingIntent;->CREATOR:Linstall/app/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getActivity(Linstall/app/Context;ILinstall/app/Intent;I)Linstall/app/PendingIntent;
    .locals 2
    .param p0, "context"    # Linstall/app/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Linstall/app/Intent;
    .param p3, "flags"    # I

    .prologue
    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBroadcast(Linstall/app/Context;ILinstall/app/Intent;I)Linstall/app/PendingIntent;
    .locals 2
    .param p0, "context"    # Linstall/app/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Linstall/app/Intent;
    .param p3, "flags"    # I

    .prologue
    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getService(Linstall/app/Context;ILinstall/app/Intent;I)Linstall/app/PendingIntent;
    .locals 2
    .param p0, "context"    # Linstall/app/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Linstall/app/Intent;
    .param p3, "flags"    # I

    .prologue
    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readPendingIntentOrNullFromParcel(Linstall/app/Parcel;)Linstall/app/PendingIntent;
    .locals 2
    .param p0, "in"    # Linstall/app/Parcel;

    .prologue
    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static writePendingIntentOrNullToParcel(Linstall/app/PendingIntent;Linstall/app/Parcel;)V
    .locals 2
    .param p0, "sender"    # Linstall/app/PendingIntent;
    .param p1, "out"    # Linstall/app/Parcel;

    .prologue
    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public send()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public send(I)V
    .locals 2
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public send(ILinstall/app/PendingIntent$OnFinished;Linstall/app/Handler;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "onFinished"    # Linstall/app/PendingIntent$OnFinished;
    .param p3, "handler"    # Linstall/app/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public send(Linstall/app/Context;ILinstall/app/Intent;)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Linstall/app/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public send(Linstall/app/Context;ILinstall/app/Intent;Linstall/app/PendingIntent$OnFinished;Linstall/app/Handler;)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Linstall/app/Intent;
    .param p4, "onFinished"    # Linstall/app/PendingIntent$OnFinished;
    .param p5, "handler"    # Linstall/app/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Linstall/app/Parcel;I)V
    .locals 2
    .param p1, "out"    # Linstall/app/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
