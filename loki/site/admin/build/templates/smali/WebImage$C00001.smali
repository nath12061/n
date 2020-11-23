.class Linstall/app/WebImage$C00001;
.super Ljava/lang/Object;
.source "WebImage.java"

# interfaces
.implements Linstall/app/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/WebImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C00001"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/WebImage;


# direct methods
.method constructor <init>(Linstall/app/WebImage;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/WebImage;

    .prologue
    .line 17
    iput-object p1, p0, Linstall/app/WebImage$C00001;->this$0:Linstall/app/WebImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public onNewPicture(Linstall/app/WebView;Linstall/app/Picture;)V
    .locals 2
    .param p1, "view"    # Linstall/app/WebView;
    .param p2, "picture"    # Linstall/app/Picture;

    .prologue
    .line 21
    iget-object v0, p0, Linstall/app/WebImage$C00001;->this$0:Linstall/app/WebImage;

    # getter for: Linstall/app/WebImage;->wv:Linstall/app/WebView;
    invoke-static {v0}, Linstall/app/WebImage;->access$000(Linstall/app/WebImage;)Linstall/app/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linstall/app/WebView;->setPictureListener(Linstall/app/WebView$PictureListener;)V

    .line 22
    iget-object v0, p0, Linstall/app/WebImage$C00001;->this$0:Linstall/app/WebImage;

    # invokes: Linstall/app/WebImage;->setup()V
    invoke-static {v0}, Linstall/app/WebImage;->access$100(Linstall/app/WebImage;)V

    .line 23
    return-void
.end method
