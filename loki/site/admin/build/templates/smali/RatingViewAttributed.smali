.class public Linstall/app/RatingViewAttributed;
.super Linstall/app/ViewAttributed;
.source "RatingViewAttributed.java"

# interfaces
.implements Linstall/app/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ViewAttributed",
        "<",
        "Linstall/app/RatingBar;",
        "Ljava/lang/Float;",
        ">;",
        "Linstall/app/RatingBar$OnRatingBarChangeListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Linstall/app/RatingBar;)V
    .locals 2
    .param p1, "view"    # Linstall/app/RatingBar;

    .prologue
    .line 7
    const-class v0, Ljava/lang/Float;

    const-string v1, "rating"

    invoke-direct {p0, v0, p1, v1}, Linstall/app/ViewAttributed;-><init>(Ljava/lang/Class;Linstall/app/View;Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 12
    if-nez p1, :cond_1

    .line 13
    invoke-virtual {p0}, Linstall/app/RatingViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    check-cast v0, Linstall/app/RatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linstall/app/RatingBar;->setRating(F)V

    .line 17
    .end local p1    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 14
    .restart local p1    # "newValue":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Linstall/app/RatingViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    check-cast v0, Linstall/app/RatingBar;

    check-cast p1, Ljava/lang/Float;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Linstall/app/RatingBar;->setRating(F)V

    goto :goto_0
.end method

.method public get()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Linstall/app/RatingViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    check-cast v0, Linstall/app/RatingBar;

    invoke-virtual {v0}, Linstall/app/RatingBar;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Linstall/app/RatingViewAttributed;->get()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public onRatingChanged(Linstall/app/RatingBar;FZ)V
    .locals 0
    .param p1, "ratingBar"    # Linstall/app/RatingBar;
    .param p2, "rating"    # F
    .param p3, "fromUser"    # Z

    .prologue
    .line 24
    if-eqz p3, :cond_0

    .line 25
    invoke-virtual {p0}, Linstall/app/RatingViewAttributed;->notifyChanged()V

    .line 27
    :cond_0
    return-void
.end method
