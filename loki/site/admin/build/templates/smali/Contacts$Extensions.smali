.class public final Linstall/app/Contacts$Extensions;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Linstall/app/Contacts$ExtensionsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extensions"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_extensions"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact_extensions"

.field public static final CONTENT_URI:Linstall/app/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "person, name ASC"

.field public static final PERSON_ID:Ljava/lang/String; = "person"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    sput-object v0, Linstall/app/Contacts$Extensions;->CONTENT_URI:Linstall/app/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
