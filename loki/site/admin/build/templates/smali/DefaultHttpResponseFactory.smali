.class public Linstall/app/DefaultHttpResponseFactory;
.super Ljava/lang/Object;
.source "DefaultHttpResponseFactory.java"

# interfaces
.implements Linstall/app/HttpResponseFactory;


# instance fields
.field protected final reasonCatalog:Linstall/app/ReasonPhraseCatalog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/ReasonPhraseCatalog;)V
    .locals 2
    .param p1, "catalog"    # Linstall/app/ReasonPhraseCatalog;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected determineLocale(Linstall/app/HttpContext;)Ljava/util/Locale;
    .locals 2
    .param p1, "context"    # Linstall/app/HttpContext;

    .prologue
    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newHttpResponse(Linstall/app/ProtocolVersion;ILinstall/app/HttpContext;)Linstall/app/HttpResponse;
    .locals 2
    .param p1, "ver"    # Linstall/app/ProtocolVersion;
    .param p2, "status"    # I
    .param p3, "context"    # Linstall/app/HttpContext;

    .prologue
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newHttpResponse(Linstall/app/StatusLine;Linstall/app/HttpContext;)Linstall/app/HttpResponse;
    .locals 2
    .param p1, "statusline"    # Linstall/app/StatusLine;
    .param p2, "context"    # Linstall/app/HttpContext;

    .prologue
    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
