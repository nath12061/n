.class public final Linstall/app/MediaStore$Audio$Playlists$Members;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Linstall/app/MediaStore$Audio$AudioColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/MediaStore$Audio$Playlists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Members"
.end annotation


# static fields
.field public static final AUDIO_ID:Ljava/lang/String; = "audio_id"

.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "members"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "play_order"

.field public static final PLAYLIST_ID:Ljava/lang/String; = "playlist_id"

.field public static final PLAY_ORDER:Ljava/lang/String; = "play_order"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getContentUri(Ljava/lang/String;J)Linstall/app/Uri;
    .locals 2
    .param p0, "volumeName"    # Ljava/lang/String;
    .param p1, "playlistId"    # J

    .prologue
    .line 198
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
