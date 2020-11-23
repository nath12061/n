.class public final Linstall/app/Contacts$GroupMembership;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Linstall/app/Contacts$GroupsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupMembership"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "groupmembership"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contactsgroupmembership"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contactsgroupmembership"

.field public static final CONTENT_URI:Linstall/app/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "group_id ASC"

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final GROUP_SYNC_ACCOUNT:Ljava/lang/String; = "group_sync_account"

.field public static final GROUP_SYNC_ID:Ljava/lang/String; = "group_sync_id"

.field public static final PERSON_ID:Ljava/lang/String; = "person"

.field public static final RAW_CONTENT_URI:Linstall/app/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    sput-object v0, Linstall/app/Contacts$GroupMembership;->CONTENT_URI:Linstall/app/Uri;

    .line 122
    sput-object v0, Linstall/app/Contacts$GroupMembership;->RAW_CONTENT_URI:Linstall/app/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
