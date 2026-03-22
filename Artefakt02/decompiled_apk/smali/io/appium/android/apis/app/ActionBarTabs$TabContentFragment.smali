.class Lio/appium/android/apis/app/ActionBarTabs$TabContentFragment;
.super Landroid/app/Fragment;
.source "ActionBarTabs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/ActionBarTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabContentFragment"
.end annotation


# instance fields
.field private mText:Ljava/lang/String;

.field final synthetic this$0:Lio/appium/android/apis/app/ActionBarTabs;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/app/ActionBarTabs;Ljava/lang/String;)V
    .locals 0
    .param p2, "text"    # Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lio/appium/android/apis/app/ActionBarTabs$TabContentFragment;->this$0:Lio/appium/android/apis/app/ActionBarTabs;

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 114
    iput-object p2, p0, Lio/appium/android/apis/app/ActionBarTabs$TabContentFragment;->mText:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lio/appium/android/apis/app/ActionBarTabs$TabContentFragment;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 124
    const v0, 0x7f0b0021

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, "fragView":Landroid/view/View;
    const v1, 0x7f09020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 127
    .local v1, "text":Landroid/widget/TextView;
    iget-object v2, p0, Lio/appium/android/apis/app/ActionBarTabs$TabContentFragment;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-object v0
.end method
