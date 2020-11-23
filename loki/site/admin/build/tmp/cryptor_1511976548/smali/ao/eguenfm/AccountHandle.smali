.class public abstract Linstall/app/AccountHandle;
.super Ljava/lang/Object;
.source "AccountHandle.java"


# instance fields
.field private callbacks:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Linstall/app/AbstractAjaxCallback",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract auth()V
.end method

.method public declared-synchronized auth(Linstall/app/AbstractAjaxCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/AbstractAjaxCallback",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "cb":Linstall/app/AbstractAjaxCallback;, "Linstall/app/AbstractAjaxCallback<**>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linstall/app/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Linstall/app/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    .line 20
    iget-object v0, p0, Linstall/app/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {p0}, Linstall/app/AccountHandle;->auth()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :goto_0
    monitor-exit p0

    return-void

    .line 23
    :cond_0
    :try_start_1
    iget-object v0, p0, Linstall/app/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract authenticated()Z
.end method

.method public abstract expired(Linstall/app/AbstractAjaxCallback;Linstall/app/AjaxStatus;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/AbstractAjaxCallback",
            "<**>;",
            "Linstall/app/AjaxStatus;",
            ")Z"
        }
    .end annotation
.end method

.method protected declared-synchronized failure(Linstall/app/Context;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Linstall/app/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Linstall/app/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 40
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Linstall/app/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getCacheUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 55
    return-object p1
.end method

.method public getNetworkUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 51
    return-object p1
.end method

.method public abstract reauth(Linstall/app/AbstractAjaxCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/AbstractAjaxCallback",
            "<**>;)Z"
        }
    .end annotation
.end method

.method protected declared-synchronized success(Linstall/app/Context;)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Linstall/app/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_1

    .line 29
    iget-object v1, p0, Linstall/app/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 30
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    const/4 v1, 0x0

    iput-object v1, p0, Linstall/app/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public unauth()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method
