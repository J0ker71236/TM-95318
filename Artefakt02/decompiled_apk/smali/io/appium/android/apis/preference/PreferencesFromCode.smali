.class public Lio/appium/android/apis/preference/PreferencesFromCode;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesFromCode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 16

    .line 44
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/preference/PreferencesFromCode;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 47
    .local v1, "root":Landroid/preference/PreferenceScreen;
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 48
    .local v2, "inlinePrefCat":Landroid/preference/PreferenceCategory;
    const v3, 0x7f0e01a9

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 49
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 52
    new-instance v3, Landroid/preference/CheckBoxPreference;

    invoke-direct {v3, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 53
    .local v3, "checkboxPref":Landroid/preference/CheckBoxPreference;
    const-string v4, "checkbox_preference"

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 54
    const v4, 0x7f0e03a9

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 55
    const v4, 0x7f0e0324

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 56
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 59
    new-instance v4, Landroid/preference/SwitchPreference;

    invoke-direct {v4, v0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 60
    .local v4, "switchPref":Landroid/preference/SwitchPreference;
    const-string v5, "switch_preference"

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 61
    const v5, 0x7f0e03b3

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 62
    const v5, 0x7f0e0330

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 63
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 66
    new-instance v5, Landroid/preference/PreferenceCategory;

    invoke-direct {v5, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 67
    .local v5, "dialogBasedPrefCat":Landroid/preference/PreferenceCategory;
    const v6, 0x7f0e0128

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 68
    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 71
    new-instance v6, Landroid/preference/EditTextPreference;

    invoke-direct {v6, v0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 72
    .local v6, "editTextPref":Landroid/preference/EditTextPreference;
    const v7, 0x7f0e0129

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 73
    const-string v7, "edittext_preference"

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 74
    const v7, 0x7f0e03ab

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 75
    const v7, 0x7f0e0326

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 76
    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 79
    new-instance v7, Landroid/preference/ListPreference;

    invoke-direct {v7, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 80
    .local v7, "listPref":Landroid/preference/ListPreference;
    const v8, 0x7f030003

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 81
    const v8, 0x7f030004

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 82
    const v8, 0x7f0e012a

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 83
    const-string v8, "list_preference"

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 84
    const v8, 0x7f0e03ae

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 85
    const v8, 0x7f0e0329

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 86
    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 89
    new-instance v8, Landroid/preference/PreferenceCategory;

    invoke-direct {v8, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 90
    .local v8, "launchPrefCat":Landroid/preference/PreferenceCategory;
    const v9, 0x7f0e01c6

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 91
    invoke-virtual {v1, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 99
    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/preference/PreferencesFromCode;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 100
    .local v9, "screenPref":Landroid/preference/PreferenceScreen;
    const-string v10, "screen_preference"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 101
    const v10, 0x7f0e03b2

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 102
    const v10, 0x7f0e032f

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 103
    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 111
    new-instance v10, Landroid/preference/CheckBoxPreference;

    invoke-direct {v10, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 112
    .local v10, "nextScreenCheckBoxPref":Landroid/preference/CheckBoxPreference;
    const-string v11, "next_screen_toggle_preference"

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 113
    const v11, 0x7f0e03b0

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 114
    const v11, 0x7f0e032b

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 115
    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 118
    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/preference/PreferencesFromCode;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v11

    .line 119
    .local v11, "intentPref":Landroid/preference/PreferenceScreen;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "http://www.android.com"

    .line 120
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v12

    .line 119
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 121
    const v12, 0x7f0e03ad

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 122
    const v12, 0x7f0e0328

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 123
    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 126
    new-instance v12, Landroid/preference/PreferenceCategory;

    invoke-direct {v12, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 127
    .local v12, "prefAttrsCat":Landroid/preference/PreferenceCategory;
    const v13, 0x7f0e0248

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 128
    invoke-virtual {v1, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 131
    new-instance v13, Landroid/preference/CheckBoxPreference;

    invoke-direct {v13, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 132
    .local v13, "parentCheckBoxPref":Landroid/preference/CheckBoxPreference;
    const v14, 0x7f0e03b1

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 133
    const v14, 0x7f0e032e

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 134
    invoke-virtual {v12, v13}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 139
    sget-object v14, Lio/appium/android/apis/R$styleable;->TogglePrefAttrs:[I

    invoke-virtual {v0, v14}, Lio/appium/android/apis/preference/PreferencesFromCode;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 140
    .local v14, "a":Landroid/content/res/TypedArray;
    new-instance v15, Landroid/preference/CheckBoxPreference;

    invoke-direct {v15, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 141
    .local v15, "childCheckBoxPref":Landroid/preference/CheckBoxPreference;
    const v0, 0x7f0e03aa

    invoke-virtual {v15, v0}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 142
    const v0, 0x7f0e0325

    invoke-virtual {v15, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 143
    nop

    .line 144
    const/4 v0, 0x0

    invoke-virtual {v14, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 143
    invoke-virtual {v15, v0}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 146
    invoke-virtual {v12, v15}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 147
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-direct {p0}, Lio/appium/android/apis/preference/PreferencesFromCode;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/appium/android/apis/preference/PreferencesFromCode;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 40
    return-void
.end method
