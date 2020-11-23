.class public abstract Linstall/app/DisplayedChildViewAttribute;
.super Linstall/app/ViewAttribute;
.source "DisplayedChildViewAttribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ViewAttribute",
        "<",
        "Landroid/widget/ViewAnimator;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ViewAnimator;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ViewAnimator;

    .prologue
    .line 6
    invoke-direct {p0}, Linstall/app/ViewAttribute;-><init>()V

    .line 7
    return-void
.end method


# virtual methods
.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 10
    invoke-virtual {p0}, Linstall/app/DisplayedChildViewAttribute;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewAnimator;

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v1

    .line 11
    .local v1, "totalView":I
    if-eqz p1, :cond_0

    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 12
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 13
    .local v0, "newInt":I
    if-ge v0, v1, :cond_0

    .line 14
    invoke-virtual {p0}, Linstall/app/DisplayedChildViewAttribute;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewAnimator;

    invoke-virtual {v2, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 17
    .end local v0    # "newInt":I
    :cond_0
    return-void
.end method

.method public get()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Linstall/app/DisplayedChildViewAttribute;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Linstall/app/DisplayedChildViewAttribute;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
