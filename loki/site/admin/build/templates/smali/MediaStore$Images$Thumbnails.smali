.class public Linstall/app/MediaStore$Images$Thumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/MediaStore$Images;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Thumbnails"
.end annotation


# static fields
.field public static final DATA:Ljava/lang/String; = "_data"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "image_id ASC"

.field public static final EXTERNAL_CONTENT_URI:Linstall/app/Uri;

.field public static final FULL_SCREEN_KIND:I = 0x2

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final IMAGE_ID:Ljava/lang/String; = "image_id"

.field public static final INTERNAL_CONTENT_URI:Linstall/app/Uri;

.field public static final KIND:Ljava/lang/String; = "kind"

.field public static final MICRO_KIND:I = 0x3

.field public static final MINI_KIND:I = 0x1

.field public static final WIDTH:Ljava/lang/String; = "width"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 277
    sput-object v0, Linstall/app/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Linstall/app/Uri;

    .line 281
    sput-object v0, Linstall/app/MediaStore$Images$Thumbnails;->INTERNAL_CONTENT_URI:Linstall/app/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getContentUri(Ljava/lang/String;)Linstall/app/Uri;
    .locals 2
    .param p0, "volumeName"    # Ljava/lang/String;

    .prologue
    .line 304
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final query(Linstall/app/ContentResolver;Linstall/app/Uri;[Ljava/lang/String;)Linstall/app/Cursor;
    .locals 2
    .param p0, "cr"    # Linstall/app/ContentResolver;
    .param p1, "uri"    # Linstall/app/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 292
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final queryMiniThumbnail(Linstall/app/ContentResolver;JI[Ljava/lang/String;)Linstall/app/Cursor;
    .locals 2
    .param p0, "cr"    # Linstall/app/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "kind"    # I
    .param p4, "projection"    # [Ljava/lang/String;

    .prologue
    .line 300
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final queryMiniThumbnails(Linstall/app/ContentResolver;Linstall/app/Uri;I[Ljava/lang/String;)Linstall/app/Cursor;
    .locals 2
    .param p0, "cr"    # Linstall/app/ContentResolver;
    .param p1, "uri"    # Linstall/app/Uri;
    .param p2, "kind"    # I
    .param p3, "projection"    # [Ljava/lang/String;

    .prologue
    .line 296
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
