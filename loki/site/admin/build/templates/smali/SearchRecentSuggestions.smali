.class public Linstall/app/SearchRecentSuggestions;
.super Ljava/lang/Object;
.source "SearchRecentSuggestions.java"


# static fields
.field public static final QUERIES_PROJECTION_1LINE:[Ljava/lang/String;

.field public static final QUERIES_PROJECTION_2LINE:[Ljava/lang/String;

.field public static final QUERIES_PROJECTION_DATE_INDEX:I = 0x1

.field public static final QUERIES_PROJECTION_DISPLAY1_INDEX:I = 0x3

.field public static final QUERIES_PROJECTION_DISPLAY2_INDEX:I = 0x4

.field public static final QUERIES_PROJECTION_QUERY_INDEX:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    sput-object v0, Linstall/app/SearchRecentSuggestions;->QUERIES_PROJECTION_1LINE:[Ljava/lang/String;

    .line 6
    sput-object v0, Linstall/app/SearchRecentSuggestions;->QUERIES_PROJECTION_2LINE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Linstall/app/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clearHistory()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "line2"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected truncateHistory(Linstall/app/ContentResolver;I)V
    .locals 2
    .param p1, "cr"    # Linstall/app/ContentResolver;
    .param p2, "maxEntries"    # I

    .prologue
    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
