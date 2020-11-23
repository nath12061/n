.class public Linstall/app/PaintDrawable;
.super Linstall/app/ShapeDrawable;
.source "PaintDrawable.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 4
    invoke-direct {p0}, Linstall/app/ShapeDrawable;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Linstall/app/ShapeDrawable;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected inflateTag(Ljava/lang/String;Linstall/app/Resources;Linstall/app/XmlPullParser;Linstall/app/AttributeSet;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "r"    # Linstall/app/Resources;
    .param p3, "parser"    # Linstall/app/XmlPullParser;
    .param p4, "attrs"    # Linstall/app/AttributeSet;

    .prologue
    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCornerRadii([F)V
    .locals 2
    .param p1, "radii"    # [F

    .prologue
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCornerRadius(F)V
    .locals 2
    .param p1, "radius"    # F

    .prologue
    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
