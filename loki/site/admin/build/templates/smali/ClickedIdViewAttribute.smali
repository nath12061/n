.class public abstract Linstall/app/ClickedIdViewAttribute;
.super Linstall/app/ViewAttribute;
.source "ClickedIdViewAttribute.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ViewAttribute",
        "<",
        "Landroid/widget/AdapterView",
        "<*>;",
        "Ljava/lang/Long;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private value:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;Ljava/lang/String;)V
    .locals 1
    .param p2, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 10
    .local p1, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Linstall/app/ViewAttribute;-><init>()V

    .line 11
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linstall/app/ClickedIdViewAttribute;->setReadonly(Z)V

    .line 12
    return-void
.end method


# virtual methods
.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 19
    return-void
.end method

.method public get()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Linstall/app/ClickedIdViewAttribute;->value:Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Linstall/app/ClickedIdViewAttribute;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Linstall/app/ClickedIdViewAttribute;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Linstall/app/ClickedIdViewAttribute;->value:Ljava/lang/Long;

    .line 24
    invoke-virtual {p0}, Linstall/app/ClickedIdViewAttribute;->notifyChanged()V

    .line 26
    :cond_0
    return-void
.end method
