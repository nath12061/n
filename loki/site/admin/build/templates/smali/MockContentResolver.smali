.class public Linstall/app/MockContentResolver;
.super Linstall/app/ContentResolver;
.source "MockContentResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    const/4 v0, 0x0

    check-cast v0, Linstall/app/Context;

    invoke-direct {p0, v0}, Linstall/app/ContentResolver;-><init>(Linstall/app/Context;)V

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addProvider(Ljava/lang/String;Linstall/app/ContentProvider;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "provider"    # Linstall/app/ContentProvider;

    .prologue
    .line 10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyChange(Linstall/app/Uri;Linstall/app/ContentObserver;Z)V
    .locals 2
    .param p1, "uri"    # Linstall/app/Uri;
    .param p2, "observer"    # Linstall/app/ContentObserver;
    .param p3, "syncToNetwork"    # Z

    .prologue
    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
