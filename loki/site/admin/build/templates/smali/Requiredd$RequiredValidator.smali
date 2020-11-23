.class public Linstall/app/Requiredd$RequiredValidator;
.super Linstall/app/ValidatorBased;
.source "Requiredd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Requiredd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequiredValidator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ValidatorBased",
        "<",
        "Linstall/app/Requiredd;",
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
.method protected doFormatErrorMessage(Linstall/app/Requiredd;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "parameters"    # Linstall/app/Requiredd;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-interface {p1}, Linstall/app/Requiredd;->ErrorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%fieldname%"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doFormatErrorMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    check-cast p1, Linstall/app/Requiredd;

    invoke-virtual {p0, p1, p2}, Linstall/app/Requiredd$RequiredValidator;->doFormatErrorMessage(Linstall/app/Requiredd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doValidate(Ljava/lang/Object;Linstall/app/Requiredd;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "parameters"    # Linstall/app/Requiredd;
    .param p3, "model"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 19
    if-eqz p1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    .end local p1    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 22
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic doValidate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 9
    check-cast p2, Linstall/app/Requiredd;

    invoke-virtual {p0, p1, p2, p3}, Linstall/app/Requiredd$RequiredValidator;->doValidate(Ljava/lang/Object;Linstall/app/Requiredd;Ljava/lang/Object;)Z

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
    const-class v0, Linstall/app/Requiredd;

    return-object v0
.end method
