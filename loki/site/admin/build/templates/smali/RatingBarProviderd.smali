.class public Linstall/app/RatingBarProviderd;
.super Linstall/app/BindingProviderd;
.source "RatingBarProviderd.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Linstall/app/BindingProviderd;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Linstall/app/View;Linstall/app/BindingMapd;Ljava/lang/Object;)V
    .locals 6
    .param p1, "view"    # Linstall/app/View;
    .param p2, "map"    # Linstall/app/BindingMapd;
    .param p3, "model"    # Ljava/lang/Object;

    .prologue
    .line 12
    instance-of v0, p1, Linstall/app/RatingBar;

    if-eqz v0, :cond_0

    .line 13
    const-string v0, "rating"

    invoke-virtual {p0, p1, p2, p3, v0}, Linstall/app/RatingBarProviderd;->bindViewAttribute(Linstall/app/View;Linstall/app/BindingMapd;Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    const-string v4, "onRatingChanged"

    const-class v5, Linstall/app/OnRatingBarChangeListenerMulticastd;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Linstall/app/RatingBarProviderd;->bindCommand(Linstall/app/View;Linstall/app/BindingMapd;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 16
    :cond_0
    return-void
.end method

.method public createAttributeForView(Linstall/app/View;Ljava/lang/String;)Linstall/app/ViewAttributed;
    .locals 1
    .param p1, "view"    # Linstall/app/View;
    .param p2, "attributeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Tv:",
            "Linstall/app/View;",
            ">(",
            "Linstall/app/View;",
            "Ljava/lang/String;",
            ")",
            "Linstall/app/ViewAttributed",
            "<TTv;*>;"
        }
    .end annotation

    .prologue
    .line 5
    instance-of v0, p1, Linstall/app/RatingBar;

    if-eqz v0, :cond_0

    const-string v0, "rating"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
