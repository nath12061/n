.class public Linstall/app/AppWidgetHost;
.super Ljava/lang/Object;
.source "AppWidgetHost.java"


# direct methods
.method public constructor <init>(Linstall/app/Context;I)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "hostId"    # I

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deleteAllHosts()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public allocateAppWidgetId()I
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final createView(Linstall/app/Context;ILinstall/app/AppWidgetProviderInfo;)Linstall/app/AppWidgetHostView;
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Linstall/app/AppWidgetProviderInfo;

    .prologue
    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteAppWidgetId(I)V
    .locals 2
    .param p1, "appWidgetId"    # I

    .prologue
    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteHost()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onCreateView(Linstall/app/Context;ILinstall/app/AppWidgetProviderInfo;)Linstall/app/AppWidgetHostView;
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Linstall/app/AppWidgetProviderInfo;

    .prologue
    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onProviderChanged(ILinstall/app/AppWidgetProviderInfo;)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "appWidget"    # Linstall/app/AppWidgetProviderInfo;

    .prologue
    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
