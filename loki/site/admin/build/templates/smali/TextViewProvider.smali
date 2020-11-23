.class public Linstall/app/TextViewProvider;
.super Linstall/app/BindingProvider;
.source "TextViewProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Linstall/app/BindingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "map"    # Linstall/app/BindingMap;
    .param p3, "model"    # Ljava/lang/Object;

    .prologue
    .line 17
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 18
    const-string v0, "text"

    invoke-virtual {p0, p1, p2, p3, v0}, Linstall/app/TextViewProvider;->bindViewAttribute(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 20
    const-string v4, "onTextChanged"

    const-class v5, Linstall/app/TextWatcherMulticast;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Linstall/app/TextViewProvider;->bindCommand(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 23
    :cond_0
    return-void
.end method

.method public createAttributeForView(Landroid/view/View;Ljava/lang/String;)Linstall/app/ViewAttribute;
    .locals 3
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
    const/4 v2, 0x0

    .line 9
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const-string v1, "text"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    :cond_0
    :goto_0
    return-object v2

    .line 12
    :cond_1
    instance-of v0, p1, Landroid/widget/EditText;

    .line 13
    .local v0, "z":Z
    goto :goto_0
.end method
