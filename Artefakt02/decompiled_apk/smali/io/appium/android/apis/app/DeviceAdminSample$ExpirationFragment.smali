.class public Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;
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
    name = "ExpirationFragment"
.end annotation


# instance fields
.field private mExpirationCategory:Landroid/preference/PreferenceCategory;

.field private mExpirationStatus:Landroid/preference/PreferenceScreen;

.field private mExpirationTimeout:Landroid/preference/EditTextPreference;

.field private mHistory:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 515
    invoke-direct {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;-><init>()V

    return-void
.end method

.method private getExpirationStatus()Ljava/lang/String;
    .locals 16

    .line 609
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, v0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v1

    .line 610
    .local v1, "localExpiration":J
    iget-object v3, v0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 611
    .local v3, "globalExpiration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 615
    .local v5, "now":J
    const v7, 0x7f0e0143

    const v9, 0x7f0e0144

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    cmp-long v14, v1, v10

    if-nez v14, :cond_0

    .line 616
    iget-object v14, v0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-virtual {v14, v9}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 618
    :cond_0
    sub-long/2addr v1, v5

    .line 619
    iget-object v14, v0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-static {v14, v8, v9}, Lio/appium/android/apis/app/DeviceAdminSample;->access$200(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 620
    .local v8, "dms":Ljava/lang/String;
    cmp-long v9, v1, v10

    if-ltz v9, :cond_1

    .line 621
    iget-object v9, v0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v8, v14, v12

    invoke-virtual {v9, v7, v14}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 623
    :cond_1
    iget-object v9, v0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v8, v14, v12

    const v15, 0x7f0e0145

    invoke-virtual {v9, v15, v14}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 629
    .end local v8    # "dms":Ljava/lang/String;
    .local v14, "local":Ljava/lang/String;
    :goto_0
    cmp-long v8, v3, v10

    if-nez v8, :cond_2

    .line 630
    iget-object v7, v0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v8, 0x7f0e0144

    invoke-virtual {v7, v8}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v11, 0x1

    goto :goto_1

    .line 632
    :cond_2
    sub-long/2addr v3, v5

    .line 633
    iget-object v8, v0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    invoke-static {v8, v12, v13}, Lio/appium/android/apis/app/DeviceAdminSample;->access$200(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 634
    .restart local v8    # "dms":Ljava/lang/String;
    cmp-long v12, v3, v10

    if-ltz v12, :cond_3

    .line 635
    iget-object v10, v0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v8, v12, v9

    invoke-virtual {v10, v7, v12}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 637
    :cond_3
    const/4 v9, 0x0

    const/4 v11, 0x1

    iget-object v7, v0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    new-array v10, v11, [Ljava/lang/Object;

    aput-object v8, v10, v9

    const v12, 0x7f0e0145

    invoke-virtual {v7, v12, v10}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 640
    .end local v8    # "dms":Ljava/lang/String;
    .local v7, "global":Ljava/lang/String;
    :goto_1
    iget-object v8, v0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v10, 0x7f0e0318

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v14, v12, v9

    aput-object v7, v12, v11

    invoke-virtual {v8, v10, v12}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 524
    invoke-super {p0, p1}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onCreate(Landroid/os/Bundle;)V

    .line 525
    const v0, 0x7f110004

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->addPreferencesFromResource(I)V

    .line 527
    const-string v0, "key_category_expiration"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationCategory:Landroid/preference/PreferenceCategory;

    .line 528
    const-string v0, "key_history"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mHistory:Landroid/preference/EditTextPreference;

    .line 529
    const-string v0, "key_expiration_timeout"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationTimeout:Landroid/preference/EditTextPreference;

    .line 530
    const-string v0, "key_expiration_status"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationStatus:Landroid/preference/PreferenceScreen;

    .line 532
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mHistory:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 533
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationTimeout:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 534
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationStatus:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 535
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 567
    invoke-super {p0, p1, p2}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 568
    return v1

    .line 570
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 571
    .local v0, "valueString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 572
    return v3

    .line 574
    :cond_1
    const/4 v2, 0x0

    .line 576
    .local v2, "value":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 580
    goto :goto_0

    .line 577
    :catch_0
    move-exception v4

    .line 578
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v6, 0x7f0e0222

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-virtual {v5, v6, v7}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 579
    .local v5, "warning":Ljava/lang/String;
    iget-object v6, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-static {v6, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 581
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "warning":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mHistory:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_2

    .line 582
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v2}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    goto :goto_1

    .line 583
    :cond_2
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationTimeout:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_3

    .line 584
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    int-to-long v5, v2

    const-wide/32 v7, 0xea60

    mul-long v5, v5, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/admin/DevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    .line 586
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->reloadSummaries()V

    .line 587
    return v1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 592
    invoke-super {p0, p1}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 593
    return v1

    .line 595
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationStatus:Landroid/preference/PreferenceScreen;

    if-ne p1, v0, :cond_1

    .line 596
    invoke-direct {p0}, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->getExpirationStatus()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "expirationStatus":Ljava/lang/String;
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationStatus:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 598
    return v1

    .line 600
    .end local v0    # "expirationStatus":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 539
    invoke-super {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onResume()V

    .line 540
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationCategory:Landroid/preference/PreferenceCategory;

    iget-boolean v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mAdminActive:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 541
    return-void
.end method

.method protected reloadSummaries()V
    .locals 11

    .line 548
    invoke-super {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->reloadSummaries()V

    .line 551
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v0

    .line 552
    .local v0, "local":I
    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v1

    .line 553
    .local v1, "global":I
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mHistory:Landroid/preference/EditTextPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->localGlobalSummary(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 557
    .local v3, "localLong":J
    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v5

    .line 558
    .local v5, "globalLong":J
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationTimeout:Landroid/preference/EditTextPreference;

    const-wide/32 v7, 0xea60

    div-long v9, v3, v7

    .line 559
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    div-long v7, v5, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 558
    invoke-virtual {p0, v9, v7}, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->localGlobalSummary(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 561
    invoke-direct {p0}, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->getExpirationStatus()Ljava/lang/String;

    move-result-object v2

    .line 562
    .local v2, "expirationStatus":Ljava/lang/String;
    iget-object v7, p0, Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;->mExpirationStatus:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 563
    return-void
.end method
