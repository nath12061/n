.class Linstall/app/SmartcardError$C00021;
.super Ljava/lang/Object;
.source "SmartcardError.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/SmartcardError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C00021"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Linstall/app/SmartcardError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/SmartcardError;


# direct methods
.method constructor <init>(Linstall/app/SmartcardError;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/SmartcardError;

    .prologue
    .line 13
    iput-object p1, p0, Linstall/app/SmartcardError$C00021;->this$0:Linstall/app/SmartcardError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Linstall/app/SmartcardError;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 17
    new-instance v0, Linstall/app/SmartcardError;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Linstall/app/SmartcardError;-><init>(Landroid/os/Parcel;Linstall/app/SmartcardError$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Linstall/app/SmartcardError$C00021;->createFromParcel(Landroid/os/Parcel;)Linstall/app/SmartcardError;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Linstall/app/SmartcardError;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 21
    new-array v0, p1, [Linstall/app/SmartcardError;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Linstall/app/SmartcardError$C00021;->newArray(I)[Linstall/app/SmartcardError;

    move-result-object v0

    return-object v0
.end method
