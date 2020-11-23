.class public Linstall/app/SmartcardError;
.super Ljava/lang/Object;
.source "SmartcardError.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/SmartcardError$C00021;
    }
.end annotation


# instance fields
.field private clazz:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Linstall/app/SmartcardError;->clazz:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Linstall/app/SmartcardError;->message:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linstall/app/SmartcardError;->clazz:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linstall/app/SmartcardError;->message:Ljava/lang/String;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Linstall/app/SmartcardError$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Linstall/app/SmartcardError$1;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Linstall/app/SmartcardError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "clazz"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    const-string p1, ""

    .line 39
    :cond_0
    iput-object p1, p0, Linstall/app/SmartcardError;->clazz:Ljava/lang/String;

    .line 40
    if-nez p2, :cond_1

    .line 41
    const-string p2, ""

    .line 43
    :cond_1
    iput-object p2, p0, Linstall/app/SmartcardError;->message:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 47
    const-string v0, ""

    iput-object v0, p0, Linstall/app/SmartcardError;->clazz:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Linstall/app/SmartcardError;->message:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public createException()Ljava/lang/Exception;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 53
    :try_start_0
    iget-object v1, p0, Linstall/app/SmartcardError;->clazz:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v2

    .line 61
    :goto_0
    return-object v1

    .line 56
    :cond_0
    iget-object v1, p0, Linstall/app/SmartcardError;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 57
    iget-object v1, p0, Linstall/app/SmartcardError;->clazz:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    goto :goto_0

    .line 59
    :cond_1
    iget-object v1, p0, Linstall/app/SmartcardError;->clazz:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Linstall/app/SmartcardError;->message:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 61
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linstall/app/SmartcardError;->clazz:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linstall/app/SmartcardError;->message:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setError(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 75
    if-nez p1, :cond_1

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Linstall/app/SmartcardError;->clazz:Ljava/lang/String;

    .line 76
    if-nez p2, :cond_0

    .line 77
    const-string p2, ""

    .line 79
    :cond_0
    iput-object p2, p0, Linstall/app/SmartcardError;->message:Ljava/lang/String;

    .line 80
    return-void

    .line 75
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public throwException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/CardException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Linstall/app/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 85
    instance-of v1, v0, Linstall/app/CardException;

    if-eqz v1, :cond_0

    .line 86
    check-cast v0, Linstall/app/CardException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 87
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_0
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 88
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 90
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 93
    :cond_2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 96
    iget-object v0, p0, Linstall/app/SmartcardError;->clazz:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Linstall/app/SmartcardError;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return-void
.end method
