.class public Linstall/app/TextViewProviderd;
.super Linstall/app/BindingProviderd;
.source "TextViewProviderd.java"


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
    .line 14
    instance-of v0, p1, Linstall/app/TextView;

    if-eqz v0, :cond_0

    .line 15
    const-string v0, "text"

    invoke-virtual {p0, p1, p2, p3, v0}, Linstall/app/TextViewProviderd;->bindViewAttribute(Linstall/app/View;Linstall/app/BindingMapd;Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v0, p1, Linstall/app/EditText;

    if-eqz v0, :cond_0

    .line 17
    const-string v4, "onTextChanged"

    const-class v5, Linstall/app/TextWatcherMulticastd;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Linstall/app/TextViewProviderd;->bindCommand(Linstall/app/View;Linstall/app/BindingMapd;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 20
    :cond_0
    return-void
.end method

.method public createAttributeForView(Linstall/app/View;Ljava/lang/String;)Linstall/app/ViewAttributed;
    .locals 3
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
    const/4 v2, 0x0

    .line 5
    instance-of v1, p1, Linstall/app/TextView;

    if-eqz v1, :cond_0

    const-string v1, "text"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    :cond_0
    :goto_0
    return-object v2

    .line 8
    :cond_1
    instance-of v0, p1, Linstall/app/EditText;

    .line 10
    .local v0, "z":Z
    goto :goto_0
.end method
