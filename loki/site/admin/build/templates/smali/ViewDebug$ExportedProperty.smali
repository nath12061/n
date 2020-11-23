.class public interface abstract annotation Linstall/app/ViewDebug$ExportedProperty;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Linstall/app/ViewDebug$ExportedProperty;
        deepExport = false
        indexMapping = {}
        mapping = {}
        prefix = ""
        resolveId = false
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ExportedProperty"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract deepExport()Z
.end method

.method public abstract indexMapping()[Linstall/app/ViewDebug$IntToString;
.end method

.method public abstract mapping()[Linstall/app/ViewDebug$IntToString;
.end method

.method public abstract prefix()Ljava/lang/String;
.end method

.method public abstract resolveId()Z
.end method
