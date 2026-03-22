.class public Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment;
.super Landroid/app/Fragment;
.source "FragmentRetainInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentRetainInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UiFragment"
.end annotation


# instance fields
.field mWorkFragment:Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 75
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 80
    .local v0, "fm":Landroid/app/FragmentManager;
    const-string v1, "work"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;

    iput-object v1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment;->mWorkFragment:Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;

    .line 83
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment;->mWorkFragment:Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;

    invoke-direct {v1}, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;-><init>()V

    iput-object v1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment;->mWorkFragment:Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;

    .line 86
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment;->mWorkFragment:Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 87
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment;->mWorkFragment:Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;

    const-string v3, "work"

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 89
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    const v0, 0x7f0b006c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f090189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 64
    .local v1, "button":Landroid/widget/Button;
    new-instance v2, Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment$1;

    invoke-direct {v2, p0}, Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment$1;-><init>(Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-object v0
.end method
