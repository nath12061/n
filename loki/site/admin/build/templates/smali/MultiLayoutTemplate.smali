.class public abstract Linstall/app/MultiLayoutTemplate;
.super Linstall/app/LayoutTemplate;
.source "MultiLayoutTemplate.java"


# instance fields
.field private templates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Linstall/app/LayoutTemplate;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linstall/app/MultiLayoutTemplate;->templates:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addTemplate(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 9
    iget-object v0, p0, Linstall/app/MultiLayoutTemplate;->templates:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    return-void
.end method

.method public getTemplate()I
    .locals 2

    .prologue
    .line 13
    iget-object v0, p0, Linstall/app/MultiLayoutTemplate;->templates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 14
    iget-object v0, p0, Linstall/app/MultiLayoutTemplate;->templates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 16
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTemplate(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 20
    iget-object v0, p0, Linstall/app/MultiLayoutTemplate;->templates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 21
    iget-object v0, p0, Linstall/app/MultiLayoutTemplate;->templates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 23
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Linstall/app/MultiLayoutTemplate;->getTemplate()I

    move-result v0

    goto :goto_0
.end method
