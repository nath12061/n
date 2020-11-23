.class public final Linstall/app/Contacts$Settings;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Linstall/app/Contacts$SettingsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "settings"

.field public static final CONTENT_URI:Linstall/app/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "key ASC"

.field public static final SYNC_EVERYTHING:Ljava/lang/String; = "syncEverything"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    sput-object v0, Linstall/app/Contacts$Settings;->CONTENT_URI:Linstall/app/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSetting(Linstall/app/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cr"    # Linstall/app/ContentResolver;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 394
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setSetting(Linstall/app/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "cr"    # Linstall/app/ContentResolver;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 398
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
