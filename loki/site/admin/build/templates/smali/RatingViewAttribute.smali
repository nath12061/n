.class public abstract Linstall/app/RatingViewAttribute;
.super Linstall/app/ViewAttribute;
.source "RatingViewAttribute.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ViewAttribute",
        "<",
        "Landroid/widget/RatingBar;",
        "Ljava/lang/Float;",
        ">;",
        "Landroid/widget/RatingBar$OnRatingBarChangeListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/RatingBar;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/RatingBar;

    .prologue
    .line 7
    invoke-direct {p0}, Linstall/app/ViewAttribute;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 11
    if-nez p1, :cond_1

    .line 12
    invoke-virtual {p0}, Linstall/app/RatingViewAttribute;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 16
    .end local p1    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 13
    .restart local p1    # "newValue":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Linstall/app/RatingViewAttribute;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    check-cast p1, Ljava/lang/Float;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    goto :goto_0
.end method

.method public get()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Linstall/app/RatingViewAttribute;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Linstall/app/RatingViewAttribute;->get()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 0
    .param p1, "ratingBar"    # Landroid/widget/RatingBar;
    .param p2, "rating"    # F
    .param p3, "fromUser"    # Z

    .prologue
    .line 23
    if-eqz p3, :cond_0

    .line 24
    invoke-virtual {p0}, Linstall/app/RatingViewAttribute;->notifyChanged()V

    .line 26
    :cond_0
    return-void
.end method
