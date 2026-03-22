.class Lio/appium/android/apis/app/FragmentStack$2;
.super Ljava/lang/Object;
.source "FragmentStack.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/FragmentStack;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/FragmentStack;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/FragmentStack;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/FragmentStack;

    .line 48
    iput-object p1, p0, Lio/appium/android/apis/app/FragmentStack$2;->this$0:Lio/appium/android/apis/app/FragmentStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 50
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentStack$2;->this$0:Lio/appium/android/apis/app/FragmentStack;

    invoke-virtual {v0}, Lio/appium/android/apis/app/FragmentStack;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 51
    return-void
.end method
