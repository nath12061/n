.class public interface abstract Linstall/app/ContentLengthStrategy;
.super Ljava/lang/Object;
.source "ContentLengthStrategy.java"


# static fields
.field public static final CHUNKED:I = -0x2

.field public static final IDENTITY:I = -0x1


# virtual methods
.method public abstract determineLength(Linstall/app/HttpMessage;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;
        }
    .end annotation
.end method
