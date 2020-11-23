.class public abstract Linstall/app/TextViewAttribute;
.super Linstall/app/ViewAttribute;
.source "TextViewAttribute.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ViewAttribute",
        "<",
        "Landroid/widget/TextView;",
        "Ljava/lang/CharSequence;",
        ">;",
        "Landroid/text/TextWatcher;"
    }
.end annotation


# instance fields
.field private mValue:Ljava/lang/CharSequence;

.field private suppressChange:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Linstall/app/ViewAttribute;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Linstall/app/TextViewAttribute;->mValue:Ljava/lang/CharSequence;

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/TextViewAttribute;->suppressChange:Z

    .line 14
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 16
    :cond_0
    return-void
.end method

.method private cloneCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "o"    # Ljava/lang/CharSequence;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private compareCharSequence(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "a"    # Ljava/lang/CharSequence;
    .param p2, "b"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v1

    .line 30
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 31
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 35
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
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
    .line 78
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Linstall/app/BindingType;->TwoWay:Linstall/app/BindingType;

    .line 84
    :goto_0
    return-object v0

    .line 81
    :cond_0
    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    sget-object v0, Linstall/app/BindingType;->TwoWay:Linstall/app/BindingType;

    goto :goto_0

    .line 84
    :cond_1
    sget-object v0, Linstall/app/BindingType;->OneWay:Linstall/app/BindingType;

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 58
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 61
    return-void
.end method

.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 39
    monitor-enter p0

    .line 40
    if-nez p1, :cond_2

    .line 41
    :try_start_0
    invoke-virtual {p0}, Linstall/app/TextViewAttribute;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 42
    monitor-exit p0

    .line 55
    .end local p1    # "newValue":Ljava/lang/Object;
    :goto_0
    return-void

    .line 44
    .restart local p1    # "newValue":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Linstall/app/TextViewAttribute;->suppressChange:Z

    .line 45
    invoke-virtual {p0}, Linstall/app/TextViewAttribute;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .end local p1    # "newValue":Ljava/lang/Object;
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    .restart local p1    # "newValue":Ljava/lang/Object;
    :cond_2
    :try_start_1
    instance-of v1, p1, Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    .line 47
    const/4 v1, 0x1

    iput-boolean v1, p0, Linstall/app/TextViewAttribute;->suppressChange:Z

    .line 48
    invoke-virtual {p0}, Linstall/app/TextViewAttribute;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 49
    :cond_3
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, v0

    invoke-virtual {p0}, Linstall/app/TextViewAttribute;->get()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Linstall/app/TextViewAttribute;->compareCharSequence(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Linstall/app/TextViewAttribute;->suppressChange:Z

    .line 52
    invoke-virtual {p0}, Linstall/app/TextViewAttribute;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p1}, Linstall/app/TextViewAttribute;->cloneCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public get()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Linstall/app/TextViewAttribute;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Linstall/app/TextViewAttribute;->cloneCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Linstall/app/TextViewAttribute;->get()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    const-string v0, "Binderd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextChagnged, mV="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Linstall/app/TextViewAttribute;->mValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t arg0="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Linstall/app/TextViewAttribute;->mValue:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, p1}, Linstall/app/TextViewAttribute;->compareCharSequence(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    monitor-exit p0

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-boolean v0, p0, Linstall/app/TextViewAttribute;->suppressChange:Z

    if-nez v0, :cond_1

    .line 70
    invoke-direct {p0, p1}, Linstall/app/TextViewAttribute;->cloneCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Linstall/app/TextViewAttribute;->mValue:Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {p0}, Linstall/app/TextViewAttribute;->notifyChanged()V

    .line 73
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/TextViewAttribute;->suppressChange:Z

    .line 74
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
