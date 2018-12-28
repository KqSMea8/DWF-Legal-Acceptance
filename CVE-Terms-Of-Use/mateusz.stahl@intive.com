Delivered-To: kurt@seifried.org
Received: by 2002:a4f:b47:0:0:0:0:0 with SMTP id 68-v6csp9280521ivl;
        Thu, 17 May 2018 23:20:28 -0700 (PDT)
X-Google-Smtp-Source: AB8JxZqXrZQQDLEyUaI9NCzhQZOJlqF5h2hKWcXuMhxvz+81n9cQLG3HzdFAtlhVq7T6409NDtHT
X-Received: by 2002:a62:8785:: with SMTP id i127-v6mr8187387pfe.201.1526624428665;
        Thu, 17 May 2018 23:20:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1526624428; cv=none;
        d=google.com; s=arc-20160816;
        b=kb89lf9XVC6YWc904VrTnF7Eg/wS9EqM1fd509nrVqh5++UY5Ydq6Ow7sJtgB/p4Uz
         zOW3D3nGmcNxva6xpzItviMdSjLRTx6YJCQIfy1AO0pR6B9UZCB6y3ihgq60vkKna5FW
         NIq7kwnwXw5b01ZSda+pLxhBHGKJ98eEREmqoZ74+xAA0J2u1BnI1g2PUQOraEOBeVQS
         F6X/h8YW88OljydOgWovyJ86I0vqXWSn2o9q6dx0Tst9XvDXksnuRsIFCbwEg9eiG1C4
         DakanwRcbwBNMK/hFB6qquYc93YBZbHVjjmISvkRyTsiSkHDiQXndMhHRUrPWOmqPRYG
         UyAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id
         :spamdiagnosticmetadata:spamdiagnosticoutput:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:to:from:dkim-signature
         :arc-authentication-results;
        bh=xUyxM6MxLtnCgtPJ3ptwltwPLOEaoiTzKTVghQNbmd0=;
        b=F98WfH5R5U4+pq01T3LISnrhG9J/K5yDGFMx2EtmuRR5ZuD54H0+Vmn7ctg2gv2ob1
         TdEkRO2qu/hQZ3L9bQznZH+IcdKFcLXWUGuhw6cIKF5AAT969q6HxasNu2nnjyZj9Vo5
         PUMeAo4QgzHrSkquiWczTRh4pk6bZ7k3GZK0oFAYCv/VnJnhapwEfHONj4EOlbtgUhCp
         wFnYhB5kuMUuZHSZ2OysXEwFvvdCbKRy0PfVdjGMc9btcZmknxhdw8G+iydK1vb1iKAm
         XiVyTNX57cB3bf4vIX0jSLB+Cc1YXvZxvJrQ4Atjt+7/mcewaHkYWcrmSIiTNVQyITMh
         HM+Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@smtsoftwareservices.onmicrosoft.com header.s=selector1-intive-com header.b=U+j3Dz8+;
       spf=pass (google.com: domain of mateusz.stahl@intive.com designates 104.47.0.63 as permitted sender) smtp.mailfrom=mateusz.stahl@intive.com
Return-Path: <mateusz.stahl@intive.com>
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (mail-he1eur01on0063.outbound.protection.outlook.com. [104.47.0.63])
        by mx.google.com with ESMTPS id a21-v6si5488582pgd.97.2018.05.17.23.20.27
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 17 May 2018 23:20:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of mateusz.stahl@intive.com designates 104.47.0.63 as permitted sender) client-ip=104.47.0.63;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@smtsoftwareservices.onmicrosoft.com header.s=selector1-intive-com header.b=U+j3Dz8+;
       spf=pass (google.com: domain of mateusz.stahl@intive.com designates 104.47.0.63 as permitted sender) smtp.mailfrom=mateusz.stahl@intive.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=smtsoftwareservices.onmicrosoft.com; s=selector1-intive-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xUyxM6MxLtnCgtPJ3ptwltwPLOEaoiTzKTVghQNbmd0=;
 b=U+j3Dz8+6+C0eSVrdBG+QROfNdeFELaNePCtb0RpZazGDgsIGs1OFONs0HvjaXNg4irhhHaKKDnxKMo2VnlHqCYqkRKnVFF4hgSSQPiSUuYBvYli9+3Ip/1UWo+pzHxm0IcIurvnuNsmlqTFbzCEtjmhfPiBBV5+YC7rkN6UMOc=
Received: from VI1PR09MB0720.eurprd09.prod.outlook.com (10.166.199.135) by
 VI1PR09MB0014.eurprd09.prod.outlook.com (10.161.104.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
 15.20.776.11; Fri, 18 May 2018 06:20:24 +0000
Received: from VI1PR09MB0720.eurprd09.prod.outlook.com
 ([fe80::6cd3:f005:7340:1260]) by VI1PR09MB0720.eurprd09.prod.outlook.com
 ([fe80::6cd3:f005:7340:1260%14]) with mapi id 15.20.0776.010; Fri, 18 May
 2018 06:20:23 +0000
From: Mateusz Stahl <mateusz.stahl@intive.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 mateusz.stahl@intive.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 mateusz.stahl@intive.com
Thread-Index: AQHT7f+nsXauoTbsb0CcDXnX0KT776Q1JiOA
Date: Fri, 18 May 2018 06:20:23 +0000
Message-ID: <26D11B53-4574-4FC9-9C96-797C5EB06507@intive.com>
References: <20180517165355.91066.19084@slab.local>
In-Reply-To: <20180517165355.91066.19084@slab.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mateusz.stahl@intive.com; 
x-originating-ip: [87.105.187.246]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;VI1PR09MB0014;7:bHFqM+4bkq3CMIqCFqng+gupHSLPAaChatphZ6Suq7ABeIUK1kpGdeoB2DYDLj2WOpRN7fRwv7jfQO8U7LUGoYzx7hckrG1iVqC5/qBoLVB0aDL0H0NV4O3rB/G3peffkeAnDH8ILba2Q711kAdJl6uEbhwJAlrVOR7ZITjFBGPQSmbzUbPyfa/3ELkvDabGaFArl2GYepDcvznyvjzVXtFFDljEejRM4gnc70klZXckr7avrIiUEnYSTwAJFnsc
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(7020095)(4652020)(5600026)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);SRVR:VI1PR09MB0014;
x-ms-traffictypediagnostic: VI1PR09MB0014:
x-microsoft-antispam-prvs: <VI1PR09MB001484B24DF36C936E746AFB91900@VI1PR09MB0014.eurprd09.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(93006095)(93001095)(3231254)(944501410)(52105095)(3002001)(149027)(150027)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123562045)(20161123564045)(20161123558120)(6072148)(201708071742011)(7699016);SRVR:VI1PR09MB0014;BCL:0;PCL:0;RULEID:;SRVR:VI1PR09MB0014;
x-forefront-prvs: 0676F530A9
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(396003)(346002)(39380400002)(366004)(39850400004)(376002)(28244002)(13624006)(38564003)(189003)(199004)(83716003)(5640700003)(44832011)(2906002)(7736002)(446003)(2616005)(26005)(106356001)(2351001)(99286004)(66066001)(3660700001)(105586002)(3280700002)(11346002)(6486002)(2900100001)(186003)(6436002)(486006)(6506007)(86362001)(102836004)(229853002)(5660300001)(59450400001)(476003)(76176011)(6306002)(81166006)(81156014)(1730700003)(5180700001)(68736007)(8676002)(6246003)(478600001)(316002)(53936002)(6116002)(36756003)(82746002)(14454004)(6916009)(5250100002)(3846002)(33656002)(8936002)(966005)(2501003)(6512007)(5890100001)(25786009)(97736004)(305945005)(221513004)(222073002);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR09MB0014;H:VI1PR09MB0720.eurprd09.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: intive.com does not designate
 permitted sender hosts)
x-microsoft-antispam-message-info: QhbUySJtVqBuEl0H7NLaWZ1wtP4jsMYEef3jpd3Iel35EM/ckN+hE8MPET/KHgcklmOqRS+bncRFlhmk3AsTh9cfcpPuK5l+r73JrjO4onAtQJDiZv5DJ+FbTYRT/1YPlyjboW4MCBGdHrtoDt2EuX0bExJT2Fp27S2/j6stHrqsRzufWo/x72ScGMc3EnIs
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: text/plain; charset="utf-8"
Content-ID: <76EC6F8CB06A224581B4A7BA2D5361F8@eurprd09.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: f0ed4c2f-69fa-4eab-d09f-08d5bc8770aa
X-OriginatorOrg: intive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0ed4c2f-69fa-4eab-d09f-08d5bc8770aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2018 06:20:23.9330
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 00a83132-4221-4698-a787-6d679d557a90
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR09MB0014

SGksDQoNCkkgYWNjZXB0Lg0KDQpSZWdhcmRzLA0KTWF0ZXVzeiBTdGFobA0KDQrvu79PbiAxNy8w
NS8yMDE4LCAxODo1NCwgImt1cnRAc2VpZnJpZWQub3JnIiA8a3VydEBzZWlmcmllZC5vcmc+IHdy
b3RlOg0KDQogICAgVGhpcyBpcyBhIGNvbmZpcm1hdGlvbiBlbWFpbCBzZW50IGZyb20gQ1ZFIHJl
cXVlc3QgZm9ybSBhdCBodHRwczovL2l3YW50YWN2ZS5vcmcvIGFza2luZyB5b3UgdG8gYWNjZXB0
IHRoZSBNSVRSRSBDVkUgVGVybXMgb2YgVXNlIChhc3N1bWluZyB5b3UgZmlsbGVkIG91dCB0aGUg
Q1ZFIGZvcm0gYW5kIHdhbnQgb25lLCB3ZSBjYW4ndCB1c2UgdGhlIGRhdGEgdW50aWwgeW91IGFj
Y2VwdCB0aGUgTUlUUkUgQ1ZFIFRlcm1zIG9mIFVzZSkuIA0KICAgIA0KICAgIFNpbXBseSBxdW90
ZSB0aGUgZW1haWwgYW5kIHJlcGx5IHdpdGggIkkgYWNjZXB0IiBhdCB0aGUgdG9wIGlmIHlvdSBh
Z3JlZSB0byB0aGUgTUlUUkUgQ1ZFIFRlcm1zIG9mIFVzZSBhbmQgd2Ugd2lsbCBhZGQgYSBjb3B5
IG9mIHRoZSBlbWFpbCB0byB0aGUgRFdGIE1JVFJFIENWRSBUZXJtcyBvZiBVc2UgYWNjZXB0YW5j
ZSBkYXRhIGF0IGh0dHBzOi8vZ2l0aHViLmNvbS9kaXN0cmlidXRlZHdlYWtuZXNzZmlsaW5nL0RX
Ri1MZWdhbC1BY2NlcHRhbmNlL3RyZWUvbWFzdGVyL1Rlcm1zLU9mLVVzZQ0KICAgIA0KICAgIFRo
ZSByZWFzb24gd2UgdXNlIGEgY29tcGxldGUgY29weSBvZiB0aGUgZW1haWwgaXMgdGhhdCBpdCBw
cm92aWRlcyBhbiBhcnRpZmFjdCBzaG93aW5nIHRoYXQgdGhlIGVtYWlsIGFkZHJlc3MgYWNjZXB0
ZWQgdGhlIFRlcm1zIG9mIFVzZSwgd2hlbiB0aGV5IHdlcmUgYWNjZXB0ZWQgYW5kIHNvIG9uLiAN
CiAgICANCiAgICBUaGlzIGRhdGEgY2Fubm90IGJlIHJlbW92ZWQgZnJvbSB0aGUgSW50ZXJuZXQs
IG9yIGZyb20gb3VyIGdpdCByZXBvLiBJZiB5b3UgYXJlIGNvbmNlcm5lZCBhYm91dCB5b3VyIHBl
cnNvbmFsIGluZm9ybWF0aW9uIChpbiB0aGUgZm9ybSBvZiB5b3VyIGVtYWlsIGFkZHJlc3MgYW5k
IGFueSBhdHRhY2hlZCBpbmZvcm1hdGlvbiB5b3UgaW5jbHVkZSBsaWtlIHlvdXIgbmFtZSkgcGxl
YXNlIGRvIG5vdCBzdWJtaXQgaXQsIHNldHVwIGFuIGVtYWlsIGFkZHJlc3MgYW5kIHVzZSB0aGF0
LiBJIGNhbm5vdCBjb21wbHkgd2l0aCBHRFBSIHJlcXVlc3RzIHRvIHJlbW92ZSB5b3VyIGluZm9y
bWF0aW9uIGR1ZSB0byB0aGUgbmF0dXJlIG9mIGdpdCwgYW5kIG15IGluYWJpbGl0eSB0byBjb25m
aXJtIGlmIHlvdSBhcmUgYSBldXJvcGVhbiBvciBub3QsIHNvIGlmIHlvdSBkb24ndCB3YW50IGl0
IGluIHRoZXJlLCBkb24ndCByZXBseSB3aXRoICJJIGFjY2VwdCIuIA0KICAgIA0KICAgIElmIHlv
dSBkaWQgbm90IHN1Ym1pdCBhIENWRSByZXF1ZXN0IHRvIHRoZSBEV0YgeW91IGNhbiBzYWZlbHkg
aWdub3JlIHRoaXMgbWVzc2FnZSwgaG93ZXZlciB3ZSBtYXkgcmVzZW5kIGl0IGF0IHNvbWUgcG9p
bnQgaW4gdGhlIGZ1dHVyZSwgaWYgeW91IGRvbid0IHdhbnQgYW55IGZ1dHVyZSBlbWFpbHMgc2lt
cGx5IHJlcGx5IHdpdGggInVuc3Vic2NyaWJlIiBvciAiRE9OJ1QgU0VORCBNRSBUSElTIEVNQUlM
IEVWRVIgQUdBSU4iIGFuZCBJJ2xsIGFkZCB5b3VyIGVtYWlsIGFkZHJlc3MgdG8gdGhlIGJsb2Nr
IGxpc3Qgc28gd2UgZG9uJ3Qgc3BhbSB5b3Ugd2l0aCB0aGVzZSwgcGxlYXNlIG5vdGUgdGhhdCB0
aGlzIHdpbGwgcHJldmVudCB5b3UgZnJvbSBiZWluZyBhYmxlIHRvIGFjY2VwdCB0aGUgTUlUUkUg
Q1ZFIFRlcm1zIG9mIFVzZSB2aWEgdGhlIERXRiBhdXRvbWF0aWNhbGx5IGluIGZ1dHVyZSAoeW91
J2xsIGhhdmUgdG8gbWFudWFsbHkgYXNrKS4gQnV0IGFnYWluLCBpZiB5b3UgaGF2ZSBubyBpZGVh
IHdoYXQgYSBDVkUgaXMgdGhlbiB5b3UgY2FuIGlnbm9yZSB0aGlzL2FzayB0byBiZSBhZGRlZCB0
byB0aGUgYmxvY2sgbGlzdCB3aXRoIG5vIHByb2JsZW1zLiANCiAgICANCiAgICBNSVRSRSBDVkUg
VGVybXMgb2YgVXNlDQogICAgDQogICAgTElDRU5TRQ0KICAgIA0KICAgIFN1Ym1pc3Npb25zOiBG
b3IgYWxsIG1hdGVyaWFscyB5b3Ugc3VibWl0IHRvIHRoZSBDb21tb24gVnVsbmVyYWJpbGl0aWVz
IGFuZCBFeHBvc3VyZXMgKENWRT8/KSwgeW91IGhlcmVieSBncmFudCB0byBUaGUgTUlUUkUgQ29y
cG9yYXRpb24gKE1JVFJFKSBhbmQgYWxsIENWRSBOdW1iZXJpbmcgQXV0aG9yaXRpZXMgKENOQXMp
IGEgcGVycGV0dWFsLCB3b3JsZHdpZGUsIG5vbi1leGNsdXNpdmUsIG5vLWNoYXJnZSwgcm95YWx0
eS1mcmVlLCBpcnJldm9jYWJsZSBjb3B5cmlnaHQgbGljZW5zZSB0byByZXByb2R1Y2UsIHByZXBh
cmUgZGVyaXZhdGl2ZSB3b3JrcyBvZiwgcHVibGljbHkgZGlzcGxheSwgcHVibGljbHkgcGVyZm9y
bSwgc3VibGljZW5zZSwgYW5kIGRpc3RyaWJ1dGUgc3VjaCBtYXRlcmlhbHMgYW5kIGRlcml2YXRp
dmUgd29ya3MuIFVubGVzcyByZXF1aXJlZCBieSBhcHBsaWNhYmxlIGxhdyBvciBhZ3JlZWQgdG8g
aW4gd3JpdGluZywgeW91IHByb3ZpZGUgc3VjaCBtYXRlcmlhbHMgb24gYW4gIkFTIElTIiBCQVNJ
UywgV0lUSE9VVCBXQVJSQU5USUVTIE9SIENPTkRJVElPTlMgT0YgQU5ZIEtJTkQsIGVpdGhlciBl
eHByZXNzIG9yIGltcGxpZWQsIGluY2x1ZGluZywgd2l0aG91dCBsaW1pdGF0aW9uLCBhbnkgd2Fy
cmFudGllcyBvciBjb25kaXRpb25zIG9mIFRJVExFLCBOT04tSU5GUklOR0VNRU5ULCBNRVJDSEFO
VEFCSUxJVFksIG9yIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLg0KICAgIA0KICAg
IENWRSBVc2FnZTogTUlUUkUgaGVyZWJ5IGdyYW50cyB5b3UgYSBwZXJwZXR1YWwsIHdvcmxkd2lk
ZSwgbm9uLWV4Y2x1c2l2ZSwgbm8tY2hhcmdlLCByb3lhbHR5LWZyZWUsIGlycmV2b2NhYmxlIGNv
cHlyaWdodCBsaWNlbnNlIHRvIHJlcHJvZHVjZSwgcHJlcGFyZSBkZXJpdmF0aXZlIHdvcmtzIG9m
LCBwdWJsaWNseSBkaXNwbGF5LCBwdWJsaWNseSBwZXJmb3JtLCBzdWJsaWNlbnNlLCBhbmQgZGlz
dHJpYnV0ZSBDb21tb24gVnVsbmVyYWJpbGl0aWVzIGFuZCBFeHBvc3VyZXMgKENWRT8/KS4gQW55
IGNvcHkgeW91IG1ha2UgZm9yIHN1Y2ggcHVycG9zZXMgaXMgYXV0aG9yaXplZCBwcm92aWRlZCB0
aGF0IHlvdSByZXByb2R1Y2UgTUlUUkUncyBjb3B5cmlnaHQgZGVzaWduYXRpb24gYW5kIHRoaXMg
bGljZW5zZSBpbiBhbnkgc3VjaCBjb3B5Lg0KICAgIA0KICAgIERJU0NMQUlNRVJTDQogICAgDQog
ICAgQUxMIERPQ1VNRU5UUyBBTkQgVEhFIElORk9STUFUSU9OIENPTlRBSU5FRCBUSEVSRUlOIFBS
T1ZJREVEIEJZIE1JVFJFIEFSRSBQUk9WSURFRCBPTiBBTiAiQVMgSVMiIEJBU0lTIEFORCBUSEUg
Q09OVFJJQlVUT1IsIFRIRSBPUkdBTklaQVRJT04gSEUvU0hFIFJFUFJFU0VOVFMgT1IgSVMgU1BP
TlNPUkVEIEJZIChJRiBBTlkpLCBUSEUgTUlUUkUgQ09SUE9SQVRJT04sIElUUyBCT0FSRCBPRiBU
UlVTVEVFUywgT0ZGSUNFUlMsIEFHRU5UUywgQU5EIEVNUExPWUVFUywgRElTQ0xBSU0gQUxMIFdB
UlJBTlRJRVMsIEVYUFJFU1MgT1IgSU1QTElFRCwgSU5DTFVESU5HIEJVVCBOT1QgTElNSVRFRCBU
TyBBTlkgV0FSUkFOVFkgVEhBVCBUSEUgVVNFIE9GIFRIRSBJTkZPUk1BVElPTiBUSEVSRUlOIFdJ
TEwgTk9UIElORlJJTkdFIEFOWSBSSUdIVFMgT1IgQU5ZIElNUExJRUQgV0FSUkFOVElFUyBPRiBN
RVJDSEFOVEFCSUxJVFkgT1IgRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UuDQogICAg
DQogICAgQSBjb3B5IGlzIGF2YWlsYWJsZSBhdCBodHRwczovL2dpdGh1Yi5jb20vZGlzdHJpYnV0
ZWR3ZWFrbmVzc2ZpbGluZy9EV0YtTGVnYWwtQWNjZXB0YW5jZS9ibG9iL21hc3Rlci9UZXJtcy1P
Zi1Vc2UubWQNCiAgICANCiAgICBUbyBjb250YWN0IHRoZSBEV0YgZWl0aGVyIGhpdCByZXBseSwg
b3IgZW1haWwga3VydEBzZWlmcmllZC5vcmcgbWFudWFsbHkgd2l0aCB5b3VyIHF1ZXN0aW9uL2Nv
bmNlcm5zL2V0Yy4gDQogICAgDQogICAgDQoNCg==
