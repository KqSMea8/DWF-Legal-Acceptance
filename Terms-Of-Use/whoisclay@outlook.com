Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp1153661otd;
        Wed, 18 Jul 2018 19:04:39 -0700 (PDT)
X-Google-Smtp-Source: AA+uWPwnSn1pg5zjxLFV6OxZiZ0MeJgWgdYYJzCHV3dz0MKt6SAeQ1eJONy0y6pkoOk/6JB2VEJX
X-Received: by 2002:a6b:5a08:: with SMTP id o8-v6mr7060291iob.5.1531965879311;
        Wed, 18 Jul 2018 19:04:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1531965878; cv=none;
        d=google.com; s=arc-20160816;
        b=k2ctn9AZ6bf110RTxhlDTt7OAqxf7nOYedS47IOb8uA2aVfdxBsRqxEru3rDCYegP2
         XbzpWXZrsK3WufnVz3PgTHOAbdjNWOljW9PfBdw0PEgxKQJRsx/poCm9CNhyRtXNqqA2
         Ly24Pmk8gxdowZz/Buu8ggV961IB8wgj6RdI4oQJxdlWGLYdV9yGKQRiQtKdSgrFxUEr
         tBlQLl0rJe911LafjzSWMKMvc+JvUw7/0vOqd4PIRDF8ZZh1l5/azf95dzPRUVkhzDuy
         9c0K1Az0mu8XU354qN+5vXGk8Is4Troqx7xmm+NiAAsFBjDdoH/yJEIIKiGPmD898WtS
         hKAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:to:from:dkim-signature
         :arc-authentication-results;
        bh=FFF8KP/tg+UiSagbNEf/hUvqxf1/5Qvsc9n3ZCyXmPg=;
        b=ZaQQfRLgsqPIyEVcF4MA4a2V+zSm9JnPNRsCx6soy2whGmnVLkIphUR15Zs/w4r0I0
         paknu7H23Y0QkqoDQjuWq1VJEc+KufW5AALUQkE3B5wQ6MsU+Z2Jo/F6e+TiEV2rtR8b
         NlexQHzqQg/2oX1/y+YI40G3VWAVHi262V9PB0oK1aIa2PKK4r0h8Bfqb3z7Id2Lsbdp
         1nilY0bnddnrxJ5FfambLTQ2C6ZmVMmwLGZJ9wc05c12wiZXSEfzgOrA3ec7npfEDVcx
         as1TH4/L4aKSMVfv1vpv1fsnV2jWm3Kkfzu/zYaKkHbdwOjlC4vi9N17/NbLsh5jnKx/
         6KjQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@outlook.com header.s=selector1 header.b="L+OohM/B";
       spf=pass (google.com: domain of whoisclay@outlook.com designates 40.92.254.103 as permitted sender) smtp.mailfrom=whoisclay@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
Return-Path: <whoisclay@outlook.com>
Received: from APC01-PU1-obe.outbound.protection.outlook.com (mail-oln040092254103.outbound.protection.outlook.com. [40.92.254.103])
        by mx.google.com with ESMTPS id i6-v6si3426808iob.216.2018.07.18.19.04.38
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Jul 2018 19:04:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of whoisclay@outlook.com designates 40.92.254.103 as permitted sender) client-ip=40.92.254.103;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@outlook.com header.s=selector1 header.b="L+OohM/B";
       spf=pass (google.com: domain of whoisclay@outlook.com designates 40.92.254.103 as permitted sender) smtp.mailfrom=whoisclay@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FFF8KP/tg+UiSagbNEf/hUvqxf1/5Qvsc9n3ZCyXmPg=;
 b=L+OohM/BkP2uZ1gOeY8sSGu4AHWD6IY5xC/4dpptZQRdIUH3QaySv2MB2W2eoUs4jcJKnZBuCvtLIfr3pQA0dNvY9FY94rMkVNF2kLDWfWcaIK73hd/5fRzxdXToHX+xN+tWcQR3ajekJu2WKbB9/bjqeLWmNJ7pF9FDWO1giT7ycSulgEM6X0XXmdiztRhScHGjhnQWDA0X3lvXzUNWUWX3xrs1EHKvKpUc1oHiAJblFn4Ck22YNzjNnmo1Cs7JExp8SKrGsnFa5Yg2Ek1U7Z+H86wOXSoyeMzYH3mw4zTs//+hVeLQqndOb2liShuoMEsKsWNebsaImcVvNQFUrw==
Received: from HK2APC01FT057.eop-APC01.prod.protection.outlook.com
 (10.152.248.60) by HK2APC01HT013.eop-APC01.prod.protection.outlook.com
 (10.152.248.158) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.952.17; Thu, 19
 Jul 2018 02:04:35 +0000
Received: from HK0PR04MB2673.apcprd04.prod.outlook.com (10.152.248.60) by
 HK2APC01FT057.mail.protection.outlook.com (10.152.249.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
 15.20.952.17 via Frontend Transport; Thu, 19 Jul 2018 02:04:35 +0000
Received: from HK0PR04MB2673.apcprd04.prod.outlook.com
 ([fe80::5d6a:9226:7982:39d1]) by HK0PR04MB2673.apcprd04.prod.outlook.com
 ([fe80::5d6a:9226:7982:39d1%5]) with mapi id 15.20.0973.016; Thu, 19 Jul 2018
 02:04:35 +0000
From: whois clay <whoisclay@outlook.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 whoisclay@outlook.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 whoisclay@outlook.com
Thread-Index: AQHUHrKVpfqmRFQVsUeUHR6DfGsWP6SVzESA
Date: Thu, 19 Jul 2018 02:04:35 +0000
Message-ID: <HK0PR04MB26735F382CEA47CE2B46FFC7A1520@HK0PR04MB2673.apcprd04.prod.outlook.com>
References: <20180718161542.5378.37064@shiny-2.local>
In-Reply-To: <20180718161542.5378.37064@shiny-2.local>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-clientproxiedby: HK0P153CA0032.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::20) To HK0PR04MB2673.apcprd04.prod.outlook.com
 (2603:1096:203:6d::22)
x-incomingtopheadermarker: OriginalChecksum:3BE7A8979D0C828306BC62C7DFB9231A865B480D7BC9F309B3B2E60D1BA572FA;UpperCasedChecksum:12E5D5E3BEE4C2209EAADCAE94D3798EB951516945D222F4C0784130358699A2;SizeAsReceived:7449;Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [unqAZZsR/StX2RwOhTA0tszClzexmxHN]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;HK2APC01HT013;7:zfhrR2iqBs9Cdi4sYWjcOwL719Gn1RForwyiGtkah6jXDGZw0Ek4gZy/ntdQZrxlYNkGDZl4Dwt9mFMZ4qMCfVRqBGVNp417Mi9gRspntrJxfobLXt9I3kQbkjSYq85QGl53FyUUVSX1otCcZIHMFWBZhpeM1OTFW8DDHLXy7EjHY4r8Sps0W0ZHl8gtWz3qjKk6vzhThcP/HL8/5R0gEXKO+7yREE6Cx3PRDtZRrVGM/MyXVKQqlDMs9ExnkpcN
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125500)(1701031045);SRVR:HK2APC01HT013;
x-ms-traffictypediagnostic: HK2APC01HT013:
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(82015058);SRVR:HK2APC01HT013;BCL:0;PCL:0;RULEID:;SRVR:HK2APC01HT013;
x-forefront-prvs: 0738AF4208
x-forefront-antispam-report: SFV:NSPM;SFS:(7070007)(47540400005)(28244002)(38564003)(189003)(13624006)(199004)(7696005)(26005)(8936002)(55016002)(6346003)(1730700003)(6306002)(5250100002)(86152003)(68736007)(386003)(81156014)(104016004)(6246003)(102836004)(11346002)(8676002)(76176011)(106356001)(105586002)(426003)(6436002)(56003)(476003)(87572001)(5640700003)(229853002)(20460500001)(86362001)(5660300001)(2501003)(446003)(74316002)(5180700001)(6916009)(305945005)(2351001)(82202002)(486006)(97736004)(99286004)(25786009)(14444005)(256004)(966005)(14454004)(45080400002)(2900100001)(33656002)(221513004)(222073002);DIR:OUT;SFP:1901;SCL:1;SRVR:HK2APC01HT013;H:HK0PR04MB2673.apcprd04.prod.outlook.com;FPR:;SPF:None;PTR:InfoNoRecords;MX:1;A:1;LANG:;
received-spf: None (protection.outlook.com: outlook.com does not designate
 permitted sender hosts)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=whoisclay@outlook.com; 
x-microsoft-antispam-message-info: 8ELKYseeJyWjGl+Eht5WjfJsc9uvw46eCi9irDrEm/ronk6Ef1h/BihP+J13E/qqdxQxVHyp+aY6mwkgy3mIxbn67UnxmhkkSkcrnPnPcWAh2hxLfbryWQjWmAqKG/9wk8pOkATX88qeD6oCRHI6z7k154s4oaXHs/4LAf8B+iUCExkT9NTBFFP+w4oP9SPR3emfAfcsZ339ipYkZHeaMlqMPdGKRORHU0cKIjHHD7o=
Content-Type: text/plain; charset="gb2312"
Content-ID: <1C8BCE0D1DBC0949B74BA288F55CA22D@apcprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: b14f4726-222f-465e-6c30-08d5ed1bf9a8
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2018 02:04:35.7195
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT013

SSBhY2NlcHQuDQoNCj4g1NogMjAxOMTqN9TCMTnI1aOsMDA6MTWjrGt1cnRAc2VpZnJpZWQub3Jn
INC0tcCjug0KPiANCj4gVGhpcyBpcyBhIGNvbmZpcm1hdGlvbiBlbWFpbCBzZW50IGZyb20gQ1ZF
IHJlcXVlc3QgZm9ybSBhdCBodHRwczovL2l3YW50YWN2ZS5vcmcvIGFza2luZyB5b3UgdG8gYWNj
ZXB0IHRoZSBNSVRSRSBDVkUgVGVybXMgb2YgVXNlIChhc3N1bWluZyB5b3UgZmlsbGVkIG91dCB0
aGUgQ1ZFIGZvcm0gYW5kIHdhbnQgb25lLCB3ZSBjYW4ndCB1c2UgdGhlIGRhdGEgdW50aWwgeW91
IGFjY2VwdCB0aGUgTUlUUkUgQ1ZFIFRlcm1zIG9mIFVzZSkuIA0KPiANCj4gU2ltcGx5IHF1b3Rl
IHRoZSBlbWFpbCBhbmQgcmVwbHkgd2l0aCAiSSBhY2NlcHQiIGF0IHRoZSB0b3AgaWYgeW91IGFn
cmVlIHRvIHRoZSBNSVRSRSBDVkUgVGVybXMgb2YgVXNlIGFuZCB3ZSB3aWxsIGFkZCBhIGNvcHkg
b2YgdGhlIGVtYWlsIHRvIHRoZSBEV0YgTUlUUkUgQ1ZFIFRlcm1zIG9mIFVzZSBhY2NlcHRhbmNl
IGRhdGEgYXQgaHR0cHM6Ly9naXRodWIuY29tL2Rpc3RyaWJ1dGVkd2Vha25lc3NmaWxpbmcvRFdG
LUxlZ2FsLUFjY2VwdGFuY2UvdHJlZS9tYXN0ZXIvVGVybXMtT2YtVXNlDQo+IA0KPiBUaGUgcmVh
c29uIHdlIHVzZSBhIGNvbXBsZXRlIGNvcHkgb2YgdGhlIGVtYWlsIGlzIHRoYXQgaXQgcHJvdmlk
ZXMgYW4gYXJ0aWZhY3Qgc2hvd2luZyB0aGF0IHRoZSBlbWFpbCBhZGRyZXNzIGFjY2VwdGVkIHRo
ZSBUZXJtcyBvZiBVc2UsIHdoZW4gdGhleSB3ZXJlIGFjY2VwdGVkIGFuZCBzbyBvbi4gDQo+IA0K
PiBJZiB5b3UgZGlkIG5vdCBzdWJtaXQgYSBDVkUgcmVxdWVzdCB0byB0aGUgRFdGIHlvdSBjYW4g
c2FmZWx5IGlnbm9yZSB0aGlzIG1lc3NhZ2UsIGhvd2V2ZXIgd2UgbWF5IHJlc2VuZCBpdCBhdCBz
b21lIHBvaW50IGluIHRoZSBmdXR1cmUsIGlmIHlvdSBkb24ndCB3YW50IGFueSBmdXR1cmUgZW1h
aWxzIHNpbXBseSByZXBseSB3aXRoICJ1bnN1YnNjcmliZSIgb3IgIkRPTidUIFNFTkQgTUUgVEhJ
UyBFTUFJTCBFVkVSIEFHQUlOIiBhbmQgSSdsbCBhZGQgeW91ciBlbWFpbCBhZGRyZXNzIHRvIHRo
ZSBibG9jayBsaXN0IHNvIHdlIGRvbid0IHNwYW0geW91IHdpdGggdGhlc2UsIHBsZWFzZSBub3Rl
IHRoYXQgdGhpcyB3aWxsIHByZXZlbnQgeW91IGZyb20gYmVpbmcgYWJsZSB0byBhY2NlcHQgdGhl
IE1JVFJFIENWRSBUZXJtcyBvZiBVc2UgdmlhIHRoZSBEV0YgYXV0b21hdGljYWxseSBpbiBmdXR1
cmUgKHlvdSdsbCBoYXZlIHRvIG1hbnVhbGx5IGFzaykuIEJ1dCBhZ2FpbiwgaWYgeW91IGhhdmUg
bm8gaWRlYSB3aGF0IGEgQ1ZFIGlzIHRoZW4geW91IGNhbiBpZ25vcmUgdGhpcy9hc2sgdG8gYmUg
YWRkZWQgdG8gdGhlIGJsb2NrIGxpc3Qgd2l0aCBubyBwcm9ibGVtcy4gDQo+IA0KPiBNSVRSRSBD
VkUgVGVybXMgb2YgVXNlDQo+IA0KPiBMSUNFTlNFDQo+IA0KPiBTdWJtaXNzaW9uczogRm9yIGFs
bCBtYXRlcmlhbHMgeW91IHN1Ym1pdCB0byB0aGUgQ29tbW9uIFZ1bG5lcmFiaWxpdGllcyBhbmQg
RXhwb3N1cmVzIChDVkU/PyksIHlvdSBoZXJlYnkgZ3JhbnQgdG8gVGhlIE1JVFJFIENvcnBvcmF0
aW9uIChNSVRSRSkgYW5kIGFsbCBDVkUgTnVtYmVyaW5nIEF1dGhvcml0aWVzIChDTkFzKSBhIHBl
cnBldHVhbCwgd29ybGR3aWRlLCBub24tZXhjbHVzaXZlLCBuby1jaGFyZ2UsIHJveWFsdHktZnJl
ZSwgaXJyZXZvY2FibGUgY29weXJpZ2h0IGxpY2Vuc2UgdG8gcmVwcm9kdWNlLCBwcmVwYXJlIGRl
cml2YXRpdmUgd29ya3Mgb2YsIHB1YmxpY2x5IGRpc3BsYXksIHB1YmxpY2x5IHBlcmZvcm0sIHN1
YmxpY2Vuc2UsIGFuZCBkaXN0cmlidXRlIHN1Y2ggbWF0ZXJpYWxzIGFuZCBkZXJpdmF0aXZlIHdv
cmtzLiBVbmxlc3MgcmVxdWlyZWQgYnkgYXBwbGljYWJsZSBsYXcgb3IgYWdyZWVkIHRvIGluIHdy
aXRpbmcsIHlvdSBwcm92aWRlIHN1Y2ggbWF0ZXJpYWxzIG9uIGFuICJBUyBJUyIgQkFTSVMsIFdJ
VEhPVVQgV0FSUkFOVElFUyBPUiBDT05ESVRJT05TIE9GIEFOWSBLSU5ELCBlaXRoZXIgZXhwcmVz
cyBvciBpbXBsaWVkLCBpbmNsdWRpbmcsIHdpdGhvdXQgbGltaXRhdGlvbiwgYW55IHdhcnJhbnRp
ZXMgb3IgY29uZGl0aW9ucyBvZiBUSVRMRSwgTk9OLUlORlJJTkdFTUVOVCwgTUVSQ0hBTlRBQklM
SVRZLCBvciBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4NCj4gDQo+IENWRSBVc2Fn
ZTogTUlUUkUgaGVyZWJ5IGdyYW50cyB5b3UgYSBwZXJwZXR1YWwsIHdvcmxkd2lkZSwgbm9uLWV4
Y2x1c2l2ZSwgbm8tY2hhcmdlLCByb3lhbHR5LWZyZWUsIGlycmV2b2NhYmxlIGNvcHlyaWdodCBs
aWNlbnNlIHRvIHJlcHJvZHVjZSwgcHJlcGFyZSBkZXJpdmF0aXZlIHdvcmtzIG9mLCBwdWJsaWNs
eSBkaXNwbGF5LCBwdWJsaWNseSBwZXJmb3JtLCBzdWJsaWNlbnNlLCBhbmQgZGlzdHJpYnV0ZSBD
b21tb24gVnVsbmVyYWJpbGl0aWVzIGFuZCBFeHBvc3VyZXMgKENWRT8/KS4gQW55IGNvcHkgeW91
IG1ha2UgZm9yIHN1Y2ggcHVycG9zZXMgaXMgYXV0aG9yaXplZCBwcm92aWRlZCB0aGF0IHlvdSBy
ZXByb2R1Y2UgTUlUUkUncyBjb3B5cmlnaHQgZGVzaWduYXRpb24gYW5kIHRoaXMgbGljZW5zZSBp
biBhbnkgc3VjaCBjb3B5Lg0KPiANCj4gRElTQ0xBSU1FUlMNCj4gDQo+IEFMTCBET0NVTUVOVFMg
QU5EIFRIRSBJTkZPUk1BVElPTiBDT05UQUlORUQgVEhFUkVJTiBQUk9WSURFRCBCWSBNSVRSRSBB
UkUgUFJPVklERUQgT04gQU4gIkFTIElTIiBCQVNJUyBBTkQgVEhFIENPTlRSSUJVVE9SLCBUSEUg
T1JHQU5JWkFUSU9OIEhFL1NIRSBSRVBSRVNFTlRTIE9SIElTIFNQT05TT1JFRCBCWSAoSUYgQU5Z
KSwgVEhFIE1JVFJFIENPUlBPUkFUSU9OLCBJVFMgQk9BUkQgT0YgVFJVU1RFRVMsIE9GRklDRVJT
LCBBR0VOVFMsIEFORCBFTVBMT1lFRVMsIERJU0NMQUlNIEFMTCBXQVJSQU5USUVTLCBFWFBSRVNT
IE9SIElNUExJRUQsIElOQ0xVRElORyBCVVQgTk9UIExJTUlURUQgVE8gQU5ZIFdBUlJBTlRZIFRI
QVQgVEhFIFVTRSBPRiBUSEUgSU5GT1JNQVRJT04gVEhFUkVJTiBXSUxMIE5PVCBJTkZSSU5HRSBB
TlkgUklHSFRTIE9SIEFOWSBJTVBMSUVEIFdBUlJBTlRJRVMgT0YgTUVSQ0hBTlRBQklMSVRZIE9S
IEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLg0KPiANCj4gQSBjb3B5IGlzIGF2YWls
YWJsZSBhdCBodHRwczovL2dpdGh1Yi5jb20vZGlzdHJpYnV0ZWR3ZWFrbmVzc2ZpbGluZy9EV0Yt
TGVnYWwtQWNjZXB0YW5jZS9ibG9iL21hc3Rlci9UZXJtcy1PZi1Vc2UubWQNCj4gDQo+IFRvIGNv
bnRhY3QgdGhlIERXRiBlaXRoZXIgaGl0IHJlcGx5LCBvciBlbWFpbCBrdXJ0QHNlaWZyaWVkLm9y
ZyBtYW51YWxseSB3aXRoIHlvdXIgcXVlc3Rpb24vY29uY2VybnMvZXRjLiANCj4gDQoNCg==
