.class public Linstall/app/ContentResolver;
.super Ljava/lang/Object;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/ContentResolver$C00011;
    }
.end annotation


# direct methods
.method public constructor <init>(Linstall/app/Context;)V
    .locals 0
    .param p1, "context"    # Linstall/app/Context;

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final insert(Linstall/app/Uri;Linstall/app/ContentValues;)Linstall/app/Uri;
    .locals 1
    .param p1, "uri"    # Linstall/app/Uri;
    .param p2, "values"    # Linstall/app/ContentValues;

    .prologue
    .line 163
    const-string v0, ""

    invoke-static {p1, v0}, Linstall/app/Uri;->withAppendedPath(Linstall/app/Uri;Ljava/lang/String;)Linstall/app/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final query(Linstall/app/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Linstall/app/Cursor;
    .locals 1
    .param p1, "uri"    # Linstall/app/Uri;
    .param p2, "s1"    # [Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;
    .param p4, "s3"    # [Ljava/lang/String;
    .param p5, "s4"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Linstall/app/ContentResolver$C00011;

    invoke-direct {v0, p0}, Linstall/app/ContentResolver$C00011;-><init>(Linstall/app/ContentResolver;)V

    return-object v0
.end method
