.class public Linstall/app/UserDictionary;
.super Ljava/lang/Object;
.source "UserDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/UserDictionary$Words;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "user_dictionary"

.field public static final CONTENT_URI:Linstall/app/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput-object v0, Linstall/app/UserDictionary;->CONTENT_URI:Linstall/app/Uri;

    return-void
.end method

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
