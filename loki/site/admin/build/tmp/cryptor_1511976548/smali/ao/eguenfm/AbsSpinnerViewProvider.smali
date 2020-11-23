.class public Linstall/app/AbsSpinnerViewProvider;
.super Linstall/app/BindingProvider;
.source "AbsSpinnerViewProvider.java"


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
    .line 12
    instance-of v0, p1, Landroid/widget/AbsSpinner;

    if-nez v0, :cond_0

    .line 14
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
    instance-of v0, p1, Landroid/widget/AbsSpinner;

    if-nez v0, :cond_0

    :cond_0
    return-object v1
.end method
