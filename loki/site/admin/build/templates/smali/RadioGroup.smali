.class public abstract Linstall/app/RadioGroup;
.super Linstall/app/LinearLayout;
.source "RadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/RadioGroup$OnCheckedChangeListener;,
        Linstall/app/RadioGroup$LayoutParams;
    }
.end annotation


# direct methods
.method public constructor <init>(Linstall/app/Context;)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;

    .prologue
    const/4 v1, 0x0

    .line 41
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    check-cast v1, Linstall/app/AttributeSet;

    invoke-direct {p0, v0, v1}, Linstall/app/LinearLayout;-><init>(Linstall/app/Context;Linstall/app/AttributeSet;)V

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Context;Linstall/app/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "attrs"    # Linstall/app/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 46
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    check-cast v1, Linstall/app/AttributeSet;

    invoke-direct {p0, v0, v1}, Linstall/app/LinearLayout;-><init>(Linstall/app/Context;Linstall/app/AttributeSet;)V

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addView(Linstall/app/View;ILinstall/app/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Linstall/app/View;
    .param p2, "index"    # I
    .param p3, "params"    # Linstall/app/ViewGroup$LayoutParams;

    .prologue
    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public check(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkLayoutParams(Linstall/app/ViewGroup$LayoutParams;)Z
    .locals 2
    .param p1, "p"    # Linstall/app/ViewGroup$LayoutParams;

    .prologue
    .line 83
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearCheck()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateDefaultLayoutParams()Linstall/app/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Linstall/app/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0}, Linstall/app/RadioGroup;->generateDefaultLayoutParams()Linstall/app/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Linstall/app/AttributeSet;)Linstall/app/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0, p1}, Linstall/app/RadioGroup;->generateLayoutParams(Linstall/app/AttributeSet;)Linstall/app/RadioGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Linstall/app/AttributeSet;)Linstall/app/RadioGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Linstall/app/AttributeSet;

    .prologue
    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic generateLayoutParams(Linstall/app/AttributeSet;)Linstall/app/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0, p1}, Linstall/app/RadioGroup;->generateLayoutParams(Linstall/app/AttributeSet;)Linstall/app/RadioGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedRadioButtonId()I
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnCheckedChangeListener(Linstall/app/RadioGroup$OnCheckedChangeListener;)V
    .locals 2
    .param p1, "listener"    # Linstall/app/RadioGroup$OnCheckedChangeListener;

    .prologue
    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnHierarchyChangeListener(Linstall/app/ViewGroup$OnHierarchyChangeListener;)V
    .locals 2
    .param p1, "listener"    # Linstall/app/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
