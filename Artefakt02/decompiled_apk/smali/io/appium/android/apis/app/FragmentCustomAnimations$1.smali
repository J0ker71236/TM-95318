.class Lio/appium/android/apis/app/FragmentCustomAnimations$1;
.super Ljava/lang/Object;
.source "FragmentCustomAnimations.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/FragmentCustomAnimations;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/FragmentCustomAnimations;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/FragmentCustomAnimations;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/FragmentCustomAnimations;

    .line 46
    iput-object p1, p0, Lio/appium/android/apis/app/FragmentCustomAnimations$1;->this$0:Lio/appium/android/apis/app/FragmentCustomAnimations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 48
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentCustomAnimations$1;->this$0:Lio/appium/android/apis/app/FragmentCustomAnimations;

    invoke-virtual {v0}, Lio/appium/android/apis/app/FragmentCustomAnimations;->addFragmentToStack()V

    .line 49
    return-void
.end method
