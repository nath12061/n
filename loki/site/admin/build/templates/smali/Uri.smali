.class public Linstall/app/Uri;
.super Ljava/lang/Object;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/Uri$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Linstall/app/Uri;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Linstall/app/Uri;

    invoke-direct {v0}, Linstall/app/Uri;-><init>()V

    return-object v0
.end method

.method public static withAppendedPath(Linstall/app/Uri;Ljava/lang/String;)Linstall/app/Uri;
    .locals 1
    .param p0, "baseUri"    # Linstall/app/Uri;
    .param p1, "pathSegment"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Linstall/app/Uri;

    invoke-direct {v0}, Linstall/app/Uri;-><init>()V

    return-object v0
.end method
