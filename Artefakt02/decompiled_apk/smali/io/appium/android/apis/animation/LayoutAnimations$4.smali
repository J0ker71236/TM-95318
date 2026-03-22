.class Lio/appium/android/apis/animation/LayoutAnimations$4;
.super Ljava/lang/Object;
.source "LayoutAnimations.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/animation/LayoutAnimations;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/animation/LayoutAnimations;

.field final synthetic val$transitioner:Landroid/animation/LayoutTransition;


# direct methods
.method constructor <init>(Lio/appium/android/apis/animation/LayoutAnimations;Landroid/animation/LayoutTransition;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/animation/LayoutAnimations;

    .line 110
    iput-object p1, p0, Lio/appium/android/apis/animation/LayoutAnimations$4;->this$0:Lio/appium/android/apis/animation/LayoutAnimations;

    iput-object p2, p0, Lio/appium/android/apis/animation/LayoutAnimations$4;->val$transitioner:Landroid/animation/LayoutTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 112
    iget-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimations$4;->this$0:Lio/appium/android/apis/animation/LayoutAnimations;

    iget-object v1, p0, Lio/appium/android/apis/animation/LayoutAnimations$4;->val$transitioner:Landroid/animation/LayoutTransition;

    invoke-static {v0, v1}, Lio/appium/android/apis/animation/LayoutAnimations;->access$100(Lio/appium/android/apis/animation/LayoutAnimations;Landroid/animation/LayoutTransition;)V

    .line 113
    return-void
.end method
