.class public Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;
.super Landroid/preference/PreferenceFragment;
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
    name = "AdminSampleFragment"
.end annotation


# instance fields
.field protected mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

.field protected mAdminActive:Z

.field protected mDPM:Landroid/app/admin/DevicePolicyManager;

.field protected mDeviceAdminSample:Landroid/content/ComponentName;

.field private mResetPassword:Landroid/preference/EditTextPreference;

.field private mSetPassword:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private doResetPassword(Ljava/lang/String;)V
    .locals 5
    .param p1, "newPassword"    # Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v1, 0x7f0e0217

    invoke-static {v0, v1}, Lio/appium/android/apis/app/DeviceAdminSample;->access$100(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    .line 228
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v3, 0x7f0e0290

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    invoke-virtual {v2, v3, v1}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 231
    const v2, 0x7f0e028f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 233
    return-void
.end method


# virtual methods
.method protected localGlobalSummary(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "local"    # Ljava/lang/Object;
    .param p2, "global"    # Ljava/lang/Object;

    .line 239
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const v1, 0x7f0e0318

    invoke-virtual {p0, v1, v0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 152
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/app/DeviceAdminSample;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    .line 156
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    iget-object v0, v0, Lio/appium/android/apis/app/DeviceAdminSample;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 157
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    iget-object v0, v0, Lio/appium/android/apis/app/DeviceAdminSample;->mDeviceAdminSample:Landroid/content/ComponentName;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    .line 158
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-static {v0}, Lio/appium/android/apis/app/DeviceAdminSample;->access$000(Lio/appium/android/apis/app/DeviceAdminSample;)Z

    move-result v0

    iput-boolean v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mAdminActive:Z

    .line 161
    const-string v0, "key_reset_password"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mResetPassword:Landroid/preference/EditTextPreference;

    .line 162
    const-string v0, "key_set_password"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mSetPassword:Landroid/preference/PreferenceScreen;

    .line 164
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mResetPassword:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mSetPassword:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 170
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mResetPassword:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 213
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->doResetPassword(Ljava/lang/String;)V

    .line 214
    const/4 v0, 0x1

    return v0

    .line 216
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 202
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mSetPassword:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->startActivity(Landroid/content/Intent;)V

    .line 205
    const/4 v1, 0x1

    return v1

    .line 207
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 174
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 175
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-static {v0}, Lio/appium/android/apis/app/DeviceAdminSample;->access$000(Lio/appium/android/apis/app/DeviceAdminSample;)Z

    move-result v0

    iput-boolean v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mAdminActive:Z

    .line 176
    invoke-virtual {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->reloadSummaries()V

    .line 178
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mResetPassword:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    .line 179
    iget-boolean v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mAdminActive:Z

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 181
    :cond_0
    return-void
.end method

.method protected reloadSummaries()V
    .locals 3

    .line 188
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mSetPassword:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 189
    iget-boolean v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mAdminActive:Z

    if-eqz v1, :cond_1

    .line 191
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v0

    .line 192
    .local v0, "sufficient":Z
    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->mSetPassword:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    const v2, 0x7f0e0237

    goto :goto_0

    :cond_0
    const v2, 0x7f0e022d

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 194
    .end local v0    # "sufficient":Z
    goto :goto_1

    .line 195
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    :cond_2
    :goto_1
    return-void
.end method
