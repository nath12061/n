.class public Linstall/app/AjaxStatus;
.super Ljava/lang/Object;
.source "AjaxStatus.java"


# static fields
.field public static final AUTH_ERROR:I = -0x66

.field public static final DATASTORE:I = 0x2

.field public static final DEVICE:I = 0x5

.field public static final FILE:I = 0x3

.field public static final MEMORY:I = 0x4

.field public static final NETWORK:I = 0x1

.field public static final NETWORK_ERROR:I = -0x65

.field public static final TRANSFORM_ERROR:I = -0x67


# instance fields
.field private close:Ljava/io/Closeable;

.field private code:I

.field private data:[B

.field private done:Z

.field private duration:J

.field private error:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private invalid:Z

.field private message:Ljava/lang/String;

.field private reauth:Z

.field private redirect:Ljava/lang/String;

.field private refresh:Z

.field private source:I

.field private start:J

.field private time:Ljava/util/Date;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0xc8

    iput v0, p0, Linstall/app/AjaxStatus;->code:I

    .line 24
    const-string v0, "OK"

    iput-object v0, p0, Linstall/app/AjaxStatus;->message:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Linstall/app/AjaxStatus;->source:I

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Linstall/app/AjaxStatus;->start:J

    .line 30
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Linstall/app/AjaxStatus;->time:Ljava/util/Date;

    .line 33
    iput p1, p0, Linstall/app/AjaxStatus;->code:I

    .line 34
    iput-object p2, p0, Linstall/app/AjaxStatus;->message:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method protected close()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Linstall/app/AjaxStatus;->close:Ljava/io/Closeable;

    invoke-static {v0}, Linstall/app/AQUtility;->close(Ljava/io/Closeable;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/AjaxStatus;->close:Ljava/io/Closeable;

    .line 103
    return-void
.end method

.method protected closeLater(Ljava/io/Closeable;)V
    .locals 0
    .param p1, "c"    # Ljava/io/Closeable;

    .prologue
    .line 97
    iput-object p1, p0, Linstall/app/AjaxStatus;->close:Ljava/io/Closeable;

    .line 98
    return-void
.end method

.method protected code(I)Linstall/app/AjaxStatus;
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 43
    iput p1, p0, Linstall/app/AjaxStatus;->code:I

    .line 44
    return-object p0
.end method

.method protected data([B)Linstall/app/AjaxStatus;
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 106
    iput-object p1, p0, Linstall/app/AjaxStatus;->data:[B

    .line 107
    return-object p0
.end method

.method protected done()Linstall/app/AjaxStatus;
    .locals 4

    .prologue
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Linstall/app/AjaxStatus;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Linstall/app/AjaxStatus;->duration:J

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Linstall/app/AjaxStatus;->done:Z

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/AjaxStatus;->reauth:Z

    .line 86
    return-object p0
.end method

.method protected error(Ljava/lang/String;)Linstall/app/AjaxStatus;
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Linstall/app/AjaxStatus;->error:Ljava/lang/String;

    .line 49
    return-object p0
.end method

.method public expired(J)Z
    .locals 7
    .param p1, "expire"    # J

    .prologue
    const/4 v0, 0x1

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Linstall/app/AjaxStatus;->time:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Linstall/app/AjaxStatus;->getSource()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 175
    :cond_0
    const/4 v0, 0x0

    .line 177
    :cond_1
    return v0
.end method

.method protected file(Ljava/io/File;)Linstall/app/AjaxStatus;
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 111
    iput-object p1, p0, Linstall/app/AjaxStatus;->file:Ljava/io/File;

    .line 112
    return-object p0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Linstall/app/AjaxStatus;->code:I

    return v0
.end method

.method protected getData()[B
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Linstall/app/AjaxStatus;->data:[B

    return-object v0
.end method

.method protected getDone()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Linstall/app/AjaxStatus;->done:Z

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Linstall/app/AjaxStatus;->duration:J

    return-wide v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Linstall/app/AjaxStatus;->error:Ljava/lang/String;

    return-object v0
.end method

.method protected getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Linstall/app/AjaxStatus;->file:Ljava/io/File;

    return-object v0
.end method

.method protected getInvalid()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Linstall/app/AjaxStatus;->invalid:Z

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Linstall/app/AjaxStatus;->message:Ljava/lang/String;

    return-object v0
.end method

.method protected getReauth()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Linstall/app/AjaxStatus;->reauth:Z

    return v0
.end method

.method public getRedirect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Linstall/app/AjaxStatus;->redirect:Ljava/lang/String;

    return-object v0
.end method

.method public getRefresh()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Linstall/app/AjaxStatus;->refresh:Z

    return v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Linstall/app/AjaxStatus;->source:I

    return v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Linstall/app/AjaxStatus;->time:Ljava/util/Date;

    return-object v0
.end method

.method public invalidate()Linstall/app/AjaxStatus;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Linstall/app/AjaxStatus;->invalid:Z

    .line 117
    return-object p0
.end method

.method protected message(Ljava/lang/String;)Linstall/app/AjaxStatus;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Linstall/app/AjaxStatus;->message:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method protected reauth(Z)Linstall/app/AjaxStatus;
    .locals 0
    .param p1, "reauth"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Linstall/app/AjaxStatus;->reauth:Z

    .line 76
    return-object p0
.end method

.method protected redirect(Ljava/lang/String;)Linstall/app/AjaxStatus;
    .locals 0
    .param p1, "redirect"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Linstall/app/AjaxStatus;->redirect:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method protected refresh(Z)Linstall/app/AjaxStatus;
    .locals 0
    .param p1, "refresh"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Linstall/app/AjaxStatus;->refresh:Z

    .line 71
    return-object p0
.end method

.method protected reset()Linstall/app/AjaxStatus;
    .locals 4

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Linstall/app/AjaxStatus;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Linstall/app/AjaxStatus;->duration:J

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/AjaxStatus;->done:Z

    .line 92
    invoke-virtual {p0}, Linstall/app/AjaxStatus;->close()V

    .line 93
    return-object p0
.end method

.method protected source(I)Linstall/app/AjaxStatus;
    .locals 0
    .param p1, "source"    # I

    .prologue
    .line 38
    iput p1, p0, Linstall/app/AjaxStatus;->source:I

    .line 39
    return-object p0
.end method

.method protected time(Ljava/util/Date;)Linstall/app/AjaxStatus;
    .locals 0
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 65
    iput-object p1, p0, Linstall/app/AjaxStatus;->time:Ljava/util/Date;

    .line 66
    return-object p0
.end method
