.class Lio/appium/android/apis/app/FragmentHideShow$1;
.super Ljava/lang/Object;
.source "FragmentHideShow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/FragmentHideShow;->addShowHideListener(ILandroid/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/FragmentHideShow;

.field final synthetic val$button:Landroid/widget/Button;

.field final synthetic val$fragment:Landroid/app/Fragment;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/FragmentHideShow;Landroid/app/Fragment;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/FragmentHideShow;

    .line 52
    iput-object p1, p0, Lio/appium/android/apis/app/FragmentHideShow$1;->this$0:Lio/appium/android/apis/app/FragmentHideShow;

    iput-object p2, p0, Lio/appium/android/apis/app/FragmentHideShow$1;->val$fragment:Landroid/app/Fragment;

    iput-object p3, p0, Lio/appium/android/apis/app/FragmentHideShow$1;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 54
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentHideShow$1;->this$0:Lio/appium/android/apis/app/FragmentHideShow;

    invoke-virtual {v0}, Lio/appium/android/apis/app/FragmentHideShow;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 55
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const/high16 v1, 0x10b0000

    const v2, 0x10b0001

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 57
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentHideShow$1;->val$fragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentHideShow$1;->val$fragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 59
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentHideShow$1;->val$button:Landroid/widget/Button;

    const-string v2, "Hide"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentHideShow$1;->val$fragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 62
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentHideShow$1;->val$button:Landroid/widget/Button;

    const-string v2, "Show"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 65
    return-void
.end method
