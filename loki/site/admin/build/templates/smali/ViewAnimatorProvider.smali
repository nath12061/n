.class public Linstall/app/ViewAnimatorProvider;
.super Linstall/app/BindingProvider;
.source "ViewAnimatorProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Linstall/app/BindingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "map"    # Linstall/app/BindingMap;
    .param p3, "model"    # Ljava/lang/Object;

    .prologue
    .line 19
    instance-of v0, p1, Landroid/widget/ViewAnimator;

    if-eqz v0, :cond_0

    .line 20
    const-string v0, "childViews"

    invoke-virtual {p0, p1, p2, p3, v0}, Linstall/app/ViewAnimatorProvider;->bindViewAttribute(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const-string v0, "displayedChild"

    invoke-virtual {p0, p1, p2, p3, v0}, Linstall/app/ViewAnimatorProvider;->bindViewAttribute(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    :cond_0
    return-void
.end method

.method public createAttributeForView(Landroid/view/View;Ljava/lang/String;)Linstall/app/ViewAttribute;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attributeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Tv:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")",
            "Linstall/app/ViewAttribute",
            "<TTv;*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 8
    instance-of v0, p1, Landroid/widget/ViewAnimator;

    if-nez v0, :cond_1

    .line 15
    :cond_0
    :goto_0
    return-object v1

    .line 11
    :cond_1
    const-string v0, "displayedChild"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    :cond_2
    const-string v0, "childViews"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
