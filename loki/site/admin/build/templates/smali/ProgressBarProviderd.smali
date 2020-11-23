.class public Linstall/app/ProgressBarProviderd;
.super Linstall/app/BindingProviderd;
.source "ProgressBarProviderd.java"


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
    .locals 1
    .param p1, "view"    # Linstall/app/View;
    .param p2, "map"    # Linstall/app/BindingMapd;
    .param p3, "model"    # Ljava/lang/Object;

    .prologue
    .line 18
    instance-of v0, p1, Linstall/app/ProgressBar;

    if-eqz v0, :cond_0

    .line 19
    const-string v0, "progress"

    invoke-virtual {p0, p1, p2, p3, v0}, Linstall/app/ProgressBarProviderd;->bindViewAttribute(Linstall/app/View;Linstall/app/BindingMapd;Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    const-string v0, "secondaryProgress"

    invoke-virtual {p0, p1, p2, p3, v0}, Linstall/app/ProgressBarProviderd;->bindViewAttribute(Linstall/app/View;Linstall/app/BindingMapd;Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method

.method public createAttributeForView(Linstall/app/View;Ljava/lang/String;)Linstall/app/ViewAttributed;
    .locals 2
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
    const/4 v1, 0x0

    .line 5
    instance-of v0, p1, Linstall/app/ProgressBar;

    if-nez v0, :cond_1

    .line 14
    :cond_0
    :goto_0
    return-object v1

    .line 8
    :cond_1
    const-string v0, "progress"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    :cond_2
    const-string v0, "secondaryProgress"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
