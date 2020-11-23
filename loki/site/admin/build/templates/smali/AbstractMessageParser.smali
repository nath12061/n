.class public abstract Linstall/app/AbstractMessageParser;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"

# interfaces
.implements Linstall/app/HttpMessageParser;


# instance fields
.field protected final lineParser:Linstall/app/LineParser;


# direct methods
.method public constructor <init>(Linstall/app/SessionInputBuffer;Linstall/app/LineParser;Linstall/app/HttpParams;)V
    .locals 2
    .param p1, "buffer"    # Linstall/app/SessionInputBuffer;
    .param p2, "parser"    # Linstall/app/LineParser;
    .param p3, "params"    # Linstall/app/HttpParams;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseHeaders(Linstall/app/SessionInputBuffer;IILinstall/app/LineParser;)[Linstall/app/Header;
    .locals 2
    .param p0, "inbuffer"    # Linstall/app/SessionInputBuffer;
    .param p1, "maxHeaderCount"    # I
    .param p2, "maxLineLen"    # I
    .param p3, "parser"    # Linstall/app/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public parse()Linstall/app/HttpMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/HttpException;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract parseHead(Linstall/app/SessionInputBuffer;)Linstall/app/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/HttpException;,
            Linstall/app/ParseException;
        }
    .end annotation
.end method
