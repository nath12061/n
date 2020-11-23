.class public abstract Linstall/app/ChildViewsViewAttribute;
.super Linstall/app/ViewAttribute;
.source "ChildViewsViewAttribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ViewAttribute",
        "<",
        "Landroid/widget/ViewAnimator;",
        "[",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Linstall/app/ViewAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 9
    if-nez p1, :cond_1

    .line 10
    invoke-virtual {p0}, Linstall/app/ChildViewsViewAttribute;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewAnimator;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->removeAllViews()V

    .line 17
    .end local p1    # "newValue":Ljava/lang/Object;
    :cond_0
    return-void

    .line 11
    .restart local p1    # "newValue":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, [Landroid/view/View;

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p0}, Linstall/app/ChildViewsViewAttribute;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewAnimator;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->removeAllViews()V

    .line 13
    check-cast p1, [Landroid/view/View;

    .end local p1    # "newValue":Ljava/lang/Object;
    check-cast p1, [Landroid/view/View;

    array-length v3, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 14
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Linstall/app/ChildViewsViewAttribute;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v0}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;)V

    .line 13
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Linstall/app/ChildViewsViewAttribute;->get()[Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public get()[Landroid/view/View;
    .locals 4

    .prologue
    .line 20
    invoke-virtual {p0}, Linstall/app/ChildViewsViewAttribute;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewAnimator;

    invoke-virtual {v3}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    .line 21
    .local v0, "count":I
    new-array v2, v0, [Landroid/view/View;

    .line 22
    .local v2, "result":[Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 23
    invoke-virtual {p0}, Linstall/app/ChildViewsViewAttribute;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewAnimator;

    invoke-virtual {v3, v1}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v1

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_0
    return-object v2
.end method
