.class public Linstall/app/MinLengthd$MinLengthValidator;
.super Linstall/app/ValidatorBased;
.source "MinLengthd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/MinLengthd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MinLengthValidator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ValidatorBased",
        "<",
        "Linstall/app/MinLengthd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Linstall/app/ValidatorBased;-><init>()V

    return-void
.end method


# virtual methods
.method protected doFormatErrorMessage(Linstall/app/MinLengthd;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "parameters"    # Linstall/app/MinLengthd;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-interface {p1}, Linstall/app/MinLengthd;->ErrorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%fieldname%"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%length%"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Linstall/app/MinLengthd;->Length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doFormatErrorMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    check-cast p1, Linstall/app/MinLengthd;

    invoke-virtual {p0, p1, p2}, Linstall/app/MinLengthd$MinLengthValidator;->doFormatErrorMessage(Linstall/app/MinLengthd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doValidate(Ljava/lang/Object;Linstall/app/MinLengthd;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "parameters"    # Linstall/app/MinLengthd;
    .param p3, "model"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 19
    if-nez p1, :cond_1

    .line 28
    .end local p1    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 22
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    move v0, v1

    .line 23
    goto :goto_0

    .line 25
    :cond_2
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p2}, Linstall/app/MinLengthd;->Length()I

    move-result v3

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 26
    goto :goto_0
.end method

.method protected bridge synthetic doValidate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 9
    check-cast p2, Linstall/app/MinLengthd;

    invoke-virtual {p0, p1, p2, p3}, Linstall/app/MinLengthd$MinLengthValidator;->doValidate(Ljava/lang/Object;Linstall/app/MinLengthd;Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 11
    const-class v0, Linstall/app/MinLengthd;

    return-object v0
.end method
