USE [db_a94e3c_tawredattransfer]
GO
ALTER TABLE [dbo].[AspNetUserTokens] DROP CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims] DROP CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[TbTermAndCondition] DROP CONSTRAINT [DF__TbTermAnd__Curre__4F47C5E3]
GO
ALTER TABLE [dbo].[TbTermAndCondition] DROP CONSTRAINT [DF__TbTermAnd__Creat__4E53A1AA]
GO
ALTER TABLE [dbo].[TbTermAndCondition] DROP CONSTRAINT [DF__TbTermAnd__Terms__4D5F7D71]
GO
ALTER TABLE [dbo].[TbSupplierSubscription] DROP CONSTRAINT [DF__TbSupplie__Curre__4C6B5938]
GO
ALTER TABLE [dbo].[TbSupplierSubscription] DROP CONSTRAINT [DF__TbSupplie__Creat__4B7734FF]
GO
ALTER TABLE [dbo].[TbSupplierSubscription] DROP CONSTRAINT [DF__TbSupplie__Suppl__4A8310C6]
GO
ALTER TABLE [dbo].[TbSupplierProduct] DROP CONSTRAINT [DF__TbSupplie__Curre__498EEC8D]
GO
ALTER TABLE [dbo].[TbSupplierProduct] DROP CONSTRAINT [DF__TbSupplie__Creat__489AC854]
GO
ALTER TABLE [dbo].[TbSupplierProduct] DROP CONSTRAINT [DF__TbSupplie__Suppl__47A6A41B]
GO
ALTER TABLE [dbo].[TbSupplierCategory] DROP CONSTRAINT [DF__TbSupplie__Curre__46B27FE2]
GO
ALTER TABLE [dbo].[TbSupplierCategory] DROP CONSTRAINT [DF__TbSupplie__Creat__45BE5BA9]
GO
ALTER TABLE [dbo].[TbSupplierCategory] DROP CONSTRAINT [DF__TbSupplie__Suppl__44CA3770]
GO
ALTER TABLE [dbo].[TbSupplier] DROP CONSTRAINT [DF__TbSupplie__Curre__43D61337]
GO
ALTER TABLE [dbo].[TbSupplier] DROP CONSTRAINT [DF__TbSupplie__Creat__42E1EEFE]
GO
ALTER TABLE [dbo].[TbSupplier] DROP CONSTRAINT [DF__TbSupplie__Suppl__41EDCAC5]
GO
ALTER TABLE [dbo].[TbSubscriptionRequest] DROP CONSTRAINT [DF__TbSubscri__Creat__40F9A68C]
GO
ALTER TABLE [dbo].[TbSubscriptionRequest] DROP CONSTRAINT [DF__TbSubscri__Reque__625A9A57]
GO
ALTER TABLE [dbo].[TbStore] DROP CONSTRAINT [DF__TbStore__Supplie__3F115E1A]
GO
ALTER TABLE [dbo].[TbStore] DROP CONSTRAINT [DF__TbStore__Current__3E1D39E1]
GO
ALTER TABLE [dbo].[TbStore] DROP CONSTRAINT [DF__TbStore__Created__3D2915A8]
GO
ALTER TABLE [dbo].[TbStore] DROP CONSTRAINT [DF__TbStore__StoreId__3C34F16F]
GO
ALTER TABLE [dbo].[TbSlider] DROP CONSTRAINT [DF__TbSlider__Type__3B40CD36]
GO
ALTER TABLE [dbo].[TbSlider] DROP CONSTRAINT [DF__TbSlider__Curren__3A4CA8FD]
GO
ALTER TABLE [dbo].[TbSlider] DROP CONSTRAINT [DF__TbSlider__Create__395884C4]
GO
ALTER TABLE [dbo].[TbSlider] DROP CONSTRAINT [DF__TbSlider__Slider__3864608B]
GO
ALTER TABLE [dbo].[TbSetting] DROP CONSTRAINT [DF__TbSetting__Curre__37703C52]
GO
ALTER TABLE [dbo].[TbSetting] DROP CONSTRAINT [DF__TbSetting__Creat__367C1819]
GO
ALTER TABLE [dbo].[TbSetting] DROP CONSTRAINT [DF__TbSetting__Setti__3587F3E0]
GO
ALTER TABLE [dbo].[TbSalesInvoiceProduct] DROP CONSTRAINT [DF__TbSalesIn__Curre__3493CFA7]
GO
ALTER TABLE [dbo].[TbSalesInvoiceProduct] DROP CONSTRAINT [DF__TbSalesIn__Creat__339FAB6E]
GO
ALTER TABLE [dbo].[TbSalesInvoiceProduct] DROP CONSTRAINT [DF__TbSalesIn__Sales__32AB8735]
GO
ALTER TABLE [dbo].[TbSalesInvoice] DROP CONSTRAINT [DF__TbSalesIn__Total__55F4C372]
GO
ALTER TABLE [dbo].[TbSalesInvoice] DROP CONSTRAINT [DF__TbSalesIn__Total__56E8E7AB]
GO
ALTER TABLE [dbo].[TbSalesInvoice] DROP CONSTRAINT [DF__TbSalesIn__TaxVa__57DD0BE4]
GO
ALTER TABLE [dbo].[TbSalesInvoice] DROP CONSTRAINT [DF__TbSalesIn__DiscV__58D1301D]
GO
ALTER TABLE [dbo].[TbSalesInvoice] DROP CONSTRAINT [DF__TbSalesIn__Deliv__59C55456]
GO
ALTER TABLE [dbo].[TbSalesInvoice] DROP CONSTRAINT [DF__TbSalesIn__Curre__31B762FC]
GO
ALTER TABLE [dbo].[TbSalesInvoice] DROP CONSTRAINT [DF__TbSalesIn__Creat__30C33EC3]
GO
ALTER TABLE [dbo].[TbSalesInvoice] DROP CONSTRAINT [DF__TbSalesIn__Sales__2FCF1A8A]
GO
ALTER TABLE [dbo].[TbRealTimeNotifcations] DROP CONSTRAINT [DF__TbRealTim__Creat__2EDAF651]
GO
ALTER TABLE [dbo].[TbRealTimeNotifcations] DROP CONSTRAINT [DF__TbRealTim__RealT__2DE6D218]
GO
ALTER TABLE [dbo].[TbPurchasingCart] DROP CONSTRAINT [DF__TbPurchas__Curre__2CF2ADDF]
GO
ALTER TABLE [dbo].[TbPurchasingCart] DROP CONSTRAINT [DF__TbPurchas__Creat__2BFE89A6]
GO
ALTER TABLE [dbo].[TbPurchasingCart] DROP CONSTRAINT [DF__TbPurchas__Purch__2B0A656D]
GO
ALTER TABLE [dbo].[TbPurchaseSubscribtion] DROP CONSTRAINT [DF__TbPurchas__Curre__2A164134]
GO
ALTER TABLE [dbo].[TbPurchaseSubscribtion] DROP CONSTRAINT [DF__TbPurchas__Creat__29221CFB]
GO
ALTER TABLE [dbo].[TbPurchaseSubscribtion] DROP CONSTRAINT [DF__TbPurchas__Purch__282DF8C2]
GO
ALTER TABLE [dbo].[TbPromocode] DROP CONSTRAINT [DF__TbPromoco__Curre__2739D489]
GO
ALTER TABLE [dbo].[TbPromocode] DROP CONSTRAINT [DF__TbPromoco__Creat__2645B050]
GO
ALTER TABLE [dbo].[TbPromocode] DROP CONSTRAINT [DF__TbPromoco__Promo__25518C17]
GO
ALTER TABLE [dbo].[TbProductCategory] DROP CONSTRAINT [DF__TbProduct__Curre__245D67DE]
GO
ALTER TABLE [dbo].[TbProductCategory] DROP CONSTRAINT [DF__TbProduct__Creat__236943A5]
GO
ALTER TABLE [dbo].[TbProductCategory] DROP CONSTRAINT [DF__TbProduct__Produ__22751F6C]
GO
ALTER TABLE [dbo].[TbProduct] DROP CONSTRAINT [DF__TbProduct__Store__2180FB33]
GO
ALTER TABLE [dbo].[TbProduct] DROP CONSTRAINT [DF__TbProduct__Quant__208CD6FA]
GO
ALTER TABLE [dbo].[TbProduct] DROP CONSTRAINT [DF__TbProduct__Curre__1F98B2C1]
GO
ALTER TABLE [dbo].[TbProduct] DROP CONSTRAINT [DF__TbProduct__Creat__1EA48E88]
GO
ALTER TABLE [dbo].[TbProduct] DROP CONSTRAINT [DF__TbProduct__Produ__1DB06A4F]
GO
ALTER TABLE [dbo].[TbPoliciesAndPrivacy] DROP CONSTRAINT [DF__TbPolicie__Curre__1CBC4616]
GO
ALTER TABLE [dbo].[TbPoliciesAndPrivacy] DROP CONSTRAINT [DF__TbPolicie__Creat__1BC821DD]
GO
ALTER TABLE [dbo].[TbPoliciesAndPrivacy] DROP CONSTRAINT [DF__TbPolicie__Polic__1AD3FDA4]
GO
ALTER TABLE [dbo].[TbPaymentMethod] DROP CONSTRAINT [DF__TbPayment__Curre__19DFD96B]
GO
ALTER TABLE [dbo].[TbPaymentMethod] DROP CONSTRAINT [DF__TbPayment__Creat__18EBB532]
GO
ALTER TABLE [dbo].[TbPaymentMethod] DROP CONSTRAINT [DF__TbPayment__Payme__17F790F9]
GO
ALTER TABLE [dbo].[TbOffer] DROP CONSTRAINT [DF__TbOffer__Current__17036CC0]
GO
ALTER TABLE [dbo].[TbOffer] DROP CONSTRAINT [DF__TbOffer__Created__160F4887]
GO
ALTER TABLE [dbo].[TbOffer] DROP CONSTRAINT [DF__TbOffer__OfferId__151B244E]
GO
ALTER TABLE [dbo].[TbNotification] DROP CONSTRAINT [DF__TbNotific__Curre__14270015]
GO
ALTER TABLE [dbo].[TbNotification] DROP CONSTRAINT [DF__TbNotific__Creat__1332DBDC]
GO
ALTER TABLE [dbo].[TbNotification] DROP CONSTRAINT [DF__TbNotific__Notif__123EB7A3]
GO
ALTER TABLE [dbo].[TbFavourites] DROP CONSTRAINT [DF__TbFavouri__Curre__114A936A]
GO
ALTER TABLE [dbo].[TbFavourites] DROP CONSTRAINT [DF__TbFavouri__Creat__10566F31]
GO
ALTER TABLE [dbo].[TbFavourites] DROP CONSTRAINT [DF__TbFavouri__Favou__0F624AF8]
GO
ALTER TABLE [dbo].[TbEvaluationSupplierProduct] DROP CONSTRAINT [DF__TbEvaluat__Curre__0E6E26BF]
GO
ALTER TABLE [dbo].[TbEvaluationSupplierProduct] DROP CONSTRAINT [DF__TbEvaluat__Creat__0D7A0286]
GO
ALTER TABLE [dbo].[TbEvaluationSupplierProduct] DROP CONSTRAINT [DF__TbEvaluat__Suppl__0C85DE4D]
GO
ALTER TABLE [dbo].[TbEvaluationProduct] DROP CONSTRAINT [DF__TbEvaluat__Curre__0B91BA14]
GO
ALTER TABLE [dbo].[TbEvaluationProduct] DROP CONSTRAINT [DF__TbEvaluat__Creat__0A9D95DB]
GO
ALTER TABLE [dbo].[TbEvaluationProduct] DROP CONSTRAINT [DF__TbEvaluat__Produ__09A971A2]
GO
ALTER TABLE [dbo].[TbEvaluationDelivery] DROP CONSTRAINT [DF__TbEvaluat__Curre__08B54D69]
GO
ALTER TABLE [dbo].[TbEvaluationDelivery] DROP CONSTRAINT [DF__TbEvaluat__Creat__07C12930]
GO
ALTER TABLE [dbo].[TbEvaluationDelivery] DROP CONSTRAINT [DF__TbEvaluat__Deliv__06CD04F7]
GO
ALTER TABLE [dbo].[TbDelivery] DROP CONSTRAINT [DF__TbDeliver__Curre__05D8E0BE]
GO
ALTER TABLE [dbo].[TbDelivery] DROP CONSTRAINT [DF__TbDeliver__Creat__04E4BC85]
GO
ALTER TABLE [dbo].[TbDelivery] DROP CONSTRAINT [DF__TbDeliver__Deliv__03F0984C]
GO
ALTER TABLE [dbo].[TbComplainsAndSuggestion] DROP CONSTRAINT [DF__TbComplai__Curre__02FC7413]
GO
ALTER TABLE [dbo].[TbComplainsAndSuggestion] DROP CONSTRAINT [DF__TbComplai__Creat__02084FDA]
GO
ALTER TABLE [dbo].[TbComplainsAndSuggestion] DROP CONSTRAINT [DF__TbComplai__Compl__01142BA1]
GO
ALTER TABLE [dbo].[TbCityDeliveryFees] DROP CONSTRAINT [DF__TbCityDel__Curre__00200768]
GO
ALTER TABLE [dbo].[TbCityDeliveryFees] DROP CONSTRAINT [DF__TbCityDel__Creat__7F2BE32F]
GO
ALTER TABLE [dbo].[TbCityDeliveryFees] DROP CONSTRAINT [DF__TbCityDel__CityD__7E37BEF6]
GO
ALTER TABLE [dbo].[TbCity] DROP CONSTRAINT [DF__TbCity__CurrentS__7D439ABD]
GO
ALTER TABLE [dbo].[TbCity] DROP CONSTRAINT [DF__TbCity__CreatedD__7C4F7684]
GO
ALTER TABLE [dbo].[TbCity] DROP CONSTRAINT [DF__TbCity__CityId__7B5B524B]
GO
ALTER TABLE [dbo].[TbCharge] DROP CONSTRAINT [DF__TbCharge__Curren__7A672E12]
GO
ALTER TABLE [dbo].[TbCharge] DROP CONSTRAINT [DF__TbCharge__Create__797309D9]
GO
ALTER TABLE [dbo].[TbCharge] DROP CONSTRAINT [DF__TbCharge__Charge__787EE5A0]
GO
ALTER TABLE [dbo].[TbAddress] DROP CONSTRAINT [DF__TbAddress__Curre__778AC167]
GO
ALTER TABLE [dbo].[TbAddress] DROP CONSTRAINT [DF__TbAddress__Creat__76969D2E]
GO
ALTER TABLE [dbo].[TbAddress] DROP CONSTRAINT [DF__TbAddress__Addre__75A278F5]
GO
ALTER TABLE [dbo].[TbAboutApp] DROP CONSTRAINT [DF__TbAboutAp__Curre__74AE54BC]
GO
ALTER TABLE [dbo].[TbAboutApp] DROP CONSTRAINT [DF__TbAboutAp__Creat__73BA3083]
GO
ALTER TABLE [dbo].[TbAboutApp] DROP CONSTRAINT [DF__TbAboutAp__About__72C60C4A]
GO
ALTER TABLE [dbo].[AspNetUsers] DROP CONSTRAINT [DF__AspNetUse__IsAct__71D1E811]
GO
ALTER TABLE [dbo].[AspNetUsers] DROP CONSTRAINT [DF__AspNetUse__IsAgr__70DDC3D8]
GO
/****** Object:  Table [dbo].[TbTermAndCondition]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbTermAndCondition]') AND type in (N'U'))
DROP TABLE [dbo].[TbTermAndCondition]
GO
/****** Object:  Table [dbo].[TbSupplierSubscription]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbSupplierSubscription]') AND type in (N'U'))
DROP TABLE [dbo].[TbSupplierSubscription]
GO
/****** Object:  Table [dbo].[TbSupplierProduct]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbSupplierProduct]') AND type in (N'U'))
DROP TABLE [dbo].[TbSupplierProduct]
GO
/****** Object:  Table [dbo].[TbSupplierCategory]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbSupplierCategory]') AND type in (N'U'))
DROP TABLE [dbo].[TbSupplierCategory]
GO
/****** Object:  Table [dbo].[TbSupplier]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbSupplier]') AND type in (N'U'))
DROP TABLE [dbo].[TbSupplier]
GO
/****** Object:  Table [dbo].[TbSubscriptionRequest]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbSubscriptionRequest]') AND type in (N'U'))
DROP TABLE [dbo].[TbSubscriptionRequest]
GO
/****** Object:  Table [dbo].[TbStore]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbStore]') AND type in (N'U'))
DROP TABLE [dbo].[TbStore]
GO
/****** Object:  Table [dbo].[TbSlider]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbSlider]') AND type in (N'U'))
DROP TABLE [dbo].[TbSlider]
GO
/****** Object:  Table [dbo].[TbSetting]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbSetting]') AND type in (N'U'))
DROP TABLE [dbo].[TbSetting]
GO
/****** Object:  Table [dbo].[TbSalesInvoiceProduct]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbSalesInvoiceProduct]') AND type in (N'U'))
DROP TABLE [dbo].[TbSalesInvoiceProduct]
GO
/****** Object:  Table [dbo].[TbSalesInvoice]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbSalesInvoice]') AND type in (N'U'))
DROP TABLE [dbo].[TbSalesInvoice]
GO
/****** Object:  Table [dbo].[TbRealTimeNotifcations]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbRealTimeNotifcations]') AND type in (N'U'))
DROP TABLE [dbo].[TbRealTimeNotifcations]
GO
/****** Object:  Table [dbo].[TbPurchasingCart]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbPurchasingCart]') AND type in (N'U'))
DROP TABLE [dbo].[TbPurchasingCart]
GO
/****** Object:  Table [dbo].[TbPurchaseSubscribtion]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbPurchaseSubscribtion]') AND type in (N'U'))
DROP TABLE [dbo].[TbPurchaseSubscribtion]
GO
/****** Object:  Table [dbo].[TbPromocode]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbPromocode]') AND type in (N'U'))
DROP TABLE [dbo].[TbPromocode]
GO
/****** Object:  Table [dbo].[TbProductCategory]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbProductCategory]') AND type in (N'U'))
DROP TABLE [dbo].[TbProductCategory]
GO
/****** Object:  Table [dbo].[TbProduct]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbProduct]') AND type in (N'U'))
DROP TABLE [dbo].[TbProduct]
GO
/****** Object:  Table [dbo].[TbPoliciesAndPrivacy]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbPoliciesAndPrivacy]') AND type in (N'U'))
DROP TABLE [dbo].[TbPoliciesAndPrivacy]
GO
/****** Object:  Table [dbo].[TbPaymentMethod]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbPaymentMethod]') AND type in (N'U'))
DROP TABLE [dbo].[TbPaymentMethod]
GO
/****** Object:  Table [dbo].[TbOffer]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbOffer]') AND type in (N'U'))
DROP TABLE [dbo].[TbOffer]
GO
/****** Object:  Table [dbo].[TbNotification]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbNotification]') AND type in (N'U'))
DROP TABLE [dbo].[TbNotification]
GO
/****** Object:  Table [dbo].[TbMap]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbMap]') AND type in (N'U'))
DROP TABLE [dbo].[TbMap]
GO
/****** Object:  Table [dbo].[TbFavourites]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbFavourites]') AND type in (N'U'))
DROP TABLE [dbo].[TbFavourites]
GO
/****** Object:  Table [dbo].[TbEvaluationSupplierProduct]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbEvaluationSupplierProduct]') AND type in (N'U'))
DROP TABLE [dbo].[TbEvaluationSupplierProduct]
GO
/****** Object:  Table [dbo].[TbEvaluationProduct]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbEvaluationProduct]') AND type in (N'U'))
DROP TABLE [dbo].[TbEvaluationProduct]
GO
/****** Object:  Table [dbo].[TbEvaluationDelivery]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbEvaluationDelivery]') AND type in (N'U'))
DROP TABLE [dbo].[TbEvaluationDelivery]
GO
/****** Object:  Table [dbo].[TbDelivery]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbDelivery]') AND type in (N'U'))
DROP TABLE [dbo].[TbDelivery]
GO
/****** Object:  Table [dbo].[TbComplainsAndSuggestion]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbComplainsAndSuggestion]') AND type in (N'U'))
DROP TABLE [dbo].[TbComplainsAndSuggestion]
GO
/****** Object:  Table [dbo].[TbCityDeliveryFees]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbCityDeliveryFees]') AND type in (N'U'))
DROP TABLE [dbo].[TbCityDeliveryFees]
GO
/****** Object:  Table [dbo].[TbCity]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbCity]') AND type in (N'U'))
DROP TABLE [dbo].[TbCity]
GO
/****** Object:  Table [dbo].[TbCharge]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbCharge]') AND type in (N'U'))
DROP TABLE [dbo].[TbCharge]
GO
/****** Object:  Table [dbo].[TbAddress]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbAddress]') AND type in (N'U'))
DROP TABLE [dbo].[TbAddress]
GO
/****** Object:  Table [dbo].[TbAboutApp]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbAboutApp]') AND type in (N'U'))
DROP TABLE [dbo].[TbAboutApp]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserTokens]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoleClaims]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/5/2023 7:38:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/5/2023 7:38:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[OTP] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[FamilyName] [nvarchar](max) NULL,
	[CityName] [nvarchar](max) NULL,
	[CityId] [nvarchar](max) NULL,
	[ClinicName] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[Latitude] [nvarchar](max) NULL,
	[Longitute] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[IsAgree] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbAboutApp]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbAboutApp](
	[AboutAppId] [uniqueidentifier] NOT NULL,
	[AboutAppTitle] [nvarchar](200) NOT NULL,
	[AboutAppDescription] [nvarchar](200) NOT NULL,
	[AboutAppForWhom] [nvarchar](200) NOT NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbAboutApp] PRIMARY KEY CLUSTERED 
(
	[AboutAppId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbAddress]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbAddress](
	[AddressId] [uniqueidentifier] NOT NULL,
	[Id] [nvarchar](200) NULL,
	[Name] [nvarchar](200) NOT NULL,
	[AddressLatitude] [nvarchar](200) NOT NULL,
	[Addresslongitude] [nvarchar](200) NOT NULL,
	[AddressStreet] [nvarchar](200) NOT NULL,
	[AddressAreaId] [uniqueidentifier] NULL,
	[AddressArea] [nvarchar](200) NOT NULL,
	[AddressCityId] [uniqueidentifier] NULL,
	[AddressCity] [nvarchar](200) NOT NULL,
	[AddressCountry] [nvarchar](200) NOT NULL,
	[MainAddress] [nvarchar](200) NOT NULL,
	[PhoneNumber] [nvarchar](200) NOT NULL,
	[OTP] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbAddress] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbCharge]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbCharge](
	[ChargeId] [uniqueidentifier] NOT NULL,
	[Id] [nvarchar](200) NULL,
	[ChargeType] [nvarchar](200) NULL,
	[ChargeValue] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbCharge] PRIMARY KEY CLUSTERED 
(
	[ChargeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbCity]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbCity](
	[CityId] [uniqueidentifier] NOT NULL,
	[CityName] [nvarchar](200) NOT NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbCity] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbCityDeliveryFees]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbCityDeliveryFees](
	[CityDeliveryFeesId] [uniqueidentifier] NOT NULL,
	[CityId] [uniqueidentifier] NOT NULL,
	[CityName] [nvarchar](200) NULL,
	[DeliveryFees] [nvarchar](200) NOT NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbCityDeliveryFees] PRIMARY KEY CLUSTERED 
(
	[CityDeliveryFeesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbComplainsAndSuggestion]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbComplainsAndSuggestion](
	[ComplaintsAndSuggestionsId] [uniqueidentifier] NOT NULL,
	[Id] [nvarchar](200) NULL,
	[Name] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[ComplaintsAndSuggestionsText] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbComplainsAndSuggestion] PRIMARY KEY CLUSTERED 
(
	[ComplaintsAndSuggestionsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbDelivery]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbDelivery](
	[DeliveryManId] [uniqueidentifier] NOT NULL,
	[DeliveryManName] [nvarchar](200) NOT NULL,
	[DeliveryManEvaluationStarts] [nvarchar](200) NULL,
	[DeliveryManEvaluationNumber] [nvarchar](200) NULL,
	[DeliveryManCityId] [uniqueidentifier] NOT NULL,
	[DeliveryManCityName] [nvarchar](200) NULL,
	[DeliveryManAreaId] [uniqueidentifier] NULL,
	[DeliveryManAreaName] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbDelivery] PRIMARY KEY CLUSTERED 
(
	[DeliveryManId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbEvaluationDelivery]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbEvaluationDelivery](
	[DeliveryEvaluationId] [uniqueidentifier] NOT NULL,
	[EvaluaterId] [nvarchar](200) NULL,
	[DeliveryId] [uniqueidentifier] NULL,
	[DeliveryName] [nvarchar](200) NULL,
	[DeliveryEvaluationText] [nvarchar](200) NULL,
	[StartsNo] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbEvaluationDelivery] PRIMARY KEY CLUSTERED 
(
	[DeliveryEvaluationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbEvaluationProduct]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbEvaluationProduct](
	[ProductEvaluationId] [uniqueidentifier] NOT NULL,
	[EvaluaterId] [nvarchar](200) NULL,
	[ProductId] [uniqueidentifier] NULL,
	[ProductName] [nvarchar](200) NULL,
	[ProductEvaluationText] [nvarchar](200) NULL,
	[StartsNo] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbEvaluationProduct] PRIMARY KEY CLUSTERED 
(
	[ProductEvaluationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbEvaluationSupplierProduct]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbEvaluationSupplierProduct](
	[SupplierProductEvaluationId] [uniqueidentifier] NOT NULL,
	[EvaluaterId] [nvarchar](200) NULL,
	[ToBeEvaluatedId] [nvarchar](200) NULL,
	[SupplierProductEEvaluationText] [nvarchar](200) NULL,
	[StartsNo] [nvarchar](200) NULL,
	[ProductId] [uniqueidentifier] NULL,
	[ProductName] [nvarchar](200) NULL,
	[SupplierId] [uniqueidentifier] NULL,
	[SupplierName] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbEvaluationSupplierProduct] PRIMARY KEY CLUSTERED 
(
	[SupplierProductEvaluationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbFavourites]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbFavourites](
	[FavouritesId] [uniqueidentifier] NOT NULL,
	[Id] [nvarchar](200) NULL,
	[Name] [nvarchar](200) NULL,
	[ProductId] [uniqueidentifier] NULL,
	[ProductName] [nvarchar](200) NULL,
	[ProductImage] [nvarchar](200) NULL,
	[SupplierId] [uniqueidentifier] NULL,
	[SupplierName] [nvarchar](200) NULL,
	[ProductEvaluationStarts] [nvarchar](200) NULL,
	[ProductEvaluationNumber] [nvarchar](200) NULL,
	[ProductPrice] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
	[UserId] [nvarchar](max) NULL,
 CONSTRAINT [PK_TbFavourites] PRIMARY KEY CLUSTERED 
(
	[FavouritesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbMap]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbMap](
	[id] [int] NOT NULL,
	[customer_name] [nvarchar](50) NULL,
	[lat] [nvarchar](255) NULL,
	[lng] [nvarchar](255) NULL,
	[contract_typ] [nvarchar](50) NULL,
	[contract_number] [int] NULL,
	[icon] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TbMap] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbNotification]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbNotification](
	[NotificationId] [uniqueidentifier] NOT NULL,
	[SenderId] [nvarchar](200) NULL,
	[SenderName] [nvarchar](200) NULL,
	[ToWhomId] [nvarchar](200) NOT NULL,
	[ToWhomName] [nvarchar](200) NULL,
	[Text] [nvarchar](200) NOT NULL,
	[NotificationType] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbNotification] PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbOffer]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbOffer](
	[OfferId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[ProductName] [nvarchar](200) NULL,
	[ProductImage] [nvarchar](200) NULL,
	[SupplierId] [uniqueidentifier] NOT NULL,
	[SupplierName] [nvarchar](200) NULL,
	[PriceBeforeOffer] [nvarchar](200) NOT NULL,
	[PriceAfterOffer] [nvarchar](200) NOT NULL,
	[ProductCategoryId] [uniqueidentifier] NOT NULL,
	[ProductCategoryName] [nvarchar](200) NULL,
	[ProductEvaluationStarts] [nvarchar](200) NULL,
	[ProductEvaluationNumber] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbOffer] PRIMARY KEY CLUSTERED 
(
	[OfferId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbPaymentMethod]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbPaymentMethod](
	[PaymentMethodId] [uniqueidentifier] NOT NULL,
	[PaymentMethodName] [nvarchar](200) NULL,
	[PaymentMethodDescription] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbPaymentMethod] PRIMARY KEY CLUSTERED 
(
	[PaymentMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbPoliciesAndPrivacy]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbPoliciesAndPrivacy](
	[PoliciesAndPrivacyId] [uniqueidentifier] NOT NULL,
	[PoliciesAndPrivacyTitle] [nvarchar](200) NOT NULL,
	[PoliciesAndPrivacyDescription] [nvarchar](200) NOT NULL,
	[PoliciesAndPrivacyForWhom] [nvarchar](200) NOT NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NOT NULL,
 CONSTRAINT [PK_TbPoliciesAndPrivacy] PRIMARY KEY CLUSTERED 
(
	[PoliciesAndPrivacyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbProduct]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbProduct](
	[ProductId] [uniqueidentifier] NOT NULL,
	[ProductName] [nvarchar](200) NOT NULL,
	[ProductDescription] [nvarchar](200) NOT NULL,
	[ProductPrice] [nvarchar](200) NOT NULL,
	[ProductCategoryId] [uniqueidentifier] NOT NULL,
	[ProductCategoryName] [nvarchar](200) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[DiscountPercent] [nvarchar](200) NOT NULL,
	[ProductNewPrice] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
	[Quantity] [int] NOT NULL,
	[StoreId] [uniqueidentifier] NOT NULL,
	[StoreName] [nvarchar](200) NULL,
	[ProductImage] [nvarchar](200) NULL,
 CONSTRAINT [PK_TbProduct] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbProductCategory]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbProductCategory](
	[ProductCategoryId] [uniqueidentifier] NOT NULL,
	[ProductCategoryName] [nvarchar](200) NOT NULL,
	[ProductCategoryDescription] [nvarchar](200) NOT NULL,
	[ProductCategoryImage] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbPromocode]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbPromocode](
	[PromocodeId] [uniqueidentifier] NOT NULL,
	[PromocodeTitle] [nvarchar](200) NOT NULL,
	[PromocodeDiscountPercent] [nvarchar](200) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbPromocode] PRIMARY KEY CLUSTERED 
(
	[PromocodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbPurchaseSubscribtion]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbPurchaseSubscribtion](
	[PurchaserSubscriptionId] [uniqueidentifier] NOT NULL,
	[PurchaserId] [uniqueidentifier] NOT NULL,
	[PurchaserName] [nvarchar](200) NULL,
	[StartdDate] [datetime2](7) NOT NULL,
	[EnddDate] [datetime2](7) NOT NULL,
	[SubscriptionPackage] [nvarchar](200) NOT NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbPurchaseSubscribtion] PRIMARY KEY CLUSTERED 
(
	[PurchaserSubscriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbPurchasingCart]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbPurchasingCart](
	[PurchasingCartId] [uniqueidentifier] NOT NULL,
	[Id] [nvarchar](200) NULL,
	[Name] [nvarchar](200) NULL,
	[SupplierProductId] [uniqueidentifier] NULL,
	[ProductId] [uniqueidentifier] NULL,
	[ProductName] [nvarchar](200) NULL,
	[ProductImage] [nvarchar](200) NULL,
	[SupplierId] [uniqueidentifier] NULL,
	[SupplierName] [nvarchar](200) NULL,
	[ProductEvaluationStarts] [nvarchar](200) NULL,
	[ProductEvaluationNumber] [nvarchar](200) NULL,
	[ProductPrice] [nvarchar](200) NULL,
	[ProductMaximumSale] [nvarchar](200) NULL,
	[Promocode] [nvarchar](200) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[DiscountPercent] [nvarchar](200) NULL,
	[ProductPriceAfterDiscount] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbPurchasingCart] PRIMARY KEY CLUSTERED 
(
	[PurchasingCartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbRealTimeNotifcations]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbRealTimeNotifcations](
	[RealTimeNotifcationId] [uniqueidentifier] NOT NULL,
	[NotificationType] [nvarchar](200) NOT NULL,
	[NotificationSyntax] [nvarchar](200) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[UpdatedBy] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_TbRealTimeNotifcations] PRIMARY KEY CLUSTERED 
(
	[RealTimeNotifcationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbSalesInvoice]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbSalesInvoice](
	[SalesInvoiceId] [uniqueidentifier] NOT NULL,
	[DelivryDate] [nvarchar](200) NULL,
	[Id] [nvarchar](200) NULL,
	[Name] [nvarchar](200) NULL,
	[DeliveryManId] [uniqueidentifier] NULL,
	[DeliveryManName] [nvarchar](200) NULL,
	[SupplierId] [uniqueidentifier] NULL,
	[SupplierName] [nvarchar](200) NULL,
	[PaymnetMethodId] [uniqueidentifier] NULL,
	[PaymnetMethodName] [nvarchar](200) NULL,
	[TotalInvoiceValue] [nvarchar](200) NULL,
	[DeliveryAddress] [nvarchar](200) NULL,
	[DeliveryStatus] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
	[Promocode] [nvarchar](max) NULL,
	[DeliveryValue] [decimal](18, 2) NOT NULL,
	[DiscValue] [decimal](18, 2) NOT NULL,
	[TaxValue] [decimal](18, 2) NOT NULL,
	[TotalAfterTax] [decimal](18, 2) NOT NULL,
	[TotalInvoiceAfter] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_TbSalesInvoice] PRIMARY KEY CLUSTERED 
(
	[SalesInvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbSalesInvoiceProduct]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbSalesInvoiceProduct](
	[SalesInvoiceProductId] [uniqueidentifier] NOT NULL,
	[SalesInvoiceId] [uniqueidentifier] NULL,
	[DelivryDate] [nvarchar](200) NULL,
	[Id] [nvarchar](200) NULL,
	[Name] [nvarchar](200) NULL,
	[DeliveryManId] [uniqueidentifier] NULL,
	[DeliveryManName] [nvarchar](200) NULL,
	[SupplierId] [uniqueidentifier] NULL,
	[SupplierName] [nvarchar](200) NULL,
	[ProductId] [uniqueidentifier] NULL,
	[ProductName] [nvarchar](200) NULL,
	[ProductImage] [nvarchar](200) NULL,
	[ProductPrice] [nvarchar](200) NULL,
	[Promocode] [nvarchar](200) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[DiscountPercent] [nvarchar](200) NULL,
	[ProductPriceAfterDiscount] [nvarchar](200) NULL,
	[ProductQty] [nvarchar](200) NULL,
	[ProductCategoryId] [uniqueidentifier] NULL,
	[ProductCategoryName] [nvarchar](200) NULL,
	[PaymnetMethodId] [uniqueidentifier] NULL,
	[PaymnetMethodName] [nvarchar](200) NULL,
	[TotalProductValue] [nvarchar](200) NULL,
	[DeliveryAddress] [nvarchar](200) NULL,
	[DeliveryStatus] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbSalesInvoiceProduct] PRIMARY KEY CLUSTERED 
(
	[SalesInvoiceProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbSetting]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbSetting](
	[SettingId] [uniqueidentifier] NOT NULL,
	[ValueAddedTax] [nvarchar](200) NOT NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbSetting] PRIMARY KEY CLUSTERED 
(
	[SettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbSlider]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbSlider](
	[SliderId] [uniqueidentifier] NOT NULL,
	[SliderTitle] [nvarchar](200) NOT NULL,
	[SliderText] [nvarchar](200) NOT NULL,
	[SliderImage] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
	[OrderNo] [int] NOT NULL,
	[SliderLocation] [nvarchar](200) NOT NULL,
	[Type] [bit] NOT NULL,
 CONSTRAINT [PK_TbSlider] PRIMARY KEY CLUSTERED 
(
	[SliderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbStore]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbStore](
	[StoreId] [uniqueidentifier] NOT NULL,
	[StoreName] [nvarchar](200) NOT NULL,
	[StoreDescription] [nvarchar](200) NOT NULL,
	[StoreImage] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
	[SupplierId] [uniqueidentifier] NOT NULL,
	[SupplierName] [nvarchar](200) NULL,
 CONSTRAINT [PK_TbStore] PRIMARY KEY CLUSTERED 
(
	[StoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbSubscriptionRequest]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbSubscriptionRequest](
	[RequestId] [uniqueidentifier] NOT NULL,
	[PhoneNumber] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[Email] [nvarchar](max) NULL,
	[SubscriberName] [nvarchar](200) NULL,
	[CityName] [nvarchar](200) NULL,
	[ClinicName] [nvarchar](200) NULL,
 CONSTRAINT [PK_TbSubscriptionRequest] PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbSupplier]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbSupplier](
	[SupplierId] [uniqueidentifier] NOT NULL,
	[SupplierName] [nvarchar](200) NOT NULL,
	[SupplierCategoryId] [uniqueidentifier] NOT NULL,
	[SupplierEvaluationStars] [nvarchar](200) NULL,
	[SupplierEvaluationNumber] [nvarchar](200) NULL,
	[SupplierImage] [nvarchar](200) NULL,
	[CustomersNumber] [nvarchar](200) NULL,
	[SupplierCityId] [uniqueidentifier] NOT NULL,
	[SupplierCityName] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbSupplier] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbSupplierCategory]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbSupplierCategory](
	[SupplierCategoryId] [uniqueidentifier] NOT NULL,
	[SupplierCategoryName] [nvarchar](max) NOT NULL,
	[SupplierCategoryDescription] [nvarchar](200) NOT NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbSupplierCategory] PRIMARY KEY CLUSTERED 
(
	[SupplierCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbSupplierProduct]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbSupplierProduct](
	[SupplierProductId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[ProductName] [nvarchar](200) NULL,
	[SupplierId] [uniqueidentifier] NOT NULL,
	[SupplierName] [nvarchar](200) NULL,
	[ProductImage] [nvarchar](200) NULL,
	[ProductEvaluationStars] [nvarchar](200) NULL,
	[ProductEvaluationNumber] [nvarchar](200) NULL,
	[ProductPrice] [nvarchar](200) NOT NULL,
	[SupplierCityId] [uniqueidentifier] NOT NULL,
	[SupplierCityName] [nvarchar](200) NULL,
	[ProductCategoryId] [uniqueidentifier] NOT NULL,
	[ProductCategoryName] [nvarchar](200) NULL,
	[ProductMaximumSaleQty] [nvarchar](200) NOT NULL,
	[FreeShipping] [nvarchar](200) NOT NULL,
	[ProductDescription] [nvarchar](200) NOT NULL,
	[CreatedBy] [nchar](10) NULL,
	[UpdatedBy] [nchar](10) NULL,
	[CreatedDate] [nchar](10) NULL,
	[UpdatedDate] [nchar](10) NULL,
	[Notes] [nchar](10) NULL,
	[CurrentState] [int] NOT NULL,
 CONSTRAINT [PK_TbSupplierProduct] PRIMARY KEY CLUSTERED 
(
	[SupplierProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbSupplierSubscription]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbSupplierSubscription](
	[SupplierSubscriptionId] [uniqueidentifier] NOT NULL,
	[SupplierId] [uniqueidentifier] NOT NULL,
	[SupplierName] [nvarchar](200) NULL,
	[StartdDate] [datetime2](7) NOT NULL,
	[EnddDate] [datetime2](7) NOT NULL,
	[SubscriptionPackage] [nvarchar](200) NOT NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbSupplierSubscription] PRIMARY KEY CLUSTERED 
(
	[SupplierSubscriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbTermAndCondition]    Script Date: 5/5/2023 7:38:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbTermAndCondition](
	[TermsAndConditionsId] [uniqueidentifier] NOT NULL,
	[TermsAndConditionsTitle] [nvarchar](200) NOT NULL,
	[TermsAndConditionsDescription] [nvarchar](200) NOT NULL,
	[TermsAndConditionsForWhom] [nvarchar](200) NOT NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[CurrentState] [int] NULL,
 CONSTRAINT [PK_TbTermAndCondition] PRIMARY KEY CLUSTERED 
(
	[TermsAndConditionsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230117050941_identity', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230118215324_intUpdate', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230130235113_addLatitude', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230220181652_newTables1', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230301211857_notification', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230301213405_notificatio', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230312213052_MyFirstMigration', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230321172329_IsAgreeMigration', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230321193658_IsActiveMigration', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230324203041_MyFirsgtMigration', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230324204204_MyFfirsgtMigration', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230329201823_MyFirst', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230329204620_MyFi', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230329211202_MyF', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230331000415_MyFirstMigratio', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230403095858_addstore', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230403105945_addsto', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230403111143_adds', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230405040204_promcode', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230406112245_MyFirst', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230406191800_MyFir', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230409030349_addEvaluation', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230504013851_MyFirstMigrat', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230504014035_MyFirstMigra', N'5.0.17')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'017e32b7-9257-4e2c-8fa1-eae3dcc219ef', N'اضافة او تعديل الشحن', N'اضافة او تعديل الشحن', N'62fdcda3-5dc7-4a6a-b3fd-5435b6c8ca0a')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'030a50da-081c-4dce-829b-d1852199b8f4', N'حذف المدن', N'حذف المدن', N'5dd50dce-28b4-40c3-97cb-ac0fed6a69bb')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'03d5a61e-41a9-41fa-abd2-f19ee4539b18', N'حذف الشحن', N'حذف الشحن', N'566e6b9b-4481-47d6-83cf-4a0e5a2236a2')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'08e6238c-ae6f-4141-8f98-a113c2bbfa8f', N'حذف منتجات التجار', N'حذف منتجات التجار', N'17f6a7dd-ccde-48a9-9ef2-7af72760201b')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0ee813df-5c52-4b33-a256-ce549067ec40', N'اشتراكات التجار', N'اشتراكات التجار', N'540c23a0-ff16-4a31-8392-e0320f8202e1')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0ef5d521-04b7-4453-8520-3731c3f143c1', N'اضافة او تعديل تقييم المنتج بالتاجر', N'اضافة او تعديل تقييم المنتج بالتاجر', N'752be982-27b7-4601-9962-6c9d12e09588')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'119efb57-e646-4256-8204-8aa4da1506e9', N'حذف طرق الدفع', N'حذف طرق الدفع', N'6eaec8dd-15b2-4d8a-8d39-eee259977251')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1260683a-b761-45a1-9cbd-258cdd965d02', N'اضافة او تعديل اقسام المنتجات', N'اضافة او تعديل اقسام المنتجات', N'3a08eabe-afdb-4f63-ae29-5d83e9e57c82')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'19a41e5e-adce-4333-ab58-11214244c1af', N'حذف اقسام المنتجات', N'حذف اقسام المنتجات', N'da77bb6f-2c99-40f9-ac4d-fa62e5357677')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'19bf1da3-aa44-4678-baaa-1f4595a88df5', N'الاشعارات', N'الاشعارات', N'bde2ba25-85af-4dc4-8940-876012fd8359')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'22c6fa03-9808-45f5-9a94-8b245ae34f3a', N'حذف رجال التوصيل', N'حذف رجال التوصيل', N'436b58a5-6f3f-4fbf-8b4d-5487d1230d40')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'241d95b7-e861-4921-848e-823c5b97ad9b', N'اضافة او تعديل المخزن', N'اضافة او تعديل المخزن', N'4036a9b5-e4a8-49c6-b051-0f5a909205a8')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'24c8e26d-50bf-492d-8214-1bc94cd17786', N'حذف البروموكوود', N'حذف البروموكوود', N'88cb3d53-1bb0-407e-aae7-0468cdc60d6b')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2cdd586e-1781-4a68-a8c8-3f207b1137e5', N'تقييم رجال التوصيل', N'تقييم رجال التوصيل', N'3dfd7692-6e1c-4898-b889-6a92846a767f')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2f500a92-8845-499d-8705-25530e7a54c0', N'اضافة او تعديل المفضلات', N'اضافة او تعديل المفضلات', N'48a03dc1-53f7-4e9d-b379-359213cd9211')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3625bc3b-a2eb-4bec-98de-07b5bf339c6e', N'تقييم المنتج بالتاجر', N'تقييم المنتج بالتاجر', N'f0edf5c2-fb4a-4c5f-bee4-03751ea0a931')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'387c7311-f891-4377-aa42-7b538c792ec8', N'طرق الدفع', N'طرق الدفع', N'4b449f18-eb65-4514-bdf9-598f25f0a314')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'390d4eb9-ec62-4a3d-9d3f-c362dedf7cf5', N'سلة المشتريات', N'سلة المشتريات', N'57d9e5c9-cb5d-4dfd-9067-d140d3833905')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3ada0ceb-f165-4dfc-86a8-185d7f39c285', N'اضافة او تعديل الاعدادات', N'اضافة او تعديل الاعدادات', N'1835bc68-9330-4255-8212-4539faccb073')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3fc37974-ace1-488a-b6b1-35a411a90439', N'User', N'USER', N'dc0a15a0-0da4-49e2-ae8b-7f07ef190612')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'43c07425-89ba-49bb-887e-b17044da8e55', N'اضافة او تعديل تفاصيل فاتورة البيع', N'اضافة او تعديل تفاصيل فاتورة البيع', N'481db14a-00b0-487a-b67f-c9440d5982ae')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'44abb751-09b0-49af-8376-38f2be4444a7', N'اضافة او تعديل المدن', N'اضافة او تعديل المدن', N'3bdcb0a5-45ec-4941-a23d-7b5f23dc6d30')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'4a22adc2-0cdd-4798-8f0f-404db6bff1eb', N'اضافة او تعديل  اقسام التجار', N'اضافة او تعديل  اقسام التجار', N'09d7d6af-4dcf-4c30-8fff-34a9548c286d')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'4edae32d-5948-4f08-9956-d45136ceebe6', N'اضافة او تعديل منتجات التجار', N'اضافة او تعديل منتجات التجار', N'47554e2b-bb2a-499d-b878-e29379af6e32')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'51384e61-49cd-45b7-93aa-c7a18eae50fb', N'حذف السياسة و الخصوصية', N'حذف السياسة و الخصوصية', N'1f05bd2d-a66e-4b47-ab13-80776ee42d35')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'545f74a1-84c4-4c94-9ff7-10b0199c5f81', N'حذف  اقسام التجار', N'حذف  اقسام التجار', N'd582aa69-eb6c-4d9b-8276-c623d2aaac1b')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'549fd682-d1c8-4e52-861b-a2d3fcd98b1c', N'المنتجات', N'المنتجات', N'30471e57-5489-4cc2-b61d-81645083a1aa')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'54de3f09-1620-46d5-bf0c-848a1c947224', N'اضافة او تعديل فاتورة البيع', N'اضافة او تعديل فاتورة البيع', N'6f2f2457-6a1c-4af2-b71e-1c20e9bc108a')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'567bb659-685d-47a0-8ebe-22019e0ae228', N'اضافة او تعديل طرق الدفع', N'اضافة او تعديل طرق الدفع', N'6be93a69-5baf-45ae-83f2-633fabf5be09')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'56b3dffe-97f2-4c0f-81f9-930367d478e4', N'حذف فاتورة البيع', N'حذف فاتورة البيع', N'e7673cec-d66f-4530-9064-43ae2420e13c')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'58724529-d8bc-4fe4-adec-ec613619c9c4', N'اقسام المنتجات', N'اقسام المنتجات', N'c655a3a0-7a51-4aa1-881c-76fe27248a34')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'587d82a2-eb8a-49fe-aa6f-f15f24f628db', N'العروض', N'العروض', N'12d474bb-97e3-4a7f-ac61-4058e144c315')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6068c125-8358-4365-8bfe-5473fa733bd3', N'اضافة او تعديل العروض', N'اضافة او تعديل العروض', N'dd016c87-bd80-486e-9c74-b47651f1b328')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'633d2a49-03b9-49f5-a5a2-b0667e953d11', N'الشروط والاحكام', N'الشروط والاحكام', N'3c8f1f17-d90d-4580-b80e-08b2a0d9e8ee')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'652c1b0d-363f-416a-b1f6-5682917591aa', N'اضافة او تعديل السليدر', N'اضافة او تعديل السليدر', N'e07bcb93-af36-4be7-a322-c0f9b386d2be')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'675364e7-f442-4989-9b0b-c91648c9fd23', N'السياسة و الخصوصية', N'السياسة و الخصوصية', N'294d7896-f8c5-4731-8374-52c9148ca367')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'67ba4427-93f2-498c-a11b-8c222cfc3487', N'الشحن', N'الشحن', N'e713b536-414d-485f-a8b5-7d00c646af17')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'69c073bb-aecb-4129-8531-979a0a4e9b1c', N'البروموكوود', N'البروموكوود', N'70fcee9c-4150-4952-abfd-4be54b93c410')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6c484e7f-4008-4a8e-90ce-187a649f29e8', N'حذف تقييم رجال التوصيل', N'حذف تقييم رجال التوصيل', N'9728ab72-31e0-4308-a450-f878d1933fb3')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'707796a9-c1c3-4de7-bc22-49d99ae6201c', N'الاعدادات', N'الاعدادات', N'0b3880e8-4d37-4a3b-b109-4751b1e29788')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'713ae2ee-1cbc-41e2-a968-8fa963c477e2', N'حذف تفاصيل فاتورة البيع', N'حذف تفاصيل فاتورة البيع', N'cd5e8790-f164-4be6-aa5d-4305b05c8083')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7302b433-a46e-4aaf-9b42-909bd67bb7fb', N'حذف عن التطبيق', N'حذف عن التطبيق', N'bcca712c-99ba-4c38-9c3b-1ade0cc8caa9')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'790b2d3f-2f09-4c72-8d65-669a7ac3a37a', N'اضافة او تعديل البروموكوود', N'اضافة او تعديل البروموكوود', N'84aa3b0d-165c-44e3-b151-0b29a97694cc')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7a961765-b6ce-400c-aee4-ece8a135e41a', N'حذف السليدر', N'حذف السليدر', N'a724f32b-c942-44bf-a269-215c2c7bd54d')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7cb229d6-4038-4c6a-a1f5-a1143222b9d7', N'المخازن', N'المخازن', N'990cea27-5dba-4169-8ddc-90dc52d43b93')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7cd1a0ed-5a56-4ad5-bd56-3c719b615053', N'حذف المخزن', N'حذف المخزن', N'2f16cd01-84c1-436f-9d40-24638c5b7993')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7d3bbe24-7bd2-453d-9fbb-e80b1e74c328', N'حذف المفضلات', N'حذف المفضلات', N'34d444b6-21d6-443c-b792-dbe226644842')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7e13dff2-52a8-4d1b-bc16-a93e62e07590', N'حذف قيمة الشحن للمدن', N'حذف قيمة الشحن للمدن', N'fef28180-6bd4-4a12-af2f-e41dc4e4c74d')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7e959820-b03a-4e09-8e32-41dcc12fd8c8', N'اضافة او تعديل عن التطبيق', N'اضافة او تعديل عن التطبيق', N'c72a4255-9651-46ae-a360-2ad934ccb58e')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'83644459-11e1-4237-91c5-23ed5194c624', N'قيمة الشحن للمدن', N'قيمة الشحن للمدن', N'feeaa75b-f123-4f39-88c4-b0afcdb09f81')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'873c27c4-e42a-454c-87cc-52b0372300b0', N'منتجات التجار', N'منتجات التجار', N'a70866eb-9063-4fa1-ad03-ee6d27c0542b')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8a8f6bcf-f3af-4f1c-a1a3-2ed8793279d4', N'المفضلات', N'المفضلات', N'3825ccd6-79ce-4302-aa03-3a19fc066728')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'90132c3c-9386-4cd1-8b3b-de81b1e7e632', N'المدن', N'المدن', N'085e5e5d-8229-4ee1-a8a8-a9c44f651a0a')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'91d5df12-b376-48f1-a28f-834e3014bbe2', N'حذف الاشعارات', N'حذف الاشعارات', N'7a0c8b36-2942-40e1-9166-979dda83a649')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'94cdbd34-df04-4971-aec7-adece6e2e402', N'تفاصيل فاتورة البيع', N'تفاصيل فاتورة البيع', N'f8d369a1-bd7f-417c-911c-6643aa3eba76')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'9dfdf2e7-f0bd-4782-963b-01410b82a9b1', N'اقسام التجار', N'اقسام التجار', N'1651851f-eecd-4982-a87f-ccfde6370fd4')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a0937972-5de6-4696-bd4a-e613180c40d7', N'حذف الاعدادات', N'حذف الاعدادات', N'e8be2ce5-3e66-42bf-8865-f32f77ff5a50')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a5675ad1-2fe6-40dd-90b7-f801e00ec531', N'اضافة او تعديل الشروط والاحكام', N'اضافة او تعديل الشروط والاحكام', N'138d79ad-2b36-47d9-a0de-7ac1d080710e')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'aa85af18-1dc4-44b6-81b3-7d89ecfe50d9', N'التجار', N'التجار', N'43f86b86-5d07-4d48-8f75-81191704bdf7')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'acd77d21-6307-4efb-a1f2-ad3eeeed7cd5', N'حذف   اشتراكات التجار', N'حذف   اشتراكات التجار', N'f1fc0f8a-8080-447e-b3c7-0027d14e35c1')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b195bc9f-5f23-4485-9012-98b8b1ed3a1c', N'رجال التوصيل', N'رجال التوصيل', N'1dc665c0-8ce2-48a4-8349-aecc846b266e')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b4cedd6a-a8a3-48cf-9a04-9751d4f5d59f', N'حذف الشكاوي و الاقتراحات', N'حذف الشكاوي و الاقتراحات', N'46257571-82e1-43b5-82f6-e7d88992fade')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b70d26e1-024a-4372-8c98-4ffb8e7fbf3d', N'حذف المنتجات', N'حذف المنتجات', N'e9f2ca93-b741-4a26-b6c7-fe4549d456d4')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b8826f69-a881-49fd-a25f-39e53aafe4d4', N'الشكاوي و الاقتراحات', N'الشكاوي و الاقتراحات', N'12372f8b-cc82-4eca-b107-d260c6ae6191')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'bcbea8b5-d82f-4547-b385-6801249b694d', N'فاتورة البيع', N'فاتورة البيع', N'e3fa4c5f-b248-4b6b-aab1-25a43cbc9fe6')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c1f0f08f-cf46-4808-b1dc-7900a947a077', N'اضافة او تعديل الاشعارات', N'اضافة او تعديل الاشعارات', N'8cfbc690-99e2-44fb-9e2c-7d655955fb18')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c3218026-ddc0-4a0c-8634-212c5aa11e58', N'اضافة او تعديل قيمة الشحن للمدن', N'اضافة او تعديل قيمة الشحن للمدن', N'78911f58-4ea4-43a5-8bed-14ef5259a9a6')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c62c1d0b-3332-4e6e-be9d-f03f741e2861', N'Admin', N'ADMIN', N'386cc87a-7398-486e-85ac-938a03d98a9f')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'cbf883c3-21ac-40a4-9655-3863f390a058', N'حذف الشروط والاحكام', N'حذف الشروط والاحكام', N'51e3063d-17b6-4dd2-801c-009a467388f6')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'cf2602af-229c-4ed2-8a88-0fd8417db258', N'السليدر', N'السليدر', N'ff05239c-e863-4f34-bfa4-d253cdb25fee')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'd3e49283-f84a-45e5-9a6a-3d07ce4c87b5', N'حذف سلة المشتريات', N'حذف سلة المشتريات', N'a169be83-26da-41f4-b298-a8685e7c99b3')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'd96247e1-67c7-4585-9632-16d964428c41', N' اضافة او تعديل   اشتراكات التجار', N' اضافة او تعديل   اشتراكات التجار', N'8f7325ab-fb83-48b4-8652-a85463090194')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'dc000004-1f31-46b0-8ab7-1f46ea3330b3', N'حذف التجار', N'حذف التجار', N'03d7721c-0ad0-4784-b500-4bda307981e7')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'dc717de5-8594-4dc6-b1be-63b5dcc4cd51', N'حذف تقييم المنتج بالتاجر', N'حذف تقييم المنتج بالتاجر', N'e2a58502-3096-4600-a330-bd182badccae')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'dfca8370-bc0b-4735-8440-33977087c228', N'اضافة او تعديل المنتجات', N'اضافة او تعديل المنتجات', N'f884335e-3537-42a2-92b7-1776b5bdd7e6')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e09dd389-969c-4220-ba8d-2c6e9fafeab6', N'اضافة او تعديل التجار', N'اضافة او تعديل التجار', N'4b03c34c-8b3c-4b95-bcf0-1c496353a430')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e2110399-870f-479c-a1ca-772dc148e31e', N'اضافة او تعديل الشكاوي و الاقتراحات', N'اضافة او تعديل الشكاوي و الاقتراحات', N'dcd19cb0-a85e-497b-aa13-fa8eae37fa94')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e2f99285-9558-44cd-96e7-b861a185eb1d', N'حذف العروض', N'حذف العروض', N'684a012c-277a-4454-96e3-270e63f02289')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e34592ee-6472-4857-b89e-aaeddf3b09e7', N'اضافة او تعديل السياسة و الخصوصية', N'اضافة او تعديل السياسة و الخصوصية', N'c01c0813-601b-40c1-ae3d-ae035f800a80')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e6f4a222-8e5a-4897-a21c-0fbd5a953e38', N'اضافة او تعديل تقييم رجال التوصيل', N'اضافة او تعديل تقييم رجال التوصيل', N'90b35338-31e9-4f81-82ba-fb1ea3d46a4e')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e8cda9da-ec18-4e88-9b14-016981c1fa88', N'عن التطبيق', N'عن التطبيق', N'1d087900-5423-489c-af77-395a23c4342c')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ef030973-5399-4bb0-a2d4-ac040034aa30', N'اضافة او تعديل سلة المشتريات', N'اضافة او تعديل سلة المشتريات', N'c1f87bd0-8f84-4c5f-9668-3962d7d34d6e')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f25b8557-1b33-473f-a306-55e56b913aba', N'اضافة او تعديل رجال التوصيل', N'اضافة او تعديل رجال التوصيل', N'9a282945-dc12-4d35-af78-e82010e17d98')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'fec242ad-9fb7-46cb-94df-33a1ad1df3cb', N'الصفحة الرئيسية', N'الصفحة الرئيسية', N'a6346b7b-ca34-441a-a1b5-ae4cd11ce616')
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3, N'0dac0715-6fc9-4efd-b51f-9622e8bf10cd', N'Name', N'ahmedmostafa706@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5, N'a2c8e923-8acc-45f6-b29a-8f51b2324703', N'Name', N'ayma@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1022, N'cc5628a1-0218-4cb1-bdd4-c26dafd14d3e', N'Name', N'wedowell222@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1024, N'7f8d56ad-7a99-438e-96c3-c09efe1f9a22', N'Name', N'wedowell2021@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1025, N'475433bc-21e6-4779-9b43-7b71d9ba5c89', N'Name', N'wedowell22@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1039, N'744dc216-1518-4eb9-b733-36d19398155a', N'Name', N'wedowell20@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1040, N'49b3253e-223f-4ad8-b03f-ef6ee7b6f602', N'Name', N'wedowell022@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1041, N'7dedd109-64ff-4469-a54f-2360a3b88cbd', N'Name', N'wedowell202@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1042, N'f1aec3f6-f02e-465f-9837-6886fe5bd5fa', N'Name', N'EngDev2023@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1043, N'9f73e539-4af6-4a9b-b545-83b1b6b5c913', N'Name', N'EngDev2023@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1054, N'354e24d1-79b9-4912-828c-7234232e3fbb', N'Name', N'EngDev20250@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1065, N'500d75de-0711-443d-ae22-5cf66a4515fa', N'Name', N'WaleedRasheed2022@gmail.com')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Facebook', N'5424427881013913', N'Facebook', N'b95330d7-36fd-40ed-b8d3-2d1e601b7dcc')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'100105998700458145885', N'Google', N'0dac0715-6fc9-4efd-b51f-9622e8bf10cd')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0dac0715-6fc9-4efd-b51f-9622e8bf10cd', N'c62c1d0b-3332-4e6e-be9d-f03f741e2861')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'354e24d1-79b9-4912-828c-7234232e3fbb', N'c62c1d0b-3332-4e6e-be9d-f03f741e2861')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'475433bc-21e6-4779-9b43-7b71d9ba5c89', N'c62c1d0b-3332-4e6e-be9d-f03f741e2861')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'49b3253e-223f-4ad8-b03f-ef6ee7b6f602', N'c62c1d0b-3332-4e6e-be9d-f03f741e2861')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'500d75de-0711-443d-ae22-5cf66a4515fa', N'c62c1d0b-3332-4e6e-be9d-f03f741e2861')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'744dc216-1518-4eb9-b733-36d19398155a', N'c62c1d0b-3332-4e6e-be9d-f03f741e2861')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7dedd109-64ff-4469-a54f-2360a3b88cbd', N'c62c1d0b-3332-4e6e-be9d-f03f741e2861')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7f8d56ad-7a99-438e-96c3-c09efe1f9a22', N'c62c1d0b-3332-4e6e-be9d-f03f741e2861')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'839400cb-94ed-4580-a05c-9ad717a5c7c5', N'c62c1d0b-3332-4e6e-be9d-f03f741e2861')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9f73e539-4af6-4a9b-b545-83b1b6b5c913', N'c62c1d0b-3332-4e6e-be9d-f03f741e2861')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a2c8e923-8acc-45f6-b29a-8f51b2324703', N'3fc37974-ace1-488a-b6b1-35a411a90439')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a2c8e923-8acc-45f6-b29a-8f51b2324703', N'549fd682-d1c8-4e52-861b-a2d3fcd98b1c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a2c8e923-8acc-45f6-b29a-8f51b2324703', N'dfca8370-bc0b-4735-8440-33977087c228')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a2c8e923-8acc-45f6-b29a-8f51b2324703', N'fec242ad-9fb7-46cb-94df-33a1ad1df3cb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ae5a2de3-a73a-460c-9e34-ad9d30a4b656', N'3fc37974-ace1-488a-b6b1-35a411a90439')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b4eca4ae-abf1-4e67-bac3-c1760e9746f1', N'c62c1d0b-3332-4e6e-be9d-f03f741e2861')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b95330d7-36fd-40ed-b8d3-2d1e601b7dcc', N'fec242ad-9fb7-46cb-94df-33a1ad1df3cb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c42b1b9f-1cac-4672-8251-06ceec107bf3', N'c62c1d0b-3332-4e6e-be9d-f03f741e2861')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cc5628a1-0218-4cb1-bdd4-c26dafd14d3e', N'3fc37974-ace1-488a-b6b1-35a411a90439')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd55d1966-694a-4d9f-b283-cefa175f6549', N'3fc37974-ace1-488a-b6b1-35a411a90439')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f1aec3f6-f02e-465f-9837-6886fe5bd5fa', N'c62c1d0b-3332-4e6e-be9d-f03f741e2861')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f8f37d3a-f27a-4e55-af33-a77d5f8b9a6c', N'3fc37974-ace1-488a-b6b1-35a411a90439')
GO
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'0dac0715-6fc9-4efd-b51f-9622e8bf10cd', N'8323', NULL, N'Ahmed Mostafa', NULL, NULL, NULL, NULL, N'Supplier', NULL, NULL, NULL, N'ahmedmostafa706@gmail.com', N'AHMEDMOSTAFA706@GMAIL.COM', N'ahmedmostafa706@gmail.com', N'AHMEDMOSTAFA706@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEJ1yaElI/E3Nan1JEeiYkLrUIsWqBUHClZRHtMInTtV6oYc4dHkE5MxnClRd2OCgzA==', N'DZ6CUKIXYXG7GK73QSO2EOXS4XO2L3JG', N'780e4a33-d513-4a99-8606-c3b60c5a0680', NULL, 0, 0, CAST(N'2023-03-13T18:35:51.3071997+00:00' AS DateTimeOffset), 1, 4, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'11ffd692-fe42-4f04-8439-522fbee2d56c', N'0473', NULL, N'waleed230', N'waleed230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'waleed230', N'WALEED230', N'wedowell2052@gmail.com', N'WEDOWELL2052@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAED0Eb8dIAW+JO0X9NohHhyACcvt66TyIiZelOmLVlB6tAu3s/N88JANoZ5pdKos+Ww==', N'HC5JDLDJLDOPML56Q6MCDGU25SGIZEJ7', N'1e2d4430-e7df-473c-a171-4c34dc7ecd80', N'01028440473', 0, 0, NULL, 1, 0, 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'19093a5e-a728-42e5-9c08-3229f6718dc7', N'7993', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Waleed2030', N'WALEED2030', N'DataIntry@gmail.com', N'DATAINTRY@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIG/Q1ntaUzz8RYqmMpdPLLNi1s4TeTJVT/CRAU4/MualHon5SPMXBnY+HIf7PFIqg==', N'LIZSEEICXX7YDZST3UFI3BP4D6EZV7WA', N'246ae879-8b81-4608-8fe8-dc790d2165ec', N'01124937993', 0, 0, NULL, 1, 0, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'1fd9da0d-e144-448a-a1e0-8a27527f28c7', N'0303', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ahmedjk', N'AHMEDJK', N'aa@gmail.com', N'AA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEISNwNEV3t6rP/8gKh5Yu2Fo0lor8EJ+qiQ7OQLcM+j5qDwVIOtSpbXeADs0ataLBA==', N'5RE5IN6BQRTVL77OCEEIPO3BURG5K753', N'dbdb8893-e286-43c8-9868-d97afc1d101e', N'01010300303', 0, 0, NULL, 1, 0, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'303f9351-4148-431b-af5b-924c37e7f8f0', N'6789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'a1sa2s', N'A1SA2S', N'aaw@sjs.com', N'AAW@SJS.COM', 0, N'AQAAAAEAACcQAAAAEMBwtyKfyTFghROfzE7UBaYQ6QIx34/G3PwDf0Ww2VL7TJod9xcKDdPo5WGMqisZ8Q==', N'NPJLIWMBMMP2RB43S777YG6XRBIQTHNH', N'0e085314-22b5-42a7-a806-958799038de2', N'123456789', 0, 0, NULL, 1, 0, 0, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'354e24d1-79b9-4912-828c-7234232e3fbb', NULL, NULL, N'EngDev20250', NULL, NULL, NULL, NULL, N'مدير مشتريات', NULL, NULL, NULL, N'EngDev20250@gmail.com', N'ENGDEV20250@GMAIL.COM', N'EngDev20250@gmail.com', N'ENGDEV20250@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEFt1A2uQ6TQIPSSt7KcjK9NLu+/R7e07MFZ5vR8cVRdsJObrek9cXakE4xPgnupJCA==', N'XE5IUJJ2ZA6LZZYT3VOJ2XBIBKC7KWWS', N'a6f9b74d-1193-45e2-96d0-32a508a01e12', NULL, 0, 0, NULL, 1, 0, 0, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'3b6cc6f9-015c-43c4-9aeb-102002996503', N'1435', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'hatem', N'HATEM', N'h@gmail.com', N'H@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGmGrS+l1+JIva3L+LmAUHTns6FFl3TXhe7FmLH8RmJWELkmdrn6hTgpVg9WnSBoTg==', N'CKUHN3ESAXMPFZAGI2OJW6ARIKJ3GBEQ', N'95297f18-4bfe-44da-9552-797bf1ffbcbb', N'0591351435', 0, 0, NULL, 1, 0, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'3f416b23-d648-41ed-8935-4d34026641de', N'8998', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Wale20test', N'WALE20TEST', N'Data202@gmail.com', N'DATA202@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMYvaB4MR1xAbeJisDimATrm4Imhc5KFpLaf0Ovo4cHtV26eUelycZTvo+mLkIQgaw==', N'LY5W46OJBI3UAYKQYRFVVSFGBOZITVPV', N'bf163e3c-d6cf-467e-ad52-4f9aaf383077', N'01115878998', 0, 0, NULL, 1, 0, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'3fc0e992-d07c-48fe-b6cf-15439da7cffb', N'0353', NULL, N'نعناع', N'اخضر', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ahmed', N'AHMED', N'Omnia2022@gmail.com', N'OMNIA2022@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKvJrYJFOQVcz+I3qcjjuqX+4kx8NfyQoE1DyCJZyOLHxUCGfO7SVQSkgu7+lQLoXw==', N'QORPRWOTJKULUBVJZHSXSSLCN2CQ6NAA', N'c657d5ba-c9a1-487b-b745-e5af885a121a', N'01009095560', 0, 0, NULL, 1, 0, 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'4354ed1e-4c00-4407-8c69-310688a2bde2', N'1453', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Waletest10', N'WALETEST10', N'Data201@gmail.com', N'DATA201@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELdAl+AB7IAbGeRD47Y8EK347C5HwjOd5RB/17pMawy3r4Dk+vZtrdMzKH/kh+t43Q==', N'IXLUZQXXH4SYTO4POMWPORPGTEXYNPHL', N'680a7692-2562-4c62-8556-150a48db0944', N'0591531453', 0, 0, NULL, 1, 0, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'45298fcb-9f81-4c54-a400-0bb9d487c6b5', N'0255', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'aaasss', N'AAASSS', N'aasa@ssa.com', N'AASA@SSA.COM', 0, N'AQAAAAEAACcQAAAAEB612er+gvJtiUCsK2cdTA/+UHddUBpTbHU5AkmEK/qO2vQd/meqbS/EeU6vxxcajw==', N'6BS5O667XCFG65MWISTWLWWGVWDQYFJT', N'dab15dec-29bb-45c6-b772-efa2e317b524', N'010102030255', 0, 0, NULL, 1, 0, 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'465ca026-0d2b-4be0-9d79-7e800c5ca264', N'8323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ahmed 201elgendy', N'AHMED 201ELGENDY', N'elgendy200@gmail.com', N'ELGENDY200@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEClEoWc1fdQF84mUL94KyhCYWmyXp0nNfqH2vIYS8doheN5lJAw9NGgt+ir7KjfIGw==', N'OGSYBXDUYMEKKUY5GCPRYB3N4QDPGARR', N'9e0afb00-4715-4320-a0f4-60025bd0d08d', N'01021720823', 0, 0, NULL, 1, 0, 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'475433bc-21e6-4779-9b43-7b71d9ba5c89', NULL, NULL, N'TestStore', NULL, NULL, NULL, NULL, N'مدير مشتريات', NULL, NULL, NULL, N'wedowell22@gmail.com', N'WEDOWELL22@GMAIL.COM', N'wedowell22@gmail.com', N'WEDOWELL22@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAELmIW5QBSs7BUy/0qnlHDYk6Uaarsxi9q64VjEiBSIKX5de37a+8yqlbV12DZhOTWQ==', N'MUJFK5RWCLCTXJKWPA3BOMZHVX3CXH7Q', N'4972feb6-e408-4e3f-a58d-b660bd977427', N'01028440470', 0, 0, NULL, 1, 4, 0, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'491c7779-21f8-4452-b4b8-f194ce211f6d', N'8858', NULL, N'WaleedAbo20', N'WaleedAbo20', N'alexandria', N'206dc641-5160-404b-b6ea-76d404192e2d', NULL, NULL, N'26° 09'' 60.00', N'32° 42'' 59.99', N'قنا-مصر', N'WaleedAbo20', N'WALEEDABO20', N'Databa505202@gmail.com', N'DATABA505202@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEOhE28N3cgwN3TRWn8N8j9s20/6/PVvA7arPA9fZZSnzrXg1W7S5LACqipNQ+iigQ==', N'KHTCMB3AKUIFDLLAN3QAK6FVTRGS2H5G', N'b3499373-782e-4eec-8918-d8482665c86b', N'01018888859', 0, 0, NULL, 1, 0, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'49b3253e-223f-4ad8-b03f-ef6ee7b6f602', NULL, NULL, N'Waleed210', NULL, NULL, NULL, NULL, N'مدير مشتريات', NULL, NULL, NULL, N'wedowell022@gmail.com', N'WEDOWELL022@GMAIL.COM', N'wedowell022@gmail.com', N'WEDOWELL022@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEEKpz481etSN8nGohRsr0NBJE4x8/hghuEmPLo2yIWHcc7faGbllEoO9bMu0Zjq/mQ==', N'PKMCB2YMUJW3DHKQAV7INWNC35WABAEX', N'c06b9b1d-93c9-4771-94b4-4f43f800bcd5', NULL, 0, 0, NULL, 1, 0, 0, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'49c9c52d-6051-46a6-ba41-adddf6017227', N'8998', NULL, NULL, NULL, N'alexandria', N'206dc641-5160-404b-b6ea-76d404192e2d', NULL, NULL, N'26° 09'' 60.00', N'32° 42'' 59.99', N'قنا-مصر', N'Waletest', N'WALETEST', N'Data202@gmail.com', N'DATA202@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMkofi0m+6O8tetRuv1IjBdVd/e/o/sFzy7c5+4Rn4SpqO6CUJbSRQeahfYeZ4o/Jw==', N'RNDQNSOE3W3VMUJIB2ET5M7UDU47KY35', N'a3d7196a-c3f3-43b5-b2a2-acc91365b58b', N'01115878998', 0, 0, NULL, 1, 0, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'500d75de-0711-443d-ae22-5cf66a4515fa', NULL, NULL, N'Waleed', NULL, NULL, NULL, NULL, N'مدير مشتريات', NULL, NULL, NULL, N'WaleedRasheed2022@gmail.com', N'WALEEDRASHEED2022@GMAIL.COM', N'WaleedRasheed2022@gmail.com', N'WALEEDRASHEED2022@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEIpx4IvYrNOgwlgLB5Dm78c9kPqC1usfur4CzcTupvhX1MOSWTLQM7YR0gFZKl8qPw==', N'AD77YMSVZIQZSAUD5MVFWG6MQBRVQF6S', N'f6e22abd-fe45-4ff6-9211-752708984b68', NULL, 0, 0, NULL, 1, 0, 0, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'53a528cd-1557-4004-92b2-c0bd233f95ad', N'8898', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'aaaaaaa20', N'AAAAAAA20', N'Datass202@gmail.com', N'DATASS202@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBPR+XsnIxGAiR3FAD7fyjqG+VmWCXUEfNvwLNnNUGTupnsba1pdZkn5eBqPIEhfqg==', N'RJ6EUNJVIO4FGAL7SACALNRPDTRNYX7C', N'0d2a0332-2bb2-4f3b-b2d0-3108be9c98c3', N'01115888898', 0, 0, NULL, 1, 0, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'5d095a85-e65e-4a27-a52f-ecb8cc2c8317', N'1453', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Waletest1020', N'WALETEST1020', N'Data2012@gmail.com', N'DATA2012@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEITwIUjT/+5krA1iQAWTOjWLiz5ODO4CPgAebFkuI0R3OMyQgTYxJZEQo8cLwJuUDQ==', N'OCFFQK2QQ2MTNUHGMVAT5ZV2V3OVMBKH', N'517f9522-b86d-41ea-80e3-cc1114df3f5e', N'0591531453', 0, 0, NULL, 1, 0, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'5eb4d9e4-f870-4b1e-b38f-fc6cefb5acba', N'3456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'haha', N'HAHA', N'haaa@gmail.com', N'HAAA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBYjQE3P84s8ORBH95r0Bq2ZMg2ACB5yEeMvuwNR2ogg7igf4kwQAvnpeJ/kiliKPQ==', N'PAY3XOVLJKYGUGREQJFMMQGM3VZPK66Q', N'10a47d5d-ea15-4cbb-8797-2256ba5daa04', N'059123456', 0, 0, NULL, 1, 0, 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'744dc216-1518-4eb9-b733-36d19398155a', NULL, NULL, N'TestStore', NULL, NULL, NULL, NULL, N'مدير مشتريات', NULL, NULL, NULL, N'wedowell20@gmail.com', N'WEDOWELL20@GMAIL.COM', N'wedowell20@gmail.com', N'WEDOWELL20@GMAIL.COM', 1, N'TestStore2020', N'ZMEOH2XRTMGPOHN4SOWFHMTNG43M5MMO', N'96291e41-ef55-4efc-b3e7-7670215cfc50', N'01028440479', 0, 0, NULL, 1, 0, 0, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'7c162b40-5f70-4553-8b68-f33c08eabfc2', N'8977', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Waleed25', N'WALEED25', N'Da25@gmail.com', N'DA25@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECvV3KxdU6zeY+oKCY3eQZkp59tnjG+rtIC3babDlJ6GyqMdQsL0gG6J+7pOj9CW1g==', N'HM2MNV7YQAQZW5GX6TA2I7VXYGCWUWGJ', N'03bfffc4-2197-424e-bbd2-04e73e3d6376', N'01115878977', 0, 0, NULL, 1, 0, 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'7dedd109-64ff-4469-a54f-2360a3b88cbd', NULL, NULL, N'نقابة المهندسين', NULL, NULL, NULL, NULL, N'مدير مشتريات', NULL, NULL, NULL, N'wedowell202@gmail.com', N'WEDOWELL202@GMAIL.COM', N'wedowell202@gmail.com', N'WEDOWELL202@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEARdGxjAcepFVPb4S0TPmGxJyeE8RwYDdwEVqKwdQc7nrTU652CP1JRfCTXxqR9UMQ==', N'2PRRXY3A62U7ZRAYYWX4RFZZAJ3KDWK4', N'03e1afc7-c5b0-4c8f-ae89-704a2c52d5d8', NULL, 0, 0, NULL, 1, 0, 0, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'7f8d56ad-7a99-438e-96c3-c09efe1f9a22', N'2379', NULL, N'نعناع', N'اخضر', NULL, NULL, NULL, N'مدير مشتريات', NULL, NULL, NULL, N'wedowell2021@gmail.com', N'WEDOWELL2021@GMAIL.COM', N'Omnia2022@gmail.com', N'OMNIA2022@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEICD6D6jxR6y3UritdfB07BaciT0dQbL/tLYkXa+AGn6kW+uI3SNA6WlNeRwRSC3Qw==', N'Q2VNPXPUODCXPSHSM22GJ4UUMMNFNS2H', N'7bc31829-d8d4-4479-a790-d1a643a57c18', N'01002844047', 0, 0, NULL, 1, 0, 0, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'839400cb-94ed-4580-a05c-9ad717a5c7c5', N'8998', NULL, N'نعناع', N'اخضر', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Waleed20test', N'WALEED20TEST', N'Omnia2022@gmail.com', N'OMNIA2022@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAYHUAvq9iwukHSjWTN337fesIAbJxqX9ujHSXI48GLKlNCdjEJXbMmmv3h+jgkmjA==', N'RFC64ZLZF7LDAQ2XPAGNHKMU3PWJY5LR', N'd3909850-8eb3-447f-a850-b72df04b67a8', N'01002844047', 0, 0, NULL, 1, 0, 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'86e490b9-7408-430f-83f8-7d85647540ce', N'8323', N'6bfaa416-900f-478b-a44d-984e099bd723.jpg', N'aLI', N'aTTIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ahmed@ahmed.com', N'AHMED@AHMED.COM', N'ahmedmostafa700006@gmail.com', N'AHMEDMOSTAFA700006@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAcAPD2lDEsmhnknKhDcP4VqG1DCp+9rYlWG1HjocUZe/TvBshOGdGKO9GWqTNOIuA==', N'JMDZ6DOTR2MLYGI23P56RKL5C2PULPNW', N'e37a2049-bc69-4b3e-a447-289e633c46c2', N'+201033927725', 0, 0, NULL, 1, 0, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'8abb0c62-5c35-4b85-a72b-d497cf012bc1', N'1453', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Waletest102', N'WALETEST102', N'Data201@gmail.com', N'DATA201@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBqL1iyG47AuI9kWubfNLn6TlnWcUMuMNtTbQMTVwJyQUfE/BfsODFmsbtwODmLQhw==', N'JLY5QT5GT3H27JMCLV5UEZN2BDJ6EYWZ', N'0cd5404d-6baf-4d2f-94b7-13a56ddf872f', N'0591531453', 0, 0, NULL, 1, 0, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'9184c798-616b-4db3-a240-ca620dae7909', N'8997', NULL, N'نعناع', N'اخضر', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Waleed25test', N'WALEED25TEST', N'Omnia2022@gmail.com', N'OMNIA2022@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAT7uzZ6sZdo+U1aXUzefjlhoExE1+nkVe0Z0BkHtTS8EBWbrdK2GtJhwzpWIw7fcw==', N'VMSZA227LZ2TUCBGVUDED5EUR3TOFADI', N'f73ab3e0-84f4-46dc-a4b5-f27ca5a044d6', N'01002844047', 0, 0, NULL, 1, 0, 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'9caa5826-32f8-40ad-ab5f-e2de8e9c0072', N'8958', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Waleedtest', N'WALEEDTEST', N'OTP212@gmail.com', N'OTP212@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELtPkfCNRZrEBCv+6CB2x5W+yYP8WBANxcCAZZfRCMy3ML1mPZ2R1pdJLvZTz9xNTQ==', N'MPJUNBK6DHCKFIGGDLQPWBQTGCGYBTUV', N'040293a3-10eb-482e-b86d-c58369e8de5c', N'01115878958', 0, 0, NULL, 1, 0, 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'9ed6e75c-a25e-4ee4-927e-1ff4ed3c0c4a', N'8323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ahmed elgendy', N'AHMED ELGENDY', N'elgendy@gmail.com', N'ELGENDY@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEK0T2MQSLtiawvzKmQQYb0x380A+YAJSOdYZrfnHkxCvn89pygyrZeVMyqWwal1sWA==', N'MX6GL5A7NXCCTYJIUNLOHAV546ULMPVU', N'685ba9a6-0f72-47d9-bf42-cabdecfba056', N'01021720823', 0, 0, NULL, 1, 0, 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'9f73e539-4af6-4a9b-b545-83b1b6b5c913', NULL, NULL, N'نعناع', N'اخضر', N'alexandria', N'206dc641-5160-404b-b6ea-76d404192e2d', NULL, N'مدير مشتريات', N'26° 09'' 60.00', N'32° 42'' 59.99', N'مصر', N'EngDev2023@gmail.com', N'ENGDEV2023@GMAIL.COM', N'Omnia2022@gmail.com', N'OMNIA2022@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEM7d3BYrpvRv4GLLNbLZZfGfRz5hjD22LVgU8YDn/CzHSE+FEKeOvfPZ7l1/KZA8Uw==', N'XWDBZPTZJJXW5G2KWKUS3MDANORI3G4N', N'beea86bb-db23-4ab2-8b5d-253ce028882b', N'01009095560', 0, 0, CAST(N'2023-04-16T18:28:44.3206041+00:00' AS DateTimeOffset), 1, 0, 0, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'a2c8e923-8acc-45f6-b29a-8f51b2324703', N'8323', NULL, N'Atot', NULL, NULL, NULL, NULL, N'تاجر', NULL, NULL, NULL, N'ayma@gmail.com', N'AYMA@GMAIL.COM', N'ayma@gmail.com', N'AYMA@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEB1fGi43mVZPNR0aL2xkqbg0b+LSg+zAiDz0bwbUPI+TcNxMrKkR2w79FkU0cOiJ4w==', N'HYH2IH4VIM37MBXO36CEJ5N3G6WCDMP3', N'4f6dceca-f3df-4c29-9279-345317f97c74', NULL, 0, 0, NULL, 1, 0, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'ae5a2de3-a73a-460c-9e34-ad9d30a4b656', N'8323', NULL, N'Ahmed Mostafa', NULL, NULL, NULL, NULL, N'مدير مشتريات', NULL, NULL, NULL, N'ahmedmostafa70001@gmail.com', N'AHMEDMOSTAFA70001@GMAIL.COM', N'ahmedmostafa70001@gmail.com', N'AHMEDMOSTAFA70001@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPUd4n4Ochvaip3MnynvmLkoDyWXy6UfRVohnReEf+3Hm0sbUXe3s0lhkiBo4SEUfw==', N'VDXJOXJT6AR42L7JAK4JK7B2DVQUPGDF', N'a1d29d5c-e93a-4bd3-8fde-1bdb90d9cedb', NULL, 0, 0, NULL, 1, 0, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'b04ab0d6-6801-4295-a38e-aed9cec03730', N'8323', N'312287690_202877398916203_6801447073936034210_n.jpg', N'wedowell2022@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'wedowell2022@gmail.com', N'WEDOWELL2022@GMAIL.COM', N'wedowell2022@gmail.com', N'WEDOWELL2022@GMAIL.COM', 1, NULL, N'YVJBSY3CFMSFEIE4BZF45MXRUGCO5DWL', N'101f7ac7-552d-410f-b289-9c27d3548720', NULL, 0, 0, CAST(N'2023-03-13T07:37:07.8512947+00:00' AS DateTimeOffset), 1, 0, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'b298eb09-f70c-4cdf-80c0-bca8c5731ef7', N'0255', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'aa', N'AA', N'aaa@ssa.com', N'AAA@SSA.COM', 0, N'AQAAAAEAACcQAAAAEIIpMtTFAo3L5HMhb7Qcz2X4dlKcxw11L3jkm+c9cFYSl7iAQltq7/hJ+TGMaEJo4A==', N'NQBXA6JNAESAYSUNNTVNMLOD2TOM6ZBL', N'd336e20c-410a-4311-9d64-1103936dcfac', N'01010200255', 0, 0, NULL, 1, 0, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'b4eca4ae-abf1-4e67-bac3-c1760e9746f1', N'1015', NULL, N'Waleed20', N'AbdelRasheed', N'alexandria', N'206dc641-5160-404b-b6ea-76d404192e2d', NULL, N'مدير مشتريات', N'26° 09'' 60.00', N'32° 42'' 59.99', N'20مصر', N'WaleedAbdelRasheed2022@gmail.com', N'WALEEDABDELRASHEED2022@GMAIL.COM', N'WaleedAbdelRasheed2023@gmail.com', N'WALEEDABDELRASHEED2023@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKm+ce6dBwlP31p1PDfDqKzdntWu1NNK2/emAwJ1Ucqq7ZKoVYIb29BuxnUotKezZQ==', N'IEDUVTIBCXXYOG5A33T4X2L5OQRPEGUM', N'be70d587-b0b8-4eaf-ba36-f75c62161797', N'01001001011', 0, 0, NULL, 1, 0, 0, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'b5e2d544-b190-4931-ae34-6730a6479868', N'8898', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'aaaaaaa', N'AAAAAAA', N'Datass202@gmail.com', N'DATASS202@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBTXhHYyiENBU2QRZZSixvLt7s7xd+v+RHgGDXETD7VFmM4O5PS59UDOACAkqhWLMg==', N'CUQK4ZOBXNW6RV2UATIMAYDDZVLNQH4R', N'bb6572ba-61a7-42fc-8c8b-e30993023885', N'01115888898', 0, 0, NULL, 1, 0, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'b95330d7-36fd-40ed-b8d3-2d1e601b7dcc', N'8323', N'312287690_202877398916203_6801447073936034210_n.jpg', N'dr_ahmedmostafa.2011@yahoo.com', NULL, NULL, NULL, NULL, N'مدير مشتريات', NULL, NULL, NULL, N'dr_ahmedmostafa.2011@yahoo.com', N'DR_AHMEDMOSTAFA.2011@YAHOO.COM', N'dr_ahmedmostafa.2011@yahoo.com', N'DR_AHMEDMOSTAFA.2011@YAHOO.COM', 1, NULL, N'XG5XMYZCAKOLENYUGZAO2UTVIP7GGGKS', N'0dc9ff67-4d60-4383-9f6f-5c21aaa9cbd7', NULL, 0, 0, NULL, 1, 0, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'bc85b35a-4928-4107-a411-5f76fd78ea1b', N'8323', N'358c3b77-e5eb-4805-8d3d-d9e10ab57607.jpg', N'aLI', N'aTTIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'afl@ahmed.com', N'AFL@AHMED.COM', N'ahmedmostafa006@gmail.com', N'AHMEDMOSTAFA006@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPcV5nIDfaIHNImXAUJAEBVf8MtXdNvdd+wy+Gb+bh6iHoMag/bFSDOj2EdvDdgNng==', N'7DXTVLVVFS5IOXILX46YXPWYORHRAJJA', N'2e049d37-6898-4b22-b3e9-f2c74e65730c', N'+201033927725', 0, 0, NULL, 1, 0, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'c42b1b9f-1cac-4672-8251-06ceec107bf3', NULL, NULL, N'Waleed20225', NULL, NULL, NULL, NULL, N'مدير مشتريات', NULL, NULL, NULL, N'wedowell2020@gmail.com', N'WEDOWELL2020@GMAIL.COM', N'wedowell2020@gmail.com', N'WEDOWELL2020@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEBx5uCMcDbc4uHDtnmy8a4eb5ISIsOg/Kj5HnBBFweP1Vbsy3iHsFotVah1pbvgadw==', N'CF2MBW7CSEE5AXNN7CLHPQWUZWEFMZ5A', N'c523a5a5-4704-4c2f-b1ff-d36ae339433d', NULL, 0, 0, CAST(N'2023-04-03T10:27:49.8409169+00:00' AS DateTimeOffset), 1, 0, 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'c8b9f850-7a55-4e1d-be95-036405f282ff', N'8998', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Waletest210', N'WALETEST210', N'Data201@gmail.com', N'DATA201@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGCTJxsaHeoam+bP9vZGorSbDxeZuC8ulTirOen96Z8DYHcy36HBGpfpkl2mohwkGA==', N'6HPWWSOZ6GBVOWHHTJSGUPBJANJY6754', N'fc629422-9fcd-4844-b910-4ce099678db3', N'01115878998', 0, 0, NULL, 1, 0, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'cc5628a1-0218-4cb1-bdd4-c26dafd14d3e', N'8323', NULL, N'نقابة المهندسين', NULL, NULL, NULL, NULL, N'تاجر', NULL, NULL, NULL, N'wedowell222@gmail.com', N'WEDOWELL222@GMAIL.COM', N'wedowell222@gmail.com', N'WEDOWELL222@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAELjORTxl/IUTjUl+QrcE4DgmtTDbKj6xppjkOUkKV/cupyTtYOr6loPNKhRTyDHj+A==', N'I6ULUAVX4WRKGXP5QOT3TALMXO2LEC5U', N'80e95de5-1a40-4050-8fcc-79a79c638713', NULL, 0, 0, NULL, 1, 0, 0, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'cecb4fa1-0d35-4cf3-bed5-3017f3d351af', N'0472', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'waleed2023', N'WALEED2023', N'Quat20@gmail.com', N'QUAT20@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGx0QAaUpJi4MwtIxnbtEPoSEm/iEilMfsIYvFLtr21eiAvyCwfoIkMAzs2Kd1mvvw==', N'FQPOYOPUQQWEQEJ7QQJTITFVK7KRCZZJ', N'ca118788-8b9d-4f93-9a5e-4de37943843f', N'01028440472', 0, 0, NULL, 1, 0, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'd4c89e24-b1c0-4bbe-9e84-c17fd9767089', N'8998', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Waletest20', N'WALETEST20', N'Data202@gmail.com', N'DATA202@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENtfE+FRjj93UGzVMNoQtIeaaRY3NReQ5ilzii8NgzxBICMbPwXsbdTEfxuaQHiJ2w==', N'AIMIK6Z4DNFTUZY77NVUMQR7RISNNK75', N'9d4ed3fb-c8fd-485a-8f01-7843da784254', N'01115878998', 0, 0, NULL, 1, 0, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'd55d1966-694a-4d9f-b283-cefa175f6549', NULL, NULL, N'Waleed', NULL, NULL, NULL, NULL, N'تاجر', NULL, NULL, NULL, N'wedowell20455@gmail.co', N'WEDOWELL20455@GMAIL.CO', N'wedowell20455@gmail.co', N'WEDOWELL20455@GMAIL.CO', 0, N'AQAAAAEAACcQAAAAEMJ07XrPj5L2//fDiTuVZPpFzmLCT6ySD1dsxRSQhrVKkFRwQ8Ev7PtFgc+pq9rF3g==', N'IDZYQZ3HYYI5TQLLVSML62XGTXIEELRE', N'd467ea84-69c1-4788-8652-219caa5996bf', NULL, 0, 0, NULL, 1, 0, 0, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'dac444e8-0578-4023-8306-70a1557a1cbd', N'8323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ahmed 20elgendy', N'AHMED 20ELGENDY', N'elgendy20@gmail.com', N'ELGENDY20@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPs8mv4H9ZNLziBVnkdK0GlW9df9xGYf++oJUYjpfcA+BIpufJnNdV2r6+6ESbnDTQ==', N'DEMINDKFA47YK74K7R5OZIZF33YFS2MF', N'3954a9a5-8cef-4bbb-8792-715edfc52a36', N'01021720823', 0, 0, NULL, 1, 0, 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'de24d756-bb91-433e-8131-5083619a1b6a', N'3456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'haa', N'HAA', N'ha@gmail.com', N'HA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENjua4TV99kbTUw2BHL18TYSQprMxoAA82Dgqa2ltGURzEquzNpvfSSDWvayitH1qw==', N'VP2WZO4HVIOLF2UDTRUDM4SVM4Q6XPT4', N'01db2c9d-d2f2-4dd2-a134-b71873ec0355', N'055123456', 0, 0, NULL, 1, 0, 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'f1aec3f6-f02e-465f-9837-6886fe5bd5fa', NULL, NULL, N'نعناع', N'اخضر', N'alexandria', N'206dc641-5160-404b-b6ea-76d404192e2d', NULL, N'مدير مشتريات', N'26° 09'' 60.00', N'32° 42'' 59.99', N'قنا-مصر', N'EngDev2023@gmail.com', N'ENGDEV2023@GMAIL.COM', N'EngDev2023@gmail.com', N'ENGDEV2023@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEEHj0Td3P+zMZdhnhy/266ZqvYSJTAjA5h6gdnbQIdXGxz3Es0YYMakdp5he32dO2g==', N'6DSQGKLMFXY2OH3GB7XZTATM23PTHOFX', N'e96cd915-def0-407b-85c2-bef32f82e238', N'01111585820', 0, 0, NULL, 1, 0, 0, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'f59eecce-7495-47c5-8f16-779c275734b2', N'0300', NULL, N'aaaaaa', N'ahm', N'alexandria', N'206dc641-5160-404b-b6ea-76d404192e2d', NULL, NULL, N'26° 09'' 60.00', N'32° 42'' 59.99', N'قنا-مصر', N'ahm', N'AHM', N'Omnia2022@gmail.com', N'OMNIA2022@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELu/huKcIBp3V5hjW5N6G4Y6AvzpFz3ITptH8Oqj9JHHVUBRFCVk/iBScxM3Q/RJaQ==', N'E5KHLYCZAUVPT4Q3F77JPUMW5DZH5Q74', N'8e14c05e-c2a7-4336-988b-551a433bf8c0', N'01010300300', 0, 0, NULL, 1, 0, 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'f8f37d3a-f27a-4e55-af33-a77d5f8b9a6c', N'8323', NULL, N'Waleed', NULL, NULL, NULL, NULL, N'تاجر', NULL, NULL, NULL, N'obarmeg@gmail.com', N'OBARMEG@GMAIL.COM', N'obarmeg@gmail.com', N'OBARMEG@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEDai3tkSbEwreRcdhekHxF/N8ZdjcZS9ideQh7sQTpAkGfajvRf3d/uK7r0FsEfRfA==', N'F5OHU4BR35S3HOBLZMMM6DMSEGHXIWXS', N'654ce1ee-b5b8-4f56-92b4-ac0b581ffe4f', NULL, 0, 0, NULL, 1, 0, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [OTP], [Image], [FirstName], [FamilyName], [CityName], [CityId], [ClinicName], [Status], [Latitude], [Longitute], [Location], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAgree], [IsActive]) VALUES (N'fa1a9935-6f60-4c49-ba2e-f9276835aaee', N'0255', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'aa44asss', N'AA44ASSS', N'aasdda@ssa.com', N'AASDDA@SSA.COM', 0, N'AQAAAAEAACcQAAAAELFssMyIT/GxvQfVf0LW5bm0EWbiHgVMhzmzeUW/ZgfP2jJ498etqfm+evLGl/3nIA==', N'LGQPHDLHCV2GOEE5TR6XVPKFGOXQGTBK', N'7a144d74-a6f6-4752-8687-56291ced3de9', N'0101042030255', 0, 0, NULL, 1, 0, 1, 1)
GO
INSERT [dbo].[TbAboutApp] ([AboutAppId], [AboutAppTitle], [AboutAppDescription], [AboutAppForWhom], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'1daedaaa-15a2-4fbd-ab29-28c73c25d472', N'توريدات 20', N'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم يوضع في التصاميم لتعرض على العميللوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم', N'التاجر', NULL, NULL, CAST(N'2023-03-13T21:43:19.410' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TbAddress] ([AddressId], [Id], [Name], [AddressLatitude], [Addresslongitude], [AddressStreet], [AddressAreaId], [AddressArea], [AddressCityId], [AddressCity], [AddressCountry], [MainAddress], [PhoneNumber], [OTP], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'20396961-c880-453e-974f-93c2f049b4b2', NULL, N'Ahmed Mostafa', N'xcv', N'xvxcv20', N'18 Almohkema Street', NULL, N'xcvxcvxcv', NULL, N'Alexandria', N'Egypt', N'نعم', N'+201033927725', NULL, NULL, NULL, CAST(N'2023-01-17T14:12:46.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[TbCity] ([CityId], [CityName], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'8de06544-68a0-4c03-b19d-0050c572ee3a', N'قنا 20', NULL, NULL, CAST(N'2023-04-10T17:36:51.180' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbCity] ([CityId], [CityName], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'206dc641-5160-404b-b6ea-76d404192e2d', N'alexandria', NULL, NULL, CAST(N'2023-01-18T14:41:21.480' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbCity] ([CityId], [CityName], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'7fa02278-a59d-441b-86d3-8e337bdd09fd', N'قنا 20', NULL, NULL, CAST(N'2023-04-10T17:29:14.840' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbCity] ([CityId], [CityName], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'b0148a0d-286c-4f8e-bd5a-fa48adf4c756', N'قنا ', NULL, NULL, CAST(N'2023-04-10T17:29:00.247' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TbCityDeliveryFees] ([CityDeliveryFeesId], [CityId], [CityName], [DeliveryFees], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'59855928-b6f7-48f3-92ec-0086e84cef50', N'206dc641-5160-404b-b6ea-76d404192e2d', N'alexandria', N'n', NULL, NULL, CAST(N'2023-03-07T15:49:56.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[TbCityDeliveryFees] ([CityDeliveryFeesId], [CityId], [CityName], [DeliveryFees], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'c348bfbb-41f0-4376-aa08-5cbeaae84ec0', N'206dc641-5160-404b-b6ea-76d404192e2d', N'alexandria', N'50', NULL, NULL, CAST(N'2023-03-19T15:03:17.250' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TbComplainsAndSuggestion] ([ComplaintsAndSuggestionsId], [Id], [Name], [Email], [ComplaintsAndSuggestionsText], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'fb3bf8d7-473c-4450-959f-031de0a7396a', NULL, N'waleed', N'Waleed@gmail.com', N'Waleed@gmail.com ', N'1528ffa3-38f1-4ba3-a2a9-35d5a0de22c2', NULL, CAST(N'2023-04-24T09:22:21.350' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbComplainsAndSuggestion] ([ComplaintsAndSuggestionsId], [Id], [Name], [Email], [ComplaintsAndSuggestionsText], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'4b982e34-8644-45db-aab2-58b38e7ea675', NULL, N'waleed', N'Wedowell2022@gmail.com', N'مصر ام الدنيا', N'491c7779-21f8-4452-b4b8-f194ce211f6d', NULL, CAST(N'2023-04-28T04:30:25.503' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TbDelivery] ([DeliveryManId], [DeliveryManName], [DeliveryManEvaluationStarts], [DeliveryManEvaluationNumber], [DeliveryManCityId], [DeliveryManCityName], [DeliveryManAreaId], [DeliveryManAreaName], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'b809a23b-c7e5-4dcf-8b6c-d7543bbae0ec', N'وليد', NULL, NULL, N'206dc641-5160-404b-b6ea-76d404192e2d', N'alexandria', NULL, NULL, NULL, NULL, CAST(N'2023-03-19T15:01:28.497' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TbEvaluationDelivery] ([DeliveryEvaluationId], [EvaluaterId], [DeliveryId], [DeliveryName], [DeliveryEvaluationText], [StartsNo], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'0b7ce5ef-a213-49c4-bfd3-357ef05f3bc7', NULL, N'b809a23b-c7e5-4dcf-8b6c-d7543bbae0ec', N'وليد', N'بطئ', N'3.5', N'f1aec3f6-f02e-465f-9837-6886fe5bd5fa', NULL, CAST(N'2023-04-14T01:44:01.360' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TbEvaluationProduct] ([ProductEvaluationId], [EvaluaterId], [ProductId], [ProductName], [ProductEvaluationText], [StartsNo], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'1f366f97-4df9-40c4-9b6a-66743aec65b5', NULL, N'5b0774bc-7d41-4b1e-8485-ed230235fc01', N'بسكوت شاى ', N'جيد', N'2.5', N'744dc216-1518-4eb9-b733-36d19398155a', NULL, CAST(N'2023-04-09T08:52:30.267' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbEvaluationProduct] ([ProductEvaluationId], [EvaluaterId], [ProductId], [ProductName], [ProductEvaluationText], [StartsNo], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'6b715d56-ea22-4c4c-94b2-9537d43e332a', NULL, N'969ff582-c0dc-4569-89ac-ccc654af2157', N'بسكوت شاى 120', N'جيد', N'2.5', N'f1aec3f6-f02e-465f-9837-6886fe5bd5fa', NULL, CAST(N'2023-04-18T16:13:52.363' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbEvaluationProduct] ([ProductEvaluationId], [EvaluaterId], [ProductId], [ProductName], [ProductEvaluationText], [StartsNo], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'2116af54-cd66-4209-8beb-a3c3e4212537', NULL, N'5b0774bc-7d41-4b1e-8485-ed230235fc01', N'بسكوت شاى ', N'جيد', N'2.5', N'f1aec3f6-f02e-465f-9837-6886fe5bd5fa', NULL, CAST(N'2023-04-18T04:47:23.907' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbEvaluationProduct] ([ProductEvaluationId], [EvaluaterId], [ProductId], [ProductName], [ProductEvaluationText], [StartsNo], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'498ea1bc-087b-4a78-b0b0-d4613b6ad1af', NULL, N'5b0774bc-7d41-4b1e-8485-ed230235fc01', N'بسكوت شاى ', N'جيد', N'2.5', N'f1aec3f6-f02e-465f-9837-6886fe5bd5fa', NULL, CAST(N'2023-04-18T04:47:10.440' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbEvaluationProduct] ([ProductEvaluationId], [EvaluaterId], [ProductId], [ProductName], [ProductEvaluationText], [StartsNo], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'586a1540-c0d3-4cf4-848f-da41c44fbd65', NULL, N'5b0774bc-7d41-4b1e-8485-ed230235fc01', N'بسكوت شاى ', N'جيد', N'2.5', N'9f73e539-4af6-4a9b-b545-83b1b6b5c913', NULL, CAST(N'2023-04-16T04:48:34.283' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TbEvaluationSupplierProduct] ([SupplierProductEvaluationId], [EvaluaterId], [ToBeEvaluatedId], [SupplierProductEEvaluationText], [StartsNo], [ProductId], [ProductName], [SupplierId], [SupplierName], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'62703a76-7214-46c3-86d7-4728baad324a', NULL, NULL, N'جيدجدا', N'2.5', NULL, NULL, N'303a3b98-cbae-40c0-8d97-12d8a0c64c9a', N'waleed2022', N'839400cb-94ed-4580-a05c-9ad717a5c7c5', NULL, CAST(N'2023-04-10T14:26:16.257' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbEvaluationSupplierProduct] ([SupplierProductEvaluationId], [EvaluaterId], [ToBeEvaluatedId], [SupplierProductEEvaluationText], [StartsNo], [ProductId], [ProductName], [SupplierId], [SupplierName], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'dae41f46-cd49-42ec-8ba2-82194c9a4f17', NULL, NULL, N'ثثثث', N'1', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-03-14T19:07:08.890' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbEvaluationSupplierProduct] ([SupplierProductEvaluationId], [EvaluaterId], [ToBeEvaluatedId], [SupplierProductEEvaluationText], [StartsNo], [ProductId], [ProductName], [SupplierId], [SupplierName], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'4e63eb03-aa50-4e07-b2dd-d0bd953781be', NULL, NULL, N'جيدجدا', N'2', NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', NULL, NULL, CAST(N'2023-04-13T01:19:23.803' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbEvaluationSupplierProduct] ([SupplierProductEvaluationId], [EvaluaterId], [ToBeEvaluatedId], [SupplierProductEEvaluationText], [StartsNo], [ProductId], [ProductName], [SupplierId], [SupplierName], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'2da1dce7-00e6-4389-9334-dc1d30a43aad', NULL, NULL, N'جيدجدا', N'2.5', NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', NULL, NULL, CAST(N'2023-04-13T01:20:49.910' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbEvaluationSupplierProduct] ([SupplierProductEvaluationId], [EvaluaterId], [ToBeEvaluatedId], [SupplierProductEEvaluationText], [StartsNo], [ProductId], [ProductName], [SupplierId], [SupplierName], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'25ad0fe7-87bf-401b-9564-e3c8cc8b7054', NULL, NULL, N'جيدجدا', N'2', NULL, NULL, N'303a3b98-cbae-40c0-8d97-12d8a0c64c9a', N'waleed2022', N'839400cb-94ed-4580-a05c-9ad717a5c7c5', NULL, CAST(N'2023-04-10T14:26:28.600' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbEvaluationSupplierProduct] ([SupplierProductEvaluationId], [EvaluaterId], [ToBeEvaluatedId], [SupplierProductEEvaluationText], [StartsNo], [ProductId], [ProductName], [SupplierId], [SupplierName], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'101184ef-2065-4e42-b6dc-ecdf8aeee7b0', NULL, NULL, N'جيدجدا', N'2', NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', NULL, NULL, CAST(N'2023-04-13T01:15:01.933' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TbFavourites] ([FavouritesId], [Id], [Name], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [UserId]) VALUES (N'cfcbbc85-6eed-4d51-a956-1f2e4d629ed4', NULL, N'جهاز ضغط', N'b29e35f3-a159-4684-b85c-dab1d257a349', N'جهاز ضغط', N'77631fef-192e-4bae-922a-b255fce6f6a4.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', NULL, NULL, N'500', N'de24d756-bb91-433e-8131-5083619a1b6a', NULL, CAST(N'2023-04-27T14:24:38.887' AS DateTime), NULL, NULL, 1, N'de24d756-bb91-433e-8131-5083619a1b6a')
INSERT [dbo].[TbFavourites] ([FavouritesId], [Id], [Name], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [UserId]) VALUES (N'c84efc28-719d-4d30-b4ff-22616dd8bcb2', NULL, N'جبيرة', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'2.5', N'جيد', N'20', N'de24d756-bb91-433e-8131-5083619a1b6a', NULL, CAST(N'2023-04-28T04:56:04.977' AS DateTime), NULL, NULL, 1, N'de24d756-bb91-433e-8131-5083619a1b6a')
INSERT [dbo].[TbFavourites] ([FavouritesId], [Id], [Name], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [UserId]) VALUES (N'beb2633c-1ea5-473b-940b-5aa30235718c', NULL, N'مسامير عظمية', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', NULL, NULL, N'20', N'11ffd692-fe42-4f04-8439-522fbee2d56c', NULL, CAST(N'2023-04-27T14:22:31.540' AS DateTime), NULL, NULL, 1, N'11ffd692-fe42-4f04-8439-522fbee2d56c')
INSERT [dbo].[TbFavourites] ([FavouritesId], [Id], [Name], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [UserId]) VALUES (N'5fc57c0f-3a3d-4ab3-868e-8b8be73e93a8', NULL, N'مشرط جراحة', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', NULL, NULL, N'20', N'de24d756-bb91-433e-8131-5083619a1b6a', NULL, CAST(N'2023-04-29T01:07:31.300' AS DateTime), NULL, NULL, 1, N'de24d756-bb91-433e-8131-5083619a1b6a')
INSERT [dbo].[TbFavourites] ([FavouritesId], [Id], [Name], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [UserId]) VALUES (N'f3f5c628-3d78-4608-bca6-d42f1c67fc3d', NULL, N'مسامير عظمية', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', NULL, NULL, N'20', N'de24d756-bb91-433e-8131-5083619a1b6a', NULL, CAST(N'2023-04-27T16:29:26.800' AS DateTime), NULL, NULL, 1, N'de24d756-bb91-433e-8131-5083619a1b6a')
GO
INSERT [dbo].[TbNotification] ([NotificationId], [SenderId], [SenderName], [ToWhomId], [ToWhomName], [Text], [NotificationType], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'6db818ff-53b6-40c1-8012-07014a5466c2', N' c7b98b0e-221d-46e4-9170-893af1cbe063', N' WaleedAbdelRasheed', N'c7b98b0e-221d-46e4-9170-893af1cbe063', N'WaleedAbdelRasheed', N'waleed', NULL, NULL, NULL, CAST(N'2023-03-13T21:55:37.070' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbNotification] ([NotificationId], [SenderId], [SenderName], [ToWhomId], [ToWhomName], [Text], [NotificationType], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'445822ce-1f73-4ecd-9bb1-a58493d0f9f5', N' 0dac0715-6fc9-4efd-b51f-9622e8bf10cd', N' Ahmed Mostafa', N'0dac0715-6fc9-4efd-b51f-9622e8bf10cd', N'Ahmed Mostafa', N'slamo alekm', NULL, NULL, NULL, CAST(N'2023-01-18T13:46:26.267' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TbOffer] ([OfferId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [PriceBeforeOffer], [PriceAfterOffer], [ProductCategoryId], [ProductCategoryName], [ProductEvaluationStarts], [ProductEvaluationNumber], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'e137e930-4f20-4e4d-a3c4-2cf13a356645', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'بسكوت شاى 120', N'059b739b-508d-4ea0-b12a-d25fa6565e54.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'10', N'9', N'e8ec31fc-0a79-408f-9f3c-eb693b8cd6ac', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-04-10T16:12:10.490' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbOffer] ([OfferId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [PriceBeforeOffer], [PriceAfterOffer], [ProductCategoryId], [ProductCategoryName], [ProductEvaluationStarts], [ProductEvaluationNumber], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'2673727d-08e3-42e7-ac3b-3e9561a6af88', N'93b8bc99-b23f-44b8-a6a8-146838e155df', N'جهاز محلول', N'41498f27-5fee-4d09-82f4-dfc6c3ec917e.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'10', N'9', N'a8554053-49e0-4f1d-a1ed-1fd438e97f83', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-03-19T15:06:49.857' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbOffer] ([OfferId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [PriceBeforeOffer], [PriceAfterOffer], [ProductCategoryId], [ProductCategoryName], [ProductEvaluationStarts], [ProductEvaluationNumber], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'f1a4fc66-2b78-4bf0-8f2a-cc26fa71b29c', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'بسكوت شاى 120', N'a7c8932e-bc19-44fa-a94a-5e0257bdc119.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'10', N'9', N'e8ec31fc-0a79-408f-9f3c-eb693b8cd6ac', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-04-10T15:29:11.907' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TbPaymentMethod] ([PaymentMethodId], [PaymentMethodName], [PaymentMethodDescription], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'fc8a6328-a572-45a1-9de2-15c2163aa55e', N'paypal', N'paypal', NULL, NULL, CAST(N'2023-04-14T22:56:54.750' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPaymentMethod] ([PaymentMethodId], [PaymentMethodName], [PaymentMethodDescription], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'7ee2fb6b-517e-4081-8632-399ae92db748', N'محفظة الكترونية ', N'فودافون كاش', NULL, NULL, CAST(N'2023-03-13T21:59:38.390' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPaymentMethod] ([PaymentMethodId], [PaymentMethodName], [PaymentMethodDescription], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'c3aa80b2-4c77-4b22-ab2e-ba811b46deff', N'اتصالات كاش', N'اتصالات كاش', NULL, NULL, CAST(N'2023-04-14T22:58:36.163' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TbPoliciesAndPrivacy] ([PoliciesAndPrivacyId], [PoliciesAndPrivacyTitle], [PoliciesAndPrivacyDescription], [PoliciesAndPrivacyForWhom], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'e11355ed-97de-4fa4-93af-27eafbc1a495', N'حقوق الملكية محفوظه 2022', N'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم يوضع في التصاميم لتعرض على العميللوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم', N'المستخدم', NULL, NULL, CAST(N'2023-03-13T22:01:33.797' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TbProduct] ([ProductId], [ProductName], [ProductDescription], [ProductPrice], [ProductCategoryId], [ProductCategoryName], [StartDate], [EndDate], [DiscountPercent], [ProductNewPrice], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [Quantity], [StoreId], [StoreName], [ProductImage]) VALUES (N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'مشرط جراحة', N'20', N'72885d22-258a-4829-b70e-8d7441bd380f', N'اجهزة جراحية ', CAST(N'2023-04-16T22:37:00.000' AS DateTime), CAST(N'2023-04-25T22:34:00.000' AS DateTime), N'10', N'18', NULL, NULL, CAST(N'2023-04-16T13:35:18.543' AS DateTime), NULL, NULL, 1, 10, N'49854158-065d-4f9c-aaf4-b77ec2e17e1d', N'مخزن الرئيس للاوائل', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg')
INSERT [dbo].[TbProduct] ([ProductId], [ProductName], [ProductDescription], [ProductPrice], [ProductCategoryId], [ProductCategoryName], [StartDate], [EndDate], [DiscountPercent], [ProductNewPrice], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [Quantity], [StoreId], [StoreName], [ProductImage]) VALUES (N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'مسامير عظمية', N'20', N'e8ec31fc-0a79-408f-9f3c-eb693b8cd6ac', N'عظام', CAST(N'2023-04-22T05:34:00.000' AS DateTime), CAST(N'2023-04-22T09:34:00.000' AS DateTime), N'10', N'18', NULL, NULL, CAST(N'2023-04-09T05:34:37.000' AS DateTime), NULL, NULL, NULL, 10, N'09988c4e-a3a6-434a-b67c-a65ce1584bd2', NULL, N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg')
INSERT [dbo].[TbProduct] ([ProductId], [ProductName], [ProductDescription], [ProductPrice], [ProductCategoryId], [ProductCategoryName], [StartDate], [EndDate], [DiscountPercent], [ProductNewPrice], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [Quantity], [StoreId], [StoreName], [ProductImage]) VALUES (N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'جبيرة', N'20', N'e8ec31fc-0a79-408f-9f3c-eb693b8cd6ac', N'عظام', CAST(N'2023-04-09T05:06:00.000' AS DateTime), CAST(N'2023-04-13T05:06:00.000' AS DateTime), N'10', N'18', NULL, NULL, CAST(N'2023-04-09T05:06:40.000' AS DateTime), NULL, NULL, NULL, 10, N'09988c4e-a3a6-434a-b67c-a65ce1584bd2', NULL, N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg')
INSERT [dbo].[TbProduct] ([ProductId], [ProductName], [ProductDescription], [ProductPrice], [ProductCategoryId], [ProductCategoryName], [StartDate], [EndDate], [DiscountPercent], [ProductNewPrice], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [Quantity], [StoreId], [StoreName], [ProductImage]) VALUES (N'b29e35f3-a159-4684-b85c-dab1d257a349', N'جهاز ضغط', N'جهاز ضغط شخصى', N'500', N'e8ec31fc-0a79-408f-9f3c-eb693b8cd6ac', N'عظام', CAST(N'2023-04-16T23:27:00.000' AS DateTime), CAST(N'2023-04-16T21:30:00.000' AS DateTime), N'10', N'450', NULL, NULL, CAST(N'2023-04-16T12:28:37.537' AS DateTime), NULL, NULL, 1, 10, N'b04f1c83-bc89-4a30-9997-ba9084c28f5e', N'مخزن الرئيس', N'77631fef-192e-4bae-922a-b255fce6f6a4.jpg')
INSERT [dbo].[TbProduct] ([ProductId], [ProductName], [ProductDescription], [ProductPrice], [ProductCategoryId], [ProductCategoryName], [StartDate], [EndDate], [DiscountPercent], [ProductNewPrice], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [Quantity], [StoreId], [StoreName], [ProductImage]) VALUES (N'5b0774bc-7d41-4b1e-8485-ed230235fc01', N'طرف صناعة', N'طرف صناعة', N'20', N'e8ec31fc-0a79-408f-9f3c-eb693b8cd6ac', N'عظام', CAST(N'2023-03-31T02:57:00.000' AS DateTime), CAST(N'2023-04-21T02:57:00.000' AS DateTime), N'10', N'18', NULL, NULL, CAST(N'2023-04-09T02:57:39.000' AS DateTime), NULL, NULL, NULL, 10, N'09988c4e-a3a6-434a-b67c-a65ce1584bd2', NULL, N'1f33f393-a051-4758-be46-ea16f07253f1.jpg')
GO
INSERT [dbo].[TbProductCategory] ([ProductCategoryId], [ProductCategoryName], [ProductCategoryDescription], [ProductCategoryImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'd1bfde8a-ab1c-41bc-bbf5-72ea1c3b3f8b', N'باطنة', N'باطنة', N'3b34f59e-593b-4887-88c9-321adec05995.jpg', NULL, NULL, CAST(N'2023-04-12T21:11:56.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[TbProductCategory] ([ProductCategoryId], [ProductCategoryName], [ProductCategoryDescription], [ProductCategoryImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'72885d22-258a-4829-b70e-8d7441bd380f', N'اجهزة جراحية ', N'اجهزة جراحية ', N'54d3fa5f-4176-4e49-a479-a085f888c3af.jpg', NULL, NULL, CAST(N'2023-04-16T13:33:50.180' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbProductCategory] ([ProductCategoryId], [ProductCategoryName], [ProductCategoryDescription], [ProductCategoryImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'e8ec31fc-0a79-408f-9f3c-eb693b8cd6ac', N'عظام', N'عظام', N'5d3ae347-7c32-4771-bf72-c6e03c8c77cb.jpg', NULL, NULL, CAST(N'2023-04-09T02:56:30.360' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TbPromocode] ([PromocodeId], [PromocodeTitle], [PromocodeDiscountPercent], [StartDate], [EndDate], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'a98a1bcc-49bb-4c6d-b5bf-6731d0126e10', N'gdfg20', N'30', CAST(N'2023-01-18T14:07:00.000' AS DateTime), CAST(N'2023-05-19T14:07:00.000' AS DateTime), NULL, NULL, CAST(N'2023-01-18T14:07:40.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[TbPurchaseSubscribtion] ([PurchaserSubscriptionId], [PurchaserId], [PurchaserName], [StartdDate], [EnddDate], [SubscriptionPackage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'a2051da0-b3b6-4824-9a4c-4e0b1de72647', N'ae5a2de3-a73a-460c-9e34-ad9d30a4b656', N'Ahmed Mostafa', CAST(N'2023-03-30T14:17:00.0000000' AS DateTime2), CAST(N'2023-03-13T22:20:00.0000000' AS DateTime2), N'مممم20', NULL, NULL, CAST(N'2023-03-13T22:17:13.790' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchaseSubscribtion] ([PurchaserSubscriptionId], [PurchaserId], [PurchaserName], [StartdDate], [EnddDate], [SubscriptionPackage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'e1c53bfa-3c2f-4b7e-954e-f2ce1e7ab577', N'b95330d7-36fd-40ed-b8d3-2d1e601b7dcc', N'dr_ahmedmostafa.2011@yahoo.com', CAST(N'2023-02-20T14:06:00.0000000' AS DateTime2), CAST(N'2023-02-20T14:07:00.0000000' AS DateTime2), N'مممم20', NULL, NULL, CAST(N'2023-02-20T14:07:04.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'f7bd9c25-64ef-42fc-8f47-01ad675ae7aa', NULL, N'بسكوت شاى ', NULL, N'5b0774bc-7d41-4b1e-8485-ed230235fc01', N'بسكوت شاى ', N'0369ac31-033c-48d6-859a-43ea2aed3f1a.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'2.5', N'جيد', N'20', N'10', N'string', NULL, NULL, N'string', N'string', N'839400cb-94ed-4580-a05c-9ad717a5c7c5', NULL, CAST(N'2023-04-10T01:12:17.107' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'0f6df65f-b245-4b57-8437-161c05e074ff', NULL, N'مشرط جراحة', NULL, N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', NULL, NULL, N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'f59eecce-7495-47c5-8f16-779c275734b2', NULL, CAST(N'2023-04-26T09:56:13.890' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'47127327-6c41-479e-8c06-1a27a3193cc3', NULL, N'مشرط جراحة', NULL, N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', NULL, NULL, N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'de24d756-bb91-433e-8131-5083619a1b6a', NULL, CAST(N'2023-04-29T01:09:02.043' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'9ca6c8f3-579a-45c0-9f3a-1a93f0ee7edb', NULL, N'جبيرة', NULL, N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'2.5', N'جيد', N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'de24d756-bb91-433e-8131-5083619a1b6a', NULL, CAST(N'2023-04-28T04:55:41.783' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'2df1ae8a-5af9-4d7c-80c0-2df2c110c978', NULL, N'بسكوت شاى ', NULL, N'5b0774bc-7d41-4b1e-8485-ed230235fc01', N'بسكوت شاى ', N'0369ac31-033c-48d6-859a-43ea2aed3f1a.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'2.5', N'جيد', N'20', N'10', N'string', NULL, NULL, N'string', N'string', N'839400cb-94ed-4580-a05c-9ad717a5c7c5', NULL, CAST(N'2023-04-10T14:12:06.680' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'e0203c2c-9d95-4efc-b9ad-57230c8fbb13', NULL, N'جهاز محلول', N'611b04be-178e-4bee-9bcb-14c9d4aed64e', N'93b8bc99-b23f-44b8-a6a8-146838e155df', N'جهاز محلول', N'17207ecb-c4a8-4fab-839e-ab071f28f264.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', NULL, NULL, N'10', N'10', N'string', NULL, NULL, N'string', N'string', N'7f8d56ad-7a99-438e-96c3-c09efe1f9a22', NULL, CAST(N'2023-04-04T10:54:42.603' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'49786bc4-c177-4d86-9322-57be4622307f', NULL, N'مشرط جراحة', NULL, N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', NULL, NULL, N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'491c7779-21f8-4452-b4b8-f194ce211f6d', NULL, CAST(N'2023-05-02T02:20:55.263' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'99152774-23ed-4626-9b5a-5995c303b65c', NULL, N'بسكوت شاى ', N'611b04be-178e-4bee-9bcb-14c9d4aed64e', N'44eb9c2d-2522-4fdb-bf8a-8ad83b5087f3', N'جهاز محلول', N'17207ecb-c4a8-4fab-839e-ab071f28f264.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', NULL, NULL, N'10', N'10', N'string', NULL, NULL, N'string', N'string', N'7f8d56ad-7a99-438e-96c3-c09efe1f9a22', NULL, CAST(N'2023-04-04T10:50:27.220' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'fb7def98-e2d4-4c5b-8bd0-5b7302566cdd', NULL, N'بسكوت شاى 120', NULL, N'969ff582-c0dc-4569-89ac-ccc654af2157', N'بسكوت شاى 120', N'34d986b5-b89b-414f-b645-9a32e4b4e842.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'2.5', N'جيد', N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'49c9c52d-6051-46a6-ba41-adddf6017227', NULL, CAST(N'2023-04-26T12:52:18.223' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'4ba9df20-fea0-4673-9053-78a3f02084b7', NULL, N'جهاز ترمومتر', N'611b04be-178e-4bee-9bcb-14c9d4aed64e', N'21629a19-6f42-497f-a8f9-9b4a7fe0a444', N'جهاز محلول', N'17207ecb-c4a8-4fab-839e-ab071f28f264.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', NULL, NULL, N'10', N'10', N'string', NULL, NULL, N'string', N'string', N'7f8d56ad-7a99-438e-96c3-c09efe1f9a22', NULL, CAST(N'2023-04-04T10:50:23.023' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'8db980b3-5711-40be-a7b1-89914052c1c5', NULL, N'جبيرة', NULL, N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'2.5', N'جيد', N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'19093a5e-a728-42e5-9c08-3229f6718dc7', NULL, CAST(N'2023-04-30T02:29:19.243' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'258b0c97-4819-4657-aefc-8be8dc608450', NULL, N'بسكوت شاى ', NULL, N'5b0774bc-7d41-4b1e-8485-ed230235fc01', N'بسكوت شاى ', N'0369ac31-033c-48d6-859a-43ea2aed3f1a.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'2.5', N'جيد', N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'9f73e539-4af6-4a9b-b545-83b1b6b5c913', NULL, CAST(N'2023-04-16T04:48:36.190' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'd1b4ca91-611b-465d-bd0b-8f348fc02fcb', NULL, N'بسكوت شاى 120', NULL, N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'بسكوت شاى 120', N'ee443aee-a803-49d2-8ea2-a43aeafc20ce.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', NULL, NULL, N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'f1aec3f6-f02e-465f-9837-6886fe5bd5fa', NULL, CAST(N'2023-04-14T16:56:34.580' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'4eb5e77c-8f90-4af3-80e3-b02d419bfbfa', NULL, N'بسكوت شاى ', NULL, N'5b0774bc-7d41-4b1e-8485-ed230235fc01', N'بسكوت شاى ', N'0369ac31-033c-48d6-859a-43ea2aed3f1a.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'2.5', N'جيد', N'20', N'10', N'string', NULL, NULL, N'string', N'string', N'744dc216-1518-4eb9-b733-36d19398155a', NULL, CAST(N'2023-04-09T09:51:47.130' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'59abc30c-340a-4621-97fb-b13a787c2a77', NULL, N'بسكوت شاى ', NULL, N'5b0774bc-7d41-4b1e-8485-ed230235fc01', N'بسكوت شاى ', N'0369ac31-033c-48d6-859a-43ea2aed3f1a.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'2.5', N'جيد', N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'839400cb-94ed-4580-a05c-9ad717a5c7c5', NULL, CAST(N'2023-04-15T23:40:19.413' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'9288b754-1738-4e33-b2e6-c11e51ff0c09', NULL, N'بسكوت شاى ', NULL, N'5b0774bc-7d41-4b1e-8485-ed230235fc01', N'بسكوت شاى ', N'0369ac31-033c-48d6-859a-43ea2aed3f1a.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'2.5', N'جيد', N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'839400cb-94ed-4580-a05c-9ad717a5c7c5', NULL, CAST(N'2023-04-10T14:28:41.217' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'10324690-8471-4e71-9062-c4ebe2a125ab', NULL, N'مسامير عظمية', NULL, N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', NULL, NULL, N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'de24d756-bb91-433e-8131-5083619a1b6a', NULL, CAST(N'2023-04-27T14:28:44.543' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'ab09b876-de2d-4495-83fa-cb9a7a3dd2bc', NULL, N'بسكوت شاى ', NULL, N'5b0774bc-7d41-4b1e-8485-ed230235fc01', N'بسكوت شاى ', N'0369ac31-033c-48d6-859a-43ea2aed3f1a.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'2.5', N'جيد', N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'b4eca4ae-abf1-4e67-bac3-c1760e9746f1', NULL, CAST(N'2023-04-19T05:38:20.160' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'524267a1-f698-453e-8250-ce8b13897952', NULL, N'مشرط جراحة', NULL, N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', NULL, NULL, N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'f1aec3f6-f02e-465f-9837-6886fe5bd5fa', NULL, CAST(N'2023-04-23T12:46:30.430' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'7ac31170-c669-468f-b825-d24e0d48318a', NULL, N'بسكوت شاى ', NULL, N'5b0774bc-7d41-4b1e-8485-ed230235fc01', N'بسكوت شاى ', N'0369ac31-033c-48d6-859a-43ea2aed3f1a.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'2.5', N'جيد', N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'3fc0e992-d07c-48fe-b6cf-15439da7cffb', NULL, CAST(N'2023-04-10T23:36:02.160' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'20433c22-a4a0-4c92-aaa2-daa1c83910c6', NULL, N'بسكوت شاى 120', NULL, N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'بسكوت شاى 120', N'ee443aee-a803-49d2-8ea2-a43aeafc20ce.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', NULL, NULL, N'20', N'10', N'string', NULL, NULL, N'string', N'string', N'744dc216-1518-4eb9-b733-36d19398155a', NULL, CAST(N'2023-04-09T09:43:24.120' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'f566d92f-710a-4802-a0d8-df60d54ebd6e', NULL, N'مسامير عظمية', NULL, N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', NULL, NULL, N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'de24d756-bb91-433e-8131-5083619a1b6a', NULL, CAST(N'2023-04-27T14:24:06.660' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'2c95790d-ca87-47fc-af5e-df8d330c17a7', NULL, N'طرف صناعة', NULL, N'5b0774bc-7d41-4b1e-8485-ed230235fc01', N'طرف صناعة', N'9b12158f-dc0c-40e4-9301-cddb507dda8e.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'2.5', N'جيد', N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'f59eecce-7495-47c5-8f16-779c275734b2', NULL, CAST(N'2023-04-27T00:26:26.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'28e4cafe-0263-4703-add3-e80251f8c01f', NULL, N'مشرط جراحة', NULL, N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', NULL, NULL, N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'19093a5e-a728-42e5-9c08-3229f6718dc7', NULL, CAST(N'2023-04-30T02:27:29.643' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'ec7cfd10-3765-4e70-b6cf-ec8037380c92', NULL, N'بسكوت شاى ', NULL, N'5b0774bc-7d41-4b1e-8485-ed230235fc01', N'بسكوت شاى ', N'0369ac31-033c-48d6-859a-43ea2aed3f1a.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'2.5', N'جيد', N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'839400cb-94ed-4580-a05c-9ad717a5c7c5', NULL, CAST(N'2023-04-10T14:16:33.897' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'6fafbfab-cbca-4f0f-91c4-f6ad15de2344', NULL, N'مسامير عظمية', NULL, N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', NULL, NULL, N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'de24d756-bb91-433e-8131-5083619a1b6a', NULL, CAST(N'2023-04-27T16:20:36.070' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'0b3f2379-e65a-4e1d-847a-fc6023d25e86', NULL, N'مسامير عظمية', NULL, N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', NULL, NULL, N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'19093a5e-a728-42e5-9c08-3229f6718dc7', NULL, CAST(N'2023-04-30T02:28:50.460' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'9a068a38-5135-4bea-86c0-fdcb9f8e8e3f', NULL, N'مشرط جراحة', NULL, N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', NULL, NULL, N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'11ffd692-fe42-4f04-8439-522fbee2d56c', NULL, CAST(N'2023-04-27T14:26:59.553' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbPurchasingCart] ([PurchasingCartId], [Id], [Name], [SupplierProductId], [ProductId], [ProductName], [ProductImage], [SupplierId], [SupplierName], [ProductEvaluationStarts], [ProductEvaluationNumber], [ProductPrice], [ProductMaximumSale], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'f72d58a2-c40e-4813-a729-ffc1a54c5d0d', NULL, N'مسامير عظمية', NULL, N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', NULL, NULL, N'20', NULL, NULL, NULL, NULL, NULL, NULL, N'5eb4d9e4-f870-4b1e-b38f-fc6cefb5acba', NULL, CAST(N'2023-04-29T01:15:58.620' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TbSalesInvoice] ([SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [PaymnetMethodId], [PaymnetMethodName], [TotalInvoiceValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [Promocode], [DeliveryValue], [DiscValue], [TaxValue], [TotalAfterTax], [TotalInvoiceAfter]) VALUES (N'1484dfcc-c260-4002-8e77-102817fbe6d5', NULL, NULL, NULL, NULL, NULL, N'19093a5e-a728-42e5-9c08-3229f6718dc7', NULL, N'7ee2fb6b-517e-4081-8632-399ae92db748', NULL, N'189', N'قنا', NULL, N'19093a5e-a728-42e5-9c08-3229f6718dc7', NULL, CAST(N'2023-05-03T20:01:36.093' AS DateTime), NULL, NULL, 1, N'30', CAST(25.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(22.26 AS Decimal(18, 2)), CAST(181.26 AS Decimal(18, 2)), CAST(206.26 AS Decimal(18, 2)))
INSERT [dbo].[TbSalesInvoice] ([SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [PaymnetMethodId], [PaymnetMethodName], [TotalInvoiceValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [Promocode], [DeliveryValue], [DiscValue], [TaxValue], [TotalAfterTax], [TotalInvoiceAfter]) VALUES (N'f8fc9793-b7cb-41c8-85ba-3404a9e09eda', NULL, NULL, NULL, NULL, NULL, N'19093a5e-a728-42e5-9c08-3229f6718dc7', NULL, N'7ee2fb6b-517e-4081-8632-399ae92db748', NULL, N'189', N'قنا', NULL, N'19093a5e-a728-42e5-9c08-3229f6718dc7', NULL, CAST(N'2023-05-03T20:25:11.650' AS DateTime), NULL, NULL, 1, N'', CAST(25.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(26.46 AS Decimal(18, 2)), CAST(215.46 AS Decimal(18, 2)), CAST(240.46 AS Decimal(18, 2)))
INSERT [dbo].[TbSalesInvoice] ([SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [PaymnetMethodId], [PaymnetMethodName], [TotalInvoiceValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [Promocode], [DeliveryValue], [DiscValue], [TaxValue], [TotalAfterTax], [TotalInvoiceAfter]) VALUES (N'f4998f28-9560-4b3c-9d8e-5f8339b06664', NULL, NULL, NULL, NULL, NULL, N'19093a5e-a728-42e5-9c08-3229f6718dc7', NULL, N'7ee2fb6b-517e-4081-8632-399ae92db748', NULL, N'189', N'قنا', NULL, N'19093a5e-a728-42e5-9c08-3229f6718dc7', NULL, CAST(N'2023-05-03T19:56:21.867' AS DateTime), NULL, NULL, 1, N'30', CAST(25.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(22.26 AS Decimal(18, 2)), CAST(181.26 AS Decimal(18, 2)), CAST(206.26 AS Decimal(18, 2)))
INSERT [dbo].[TbSalesInvoice] ([SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [PaymnetMethodId], [PaymnetMethodName], [TotalInvoiceValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [Promocode], [DeliveryValue], [DiscValue], [TaxValue], [TotalAfterTax], [TotalInvoiceAfter]) VALUES (N'30429958-e811-4a8e-8c4e-6e76bd1702c2', NULL, NULL, NULL, NULL, NULL, N'19093a5e-a728-42e5-9c08-3229f6718dc7', NULL, N'7ee2fb6b-517e-4081-8632-399ae92db748', NULL, N'189', N'قنا', NULL, N'19093a5e-a728-42e5-9c08-3229f6718dc7', NULL, CAST(N'2023-05-03T20:26:41.803' AS DateTime), NULL, NULL, 1, N'10', CAST(25.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(25.06 AS Decimal(18, 2)), CAST(204.06 AS Decimal(18, 2)), CAST(229.06 AS Decimal(18, 2)))
INSERT [dbo].[TbSalesInvoice] ([SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [PaymnetMethodId], [PaymnetMethodName], [TotalInvoiceValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [Promocode], [DeliveryValue], [DiscValue], [TaxValue], [TotalAfterTax], [TotalInvoiceAfter]) VALUES (N'e8575f96-16b4-483b-8334-a1c42bb5fa2e', NULL, NULL, NULL, NULL, NULL, N'19093a5e-a728-42e5-9c08-3229f6718dc7', NULL, N'7ee2fb6b-517e-4081-8632-399ae92db748', NULL, N'189', N'قنا', NULL, N'19093a5e-a728-42e5-9c08-3229f6718dc7', NULL, CAST(N'2023-05-03T19:59:37.660' AS DateTime), NULL, NULL, 1, N'30', CAST(25.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(22.26 AS Decimal(18, 2)), CAST(181.26 AS Decimal(18, 2)), CAST(206.26 AS Decimal(18, 2)))
INSERT [dbo].[TbSalesInvoice] ([SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [PaymnetMethodId], [PaymnetMethodName], [TotalInvoiceValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [Promocode], [DeliveryValue], [DiscValue], [TaxValue], [TotalAfterTax], [TotalInvoiceAfter]) VALUES (N'87916d38-adbb-405b-b6aa-a1c5d1dddab3', NULL, NULL, NULL, NULL, NULL, N'19093a5e-a728-42e5-9c08-3229f6718dc7', NULL, N'7ee2fb6b-517e-4081-8632-399ae92db748', NULL, N'189', N'قنا', NULL, N'19093a5e-a728-42e5-9c08-3229f6718dc7', NULL, CAST(N'2023-05-04T21:07:11.853' AS DateTime), NULL, NULL, 1, N'30', CAST(25.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(26.46 AS Decimal(18, 2)), CAST(215.46 AS Decimal(18, 2)), CAST(240.46 AS Decimal(18, 2)))
INSERT [dbo].[TbSalesInvoice] ([SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [PaymnetMethodId], [PaymnetMethodName], [TotalInvoiceValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [Promocode], [DeliveryValue], [DiscValue], [TaxValue], [TotalAfterTax], [TotalInvoiceAfter]) VALUES (N'c4366b49-0b1a-4bc0-8dda-e4cf38272524', NULL, NULL, NULL, NULL, NULL, N'19093a5e-a728-42e5-9c08-3229f6718dc7', NULL, N'7ee2fb6b-517e-4081-8632-399ae92db748', NULL, N'189', N'قنا', NULL, N'19093a5e-a728-42e5-9c08-3229f6718dc7', NULL, CAST(N'2023-05-04T21:13:07.583' AS DateTime), NULL, NULL, 1, N'30', CAST(25.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(25.06 AS Decimal(18, 2)), CAST(204.06 AS Decimal(18, 2)), CAST(229.06 AS Decimal(18, 2)))
GO
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'9005024f-1bbc-4d3b-a25f-0662e6ac7ad8', N'c4366b49-0b1a-4bc0-8dda-e4cf38272524', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-04T21:13:09.550' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'cc616654-0261-42e4-8c3d-0ad1565ba36f', N'f4998f28-9560-4b3c-9d8e-5f8339b06664', NULL, NULL, NULL, NULL, NULL, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-03T19:56:33.603' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'5b27d66e-2584-477e-8404-0fdd4cfbfc14', N'86a266fb-5ea8-42e1-917f-399dccd30eac', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'7', NULL, NULL, NULL, NULL, N'140', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T10:51:05.647' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'6578b27b-23cb-43ef-9a63-1a873e3a3071', N'996b5e70-068f-4b79-8b6d-57bc2d04f594', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'3', NULL, NULL, NULL, NULL, N'60', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T23:38:39.860' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'e2c77827-88a5-48f3-94de-1be149af324a', N'98339950-9f92-4e7a-956f-3e970bba5598', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'9', NULL, NULL, NULL, NULL, N'180', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T10:44:10.817' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'18d6d027-3201-45e4-be89-2c54173e53d9', N'ca92833b-4b95-429d-b039-eafb9b3bd699', NULL, NULL, NULL, NULL, NULL, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'8', NULL, NULL, NULL, NULL, N'160', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T07:06:48.007' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'ee847205-6299-482a-96f0-305156967424', N'fb89e475-a983-47d5-835e-0f99cad0a0eb', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'9', NULL, NULL, NULL, NULL, N'180', NULL, NULL, NULL, NULL, CAST(N'2023-05-01T10:28:48.817' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'77a4d315-5c16-4479-b2db-379c86f41fe1', N'3e34a5ac-489f-4022-9df1-6131c4b682bb', NULL, NULL, NULL, NULL, NULL, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'8', NULL, NULL, NULL, NULL, N'160', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T14:40:36.900' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'f70d704e-0383-4ede-a402-3e43a96e0ab0', N'f8fc9793-b7cb-41c8-85ba-3404a9e09eda', NULL, NULL, NULL, NULL, NULL, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-03T20:25:22.323' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'bf94edd8-b4ff-4a2c-a8fd-422d5f93d4d6', N'73de5bcc-f9d6-45ee-88ab-066c561ee014', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'9', NULL, NULL, NULL, NULL, N'180', NULL, NULL, NULL, NULL, CAST(N'2023-05-03T09:34:17.320' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'9b2a3766-d5a8-4fc5-8c50-439235f3859b', N'ca92833b-4b95-429d-b039-eafb9b3bd699', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'9', NULL, NULL, NULL, NULL, N'180', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T07:06:48.000' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'528b9cbf-6b57-437f-b4d9-44063ce41349', N'f4998f28-9560-4b3c-9d8e-5f8339b06664', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-03T19:56:33.300' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'086fb3f0-bf54-4e35-b0b8-4802278d2f1b', N'73de5bcc-f9d6-45ee-88ab-066c561ee014', NULL, NULL, NULL, NULL, NULL, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'8', NULL, NULL, NULL, NULL, N'160', NULL, NULL, NULL, NULL, CAST(N'2023-05-03T09:34:17.853' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'72f8dd95-6a0e-4742-83fd-4ce218039241', N'86a266fb-5ea8-42e1-917f-399dccd30eac', NULL, NULL, NULL, NULL, NULL, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'8', NULL, NULL, NULL, NULL, N'160', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T10:51:05.637' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'19a22a92-2d81-45d7-9cf5-5347d85dd49a', N'f5f72207-57ab-478c-b16d-c9a004c1b883', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'7', NULL, NULL, NULL, NULL, N'140', NULL, NULL, NULL, NULL, CAST(N'2023-05-01T10:31:05.627' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'4793e573-16da-4f5a-a891-54d88d5deafb', N'df7169b0-a071-491e-b3df-718c65309eac', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'7', NULL, NULL, NULL, NULL, N'140', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T10:45:23.720' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'de1fe8aa-404c-41b0-93cc-5c88ff63cb99', N'0e077cd4-31dd-4f27-b6c3-24da2386d9ab', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'9', NULL, NULL, NULL, NULL, N'180', NULL, NULL, NULL, NULL, CAST(N'2023-05-01T10:38:55.337' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'61f42eba-a632-4a00-989c-5dffd9d74cb4', N'30429958-e811-4a8e-8c4e-6e76bd1702c2', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-03T20:26:52.443' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'8478569e-a760-442c-a012-66ecfdf6e5b1', N'3e34a5ac-489f-4022-9df1-6131c4b682bb', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'7', NULL, NULL, NULL, NULL, N'140', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T14:40:36.903' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'19c00575-dd54-4109-9d78-6751891f943f', N'ca92833b-4b95-429d-b039-eafb9b3bd699', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'7', NULL, NULL, NULL, NULL, N'140', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T07:06:48.010' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'edd63413-1fd2-4297-8ad5-67f09f535774', N'f8fc9793-b7cb-41c8-85ba-3404a9e09eda', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-03T20:25:22.723' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'd59b2d5e-9d92-4e88-b022-6dd0d5b04eba', N'76fefa26-8627-4891-b236-7ac544a81d24', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'7', NULL, NULL, NULL, NULL, N'140', NULL, NULL, NULL, NULL, CAST(N'2023-05-01T10:41:16.523' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'14cd16be-308b-4abe-a642-7653484c237b', N'1484dfcc-c260-4002-8e77-102817fbe6d5', NULL, NULL, NULL, NULL, NULL, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-03T20:01:48.797' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'ded59313-058f-491c-9827-781d070114cf', N'f5f72207-57ab-478c-b16d-c9a004c1b883', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'9', NULL, NULL, NULL, NULL, N'180', NULL, NULL, NULL, NULL, CAST(N'2023-05-01T10:31:04.900' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'eaa72f21-0ffd-4652-af65-783b32c26667', N'98339950-9f92-4e7a-956f-3e970bba5598', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'7', NULL, NULL, NULL, NULL, N'140', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T10:44:11.597' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'c813de7e-6b53-43b8-8430-7c1b558c2192', N'87916d38-adbb-405b-b6aa-a1c5d1dddab3', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-04T21:08:26.757' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'27a96c55-56ce-4ca3-979c-8159b1f8650f', N'4b5e9697-e690-41ba-9287-c85e4d8f810e', NULL, NULL, NULL, NULL, NULL, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'8', NULL, NULL, NULL, NULL, N'160', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T06:57:04.983' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'd3d6188b-40a0-458f-b9ef-86098ec98a63', N'f8fc9793-b7cb-41c8-85ba-3404a9e09eda', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-03T20:25:22.073' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'6adf2360-6cf5-4b7a-a7bd-8c9fec299318', N'a476112b-627c-463d-9af7-b02c1f5b1edd', NULL, NULL, NULL, NULL, NULL, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'8', NULL, NULL, NULL, NULL, N'160', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T23:38:10.907' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'48b8f3eb-19ae-4a75-898a-924bf3f48651', N'df7169b0-a071-491e-b3df-718c65309eac', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'9', NULL, NULL, NULL, NULL, N'180', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T10:45:23.017' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'ca0fb628-994c-4723-865b-92b4a160f3f6', N'76fefa26-8627-4891-b236-7ac544a81d24', NULL, NULL, NULL, NULL, NULL, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'8', NULL, NULL, NULL, NULL, N'160', NULL, NULL, NULL, NULL, CAST(N'2023-05-01T10:41:16.037' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'd2ec2f59-e549-4a8c-87f8-9e9201fed2da', N'f5f72207-57ab-478c-b16d-c9a004c1b883', NULL, NULL, NULL, NULL, NULL, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'8', NULL, NULL, NULL, NULL, N'160', NULL, NULL, NULL, NULL, CAST(N'2023-05-01T10:31:05.263' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'2765236c-a84d-4906-a32a-a2934bdd0809', N'1484dfcc-c260-4002-8e77-102817fbe6d5', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-03T20:01:49.197' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'11dfcc66-0738-4e8e-872e-a2d079a2f6de', N'30429958-e811-4a8e-8c4e-6e76bd1702c2', NULL, NULL, NULL, NULL, NULL, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-03T20:26:52.030' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'46142a42-ee49-4ec4-8f76-a76506ea1c05', N'88e55c4e-770f-4959-b6b4-7f5899e68220', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'9', NULL, NULL, NULL, NULL, N'180', NULL, NULL, NULL, NULL, CAST(N'2023-05-01T10:55:31.087' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'8ebdeb7a-3ba9-4181-9287-a778ce07e755', N'1484dfcc-c260-4002-8e77-102817fbe6d5', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-03T20:01:48.400' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'97251c7f-4735-4e85-8e07-b15a00fe9bf1', N'df7169b0-a071-491e-b3df-718c65309eac', NULL, NULL, NULL, NULL, NULL, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'8', NULL, NULL, NULL, NULL, N'160', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T10:45:23.380' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'9f2445df-66d0-42b5-b3f7-b2bdcc419f6f', N'0e077cd4-31dd-4f27-b6c3-24da2386d9ab', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'7', NULL, NULL, NULL, NULL, N'140', NULL, NULL, NULL, NULL, CAST(N'2023-05-01T10:38:56.020' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'371c8772-94c2-4a46-871e-b945a32af133', N'87916d38-adbb-405b-b6aa-a1c5d1dddab3', NULL, NULL, NULL, NULL, NULL, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-04T21:08:26.290' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'9d4d7a31-623b-440e-9a6d-baf3a460a9b5', N'0e077cd4-31dd-4f27-b6c3-24da2386d9ab', NULL, NULL, NULL, NULL, NULL, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'8', NULL, NULL, NULL, NULL, N'160', NULL, NULL, NULL, NULL, CAST(N'2023-05-01T10:38:55.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'f937d2c8-49c0-486a-b5c8-bbd6419da349', N'4b5e9697-e690-41ba-9287-c85e4d8f810e', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'9', NULL, NULL, NULL, NULL, N'180', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T06:57:04.623' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'f6b0f45c-2010-4c84-8f73-bd2551889d99', N'88e55c4e-770f-4959-b6b4-7f5899e68220', NULL, NULL, NULL, NULL, NULL, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'8', NULL, NULL, NULL, NULL, N'160', NULL, NULL, NULL, NULL, CAST(N'2023-05-01T10:55:31.443' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'3ab617bc-3a46-4ab2-ab11-bf034e584439', N'98339950-9f92-4e7a-956f-3e970bba5598', NULL, NULL, NULL, NULL, NULL, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'8', NULL, NULL, NULL, NULL, N'160', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T10:44:11.240' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'a54629e3-0582-4f05-943c-c82a2993e033', N'c4366b49-0b1a-4bc0-8dda-e4cf38272524', NULL, NULL, NULL, NULL, NULL, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-04T21:13:09.073' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'32e04273-1444-4f2e-8af3-cc2df23bb7f5', N'87916d38-adbb-405b-b6aa-a1c5d1dddab3', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-04T21:08:26.530' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'8e1aac13-62b0-43ea-8dc9-cefed9cfb5fb', N'3e34a5ac-489f-4022-9df1-6131c4b682bb', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'9', NULL, NULL, NULL, NULL, N'180', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T14:40:36.883' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'f360782a-71a8-40e5-8f26-d74c2c97cd33', N'a476112b-627c-463d-9af7-b02c1f5b1edd', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'7', NULL, NULL, NULL, NULL, N'140', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T23:38:10.930' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'48f22af4-e861-4734-8217-d76006b3caa4', N'996b5e70-068f-4b79-8b6d-57bc2d04f594', NULL, NULL, NULL, NULL, NULL, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'1', NULL, NULL, NULL, NULL, N'20', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T23:38:39.880' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'72c8856a-211a-4ba6-b07c-d8308b5cdfd8', N'996b5e70-068f-4b79-8b6d-57bc2d04f594', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'5', NULL, NULL, NULL, NULL, N'100', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T23:38:39.897' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'f625ec43-717d-473b-96d3-e4e9e25839b7', N'88e55c4e-770f-4959-b6b4-7f5899e68220', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'7', NULL, NULL, NULL, NULL, N'140', NULL, NULL, NULL, NULL, CAST(N'2023-05-01T10:55:31.780' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'48432477-f96a-4c00-8d72-e6f51e02ce72', N'a476112b-627c-463d-9af7-b02c1f5b1edd', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'9', NULL, NULL, NULL, NULL, N'180', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T23:38:10.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'16653919-6e9c-4454-9774-e8e49defbdea', N'f4998f28-9560-4b3c-9d8e-5f8339b06664', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-03T19:56:34.013' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'd5d3f474-6feb-464f-80b4-ec668fbeada5', N'30429958-e811-4a8e-8c4e-6e76bd1702c2', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-03T20:26:51.620' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'36976c3f-d7da-4ec0-8c54-f24c9c576039', N'4b5e9697-e690-41ba-9287-c85e4d8f810e', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'7', NULL, NULL, NULL, NULL, N'140', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T06:57:05.340' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'2d9f756e-071f-4fce-9ded-f2a11252d282', N'86a266fb-5ea8-42e1-917f-399dccd30eac', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'9', NULL, NULL, NULL, NULL, N'180', NULL, NULL, NULL, NULL, CAST(N'2023-04-30T10:51:05.620' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'f04fd37b-3122-442c-a124-f57eb5835c7a', N'fb89e475-a983-47d5-835e-0f99cad0a0eb', NULL, NULL, NULL, NULL, NULL, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'3ee91e29-0479-462a-9d0b-8e6b4142c142', N'مشرط جراحة', N'f8745ed0-0cb3-4f8c-b59b-d0586a5e599a.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'8', NULL, NULL, NULL, NULL, N'160', NULL, NULL, NULL, NULL, CAST(N'2023-05-01T10:28:49.183' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'89087e21-aa6f-4763-8ed8-f9388ee30217', N'fb89e475-a983-47d5-835e-0f99cad0a0eb', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'7', NULL, NULL, NULL, NULL, N'140', NULL, NULL, NULL, NULL, CAST(N'2023-05-01T10:28:50.307' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'2ccf1134-5059-44ba-aa73-fb34a0489c4a', N'76fefa26-8627-4891-b236-7ac544a81d24', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'673fe472-8e64-4943-a7b1-271f9e07c557.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'9', NULL, NULL, NULL, NULL, N'180', NULL, NULL, NULL, NULL, CAST(N'2023-05-01T10:41:15.370' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'16025010-44d9-451a-b28f-fb3f57d78e5e', N'c4366b49-0b1a-4bc0-8dda-e4cf38272524', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-04T21:13:09.300' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSalesInvoiceProduct] ([SalesInvoiceProductId], [SalesInvoiceId], [DelivryDate], [Id], [Name], [DeliveryManId], [DeliveryManName], [SupplierId], [SupplierName], [ProductId], [ProductName], [ProductImage], [ProductPrice], [Promocode], [StartDate], [EndDate], [DiscountPercent], [ProductPriceAfterDiscount], [ProductQty], [ProductCategoryId], [ProductCategoryName], [PaymnetMethodId], [PaymnetMethodName], [TotalProductValue], [DeliveryAddress], [DeliveryStatus], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'a1d95012-08e4-4f96-a8ee-fe08dd27b675', N'73de5bcc-f9d6-45ee-88ab-066c561ee014', NULL, NULL, NULL, NULL, NULL, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'8deb5df5-3906-4724-889e-ce12adf8f640.jpg', N'20', NULL, NULL, NULL, NULL, NULL, N'7', NULL, NULL, NULL, NULL, N'140', NULL, NULL, NULL, NULL, CAST(N'2023-05-03T09:34:18.387' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TbSetting] ([SettingId], [ValueAddedTax], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'f329fcdd-da15-4d88-9b8e-6d437e403298', N'14%', NULL, NULL, CAST(N'2023-03-19T15:07:44.300' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TbSlider] ([SliderId], [SliderTitle], [SliderText], [SliderImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [OrderNo], [SliderLocation], [Type]) VALUES (N'4f85fe0a-b379-4d66-866a-045b8ba95ce3', N'جميع مستلزماتك الطبية بارخص الاسعار ', N'ولاتنسى تشييك على صفحة العروض', N'9c04d1af-5e58-4fb8-a2a3-251e174a8c8d.jpg', NULL, NULL, CAST(N'2023-02-01T14:38:24.000' AS DateTime), NULL, NULL, NULL, 1, N'الصفحة رقم 13', 1)
INSERT [dbo].[TbSlider] ([SliderId], [SliderTitle], [SliderText], [SliderImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [OrderNo], [SliderLocation], [Type]) VALUES (N'12159398-f090-43d7-b6c3-782b75dcd1fd', N'اشترك ف ظام ادارة الصيدليات', N'اشترك ف ظام ادارة الصيدليات', N'f5388d65-9871-42ca-9b9d-a6bf070c7e32.jpg', NULL, NULL, CAST(N'2023-03-19T04:42:37.000' AS DateTime), NULL, NULL, NULL, 3, N'اشترك ف ظام ادارة الصيدليات', 0)
INSERT [dbo].[TbSlider] ([SliderId], [SliderTitle], [SliderText], [SliderImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [OrderNo], [SliderLocation], [Type]) VALUES (N'e54b6330-1b43-4439-98d9-9a8794223bf8', N'تنظيم وادارة مشترياتك صارت اسهل معانا', N'مع تحديث مباشر للمخزون و فوري ', N'802bc60c-51a0-4f3e-b83f-9364537ccc8d.jpg', NULL, NULL, CAST(N'2023-02-01T14:39:26.000' AS DateTime), NULL, NULL, NULL, 2, N'الصفحة رقم 13', 1)
GO
INSERT [dbo].[TbStore] ([StoreId], [StoreName], [StoreDescription], [StoreImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [SupplierId], [SupplierName]) VALUES (N'2733d6aa-6cf8-4522-938b-2b9b3fd1aabe', N'مخزن الرئيس', N'مخزن الرئيس', N'87c929c7-b062-42ce-8bb2-54d0c7fb10c9.jpg', NULL, NULL, CAST(N'2023-04-09T05:35:08.517' AS DateTime), NULL, NULL, 1, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022')
INSERT [dbo].[TbStore] ([StoreId], [StoreName], [StoreDescription], [StoreImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [SupplierId], [SupplierName]) VALUES (N'2c9fc192-ba47-486a-bdd3-38a714bd9bc1', N'مخزن الرئيس', N'مخزن الرئيس', N'9ad0cb7c-df02-4073-9e52-cddeb8d57441.jpg', NULL, NULL, CAST(N'2023-04-09T05:45:21.087' AS DateTime), NULL, NULL, 1, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022')
INSERT [dbo].[TbStore] ([StoreId], [StoreName], [StoreDescription], [StoreImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [SupplierId], [SupplierName]) VALUES (N'a1f3b50c-7f0e-4d2f-8129-3ba51d67b5b7', N'مخزن الرئيس', N'مخزن الرئيس', N'8187a563-be08-4a56-b833-1a1650a39f4a.jpg', NULL, NULL, CAST(N'2023-04-09T06:28:10.540' AS DateTime), NULL, NULL, 1, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022')
INSERT [dbo].[TbStore] ([StoreId], [StoreName], [StoreDescription], [StoreImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [SupplierId], [SupplierName]) VALUES (N'ca2dd648-34f2-406c-a7d6-4451c56a95a8', N'مخزن الرئيس', N'مخزن الرئيس', N'e9e3a346-6724-4886-ae27-305b1e83a359.jpg', NULL, NULL, CAST(N'2023-04-09T06:03:06.003' AS DateTime), NULL, NULL, 1, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022')
INSERT [dbo].[TbStore] ([StoreId], [StoreName], [StoreDescription], [StoreImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [SupplierId], [SupplierName]) VALUES (N'29b1e452-1600-4520-a7ab-6117421f7371', N'مخزن الرئيس', N'مخزن الرئيس', N'39dbd657-9b49-4f61-b9d5-cef1105f3737.jpg', NULL, NULL, CAST(N'2023-04-09T06:28:47.170' AS DateTime), NULL, NULL, 1, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022')
INSERT [dbo].[TbStore] ([StoreId], [StoreName], [StoreDescription], [StoreImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [SupplierId], [SupplierName]) VALUES (N'939c8b14-8ef8-482e-a05a-7c3f16416ce5', N'مخزن الرئيس', N'مخزن الرئيس', N'dbdfa123-a004-4e28-aaad-514ad1a73d25.jpg', NULL, NULL, CAST(N'2023-04-09T06:27:03.420' AS DateTime), NULL, NULL, 1, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022')
INSERT [dbo].[TbStore] ([StoreId], [StoreName], [StoreDescription], [StoreImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [SupplierId], [SupplierName]) VALUES (N'c2efbabf-f27e-44f5-9b63-80eba8ecfad8', N'مخزن الرئيس', N'مخزن الرئيس', N'0ac07ad7-43ca-44de-a8b1-02d64fa76610.jpg', NULL, NULL, CAST(N'2023-04-09T06:08:47.093' AS DateTime), NULL, NULL, 1, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022')
INSERT [dbo].[TbStore] ([StoreId], [StoreName], [StoreDescription], [StoreImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [SupplierId], [SupplierName]) VALUES (N'4552d505-bd13-4373-a97f-8f7ed07ecc31', N'مخزن الرئيس', N'مخزن الرئيس', N'2ee47ba5-ea53-4936-813a-54860332abea.jpg', NULL, NULL, CAST(N'2023-04-09T06:28:27.800' AS DateTime), NULL, NULL, 1, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022')
INSERT [dbo].[TbStore] ([StoreId], [StoreName], [StoreDescription], [StoreImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [SupplierId], [SupplierName]) VALUES (N'e86c464c-45fe-44e0-a9a2-9786a7f80799', N'wwwww', N'wwwwwww', N'df30cf37-6cf8-4667-bb86-ada2d192b45f.jpg', NULL, NULL, CAST(N'2023-04-22T09:23:04.513' AS DateTime), NULL, NULL, 1, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ')
INSERT [dbo].[TbStore] ([StoreId], [StoreName], [StoreDescription], [StoreImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [SupplierId], [SupplierName]) VALUES (N'22a68a3c-998e-4a36-bda5-97a53aecb288', N'مخزن الرئيس', N'مخزن الرئيس', N'9e62daaf-9b98-4c9b-9b4a-278df4aa002b.jpg', NULL, NULL, CAST(N'2023-04-09T05:39:53.163' AS DateTime), NULL, NULL, 1, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022')
INSERT [dbo].[TbStore] ([StoreId], [StoreName], [StoreDescription], [StoreImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [SupplierId], [SupplierName]) VALUES (N'09988c4e-a3a6-434a-b67c-a65ce1584bd2', N'مخزن الرئيس', N'مخزن الرئيس', N'130087d4-b9cf-4d82-ab58-bd64b6971fad.jpg', NULL, NULL, CAST(N'2023-04-09T02:59:02.337' AS DateTime), NULL, NULL, 1, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022')
INSERT [dbo].[TbStore] ([StoreId], [StoreName], [StoreDescription], [StoreImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [SupplierId], [SupplierName]) VALUES (N'045bd933-9cf0-4266-b42c-a66165089e00', N'مخزن الرئيس', N'مخزن الرئيس', N'bb484626-8a92-49fa-8e4e-776d4781dd44.jpg', NULL, NULL, CAST(N'2023-04-09T05:36:23.237' AS DateTime), NULL, NULL, 1, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022')
INSERT [dbo].[TbStore] ([StoreId], [StoreName], [StoreDescription], [StoreImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [SupplierId], [SupplierName]) VALUES (N'49854158-065d-4f9c-aaf4-b77ec2e17e1d', N'مخزن الرئيس للاوائل', N'مخزن الرئيس للاوائل', N'98a1ce1a-970e-4657-a760-26b8833bd3b7.jpg', NULL, NULL, CAST(N'2023-04-16T13:33:01.597' AS DateTime), NULL, NULL, 1, N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ')
INSERT [dbo].[TbStore] ([StoreId], [StoreName], [StoreDescription], [StoreImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [SupplierId], [SupplierName]) VALUES (N'b04f1c83-bc89-4a30-9997-ba9084c28f5e', N'مخزن الرئيس', N'مخزن الرئيس', N'66a71e08-df34-430d-a134-6d6a8ab67c4c.jpg', NULL, NULL, CAST(N'2023-04-09T05:40:21.770' AS DateTime), NULL, NULL, 1, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022')
INSERT [dbo].[TbStore] ([StoreId], [StoreName], [StoreDescription], [StoreImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [SupplierId], [SupplierName]) VALUES (N'ca81be13-cefe-49fe-a1e2-bb3071d9b012', N'مخزن الرئيس', N'مخزن الرئيس', N'886211e1-2940-4931-af20-e42e88fe8aad.jpg', NULL, NULL, CAST(N'2023-04-09T06:27:02.093' AS DateTime), NULL, NULL, 1, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022')
INSERT [dbo].[TbStore] ([StoreId], [StoreName], [StoreDescription], [StoreImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [SupplierId], [SupplierName]) VALUES (N'170e6a53-ddfc-4658-a8e7-fe3aa57ba788', N'مخزن الرئيس', N'مخزن الرئيس', N'7fc61890-5238-4e58-b82b-bcccd4845712.jpg', NULL, NULL, CAST(N'2023-04-09T06:28:39.593' AS DateTime), NULL, NULL, 1, N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022')
INSERT [dbo].[TbStore] ([StoreId], [StoreName], [StoreDescription], [StoreImage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState], [SupplierId], [SupplierName]) VALUES (N'4355010e-cfe8-4a19-9942-fed991536042', N'مخزن الفرعى ', N'مخزن ادوية ', N'7d09b198-49f6-4f03-8332-ae5e6f25e7f9.jpg', NULL, NULL, CAST(N'2023-04-06T17:39:56.840' AS DateTime), NULL, NULL, 1, N'a0b9a8d2-b61b-446c-ad6a-4347e219dbc7', N'waleed2022')
GO
INSERT [dbo].[TbSubscriptionRequest] ([RequestId], [PhoneNumber], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy], [Email], [SubscriberName], [CityName], [ClinicName]) VALUES (N'5bf5d666-437f-4374-a2f0-069cffdbaa35', N'01028440473', CAST(N'2023-04-10T23:03:30.687' AS DateTime), NULL, NULL, NULL, N'Waleed202882@gmail.com', N'Wale88ed2022', N'قنا 20', N'waleed')
INSERT [dbo].[TbSubscriptionRequest] ([RequestId], [PhoneNumber], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy], [Email], [SubscriberName], [CityName], [ClinicName]) VALUES (N'2e2df8ce-fa1d-4de1-943f-0972b9b3dd78', N'01028440473', CAST(N'2023-03-31T03:21:59.470' AS DateTime), NULL, NULL, NULL, N'Waleed202882@gmail.com', N'Wale88ed2022', N'wa55leed', N'waleed')
INSERT [dbo].[TbSubscriptionRequest] ([RequestId], [PhoneNumber], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy], [Email], [SubscriberName], [CityName], [ClinicName]) VALUES (N'1763b64b-218d-480d-b593-2224508ae202', N'01028440473', CAST(N'2023-03-31T03:17:10.253' AS DateTime), NULL, NULL, NULL, N'Waleed2022@gmail.com', N'Waleed2022', NULL, N'waleed')
INSERT [dbo].[TbSubscriptionRequest] ([RequestId], [PhoneNumber], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy], [Email], [SubscriberName], [CityName], [ClinicName]) VALUES (N'21e58759-7361-4b93-8d19-37dcf7296407', N'01028440473', CAST(N'2023-03-31T03:13:56.567' AS DateTime), NULL, NULL, NULL, N'Waleed2022@gmail.com', N'Waleed2022', NULL, N'waleed')
INSERT [dbo].[TbSubscriptionRequest] ([RequestId], [PhoneNumber], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy], [Email], [SubscriberName], [CityName], [ClinicName]) VALUES (N'50b9104a-069e-471d-b722-3a3d778b3500', N'01028440473', CAST(N'2023-03-31T03:15:19.050' AS DateTime), NULL, NULL, NULL, N'Waleed2022@gmail.com', N'Waleed2022', NULL, N'waleed')
INSERT [dbo].[TbSubscriptionRequest] ([RequestId], [PhoneNumber], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy], [Email], [SubscriberName], [CityName], [ClinicName]) VALUES (N'f8beef7f-eb0f-4f89-8ab6-3f4f0c63e06a', N'01028440473', CAST(N'2023-03-31T04:43:50.493' AS DateTime), NULL, NULL, NULL, N'Waleed202882@gmail.com', N'Wale88ed2022', N'wa55leed', N'waleed')
INSERT [dbo].[TbSubscriptionRequest] ([RequestId], [PhoneNumber], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy], [Email], [SubscriberName], [CityName], [ClinicName]) VALUES (N'348d7219-b0e4-49a6-bb16-53141393b1bb', N'01028440473', CAST(N'2023-04-10T17:31:32.313' AS DateTime), NULL, NULL, NULL, N'Waleed202882@gmail.com', N'Wale88ed2022', NULL, N'waleed')
INSERT [dbo].[TbSubscriptionRequest] ([RequestId], [PhoneNumber], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy], [Email], [SubscriberName], [CityName], [ClinicName]) VALUES (N'1ad968ac-f331-498f-9128-6b99438ced24', N'01028440473', CAST(N'2023-04-28T04:31:41.423' AS DateTime), NULL, NULL, NULL, N'wedowell2022@gmail.com', N'وليد', N'alexandria', N'باطنه')
INSERT [dbo].[TbSubscriptionRequest] ([RequestId], [PhoneNumber], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy], [Email], [SubscriberName], [CityName], [ClinicName]) VALUES (N'5e81bac7-a766-4eaf-bddd-80c199ba384a', N'01028440473', CAST(N'2023-03-31T03:21:05.883' AS DateTime), NULL, NULL, NULL, N'Waleed2022@gmail.com', N'Waleed2022', NULL, N'waleed')
INSERT [dbo].[TbSubscriptionRequest] ([RequestId], [PhoneNumber], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy], [Email], [SubscriberName], [CityName], [ClinicName]) VALUES (N'c79c2cc2-9432-4221-ab67-a983f8f30d82', N'01028440473', CAST(N'2023-04-10T17:34:17.493' AS DateTime), NULL, NULL, NULL, N'Waleed202882@gmail.com', N'Wale88ed2022', N'alexandria', N'waleed')
INSERT [dbo].[TbSubscriptionRequest] ([RequestId], [PhoneNumber], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy], [Email], [SubscriberName], [CityName], [ClinicName]) VALUES (N'3d8b3d69-0fb0-4ef3-aa33-b29dfa59b801', N'01028440473', CAST(N'2023-03-31T03:20:02.893' AS DateTime), NULL, NULL, NULL, N'Waleed2022@gmail.com', N'Waleed2022', NULL, N'waleed')
INSERT [dbo].[TbSubscriptionRequest] ([RequestId], [PhoneNumber], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy], [Email], [SubscriberName], [CityName], [ClinicName]) VALUES (N'569072c8-d0e8-477a-81b3-c3d5d4745af4', N'01028440473', CAST(N'2023-03-31T04:40:00.090' AS DateTime), NULL, NULL, NULL, N'Waleed202882@gmail.com', N'Wale88ed2022', N'wa55leed', N'waleed')
INSERT [dbo].[TbSubscriptionRequest] ([RequestId], [PhoneNumber], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy], [Email], [SubscriberName], [CityName], [ClinicName]) VALUES (N'fb6ac2fe-0c35-41f1-a5e7-d558d7728254', N'0110001010', CAST(N'2023-04-10T23:34:39.183' AS DateTime), NULL, NULL, NULL, N'tset@gg.com', N'ahmed', N'قنا 20', N'tsetsss')
GO
INSERT [dbo].[TbSupplier] ([SupplierId], [SupplierName], [SupplierCategoryId], [SupplierEvaluationStars], [SupplierEvaluationNumber], [SupplierImage], [CustomersNumber], [SupplierCityId], [SupplierCityName], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'303a3b98-cbae-40c0-8d97-12d8a0c64c9a', N'العالمية للاجهزه الطبية', N'dc2d8e55-e0d3-4432-84a5-3c6e7048a86b', NULL, NULL, N'55e402c3-1c92-495e-af63-1c480b9aeda9.jpg', NULL, N'206dc641-5160-404b-b6ea-76d404192e2d', N'alexandria', NULL, NULL, CAST(N'2023-03-13T22:32:03.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[TbSupplier] ([SupplierId], [SupplierName], [SupplierCategoryId], [SupplierEvaluationStars], [SupplierEvaluationNumber], [SupplierImage], [CustomersNumber], [SupplierCityId], [SupplierCityName], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'dc5c7b35-7ab9-4a67-9c7b-1522e10062ab', N'waleed2022', N'0e206326-14f7-4696-82f0-0385d628900d', NULL, NULL, N'cd97d25b-10a7-4b1a-9cc4-e561dd6e53a8.jpg', N'5', N'8de06544-68a0-4c03-b19d-0050c572ee3a', N'قنا 20', NULL, NULL, CAST(N'2023-04-11T08:11:04.037' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSupplier] ([SupplierId], [SupplierName], [SupplierCategoryId], [SupplierEvaluationStars], [SupplierEvaluationNumber], [SupplierImage], [CustomersNumber], [SupplierCityId], [SupplierCityName], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'المتحدة للادوية ', N'dc2d8e55-e0d3-4432-84a5-3c6e7048a86b', NULL, NULL, N'eda4d853-5294-4297-851d-12e335191b5f.jpg', NULL, N'206dc641-5160-404b-b6ea-76d404192e2d', N'alexandria', NULL, NULL, CAST(N'2023-03-13T22:32:03.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[TbSupplier] ([SupplierId], [SupplierName], [SupplierCategoryId], [SupplierEvaluationStars], [SupplierEvaluationNumber], [SupplierImage], [CustomersNumber], [SupplierCityId], [SupplierCityName], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'dc2d8e55-e0d3-4432-84a5-3c6e7048a86b', NULL, NULL, N'dafca666-fb42-4dee-9340-34e3f3546566.jpg', NULL, N'206dc641-5160-404b-b6ea-76d404192e2d', N'alexandria', NULL, NULL, CAST(N'2023-04-16T13:28:53.793' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSupplier] ([SupplierId], [SupplierName], [SupplierCategoryId], [SupplierEvaluationStars], [SupplierEvaluationNumber], [SupplierImage], [CustomersNumber], [SupplierCityId], [SupplierCityName], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'ba398a3e-3eeb-48ba-bcc3-ddf1f8624ef9', N'waleed202', N'0e206326-14f7-4696-82f0-0385d628900d', NULL, NULL, N'fdfd7016-5967-4697-8652-2c820fbd086f.jpg', N'12', N'206dc641-5160-404b-b6ea-76d404192e2d', N'alexandria', NULL, NULL, CAST(N'2023-04-10T14:08:48.067' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSupplier] ([SupplierId], [SupplierName], [SupplierCategoryId], [SupplierEvaluationStars], [SupplierEvaluationNumber], [SupplierImage], [CustomersNumber], [SupplierCityId], [SupplierCityName], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'dfd8b38f-3d49-408c-8549-ec7e72013963', N'waleed202', N'0e206326-14f7-4696-82f0-0385d628900d', NULL, NULL, N'09a89176-9794-45cb-9740-59d080898594.jpg', N'7', N'206dc641-5160-404b-b6ea-76d404192e2d', N'alexandria', NULL, NULL, CAST(N'2023-04-10T13:20:50.997' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSupplier] ([SupplierId], [SupplierName], [SupplierCategoryId], [SupplierEvaluationStars], [SupplierEvaluationNumber], [SupplierImage], [CustomersNumber], [SupplierCityId], [SupplierCityName], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'c7dfbb3d-a218-4d6d-a56f-f17aefe84e50', N'waleed202', N'0e206326-14f7-4696-82f0-0385d628900d', NULL, NULL, N'cdc17bf8-9dce-458c-882c-c1327d10960e.jpg', N'2', N'206dc641-5160-404b-b6ea-76d404192e2d', N'alexandria', NULL, NULL, CAST(N'2023-04-10T14:12:04.253' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TbSupplierCategory] ([SupplierCategoryId], [SupplierCategoryName], [SupplierCategoryDescription], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'0e206326-14f7-4696-82f0-0385d628900d', N'عظام', N'عظام', NULL, NULL, CAST(N'2023-04-11T08:09:03.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[TbSupplierCategory] ([SupplierCategoryId], [SupplierCategoryName], [SupplierCategoryDescription], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'dc2d8e55-e0d3-4432-84a5-3c6e7048a86b', N'جراحة ', N'جراحة ', NULL, NULL, CAST(N'2023-04-16T13:28:02.103' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TbSupplierProduct] ([SupplierProductId], [ProductId], [ProductName], [SupplierId], [SupplierName], [ProductImage], [ProductEvaluationStars], [ProductEvaluationNumber], [ProductPrice], [SupplierCityId], [SupplierCityName], [ProductCategoryId], [ProductCategoryName], [ProductMaximumSaleQty], [FreeShipping], [ProductDescription], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'4866a5da-5c23-4396-acae-01fe8c8e3285', N'969ff582-c0dc-4569-89ac-ccc654af2157', N'جبيرة', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'e946a467-ca11-4034-a64c-5e2b7411f89f.jpg', NULL, NULL, N'20', N'206dc641-5160-404b-b6ea-76d404192e2d', NULL, N'e8ec31fc-0a79-408f-9f3c-eb693b8cd6ac', NULL, N'10', N'شحن مجاني', N'جبيرة', NULL, NULL, N'Apr 13 202', NULL, NULL, 0)
INSERT [dbo].[TbSupplierProduct] ([SupplierProductId], [ProductId], [ProductName], [SupplierId], [SupplierName], [ProductImage], [ProductEvaluationStars], [ProductEvaluationNumber], [ProductPrice], [SupplierCityId], [SupplierCityName], [ProductCategoryId], [ProductCategoryName], [ProductMaximumSaleQty], [FreeShipping], [ProductDescription], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'88883128-a9c4-4ec2-8051-2720a7ed2680', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير جراحية', N'303a3b98-cbae-40c0-8d97-12d8a0c64c9a', N'waleed2022', N'67e825c9-d77e-472f-ab82-3f15971e0307.jpg', NULL, NULL, N'20', N'206dc641-5160-404b-b6ea-76d404192e2d', NULL, N'72885d22-258a-4829-b70e-8d7441bd380f', NULL, N'10', N'شحن مجاني', N'مسامير جراحية', NULL, NULL, N'Apr 10 202', NULL, NULL, 0)
INSERT [dbo].[TbSupplierProduct] ([SupplierProductId], [ProductId], [ProductName], [SupplierId], [SupplierName], [ProductImage], [ProductEvaluationStars], [ProductEvaluationNumber], [ProductPrice], [SupplierCityId], [SupplierCityName], [ProductCategoryId], [ProductCategoryName], [ProductMaximumSaleQty], [FreeShipping], [ProductDescription], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'405bf2d8-6b6d-4410-b556-420c41dc7c36', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مسامير عظمية', N'a2baa060-0697-4dbb-a3d5-8943c64dca87', N'waleed2022', N'e1afc634-a2d8-4629-b77a-7a426b1a1e08.jpg', NULL, NULL, N'20', N'206dc641-5160-404b-b6ea-76d404192e2d', NULL, N'e8ec31fc-0a79-408f-9f3c-eb693b8cd6ac', NULL, N'10', N'شحن مجاني', N'مسامير عظمية', NULL, NULL, N'Apr 13 202', NULL, NULL, 0)
INSERT [dbo].[TbSupplierProduct] ([SupplierProductId], [ProductId], [ProductName], [SupplierId], [SupplierName], [ProductImage], [ProductEvaluationStars], [ProductEvaluationNumber], [ProductPrice], [SupplierCityId], [SupplierCityName], [ProductCategoryId], [ProductCategoryName], [ProductMaximumSaleQty], [FreeShipping], [ProductDescription], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'7ae10883-07fa-48e5-9600-5121c50adc61', N'b29e35f3-a159-4684-b85c-dab1d257a349', N'جهاز ضغط', N'8aea5854-a21a-49e5-8342-cfbf77cd5976', N'الاوائل للادوات الطبية ', N'0bad1b9b-677c-4281-bbcb-f3520c459fc4.jpg', NULL, NULL, N'20', N'206dc641-5160-404b-b6ea-76d404192e2d', NULL, N'e8ec31fc-0a79-408f-9f3c-eb693b8cd6ac', NULL, N'10', N'شحن مجاني', N'جهاز ضغط شخصى', NULL, NULL, N'Apr 16 202', NULL, NULL, 1)
INSERT [dbo].[TbSupplierProduct] ([SupplierProductId], [ProductId], [ProductName], [SupplierId], [SupplierName], [ProductImage], [ProductEvaluationStars], [ProductEvaluationNumber], [ProductPrice], [SupplierCityId], [SupplierCityName], [ProductCategoryId], [ProductCategoryName], [ProductMaximumSaleQty], [FreeShipping], [ProductDescription], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'a6b151e7-757c-4e0e-a847-7752ed7599bb', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'جبيرة', N'303a3b98-cbae-40c0-8d97-12d8a0c64c9a', N'waleed2022', N'dfbe1502-11b7-4150-b1f6-bfb5136ba3fe.jpg', NULL, NULL, N'20', N'206dc641-5160-404b-b6ea-76d404192e2d', NULL, N'e8ec31fc-0a79-408f-9f3c-eb693b8cd6ac', NULL, N'10', N'شحن مجاني', N'جبيرة', NULL, NULL, N'Apr 10 202', NULL, NULL, 0)
INSERT [dbo].[TbSupplierProduct] ([SupplierProductId], [ProductId], [ProductName], [SupplierId], [SupplierName], [ProductImage], [ProductEvaluationStars], [ProductEvaluationNumber], [ProductPrice], [SupplierCityId], [SupplierCityName], [ProductCategoryId], [ProductCategoryName], [ProductMaximumSaleQty], [FreeShipping], [ProductDescription], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'6d6607cd-60c8-4f58-a3ee-8670d1b1c7c8', N'3aee63e5-6564-4854-90fb-c3d39893f8a6', N'مشرط جراحة', N'303a3b98-cbae-40c0-8d97-12d8a0c64c9a', N'waleed202', N'763fe1b8-bd7a-4211-a62c-d9d1cc1883cb.jpg', NULL, NULL, N'20', N'206dc641-5160-404b-b6ea-76d404192e2d', NULL, N'e8ec31fc-0a79-408f-9f3c-eb693b8cd6ac', NULL, N'10', N'شحن غير مجاني', N'مشرط جراحة', NULL, NULL, N'Apr 10 202', NULL, NULL, 0)
GO
INSERT [dbo].[TbSupplierSubscription] ([SupplierSubscriptionId], [SupplierId], [SupplierName], [StartdDate], [EnddDate], [SubscriptionPackage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'1d37da7c-66b9-4b3f-a379-81ac1b45fedb', N'd55d1966-694a-4d9f-b283-cefa175f6549', N'Waleed', CAST(N'2023-04-16T22:30:00.0000000' AS DateTime2), CAST(N'2023-04-26T22:30:00.0000000' AS DateTime2), N'بداية السنة ', NULL, NULL, CAST(N'2023-04-16T13:30:21.840' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbSupplierSubscription] ([SupplierSubscriptionId], [SupplierId], [SupplierName], [StartdDate], [EnddDate], [SubscriptionPackage], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'60b18c39-fb24-4a58-80e8-a732456b3193', N'f8f37d3a-f27a-4e55-af33-a77d5f8b9a6c', N'Waleed', CAST(N'2023-03-16T13:32:00.0000000' AS DateTime2), CAST(N'2023-03-17T22:32:00.0000000' AS DateTime2), N'مممم20', NULL, NULL, CAST(N'2023-03-13T22:32:45.497' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TbTermAndCondition] ([TermsAndConditionsId], [TermsAndConditionsTitle], [TermsAndConditionsDescription], [TermsAndConditionsForWhom], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'7f0fa763-f266-4bee-886c-660ac667fa8c', N'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم يوضع في التصاميم لتعرض على العميللوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم', N'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم يوضع في التصاميم لتعرض على العميللوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم', N'التاجر', NULL, NULL, CAST(N'2023-03-13T22:18:31.623' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbTermAndCondition] ([TermsAndConditionsId], [TermsAndConditionsTitle], [TermsAndConditionsDescription], [TermsAndConditionsForWhom], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'd6c37dda-4802-4e91-acac-a1668ebabb02', N'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم يوضع في التصاميم لتعرض على العميللوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم', N'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم يوضع في التصاميم لتعرض على العميللوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم', N'المحامي', NULL, NULL, CAST(N'2023-01-18T14:20:46.627' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TbTermAndCondition] ([TermsAndConditionsId], [TermsAndConditionsTitle], [TermsAndConditionsDescription], [TermsAndConditionsForWhom], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Notes], [CurrentState]) VALUES (N'd28682b7-5414-4ec0-aa5f-ba5aaf11f5b5', N'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم يوضع في التصاميم لتعرض على العميللوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم', N'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم يوضع في التصاميم لتعرض على العميللوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم', N'التاجر', NULL, NULL, CAST(N'2023-02-01T14:13:28.817' AS DateTime), NULL, NULL, 1)
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsAgree]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[TbAboutApp] ADD  DEFAULT (newid()) FOR [AboutAppId]
GO
ALTER TABLE [dbo].[TbAboutApp] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbAboutApp] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbAddress] ADD  DEFAULT (newid()) FOR [AddressId]
GO
ALTER TABLE [dbo].[TbAddress] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbAddress] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbCharge] ADD  DEFAULT (newid()) FOR [ChargeId]
GO
ALTER TABLE [dbo].[TbCharge] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbCharge] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbCity] ADD  DEFAULT (newid()) FOR [CityId]
GO
ALTER TABLE [dbo].[TbCity] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbCity] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbCityDeliveryFees] ADD  DEFAULT (newid()) FOR [CityDeliveryFeesId]
GO
ALTER TABLE [dbo].[TbCityDeliveryFees] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbCityDeliveryFees] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbComplainsAndSuggestion] ADD  DEFAULT (newid()) FOR [ComplaintsAndSuggestionsId]
GO
ALTER TABLE [dbo].[TbComplainsAndSuggestion] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbComplainsAndSuggestion] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbDelivery] ADD  DEFAULT (newid()) FOR [DeliveryManId]
GO
ALTER TABLE [dbo].[TbDelivery] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbDelivery] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbEvaluationDelivery] ADD  DEFAULT (newid()) FOR [DeliveryEvaluationId]
GO
ALTER TABLE [dbo].[TbEvaluationDelivery] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbEvaluationDelivery] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbEvaluationProduct] ADD  DEFAULT (newid()) FOR [ProductEvaluationId]
GO
ALTER TABLE [dbo].[TbEvaluationProduct] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbEvaluationProduct] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbEvaluationSupplierProduct] ADD  DEFAULT (newid()) FOR [SupplierProductEvaluationId]
GO
ALTER TABLE [dbo].[TbEvaluationSupplierProduct] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbEvaluationSupplierProduct] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbFavourites] ADD  DEFAULT (newid()) FOR [FavouritesId]
GO
ALTER TABLE [dbo].[TbFavourites] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbFavourites] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbNotification] ADD  DEFAULT (newid()) FOR [NotificationId]
GO
ALTER TABLE [dbo].[TbNotification] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbNotification] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbOffer] ADD  DEFAULT (newid()) FOR [OfferId]
GO
ALTER TABLE [dbo].[TbOffer] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbOffer] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbPaymentMethod] ADD  DEFAULT (newid()) FOR [PaymentMethodId]
GO
ALTER TABLE [dbo].[TbPaymentMethod] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbPaymentMethod] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbPoliciesAndPrivacy] ADD  DEFAULT (newid()) FOR [PoliciesAndPrivacyId]
GO
ALTER TABLE [dbo].[TbPoliciesAndPrivacy] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbPoliciesAndPrivacy] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbProduct] ADD  DEFAULT (newid()) FOR [ProductId]
GO
ALTER TABLE [dbo].[TbProduct] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbProduct] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbProduct] ADD  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[TbProduct] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [StoreId]
GO
ALTER TABLE [dbo].[TbProductCategory] ADD  DEFAULT (newid()) FOR [ProductCategoryId]
GO
ALTER TABLE [dbo].[TbProductCategory] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbProductCategory] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbPromocode] ADD  DEFAULT (newid()) FOR [PromocodeId]
GO
ALTER TABLE [dbo].[TbPromocode] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbPromocode] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbPurchaseSubscribtion] ADD  DEFAULT (newid()) FOR [PurchaserSubscriptionId]
GO
ALTER TABLE [dbo].[TbPurchaseSubscribtion] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbPurchaseSubscribtion] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbPurchasingCart] ADD  DEFAULT (newid()) FOR [PurchasingCartId]
GO
ALTER TABLE [dbo].[TbPurchasingCart] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbPurchasingCart] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbRealTimeNotifcations] ADD  DEFAULT (newid()) FOR [RealTimeNotifcationId]
GO
ALTER TABLE [dbo].[TbRealTimeNotifcations] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbSalesInvoice] ADD  DEFAULT (newid()) FOR [SalesInvoiceId]
GO
ALTER TABLE [dbo].[TbSalesInvoice] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbSalesInvoice] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbSalesInvoice] ADD  DEFAULT ((0.0)) FOR [DeliveryValue]
GO
ALTER TABLE [dbo].[TbSalesInvoice] ADD  DEFAULT ((0.0)) FOR [DiscValue]
GO
ALTER TABLE [dbo].[TbSalesInvoice] ADD  DEFAULT ((0.0)) FOR [TaxValue]
GO
ALTER TABLE [dbo].[TbSalesInvoice] ADD  DEFAULT ((0.0)) FOR [TotalAfterTax]
GO
ALTER TABLE [dbo].[TbSalesInvoice] ADD  DEFAULT ((0.0)) FOR [TotalInvoiceAfter]
GO
ALTER TABLE [dbo].[TbSalesInvoiceProduct] ADD  DEFAULT (newid()) FOR [SalesInvoiceProductId]
GO
ALTER TABLE [dbo].[TbSalesInvoiceProduct] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbSalesInvoiceProduct] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbSetting] ADD  DEFAULT (newid()) FOR [SettingId]
GO
ALTER TABLE [dbo].[TbSetting] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbSetting] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbSlider] ADD  DEFAULT (newid()) FOR [SliderId]
GO
ALTER TABLE [dbo].[TbSlider] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbSlider] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbSlider] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Type]
GO
ALTER TABLE [dbo].[TbStore] ADD  DEFAULT (newid()) FOR [StoreId]
GO
ALTER TABLE [dbo].[TbStore] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbStore] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbStore] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [SupplierId]
GO
ALTER TABLE [dbo].[TbSubscriptionRequest] ADD  CONSTRAINT [DF__TbSubscri__Reque__625A9A57]  DEFAULT (newid()) FOR [RequestId]
GO
ALTER TABLE [dbo].[TbSubscriptionRequest] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbSupplier] ADD  DEFAULT (newid()) FOR [SupplierId]
GO
ALTER TABLE [dbo].[TbSupplier] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbSupplier] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbSupplierCategory] ADD  DEFAULT (newid()) FOR [SupplierCategoryId]
GO
ALTER TABLE [dbo].[TbSupplierCategory] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbSupplierCategory] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbSupplierProduct] ADD  DEFAULT (newid()) FOR [SupplierProductId]
GO
ALTER TABLE [dbo].[TbSupplierProduct] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbSupplierProduct] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbSupplierSubscription] ADD  DEFAULT (newid()) FOR [SupplierSubscriptionId]
GO
ALTER TABLE [dbo].[TbSupplierSubscription] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbSupplierSubscription] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[TbTermAndCondition] ADD  DEFAULT (newid()) FOR [TermsAndConditionsId]
GO
ALTER TABLE [dbo].[TbTermAndCondition] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TbTermAndCondition] ADD  DEFAULT ((1)) FOR [CurrentState]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
