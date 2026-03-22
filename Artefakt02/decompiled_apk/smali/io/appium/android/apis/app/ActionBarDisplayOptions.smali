.class public Lio/appium/android/apis/app/ActionBarDisplayOptions;
.super Landroid/app/Activity;
.source "ActionBarDisplayOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/app/ActionBar$TabListener;


# instance fields
.field private mCustomView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 68
    invoke-virtual {p0}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 69
    .local v0, "bar":Landroid/app/ActionBar;
    const/4 v1, 0x0

    .line 70
    .local v1, "flags":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090083

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 78
    :pswitch_0
    const/4 v1, 0x1

    .line 79
    goto :goto_1

    .line 81
    :pswitch_1
    const/16 v1, 0x8

    .line 82
    goto :goto_1

    .line 75
    :pswitch_2
    const/4 v1, 0x2

    .line 76
    goto :goto_1

    .line 84
    :pswitch_3
    const/16 v1, 0x10

    .line 85
    goto :goto_1

    .line 88
    :pswitch_4
    nop

    .line 89
    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 88
    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 92
    return-void

    .line 72
    :pswitch_5
    const/4 v1, 0x4

    .line 73
    nop

    .line 112
    :goto_1
    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v2

    xor-int/2addr v2, v1

    .line 113
    .local v2, "change":I
    invoke-virtual {v0, v2, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 114
    return-void

    .line 94
    .end local v2    # "change":I
    :cond_1
    iget-object v2, p0, Lio/appium/android/apis/app/ActionBarDisplayOptions;->mCustomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar$LayoutParams;

    .line 95
    .local v2, "lp":Landroid/app/ActionBar$LayoutParams;
    const/4 v3, 0x0

    .line 96
    .local v3, "newGravity":I
    iget v4, v2, Landroid/app/ActionBar$LayoutParams;->gravity:I

    const v5, 0x800007

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const v5, 0x800003

    if-eq v4, v5, :cond_3

    const v5, 0x800005

    if-eq v4, v5, :cond_2

    goto :goto_2

    .line 104
    :cond_2
    const v3, 0x800003

    goto :goto_2

    .line 98
    :cond_3
    const/4 v3, 0x1

    .line 99
    goto :goto_2

    .line 101
    :cond_4
    const v3, 0x800005

    .line 102
    nop

    .line 107
    :goto_2
    iget v4, v2, Landroid/app/ActionBar$LayoutParams;->gravity:I

    const v5, -0x800008

    and-int/2addr v4, v5

    or-int/2addr v4, v3

    iput v4, v2, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 108
    iget-object v4, p0, Lio/appium/android/apis/app/ActionBarDisplayOptions;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v4, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 109
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090220
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->setContentView(I)V

    .line 42
    const v0, 0x7f090220

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v0, 0x7f090223

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v0, 0x7f090225

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v0, 0x7f090224

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f090222

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v0, 0x7f090221

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v0, 0x7f090083

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p0}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/app/ActionBarDisplayOptions;->mCustomView:Landroid/view/View;

    .line 52
    invoke-virtual {p0}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 53
    .local v0, "bar":Landroid/app/ActionBar;
    iget-object v1, p0, Lio/appium/android/apis/app/ActionBarDisplayOptions;->mCustomView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 56
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "Tab 1"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 57
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "Tab 2"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 58
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "Tab 3"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 59
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 63
    invoke-virtual {p0}, Lio/appium/android/apis/app/ActionBarDisplayOptions;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .line 123
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .line 117
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .line 120
    return-void
.end method
