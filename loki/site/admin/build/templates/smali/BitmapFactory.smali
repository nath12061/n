.class public Linstall/app/BitmapFactory;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/BitmapFactory$Options;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeByteArray([BII)Linstall/app/Bitmap;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeByteArray([BIILinstall/app/BitmapFactory$Options;)Linstall/app/Bitmap;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "opts"    # Linstall/app/BitmapFactory$Options;

    .prologue
    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeFile(Ljava/lang/String;)Linstall/app/Bitmap;
    .locals 2
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeFile(Ljava/lang/String;Linstall/app/BitmapFactory$Options;)Linstall/app/Bitmap;
    .locals 2
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "opts"    # Linstall/app/BitmapFactory$Options;

    .prologue
    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Linstall/app/Bitmap;
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 70
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Linstall/app/Rect;Linstall/app/BitmapFactory$Options;)Linstall/app/Bitmap;
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "outPadding"    # Linstall/app/Rect;
    .param p2, "opts"    # Linstall/app/BitmapFactory$Options;

    .prologue
    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeResource(Linstall/app/Resources;I)Linstall/app/Bitmap;
    .locals 2
    .param p0, "res"    # Linstall/app/Resources;
    .param p1, "id"    # I

    .prologue
    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeResource(Linstall/app/Resources;ILinstall/app/BitmapFactory$Options;)Linstall/app/Bitmap;
    .locals 2
    .param p0, "res"    # Linstall/app/Resources;
    .param p1, "id"    # I
    .param p2, "opts"    # Linstall/app/BitmapFactory$Options;

    .prologue
    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Linstall/app/Bitmap;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeStream(Ljava/io/InputStream;Linstall/app/Rect;Linstall/app/BitmapFactory$Options;)Linstall/app/Bitmap;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Linstall/app/Rect;
    .param p2, "opts"    # Linstall/app/BitmapFactory$Options;

    .prologue
    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
