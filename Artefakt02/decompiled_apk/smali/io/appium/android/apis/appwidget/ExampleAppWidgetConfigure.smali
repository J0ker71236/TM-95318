.class public Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;
.super Landroid/app/Activity;
.source "ExampleAppWidgetConfigure.java"


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "io.appium.android.apis.appwidget.ExampleAppWidgetProvider"

.field private static final PREF_PREFIX_KEY:Ljava/lang/String; = "prefix_"

.field static final TAG:Ljava/lang/String; = "ExampleAppWidgetConfigure"


# instance fields
.field mAppWidgetId:I

.field mAppWidgetPrefix:Landroid/widget/EditText;

.field mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->mAppWidgetId:I

    .line 84
    new-instance v0, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure$1;-><init>(Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;)V

    iput-object v0, p0, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 49
    return-void
.end method

.method static deleteTitlePref(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .line 126
    return-void
.end method

.method static loadAllTitlePrefs(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p1, "appWidgetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method static loadTitlePref(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .line 116
    const-string v0, "io.appium.android.apis.appwidget.ExampleAppWidgetProvider"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefix_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "prefix":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 119
    return-object v1

    .line 121
    :cond_0
    const v2, 0x7f0e00b4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static saveTitlePref(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 108
    const-string v0, "io.appium.android.apis.appwidget.ExampleAppWidgetProvider"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    .local v0, "prefs":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefix_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->setResult(I)V

    .line 60
    const v1, 0x7f0b0036

    invoke-virtual {p0, v1}, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->setContentView(I)V

    .line 63
    const v1, 0x7f09002b

    invoke-virtual {p0, v1}, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->mAppWidgetPrefix:Landroid/widget/EditText;

    .line 66
    const v1, 0x7f09019c

    invoke-virtual {p0, v1}, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0}, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 70
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 71
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 72
    const-string v3, "appWidgetId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->mAppWidgetId:I

    .line 77
    :cond_0
    iget v0, p0, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->mAppWidgetId:I

    if-nez v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->finish()V

    .line 81
    :cond_1
    iget-object v0, p0, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->mAppWidgetPrefix:Landroid/widget/EditText;

    iget v3, p0, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->mAppWidgetId:I

    invoke-static {p0, v3}, Lio/appium/android/apis/appwidget/ExampleAppWidgetConfigure;->loadTitlePref(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method
