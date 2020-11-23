.class public Linstall/app/OnRatingBarChangeListenerMulticastd;
.super Linstall/app/MulticastListenerd;
.source "OnRatingBarChangeListenerMulticastd.java"

# interfaces
.implements Linstall/app/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/MulticastListenerd",
        "<",
        "Linstall/app/RatingBar$OnRatingBarChangeListener;",
        ">;",
        "Linstall/app/RatingBar$OnRatingBarChangeListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Linstall/app/MulticastListenerd;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Linstall/app/RatingBar;FZ)V
    .locals 4
    .param p1, "view"    # Linstall/app/RatingBar;
    .param p2, "arg0"    # F
    .param p3, "fromUser"    # Z

    .prologue
    .line 18
    iget-object v1, p0, Linstall/app/OnRatingBarChangeListenerMulticastd;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 19
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linstall/app/RatingBar$OnRatingBarChangeListener;

    invoke-interface {v1, p1, p2, p3}, Linstall/app/RatingBar$OnRatingBarChangeListener;->onRatingChanged(Linstall/app/RatingBar;FZ)V

    goto :goto_0

    .line 22
    :cond_0
    if-eqz p3, :cond_1

    .line 23
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Linstall/app/OnRatingBarChangeListenerMulticastd;->invokeCommands(Linstall/app/View;[Ljava/lang/Object;)V

    .line 25
    :cond_1
    return-void
.end method

.method public registerToView(Linstall/app/View;)V
    .locals 1
    .param p1, "v"    # Linstall/app/View;

    .prologue
    .line 12
    instance-of v0, p1, Linstall/app/RatingBar;

    if-eqz v0, :cond_0

    .line 13
    check-cast p1, Linstall/app/RatingBar;

    .end local p1    # "v":Linstall/app/View;
    invoke-virtual {p1, p0}, Linstall/app/RatingBar;->setOnRatingBarChangeListener(Linstall/app/RatingBar$OnRatingBarChangeListener;)V

    .line 15
    :cond_0
    return-void
.end method
