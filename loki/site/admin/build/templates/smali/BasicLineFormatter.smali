.class public Linstall/app/BasicLineFormatter;
.super Ljava/lang/Object;
.source "BasicLineFormatter.java"

# interfaces
.implements Linstall/app/LineFormatter;


# static fields
.field public static final DEFAULT:Linstall/app/BasicLineFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput-object v0, Linstall/app/BasicLineFormatter;->DEFAULT:Linstall/app/BasicLineFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final formatHeader(Linstall/app/Header;Linstall/app/LineFormatter;)Ljava/lang/String;
    .locals 2
    .param p0, "header"    # Linstall/app/Header;
    .param p1, "formatter"    # Linstall/app/LineFormatter;

    .prologue
    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final formatProtocolVersion(Linstall/app/ProtocolVersion;Linstall/app/LineFormatter;)Ljava/lang/String;
    .locals 2
    .param p0, "version"    # Linstall/app/ProtocolVersion;
    .param p1, "formatter"    # Linstall/app/LineFormatter;

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final formatRequestLine(Linstall/app/RequestLine;Linstall/app/LineFormatter;)Ljava/lang/String;
    .locals 2
    .param p0, "reqline"    # Linstall/app/RequestLine;
    .param p1, "formatter"    # Linstall/app/LineFormatter;

    .prologue
    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final formatStatusLine(Linstall/app/StatusLine;Linstall/app/LineFormatter;)Ljava/lang/String;
    .locals 2
    .param p0, "statline"    # Linstall/app/StatusLine;
    .param p1, "formatter"    # Linstall/app/LineFormatter;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public appendProtocolVersion(Linstall/app/CharArrayBuffer;Linstall/app/ProtocolVersion;)Linstall/app/CharArrayBuffer;
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "version"    # Linstall/app/ProtocolVersion;

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doFormatHeader(Linstall/app/CharArrayBuffer;Linstall/app/Header;)V
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "header"    # Linstall/app/Header;

    .prologue
    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doFormatRequestLine(Linstall/app/CharArrayBuffer;Linstall/app/RequestLine;)V
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "reqline"    # Linstall/app/RequestLine;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doFormatStatusLine(Linstall/app/CharArrayBuffer;Linstall/app/StatusLine;)V
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "statline"    # Linstall/app/StatusLine;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected estimateProtocolVersionLen(Linstall/app/ProtocolVersion;)I
    .locals 2
    .param p1, "version"    # Linstall/app/ProtocolVersion;

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public formatHeader(Linstall/app/CharArrayBuffer;Linstall/app/Header;)Linstall/app/CharArrayBuffer;
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "header"    # Linstall/app/Header;

    .prologue
    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public formatRequestLine(Linstall/app/CharArrayBuffer;Linstall/app/RequestLine;)Linstall/app/CharArrayBuffer;
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "reqline"    # Linstall/app/RequestLine;

    .prologue
    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public formatStatusLine(Linstall/app/CharArrayBuffer;Linstall/app/StatusLine;)Linstall/app/CharArrayBuffer;
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "statline"    # Linstall/app/StatusLine;

    .prologue
    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected initBuffer(Linstall/app/CharArrayBuffer;)Linstall/app/CharArrayBuffer;
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;

    .prologue
    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
