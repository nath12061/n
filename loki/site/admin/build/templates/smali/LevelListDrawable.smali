.class public Linstall/app/LevelListDrawable;
.super Linstall/app/DrawableContainer;
.source "LevelListDrawable.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Linstall/app/DrawableContainer;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addLevel(IILinstall/app/Drawable;)V
    .locals 2
    .param p1, "low"    # I
    .param p2, "high"    # I
    .param p3, "drawable"    # Linstall/app/Drawable;

    .prologue
    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public inflate(Linstall/app/Resources;Linstall/app/XmlPullParser;Linstall/app/AttributeSet;)V
    .locals 2
    .param p1, "r"    # Linstall/app/Resources;
    .param p2, "parser"    # Linstall/app/XmlPullParser;
    .param p3, "attrs"    # Linstall/app/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mutate()Linstall/app/Drawable;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLevelChange(I)Z
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
