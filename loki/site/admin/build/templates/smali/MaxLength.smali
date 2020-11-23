.class public interface abstract annotation Linstall/app/MaxLength;
.super Ljava/lang/Object;
.source "MaxLength.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Linstall/app/MaxLength;
        ErrorMessage = "%fieldname% cannot have more than %length% characters"
        Validator = Linstall/app/MaxLength$MaxLengthValidator;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/MaxLength$MaxLengthValidator;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract ErrorMessage()Ljava/lang/String;
.end method

.method public abstract Length()I
.end method

.method public abstract Validator()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method
