.class public final Linstall/app/MediaStore$Audio$Albums;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Linstall/app/MediaStore$Audio$AlbumColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/MediaStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Albums"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/albums"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "album_key"

.field public static final ENTRY_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/album"

.field public static final EXTERNAL_CONTENT_URI:Linstall/app/Uri;

.field public static final INTERNAL_CONTENT_URI:Linstall/app/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-object v0, Linstall/app/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Linstall/app/Uri;

    .line 52
    sput-object v0, Linstall/app/MediaStore$Audio$Albums;->INTERNAL_CONTENT_URI:Linstall/app/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getContentUri(Ljava/lang/String;)Linstall/app/Uri;
    .locals 2
    .param p0, "volumeName"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
