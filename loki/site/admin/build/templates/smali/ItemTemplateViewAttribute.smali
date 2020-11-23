.class public abstract Linstall/app/ItemTemplateViewAttribute;
.super Linstall/app/ViewAttribute;
.source "ItemTemplateViewAttribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ViewAttribute",
        "<",
        "Landroid/view/View;",
        "Linstall/app/LayoutTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field private template:Linstall/app/LayoutTemplate;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Linstall/app/ViewAttribute;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method protected AcceptThisTypeAs(Ljava/lang/Class;)Linstall/app/BindingType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Linstall/app/BindingType;"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    :cond_0
    sget-object v0, Linstall/app/BindingType;->OneWay:Linstall/app/BindingType;

    .line 33
    :goto_0
    return-object v0

    .line 30
    :cond_1
    const-class v0, Linstall/app/LayoutTemplate;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    sget-object v0, Linstall/app/BindingType;->TwoWay:Linstall/app/BindingType;

    goto :goto_0

    .line 33
    :cond_2
    sget-object v0, Linstall/app/BindingType;->NoBinding:Linstall/app/BindingType;

    goto :goto_0
.end method

.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 12
    instance-of v0, p1, Linstall/app/LayoutTemplate;

    if-eqz v0, :cond_1

    .line 13
    check-cast p1, Linstall/app/LayoutTemplate;

    .end local p1    # "newValue":Ljava/lang/Object;
    iput-object p1, p0, Linstall/app/ItemTemplateViewAttribute;->template:Linstall/app/LayoutTemplate;

    .line 20
    :cond_0
    :goto_0
    return-void

    .line 14
    .restart local p1    # "newValue":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 15
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 17
    .restart local p1    # "newValue":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public get()Linstall/app/LayoutTemplate;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Linstall/app/ItemTemplateViewAttribute;->template:Linstall/app/LayoutTemplate;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Linstall/app/ItemTemplateViewAttribute;->get()Linstall/app/LayoutTemplate;

    move-result-object v0

    return-object v0
.end method
