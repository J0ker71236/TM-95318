.class Lio/appium/android/apis/app/FragmentMenuFragment$1;
.super Ljava/lang/Object;
.source "FragmentMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/FragmentMenuFragment;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/FragmentMenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/FragmentMenuFragment;

    .line 41
    iput-object p1, p0, Lio/appium/android/apis/app/FragmentMenuFragment$1;->this$0:Lio/appium/android/apis/app/FragmentMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 43
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentMenuFragment$1;->this$0:Lio/appium/android/apis/app/FragmentMenuFragment;

    invoke-virtual {v0}, Lio/appium/android/apis/app/FragmentMenuFragment;->updateFragmentVisibility()V

    .line 44
    return-void
.end method
