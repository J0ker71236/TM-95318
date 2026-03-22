.class public Lio/appium/android/apis/preference/AdvancedPreferences;
.super Landroid/preference/PreferenceActivity;
.source "AdvancedPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final KEY_ADVANCED_CHECKBOX_PREFERENCE:Ljava/lang/String; = "advanced_checkbox_preference"

.field public static final KEY_MY_PREFERENCE:Ljava/lang/String; = "my_preference"


# instance fields
.field private mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

.field private mForceCheckBoxRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/preference/AdvancedPreferences;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance v0, Lio/appium/android/apis/preference/AdvancedPreferences$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/preference/AdvancedPreferences$1;-><init>(Lio/appium/android/apis/preference/AdvancedPreferences;)V

    iput-object v0, p0, Lio/appium/android/apis/preference/AdvancedPreferences;->mForceCheckBoxRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/preference/AdvancedPreferences;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/preference/AdvancedPreferences;

    .line 32
    iget-object v0, p0, Lio/appium/android/apis/preference/AdvancedPreferences;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lio/appium/android/apis/preference/AdvancedPreferences;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/preference/AdvancedPreferences;

    .line 32
    iget-object v0, p0, Lio/appium/android/apis/preference/AdvancedPreferences;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 55
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/high16 v0, 0x7f110000

    invoke-virtual {p0, v0}, Lio/appium/android/apis/preference/AdvancedPreferences;->addPreferencesFromResource(I)V

    .line 61
    invoke-virtual {p0}, Lio/appium/android/apis/preference/AdvancedPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "advanced_checkbox_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lio/appium/android/apis/preference/AdvancedPreferences;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    .line 63
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 78
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 81
    invoke-virtual {p0}, Lio/appium/android/apis/preference/AdvancedPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 83
    iget-object v0, p0, Lio/appium/android/apis/preference/AdvancedPreferences;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/appium/android/apis/preference/AdvancedPreferences;->mForceCheckBoxRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 70
    iget-object v0, p0, Lio/appium/android/apis/preference/AdvancedPreferences;->mForceCheckBoxRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 73
    invoke-virtual {p0}, Lio/appium/android/apis/preference/AdvancedPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 74
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 88
    const-string v0, "my_preference"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thanks! You increased my count to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 92
    :cond_0
    return-void
.end method
