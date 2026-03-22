.class public Lio/appium/android/apis/app/SearchQueryResults;
.super Landroid/app/Activity;
.source "SearchQueryResults.java"


# instance fields
.field mAppDataText:Landroid/widget/TextView;

.field mDeliveredByText:Landroid/widget/TextView;

.field mQueryText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private doSearchQuery(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .param p2, "entryPoint"    # Ljava/lang/String;

    .line 94
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "queryString":Ljava/lang/String;
    iget-object v1, p0, Lio/appium/android/apis/app/SearchQueryResults;->mQueryText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    new-instance v1, Landroid/provider/SearchRecentSuggestions;

    const-string v2, "io.appium.android.apis.SuggestionProvider"

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 100
    .local v1, "suggestions":Landroid/provider/SearchRecentSuggestions;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v2, "app_data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 107
    .local v2, "appData":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 108
    iget-object v3, p0, Lio/appium/android/apis/app/SearchQueryResults;->mAppDataText:Landroid/widget/TextView;

    const-string v4, "<no app data bundle>"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    if-eqz v2, :cond_2

    .line 111
    const-string v3, "demo_key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "testStr":Ljava/lang/String;
    iget-object v4, p0, Lio/appium/android/apis/app/SearchQueryResults;->mAppDataText:Landroid/widget/TextView;

    if-nez v3, :cond_1

    const-string v5, "<no app data>"

    goto :goto_0

    :cond_1
    move-object v5, v3

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .end local v3    # "testStr":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lio/appium/android/apis/app/SearchQueryResults;->mDeliveredByText:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/SearchQueryResults;->setContentView(I)V

    .line 48
    const v0, 0x7f090233

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/SearchQueryResults;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/appium/android/apis/app/SearchQueryResults;->mQueryText:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f090231

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/SearchQueryResults;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/appium/android/apis/app/SearchQueryResults;->mAppDataText:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f090232

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/SearchQueryResults;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/appium/android/apis/app/SearchQueryResults;->mDeliveredByText:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p0}, Lio/appium/android/apis/app/SearchQueryResults;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "queryAction":Ljava/lang/String;
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const-string v2, "onCreate()"

    invoke-direct {p0, v0, v2}, Lio/appium/android/apis/app/SearchQueryResults;->doSearchQuery(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v2, p0, Lio/appium/android/apis/app/SearchQueryResults;->mDeliveredByText:Landroid/widget/TextView;

    const-string v3, "onCreate(), but no ACTION_SEARCH intent"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :goto_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "newIntent"    # Landroid/content/Intent;

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lio/appium/android/apis/app/SearchQueryResults;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 76
    .local v0, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "queryAction":Ljava/lang/String;
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const-string v2, "onNewIntent()"

    invoke-direct {p0, v0, v2}, Lio/appium/android/apis/app/SearchQueryResults;->doSearchQuery(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v2, p0, Lio/appium/android/apis/app/SearchQueryResults;->mDeliveredByText:Landroid/widget/TextView;

    const-string v3, "onNewIntent(), but no ACTION_SEARCH intent"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_0
    return-void
.end method
