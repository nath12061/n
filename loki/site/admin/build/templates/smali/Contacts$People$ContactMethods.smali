.class public final Linstall/app/Contacts$People$ContactMethods;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Linstall/app/Contacts$ContactMethodsColumns;
.implements Linstall/app/Contacts$PeopleColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Contacts$People;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactMethods"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "contact_methods"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "data ASC"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
