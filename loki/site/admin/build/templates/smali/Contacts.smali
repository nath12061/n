.class public Linstall/app/Contacts;
.super Ljava/lang/Object;
.source "Contacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/Contacts$Settings;,
        Linstall/app/Contacts$SettingsColumns;,
        Linstall/app/Contacts$Photos;,
        Linstall/app/Contacts$PhotosColumns;,
        Linstall/app/Contacts$Phones;,
        Linstall/app/Contacts$People;,
        Linstall/app/Contacts$PresenceColumns;,
        Linstall/app/Contacts$PhonesColumns;,
        Linstall/app/Contacts$Organizations;,
        Linstall/app/Contacts$OrganizationColumns;,
        Linstall/app/Contacts$Intents;,
        Linstall/app/Contacts$Groups;,
        Linstall/app/Contacts$GroupMembership;,
        Linstall/app/Contacts$GroupsColumns;,
        Linstall/app/Contacts$Extensions;,
        Linstall/app/Contacts$ExtensionsColumns;,
        Linstall/app/Contacts$ContactMethods;,
        Linstall/app/Contacts$PeopleColumns;,
        Linstall/app/Contacts$ContactMethodsColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "contacts"

.field public static final CONTENT_URI:Linstall/app/Uri;

.field public static final KIND_EMAIL:I = 0x1

.field public static final KIND_IM:I = 0x3

.field public static final KIND_ORGANIZATION:I = 0x4

.field public static final KIND_PHONE:I = 0x5

.field public static final KIND_POSTAL:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Linstall/app/Contacts;->CONTENT_URI:Linstall/app/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
