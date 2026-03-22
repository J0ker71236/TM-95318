.class Lio/appium/android/apis/app/FragmentStackFragment$2;
.super Ljava/lang/Object;
.source "FragmentStackFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/FragmentStackFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/FragmentStackFragment;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/FragmentStackFragment;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/FragmentStackFragment;

    .line 60
    iput-object p1, p0, Lio/appium/android/apis/app/FragmentStackFragment$2;->this$0:Lio/appium/android/apis/app/FragmentStackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 62
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentStackFragment$2;->this$0:Lio/appium/android/apis/app/FragmentStackFragment;

    invoke-virtual {v0}, Lio/appium/android/apis/app/FragmentStackFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 63
    return-void
.end method
