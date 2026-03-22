.class public Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;
.super Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;
.source "DeviceAdminSample.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/DeviceAdminSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptionFragment"
.end annotation


# instance fields
.field private mActivateEncryption:Landroid/preference/PreferenceScreen;

.field private mEncryptionCategory:Landroid/preference/PreferenceCategory;

.field private mRequireEncryption:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 790
    invoke-direct {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;-><init>()V

    return-void
.end method

.method private statusCodeToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "newStatusCode"    # I

    .line 875
    const v0, 0x7f0e013f

    .line 876
    .local v0, "newStatus":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 887
    :pswitch_0
    const v0, 0x7f0e013d

    goto :goto_0

    .line 884
    :pswitch_1
    const v0, 0x7f0e013c

    .line 885
    goto :goto_0

    .line 881
    :pswitch_2
    const v0, 0x7f0e013e

    .line 882
    goto :goto_0

    .line 878
    :pswitch_3
    const v0, 0x7f0e0140

    .line 879
    nop

    .line 890
    :goto_0
    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-virtual {v1, v0}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 798
    invoke-super {p0, p1}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onCreate(Landroid/os/Bundle;)V

    .line 799
    const v0, 0x7f110003

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->addPreferencesFromResource(I)V

    .line 801
    const-string v0, "key_category_encryption"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mEncryptionCategory:Landroid/preference/PreferenceCategory;

    .line 802
    const-string v0, "key_require_encryption"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mRequireEncryption:Landroid/preference/CheckBoxPreference;

    .line 803
    const-string v0, "key_activate_encryption"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mActivateEncryption:Landroid/preference/PreferenceScreen;

    .line 805
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mRequireEncryption:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 806
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mActivateEncryption:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 807
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 836
    invoke-super {p0, p1, p2}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 837
    return v1

    .line 839
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mRequireEncryption:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 840
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 841
    .local v0, "newActive":Z
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v0}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    .line 842
    invoke-virtual {p0}, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->reloadSummaries()V

    .line 843
    return v1

    .line 845
    .end local v0    # "newActive":Z
    :cond_1
    return v1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 850
    invoke-super {p0, p1}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 851
    return v1

    .line 853
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mActivateEncryption:Landroid/preference/PreferenceScreen;

    if-ne p1, v0, :cond_3

    .line 854
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v2, 0x7f0e0214

    invoke-static {v0, v2}, Lio/appium/android/apis/app/DeviceAdminSample;->access$100(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    return v1

    .line 858
    :cond_1
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    if-nez v0, :cond_2

    .line 860
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 861
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e013a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 862
    const v2, 0x7f0e013b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 863
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 864
    return v1

    .line 867
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.app.action.START_ENCRYPTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 868
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 869
    return v1

    .line 871
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 3

    .line 811
    invoke-super {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onResume()V

    .line 812
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mEncryptionCategory:Landroid/preference/PreferenceCategory;

    iget-boolean v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mAdminActive:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 813
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mRequireEncryption:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 814
    return-void
.end method

.method protected reloadSummaries()V
    .locals 7

    .line 821
    invoke-super {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->reloadSummaries()V

    .line 824
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    .line 825
    .local v0, "local":Z
    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v1

    .line 826
    .local v1, "global":Z
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mRequireEncryption:Landroid/preference/CheckBoxPreference;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->localGlobalSummary(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 828
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v2

    .line 829
    .local v2, "deviceStatusCode":I
    invoke-direct {p0, v2}, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->statusCodeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 830
    .local v3, "deviceStatus":Ljava/lang/String;
    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const v6, 0x7f0e0317

    invoke-virtual {v4, v6, v5}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 831
    .local v4, "status":Ljava/lang/String;
    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;->mActivateEncryption:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 832
    return-void
.end method
