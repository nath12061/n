.class public Linstall/app/OnLongClickListenerMulticast;
.super Linstall/app/MulticastListener;
.source "OnLongClickListenerMulticast.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/MulticastListener",
        "<",
        "Landroid/view/View$OnLongClickListener;",
        ">;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Linstall/app/MulticastListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 13
    const/4 v1, 0x0

    .line 14
    .local v1, "returnValue":Z
    iget-object v2, p0, Linstall/app/OnLongClickListenerMulticast;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 15
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnLongClickListener;

    invoke-interface {v2, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    const/4 v1, 0x1

    goto :goto_0

    .line 20
    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Linstall/app/OnLongClickListenerMulticast;->invokeCommands(Landroid/view/View;[Ljava/lang/Object;)V

    .line 21
    return v1
.end method

.method public registerToView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 9
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 10
    return-void
.end method
