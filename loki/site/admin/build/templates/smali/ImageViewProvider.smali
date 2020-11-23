.class public Linstall/app/ImageViewProvider;
.super Linstall/app/BindingProvider;
.source "ImageViewProvider.java"


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
    .line 14
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 15
    const-string v0, "source"

    invoke-virtual {p0, p1, p2, p3, v0}, Linstall/app/ImageViewProvider;->bindViewAttribute(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    :cond_0
    return-void
.end method

.method public createAttributeForView(Landroid/view/View;Ljava/lang/String;)Linstall/app/ViewAttribute;
    .locals 1
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
    .line 8
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const-string v0, "source"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
