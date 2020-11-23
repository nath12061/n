.class public Linstall/app/Movie;
.super Ljava/lang/Object;
.source "Movie.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native decodeByteArray([BII)Linstall/app/Movie;
.end method

.method public static decodeFile(Ljava/lang/String;)Linstall/app/Movie;
    .locals 2
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native decodeStream(Ljava/io/InputStream;)Linstall/app/Movie;
.end method


# virtual methods
.method public draw(Linstall/app/Canvas;FF)V
    .locals 2
    .param p1, "canvas"    # Linstall/app/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native draw(Linstall/app/Canvas;FFLinstall/app/Paint;)V
.end method

.method public native duration()I
.end method

.method public native height()I
.end method

.method public native isOpaque()Z
.end method

.method public native setTime(I)Z
.end method

.method public native width()I
.end method
