.class public abstract Linstall/app/ItemTemplateViewAttributed;
.super Linstall/app/ViewAttributed;
.source "ItemTemplateViewAttributed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ViewAttributed",
        "<",
        "Linstall/app/View;",
        "Linstall/app/LayoutTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field private template:Linstall/app/LayoutTemplated;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Linstall/app/View;Ljava/lang/String;)V
    .locals 0
    .param p2, "view"    # Linstall/app/View;
    .param p3, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Linstall/app/LayoutTemplate;",
            ">;",
            "Linstall/app/View;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 7
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<Linstall/app/LayoutTemplate;>;"
    invoke-direct {p0, p1, p2, p3}, Linstall/app/ViewAttributed;-><init>(Ljava/lang/Class;Linstall/app/View;Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method protected AcceptThisTypeAs(Ljava/lang/Class;)Linstall/app/BindingTyped;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Linstall/app/BindingTyped;"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    sget-object v0, Linstall/app/BindingTyped;->OneWay:Linstall/app/BindingTyped;

    .line 31
    :goto_0
    return-object v0

    .line 28
    :cond_1
    const-class v0, Linstall/app/LayoutTemplated;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    sget-object v0, Linstall/app/BindingTyped;->TwoWay:Linstall/app/BindingTyped;

    goto :goto_0

    .line 31
    :cond_2
    sget-object v0, Linstall/app/BindingTyped;->NoBinding:Linstall/app/BindingTyped;

    goto :goto_0
.end method

.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 12
    instance-of v0, p1, Linstall/app/LayoutTemplated;

    if-eqz v0, :cond_1

    .line 13
    check-cast p1, Linstall/app/LayoutTemplated;

    .end local p1    # "newValue":Ljava/lang/Object;
    iput-object p1, p0, Linstall/app/ItemTemplateViewAttributed;->template:Linstall/app/LayoutTemplated;

    .line 21
    :cond_0
    :goto_0
    return-void

    .line 14
    .restart local p1    # "newValue":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 15
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 16
    new-instance v0, Linstall/app/SingleLayoutTemplated;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Linstall/app/SingleLayoutTemplated;-><init>(I)V

    iput-object v0, p0, Linstall/app/ItemTemplateViewAttributed;->template:Linstall/app/LayoutTemplated;

    goto :goto_0

    .line 18
    .restart local p1    # "newValue":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0
.end method
