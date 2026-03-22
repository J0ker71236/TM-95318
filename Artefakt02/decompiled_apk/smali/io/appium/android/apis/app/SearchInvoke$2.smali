.class Lio/appium/android/apis/app/SearchInvoke$2;
.super Ljava/lang/Object;
.source "SearchInvoke.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/SearchInvoke;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/SearchInvoke;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/SearchInvoke;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/SearchInvoke;

    .line 98
    iput-object p1, p0, Lio/appium/android/apis/app/SearchInvoke$2;->this$0:Lio/appium/android/apis/app/SearchInvoke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 100
    iget-object v0, p0, Lio/appium/android/apis/app/SearchInvoke$2;->this$0:Lio/appium/android/apis/app/SearchInvoke;

    invoke-virtual {v0}, Lio/appium/android/apis/app/SearchInvoke;->onSearchRequested()Z

    .line 101
    return-void
.end method
