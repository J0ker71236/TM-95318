.class Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment$1;
.super Ljava/lang/Object;
.source "FragmentRetainInstance.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment;

    .line 64
    iput-object p1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment$1;->this$0:Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 66
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment$1;->this$0:Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment;

    iget-object v0, v0, Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment;->mWorkFragment:Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;

    invoke-virtual {v0}, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->restart()V

    .line 67
    return-void
.end method
