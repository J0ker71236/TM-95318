.class public Lio/appium/android/apis/app/FragmentArguments;
.super Landroid/app/Activity;
.source "FragmentArguments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/FragmentArguments$MyFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f0b0064

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/FragmentArguments;->setContentView(I)V

    .line 42
    if-nez p1, :cond_0

    .line 44
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentArguments;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 45
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const-string v1, "From Arguments"

    invoke-static {v1}, Lio/appium/android/apis/app/FragmentArguments$MyFragment;->newInstance(Ljava/lang/CharSequence;)Lio/appium/android/apis/app/FragmentArguments$MyFragment;

    move-result-object v1

    .line 46
    .local v1, "newFragment":Landroid/app/Fragment;
    const v2, 0x7f09007d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 47
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 49
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    .end local v1    # "newFragment":Landroid/app/Fragment;
    :cond_0
    return-void
.end method
