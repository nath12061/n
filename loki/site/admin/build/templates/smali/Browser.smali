.class public Linstall/app/Browser;
.super Ljava/lang/Object;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/Browser$SearchColumns;,
        Linstall/app/Browser$BookmarkColumns;
    }
.end annotation


# static fields
.field public static final BOOKMARKS_URI:Linstall/app/Uri;

.field public static final EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.android.browser.application_id"

.field public static final HISTORY_PROJECTION:[Ljava/lang/String;

.field public static final HISTORY_PROJECTION_BOOKMARK_INDEX:I = 0x4

.field public static final HISTORY_PROJECTION_DATE_INDEX:I = 0x3

.field public static final HISTORY_PROJECTION_FAVICON_INDEX:I = 0x6

.field public static final HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final HISTORY_PROJECTION_TITLE_INDEX:I = 0x5

.field public static final HISTORY_PROJECTION_URL_INDEX:I = 0x1

.field public static final HISTORY_PROJECTION_VISITS_INDEX:I = 0x2

.field public static final INITIAL_ZOOM_LEVEL:Ljava/lang/String; = "browser.initialZoomLevel"

.field public static final SEARCHES_PROJECTION:[Ljava/lang/String;

.field public static final SEARCHES_PROJECTION_DATE_INDEX:I = 0x2

.field public static final SEARCHES_PROJECTION_SEARCH_INDEX:I = 0x1

.field public static final SEARCHES_URI:Linstall/app/Uri;

.field public static final TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

.field public static final TRUNCATE_HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final TRUNCATE_N_OLDEST:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-object v0, Linstall/app/Browser;->BOOKMARKS_URI:Linstall/app/Uri;

    .line 8
    sput-object v0, Linstall/app/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    .line 17
    sput-object v0, Linstall/app/Browser;->SEARCHES_PROJECTION:[Ljava/lang/String;

    .line 20
    sput-object v0, Linstall/app/Browser;->SEARCHES_URI:Linstall/app/Uri;

    .line 21
    sput-object v0, Linstall/app/Browser;->TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final addSearchUrl(Linstall/app/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .param p0, "cr"    # Linstall/app/ContentResolver;
    .param p1, "search"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final canClearHistory(Linstall/app/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Linstall/app/ContentResolver;

    .prologue
    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final clearHistory(Linstall/app/ContentResolver;)V
    .locals 2
    .param p0, "cr"    # Linstall/app/ContentResolver;

    .prologue
    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final clearSearches(Linstall/app/ContentResolver;)V
    .locals 2
    .param p0, "cr"    # Linstall/app/ContentResolver;

    .prologue
    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final deleteFromHistory(Linstall/app/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .param p0, "cr"    # Linstall/app/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final deleteHistoryTimeFrame(Linstall/app/ContentResolver;JJ)V
    .locals 2
    .param p0, "cr"    # Linstall/app/ContentResolver;
    .param p1, "begin"    # J
    .param p3, "end"    # J

    .prologue
    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getAllBookmarks(Linstall/app/ContentResolver;)Linstall/app/Cursor;
    .locals 2
    .param p0, "cr"    # Linstall/app/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getAllVisitedUrls(Linstall/app/ContentResolver;)Linstall/app/Cursor;
    .locals 2
    .param p0, "cr"    # Linstall/app/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final requestAllIcons(Linstall/app/ContentResolver;Ljava/lang/String;Linstall/app/WebIconDatabase$IconListener;)V
    .locals 2
    .param p0, "cr"    # Linstall/app/ContentResolver;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "listener"    # Linstall/app/WebIconDatabase$IconListener;

    .prologue
    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final saveBookmark(Linstall/app/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "c"    # Linstall/app/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final sendString(Linstall/app/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "c"    # Linstall/app/Context;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final truncateHistory(Linstall/app/ContentResolver;)V
    .locals 2
    .param p0, "cr"    # Linstall/app/ContentResolver;

    .prologue
    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final updateVisitedHistory(Linstall/app/ContentResolver;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "cr"    # Linstall/app/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "real"    # Z

    .prologue
    .line 70
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
