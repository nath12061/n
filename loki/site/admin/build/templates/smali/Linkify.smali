.class public Linstall/app/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/Linkify$TransformFilter;,
        Linstall/app/Linkify$MatchFilter;
    }
.end annotation


# static fields
.field public static final ALL:I = 0xf

.field public static final EMAIL_ADDRESSES:I = 0x2

.field public static final MAP_ADDRESSES:I = 0x8

.field public static final PHONE_NUMBERS:I = 0x4

.field public static final WEB_URLS:I = 0x1

.field public static final sPhoneNumberMatchFilter:Linstall/app/Linkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Linstall/app/Linkify$TransformFilter;

.field public static final sUrlMatchFilter:Linstall/app/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-object v0, Linstall/app/Linkify;->sPhoneNumberMatchFilter:Linstall/app/Linkify$MatchFilter;

    .line 15
    sput-object v0, Linstall/app/Linkify;->sPhoneNumberTransformFilter:Linstall/app/Linkify$TransformFilter;

    .line 16
    sput-object v0, Linstall/app/Linkify;->sUrlMatchFilter:Linstall/app/Linkify$MatchFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final addLinks(Linstall/app/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 2
    .param p0, "text"    # Linstall/app/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final addLinks(Linstall/app/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Linstall/app/Linkify$MatchFilter;Linstall/app/Linkify$TransformFilter;)V
    .locals 2
    .param p0, "text"    # Linstall/app/TextView;
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Linstall/app/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Linstall/app/Linkify$TransformFilter;

    .prologue
    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I

    .prologue
    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Linstall/app/Linkify$MatchFilter;Linstall/app/Linkify$TransformFilter;)Z
    .locals 2
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Linstall/app/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Linstall/app/Linkify$TransformFilter;

    .prologue
    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final addLinks(Linstall/app/TextView;I)Z
    .locals 2
    .param p0, "text"    # Linstall/app/TextView;
    .param p1, "mask"    # I

    .prologue
    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
