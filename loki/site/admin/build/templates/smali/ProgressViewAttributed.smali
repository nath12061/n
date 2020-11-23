.class public Linstall/app/ProgressViewAttributed;
.super Linstall/app/ViewAttributed;
.source "ProgressViewAttributed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ViewAttributed",
        "<",
        "Linstall/app/ProgressBar;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Linstall/app/ProgressBar;)V
    .locals 2
    .param p1, "view"    # Linstall/app/ProgressBar;

    .prologue
    .line 5
    const-class v0, Ljava/lang/Float;

    const-string v1, "progress"

    invoke-direct {p0, v0, p1, v1}, Linstall/app/ViewAttributed;-><init>(Ljava/lang/Class;Linstall/app/View;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Linstall/app/ProgressViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    check-cast v0, Linstall/app/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linstall/app/ProgressBar;->setProgress(I)V

    .line 7
    invoke-virtual {p0}, Linstall/app/ProgressViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    check-cast v0, Linstall/app/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Linstall/app/ProgressBar;->setMax(I)V

    .line 8
    return-void
.end method


# virtual methods
.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 11
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Linstall/app/ProgressViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    check-cast v0, Linstall/app/ProgressBar;

    check-cast p1, Ljava/lang/Float;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Linstall/app/ProgressBar;->setProgress(I)V

    .line 14
    :cond_0
    return-void
.end method

.method public get()Ljava/lang/Float;
    .locals 2

    .prologue
    .line 17
    invoke-virtual {p0}, Linstall/app/ProgressViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    check-cast v0, Linstall/app/ProgressBar;

    invoke-virtual {v0}, Linstall/app/ProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0}, Linstall/app/ProgressViewAttributed;->get()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
