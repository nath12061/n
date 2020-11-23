.class public final Linstall/app/MediaStore$Audio$Media;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Linstall/app/MediaStore$Audio$AudioColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/MediaStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Media"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/audio"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "title"

.field public static final EXTERNAL_CONTENT_URI:Linstall/app/Uri;

.field public static final EXTRA_MAX_BYTES:Ljava/lang/String; = "install.app.MediaStore.extra.MAX_BYTES"

.field public static final INTERNAL_CONTENT_URI:Linstall/app/Uri;

.field public static final RECORD_SOUND_ACTION:Ljava/lang/String; = "install.app.MediaStore.RECORD_SOUND"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 153
    sput-object v0, Linstall/app/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Linstall/app/Uri;

    .line 155
    sput-object v0, Linstall/app/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Linstall/app/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getContentUri(Ljava/lang/String;)Linstall/app/Uri;
    .locals 2
    .param p0, "volumeName"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getContentUriForPath(Ljava/lang/String;)Linstall/app/Uri;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 167
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
