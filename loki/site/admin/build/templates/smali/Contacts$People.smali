.class public final Linstall/app/Contacts$People;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Linstall/app/Contacts$PeopleColumns;
.implements Linstall/app/Contacts$PhonesColumns;
.implements Linstall/app/Contacts$PresenceColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "People"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/Contacts$People$Phones;,
        Linstall/app/Contacts$People$Extensions;,
        Linstall/app/Contacts$People$ContactMethods;
    }
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Linstall/app/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/person"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/person"

.field public static final CONTENT_URI:Linstall/app/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final DELETED_CONTENT_URI:Linstall/app/Uri;

.field public static final PRIMARY_EMAIL_ID:Ljava/lang/String; = "primary_email"

.field public static final PRIMARY_ORGANIZATION_ID:Ljava/lang/String; = "primary_organization"

.field public static final PRIMARY_PHONE_ID:Ljava/lang/String; = "primary_phone"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 258
    sput-object v0, Linstall/app/Contacts$People;->CONTENT_FILTER_URI:Linstall/app/Uri;

    .line 261
    sput-object v0, Linstall/app/Contacts$People;->CONTENT_URI:Linstall/app/Uri;

    .line 263
    sput-object v0, Linstall/app/Contacts$People;->DELETED_CONTENT_URI:Linstall/app/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addToGroup(Linstall/app/ContentResolver;JJ)Linstall/app/Uri;
    .locals 2
    .param p0, "resolver"    # Linstall/app/ContentResolver;
    .param p1, "personId"    # J
    .param p3, "groupId"    # J

    .prologue
    .line 313
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addToGroup(Linstall/app/ContentResolver;JLjava/lang/String;)Linstall/app/Uri;
    .locals 2
    .param p0, "resolver"    # Linstall/app/ContentResolver;
    .param p1, "personId"    # J
    .param p3, "groupName"    # Ljava/lang/String;

    .prologue
    .line 309
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addToMyContactsGroup(Linstall/app/ContentResolver;J)Linstall/app/Uri;
    .locals 2
    .param p0, "resolver"    # Linstall/app/ContentResolver;
    .param p1, "personId"    # J

    .prologue
    .line 305
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createPersonInMyContactsGroup(Linstall/app/ContentResolver;Linstall/app/ContentValues;)Linstall/app/Uri;
    .locals 2
    .param p0, "resolver"    # Linstall/app/ContentResolver;
    .param p1, "values"    # Linstall/app/ContentValues;

    .prologue
    .line 317
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static loadContactPhoto(Linstall/app/Context;Linstall/app/Uri;ILinstall/app/BitmapFactory$Options;)Linstall/app/Bitmap;
    .locals 2
    .param p0, "context"    # Linstall/app/Context;
    .param p1, "person"    # Linstall/app/Uri;
    .param p2, "placeholderImageResource"    # I
    .param p3, "options"    # Linstall/app/BitmapFactory$Options;

    .prologue
    .line 333
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static markAsContacted(Linstall/app/ContentResolver;J)V
    .locals 2
    .param p0, "resolver"    # Linstall/app/ContentResolver;
    .param p1, "personId"    # J

    .prologue
    .line 301
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static openContactPhotoInputStream(Linstall/app/ContentResolver;Linstall/app/Uri;)Ljava/io/InputStream;
    .locals 2
    .param p0, "cr"    # Linstall/app/ContentResolver;
    .param p1, "person"    # Linstall/app/Uri;

    .prologue
    .line 329
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static queryGroups(Linstall/app/ContentResolver;J)Linstall/app/Cursor;
    .locals 2
    .param p0, "resolver"    # Linstall/app/ContentResolver;
    .param p1, "person"    # J

    .prologue
    .line 321
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setPhotoData(Linstall/app/ContentResolver;Linstall/app/Uri;[B)V
    .locals 2
    .param p0, "cr"    # Linstall/app/ContentResolver;
    .param p1, "person"    # Linstall/app/Uri;
    .param p2, "data"    # [B

    .prologue
    .line 325
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
