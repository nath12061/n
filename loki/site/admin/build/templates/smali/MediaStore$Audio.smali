.class public final Linstall/app/MediaStore$Audio;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Audio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/MediaStore$Audio$Playlists;,
        Linstall/app/MediaStore$Audio$PlaylistsColumns;,
        Linstall/app/MediaStore$Audio$Media;,
        Linstall/app/MediaStore$Audio$Genres;,
        Linstall/app/MediaStore$Audio$GenresColumns;,
        Linstall/app/MediaStore$Audio$AudioColumns;,
        Linstall/app/MediaStore$Audio$Artists;,
        Linstall/app/MediaStore$Audio$ArtistColumns;,
        Linstall/app/MediaStore$Audio$Albums;,
        Linstall/app/MediaStore$Audio$AlbumColumns;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static keyFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
