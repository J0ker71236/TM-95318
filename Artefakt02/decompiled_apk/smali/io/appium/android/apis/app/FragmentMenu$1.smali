.class Lio/appium/android/apis/app/FragmentMenu$1;
.super Ljava/lang/Object;
.source "FragmentMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/FragmentMenu;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/FragmentMenu;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/FragmentMenu;

    .line 43
    iput-object p1, p0, Lio/appium/android/apis/app/FragmentMenu$1;->this$0:Lio/appium/android/apis/app/FragmentMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 45
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentMenu$1;->this$0:Lio/appium/android/apis/app/FragmentMenu;

    invoke-virtual {v0}, Lio/appium/android/apis/app/FragmentMenu;->updateFragmentVisibility()V

    .line 46
    return-void
.end method
