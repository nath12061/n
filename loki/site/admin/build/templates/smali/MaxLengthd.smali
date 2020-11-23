.class public interface abstract annotation Linstall/app/MaxLengthd;
.super Ljava/lang/Object;
.source "MaxLengthd.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Linstall/app/MaxLengthd;
        ErrorMessage = "%fieldname% cannot have more than %length% characters"
        Validator = Linstall/app/MaxLengthd$MaxLengthValidator;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/MaxLengthd$MaxLengthValidator;
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
