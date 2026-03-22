.class Lio/appium/android/apis/app/ActionBarTabs$TabListener;
.super Ljava/lang/Object;
.source "ActionBarTabs.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/ActionBarTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabListener"
.end annotation


# instance fields
.field private mFragment:Lio/appium/android/apis/app/ActionBarTabs$TabContentFragment;

.field final synthetic this$0:Lio/appium/android/apis/app/ActionBarTabs;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/app/ActionBarTabs;Lio/appium/android/apis/app/ActionBarTabs$TabContentFragment;)V
    .locals 0
    .param p2, "fragment"    # Lio/appium/android/apis/app/ActionBarTabs$TabContentFragment;

    .line 92
    iput-object p1, p0, Lio/appium/android/apis/app/ActionBarTabs$TabListener;->this$0:Lio/appium/android/apis/app/ActionBarTabs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lio/appium/android/apis/app/ActionBarTabs$TabListener;->mFragment:Lio/appium/android/apis/app/ActionBarTabs$TabContentFragment;

    .line 94
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .line 105
    iget-object v0, p0, Lio/appium/android/apis/app/ActionBarTabs$TabListener;->this$0:Lio/appium/android/apis/app/ActionBarTabs;

    const-string v1, "Reselected!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 106
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .line 97
    iget-object v0, p0, Lio/appium/android/apis/app/ActionBarTabs$TabListener;->mFragment:Lio/appium/android/apis/app/ActionBarTabs$TabContentFragment;

    invoke-virtual {v0}, Lio/appium/android/apis/app/ActionBarTabs$TabContentFragment;->getText()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0900d3

    invoke-virtual {p2, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 98
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .line 101
    iget-object v0, p0, Lio/appium/android/apis/app/ActionBarTabs$TabListener;->mFragment:Lio/appium/android/apis/app/ActionBarTabs$TabContentFragment;

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 102
    return-void
.end method
