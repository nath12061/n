.class public abstract Linstall/app/EqualsTo$EqualsToValidator;
.super Linstall/app/ValidatorBase;
.source "EqualsTo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/EqualsTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EqualsToValidator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ValidatorBase",
        "<",
        "Linstall/app/EqualsTo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Linstall/app/ValidatorBase;-><init>()V

    return-void
.end method

.method private compareCharSequence(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "a"    # Ljava/lang/CharSequence;
    .param p2, "b"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 21
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 29
    :cond_0
    :goto_0
    return v1

    .line 24
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 25
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 29
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected doFormatErrorMessage(Linstall/app/EqualsTo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "parameters"    # Linstall/app/EqualsTo;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-interface {p1}, Linstall/app/EqualsTo;->ErrorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%fieldname%"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%observable%"

    invoke-interface {p1}, Linstall/app/EqualsTo;->Observable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doFormatErrorMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    check-cast p1, Linstall/app/EqualsTo;

    invoke-virtual {p0, p1, p2}, Linstall/app/EqualsTo$EqualsToValidator;->doFormatErrorMessage(Linstall/app/EqualsTo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAcceptedAnnotation()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 17
    const-class v0, Linstall/app/EqualsTo;

    return-object v0
.end method
