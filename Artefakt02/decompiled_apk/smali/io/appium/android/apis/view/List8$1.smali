.class Lio/appium/android/apis/view/List8$1;
.super Ljava/lang/Object;
.source "List8.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/List8;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/List8;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/List8;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/List8;

    .line 59
    iput-object p1, p0, Lio/appium/android/apis/view/List8$1;->this$0:Lio/appium/android/apis/view/List8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 62
    iget-object v0, p0, Lio/appium/android/apis/view/List8$1;->this$0:Lio/appium/android/apis/view/List8;

    iget-object v0, v0, Lio/appium/android/apis/view/List8;->mAdapter:Lio/appium/android/apis/view/List8$PhotoAdapter;

    invoke-virtual {v0}, Lio/appium/android/apis/view/List8$PhotoAdapter;->clearPhotos()V

    .line 63
    return-void
.end method
