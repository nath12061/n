.class public abstract Linstall/app/CONCAT;
.super Linstall/app/Converter;
.source "CONCAT.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/Converter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([Linstall/app/IObservable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Linstall/app/IObservable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 7
    .local p1, "dependents":[Linstall/app/IObservable;, "[Linstall/app/IObservable<*>;"
    const-class v0, Ljava/lang/CharSequence;

    invoke-direct {p0, v0, p1}, Linstall/app/Converter;-><init>(Ljava/lang/Class;[Linstall/app/IObservable;)V

    .line 8
    return-void
.end method


# virtual methods
.method public varargs calculateValue([Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 11
    array-length v1, p1

    .line 12
    .local v1, "len":I
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 13
    .local v2, "result":Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 14
    aget-object v3, p1, v0

    if-eqz v3, :cond_0

    .line 15
    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 16
    aget-object v3, p1, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 13
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_1
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 22
    :cond_2
    return-object v2
.end method

.method public bridge synthetic calculateValue([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Linstall/app/CONCAT;->calculateValue([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
