.class public Lio/appium/android/apis/view/Focus1;
.super Landroid/app/Activity;
.source "Focus1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/Focus1;->setContentView(I)V

    .line 37
    const v0, 0x7f090198

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/Focus1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 38
    .local v0, "webView":Landroid/webkit/WebView;
    const-string v1, "<html><body>Can I focus?<br /><a href=\"#\">No I cannot!</a>.</body></html>"

    const-string v2, "text/html"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const v1, 0x7f090197

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/Focus1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 43
    .local v1, "listView":Landroid/widget/ListView;
    new-instance v2, Landroid/widget/ArrayAdapter;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Ars Technica"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Slashdot"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "GameKult"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const v4, 0x1090003

    invoke-direct {v2, p0, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    return-void
.end method
