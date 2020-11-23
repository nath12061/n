.class public Linstall/app/TextViewAttributed;
.super Linstall/app/ViewAttributed;
.source "TextViewAttributed.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ViewAttributed",
        "<",
        "Linstall/app/TextView;",
        "Ljava/lang/CharSequence;",
        ">;",
        "Landroid/text/TextWatcher;"
    }
.end annotation


# instance fields
.field private mValue:Ljava/lang/CharSequence;

.field private suppressChange:Z


# direct methods
.method public constructor <init>(Linstall/app/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Linstall/app/TextView;
    .param p2, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Ljava/lang/CharSequence;

    invoke-direct {p0, v0, p1, p2}, Linstall/app/ViewAttributed;-><init>(Ljava/lang/Class;Linstall/app/View;Ljava/lang/String;)V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Linstall/app/TextViewAttributed;->mValue:Ljava/lang/CharSequence;

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/TextViewAttributed;->suppressChange:Z

    .line 12
    instance-of v0, p1, Linstall/app/EditText;

    if-eqz v0, :cond_0

    .line 15
    :cond_0
    return-void
.end method

.method private cloneCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "o"    # Ljava/lang/CharSequence;

    .prologue
    .line 22
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

    .line 26
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v1

    .line 29
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 30
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 34
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
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
    .line 77
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Linstall/app/BindingTyped;->TwoWay:Linstall/app/BindingTyped;

    .line 83
    :goto_0
    return-object v0

    .line 80
    :cond_0
    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Linstall/app/BindingTyped;->TwoWay:Linstall/app/BindingTyped;

    goto :goto_0

    .line 83
    :cond_1
    sget-object v0, Linstall/app/BindingTyped;->OneWay:Linstall/app/BindingTyped;

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 57
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 60
    return-void
.end method

.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 38
    monitor-enter p0

    .line 39
    if-nez p1, :cond_2

    .line 40
    :try_start_0
    invoke-virtual {p0}, Linstall/app/TextViewAttributed;->getView()Linstall/app/View;

    move-result-object v1

    check-cast v1, Linstall/app/TextView;

    invoke-virtual {v1}, Linstall/app/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 41
    monitor-exit p0

    .line 54
    .end local p1    # "newValue":Ljava/lang/Object;
    :goto_0
    return-void

    .line 43
    .restart local p1    # "newValue":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Linstall/app/TextViewAttributed;->suppressChange:Z

    .line 44
    invoke-virtual {p0}, Linstall/app/TextViewAttributed;->getView()Linstall/app/View;

    move-result-object v1

    check-cast v1, Linstall/app/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Linstall/app/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
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

    .line 45
    .restart local p1    # "newValue":Ljava/lang/Object;
    :cond_2
    :try_start_1
    instance-of v1, p1, Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    .line 46
    const/4 v1, 0x1

    iput-boolean v1, p0, Linstall/app/TextViewAttributed;->suppressChange:Z

    .line 47
    invoke-virtual {p0}, Linstall/app/TextViewAttributed;->getView()Linstall/app/View;

    move-result-object v1

    check-cast v1, Linstall/app/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Linstall/app/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 48
    :cond_3
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, v0

    invoke-virtual {p0}, Linstall/app/TextViewAttributed;->get()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Linstall/app/TextViewAttributed;->compareCharSequence(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Linstall/app/TextViewAttributed;->suppressChange:Z

    .line 51
    invoke-virtual {p0}, Linstall/app/TextViewAttributed;->getView()Linstall/app/View;

    move-result-object v1

    check-cast v1, Linstall/app/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p1}, Linstall/app/TextViewAttributed;->cloneCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Linstall/app/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public get()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Linstall/app/TextViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    check-cast v0, Linstall/app/TextView;

    invoke-virtual {v0}, Linstall/app/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Linstall/app/TextViewAttributed;->cloneCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Linstall/app/TextViewAttributed;->get()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 63
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Linstall/app/TextViewAttributed;->mValue:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, p1}, Linstall/app/TextViewAttributed;->compareCharSequence(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    monitor-exit p0

    .line 74
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-boolean v0, p0, Linstall/app/TextViewAttributed;->suppressChange:Z

    if-nez v0, :cond_1

    .line 69
    invoke-direct {p0, p1}, Linstall/app/TextViewAttributed;->cloneCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Linstall/app/TextViewAttributed;->mValue:Ljava/lang/CharSequence;

    .line 70
    invoke-virtual {p0}, Linstall/app/TextViewAttributed;->notifyChanged()V

    .line 72
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/TextViewAttributed;->suppressChange:Z

    .line 73
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
