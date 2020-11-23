.class public Linstall/app/ContentObservable;
.super Linstall/app/Observables;
.source "ContentObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/Observables",
        "<",
        "Linstall/app/ContentObserver;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 4
    invoke-direct {p0}, Linstall/app/Observables;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dispatchChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerObserver(Linstall/app/ContentObserver;)V
    .locals 2
    .param p1, "observer"    # Linstall/app/ContentObserver;

    .prologue
    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic registerObserver(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3
    check-cast p1, Linstall/app/ContentObserver;

    invoke-virtual {p0, p1}, Linstall/app/ContentObservable;->registerObserver(Linstall/app/ContentObserver;)V

    return-void
.end method
