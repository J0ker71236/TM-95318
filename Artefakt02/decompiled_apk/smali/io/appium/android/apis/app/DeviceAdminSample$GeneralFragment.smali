.class public Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;
.super Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;
.source "DeviceAdminSample.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/DeviceAdminSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneralFragment"
.end annotation


# instance fields
.field private mDisableCameraCheckbox:Landroid/preference/CheckBoxPreference;

.field private mDisableKeyguardSecureCameraCheckbox:Landroid/preference/CheckBoxPreference;

.field private mDisableKeyguardWidgetsCheckbox:Landroid/preference/CheckBoxPreference;

.field private mEnableCheckbox:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 246
    invoke-direct {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;-><init>()V

    return-void
.end method

.method private enableDeviceCapabilitiesArea(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 349
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDisableCameraCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 350
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDisableKeyguardWidgetsCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 351
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDisableKeyguardSecureCameraCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 352
    return-void
.end method


# virtual methods
.method createKeyguardDisabledFlag()I
    .locals 2

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "flags":I
    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDisableKeyguardWidgetsCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    or-int/2addr v0, v1

    .line 288
    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDisableKeyguardSecureCameraCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    .line 290
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 256
    invoke-super {p0, p1}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onCreate(Landroid/os/Bundle;)V

    .line 257
    const v0, 0x7f110005

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->addPreferencesFromResource(I)V

    .line 258
    const-string v0, "key_enable_admin"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    .line 259
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 260
    const-string v0, "key_disable_camera"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDisableCameraCheckbox:Landroid/preference/CheckBoxPreference;

    .line 261
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDisableCameraCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 262
    const-string v0, "key_disable_keyguard_widgets"

    .line 263
    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDisableKeyguardWidgetsCheckbox:Landroid/preference/CheckBoxPreference;

    .line 264
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDisableKeyguardWidgetsCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 265
    const-string v0, "key_disable_keyguard_secure_camera"

    .line 266
    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDisableKeyguardSecureCameraCheckbox:Landroid/preference/CheckBoxPreference;

    .line 267
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDisableKeyguardSecureCameraCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 268
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 295
    invoke-super {p0, p1, p2}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 296
    return v1

    .line 298
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 299
    .local v0, "value":Z
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_2

    .line 300
    iget-boolean v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mAdminActive:Z

    if-eq v0, v2, :cond_5

    .line 301
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 303
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.app.extra.DEVICE_ADMIN"

    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 305
    const-string v4, "android.app.extra.ADD_EXPLANATION"

    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v6, 0x7f0e0082

    .line 306
    invoke-virtual {v5, v6}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 305
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v3, v1}, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 309
    return v2

    .line 311
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 312
    invoke-direct {p0, v2}, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->enableDeviceCapabilitiesArea(Z)V

    .line 313
    iput-boolean v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mAdminActive:Z

    goto :goto_0

    .line 316
    :cond_2
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDisableCameraCheckbox:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_3

    .line 317
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v0}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 318
    invoke-virtual {p0}, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->reloadSummaries()V

    goto :goto_0

    .line 319
    :cond_3
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDisableKeyguardWidgetsCheckbox:Landroid/preference/CheckBoxPreference;

    if-eq p1, v2, :cond_4

    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDisableKeyguardSecureCameraCheckbox:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_5

    .line 321
    :cond_4
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->createKeyguardDisabledFlag()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V

    .line 322
    invoke-virtual {p0}, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->reloadSummaries()V

    .line 324
    :cond_5
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 3

    .line 273
    invoke-super {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onResume()V

    .line 274
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mAdminActive:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 275
    iget-boolean v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mAdminActive:Z

    invoke-direct {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->enableDeviceCapabilitiesArea(Z)V

    .line 277
    iget-boolean v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mAdminActive:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDisableCameraCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 279
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->createKeyguardDisabledFlag()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V

    .line 280
    invoke-virtual {p0}, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->reloadSummaries()V

    .line 282
    :cond_0
    return-void
.end method

.method protected reloadSummaries()V
    .locals 5

    .line 329
    invoke-super {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->reloadSummaries()V

    .line 330
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e00f8

    goto :goto_0

    :cond_0
    const v0, 0x7f0e00f9

    :goto_0
    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "cameraSummary":Ljava/lang/String;
    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDisableCameraCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v1

    .line 336
    .local v1, "disabled":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    const v2, 0x7f0e01b7

    goto :goto_1

    :cond_1
    const v2, 0x7f0e01b8

    :goto_1
    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, "keyguardWidgetSummary":Ljava/lang/String;
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDisableKeyguardWidgetsCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 341
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_2

    const v3, 0x7f0e01b5

    goto :goto_2

    :cond_2
    const v3, 0x7f0e01b6

    :goto_2
    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "keyguardSecureCameraSummary":Ljava/lang/String;
    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;->mDisableKeyguardSecureCameraCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 345
    return-void
.end method
