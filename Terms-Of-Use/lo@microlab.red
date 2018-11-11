Delivered-To: kurt@seifried.org
Received: by 2002:ac9:1c4b:0:0:0:0:0 with SMTP id x11-v6csp4747693ocg;
        Mon, 29 Oct 2018 16:34:25 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fkeAzQv/gNFZR6d9US7SmAjfG/SINqbbSQdmQ+Uz+dDmGsvLvfuvxHTaZ19+sIBKVBC8OF
X-Received: by 2002:ac8:4a93:: with SMTP id l19-v6mr367145qtq.97.1540856065075;
        Mon, 29 Oct 2018 16:34:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540856065; cv=none;
        d=google.com; s=arc-20160816;
        b=bdlugt0q+nbU+TQj8/KyQTF/fOqMYilukKJj/oNjDJv+uxMJf3zREZV1twiZ4gnZyX
         MyPEcjAo0QzCOjm12NcuOvzRf286DtrXrFygsqiHE3iYemus9ocF7vkqRdvjwp5DVTMo
         Zoy1Jo8zMzVKmSLBQIwVpRcup6h/OwulmRb4U2t6s1IJpuQ1InV2BG90014y8DZAOLXN
         /AQG2s0WMnQxRDYONLJTBXpzpzPDWQLJym5YPNafvIzYGZhMjBDAHeqvfynUDLZmpx+O
         j11WI9oF5Tbrl1LYenhiYQYQAMQMwpi1zhpVyXWo3X1+djlGUN19M4uP7YSvABd3r047
         LI8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id
         :spamdiagnosticmetadata:spamdiagnosticoutput:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:to:from:dkim-signature;
        bh=vQqczGnXgeIQ2XvS+PguR149xxZ0T6MJEqG5bpm532w=;
        b=aBpT4m7VqFh/1wlEpynwCghyUFknNhmLRXTJ+XYZFRJGk8glm6nhxdRz+SkH6LBJAY
         dv+BzUjMb8nqEMkpDomyTAO2AGpl/MdeeGCRrjZoYogOLy0ZvhUkD1/f/24mB7N1V56S
         j8VGZ5JOA7qOj8CFRDW2oiJNgORcaMKhacLrB5qbgB2/Jfv1IfNPgS1PpGyu7eloiEYf
         ogI+FfjAuyf2X4lR1+GE/Y9sipUUs/AlmnF6h0R09c6c9bzulYAKueUaDzm9/X3PneJE
         nygmOIESMipAbz5fNzwlCq8JFsmJa3/j7lpallP4PSG39wbHrPLSj47Q8ApIyM8a3KQ+
         IF8Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@microlabred.onmicrosoft.com header.s=selector1-microlab-red header.b=odQBklDi;
       spf=pass (google.com: domain of lo@microlab.red designates 40.107.4.137 as permitted sender) smtp.mailfrom=lo@microlab.red
Return-Path: <lo@microlab.red>
Received: from EUR03-DB5-obe.outbound.protection.outlook.com (mail-eopbgr40137.outbound.protection.outlook.com. [40.107.4.137])
        by mx.google.com with ESMTPS id h47si3389128qvd.189.2018.10.29.16.34.24
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 29 Oct 2018 16:34:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of lo@microlab.red designates 40.107.4.137 as permitted sender) client-ip=40.107.4.137;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@microlabred.onmicrosoft.com header.s=selector1-microlab-red header.b=odQBklDi;
       spf=pass (google.com: domain of lo@microlab.red designates 40.107.4.137 as permitted sender) smtp.mailfrom=lo@microlab.red
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microlabred.onmicrosoft.com; s=selector1-microlab-red;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vQqczGnXgeIQ2XvS+PguR149xxZ0T6MJEqG5bpm532w=;
 b=odQBklDi4tYlOJc15VqwUInSR9dcDHkADqJCNRGGhk4Ju1rN9PXV9r9fpc/NWt6tpZh1LDkB2pKIY3pEmE4o08MMNb3djNJ32Dgy4//euATfTz6BnPGTzHplsS9RVqESBmg6mam1R1ELXzw+ccCtycj86qCTYtvTPV6zkZ68+Yw=
Received: from DB7PR02MB3740.eurprd02.prod.outlook.com (52.134.97.25) by
 DB7PR02MB4650.eurprd02.prod.outlook.com (20.178.41.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1273.26; Mon, 29 Oct 2018 23:34:22 +0000
Received: from DB7PR02MB3740.eurprd02.prod.outlook.com
 ([fe80::192a:3a84:5c2c:b5e9]) by DB7PR02MB3740.eurprd02.prod.outlook.com
 ([fe80::192a:3a84:5c2c:b5e9%2]) with mapi id 15.20.1273.027; Mon, 29 Oct 2018
 23:34:22 +0000
From: Lorenzo Nicolodi <lo@microlab.red>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 lo@microlab.red
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 lo@microlab.red
Thread-Index: AQHUb7h4SXhu/jIaJUqV6qhQk375tKU24GMA
Date: Mon, 29 Oct 2018 23:34:22 +0000
Message-ID: <1576fb830d6023ce52e994283df21e7e5ed04d24.camel@microlab.red>
References: <20181029185151.13656.77949@bigbox.local>
In-Reply-To: <20181029185151.13656.77949@bigbox.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=lo@microlab.red; 
x-originating-ip: [88.149.138.158]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics:
 1;DB7PR02MB4650;6:55z1KOg74XHOOWnRsBs3Sz9y0aw9K4i/yJM8fiw9ICJug/OzjJeyGmw+7BVEdqp56cas0lFCRpIk6Vye7QoW6zF0YfosLm1ffnuwPWbi12IP2s6b3ekF107578ukPHnkS8+o+XxYlXk+1kVoe42rcs3SAQSson9bMs5wWq6QbVMQZA3uA+yqomHMZS0J1ozALIIxt9PiWqu3LB27AoIb2bInk4kQMjVOivCvtf8DX4l/YEr8I/Ruqr8trtkWvYRr+MgmzXToN28J+xxdpOAHyenwB0/n90jyq1pY0feKAo1HU4GNCcklNPEx3jff9H/rZjw7r8I2rE/FOEH5ZSUUotTnK4cEBpTA6b8w5HoJbDfhlmIaWjmSIatdtA+9mydx2+dbsHnywhT5XHupuVoSScZvUxxQ1HhzCnuTUZsV/W3ZBBC/zhjgfNRW2/EkppVuAlKWCwnFe/eeibBhjyofBQ==;5:jd8YdSrs7AtyD3Hj/WX7tNMINPKWhrYtQBdoUTqf+SfsNDErHqsjIPGG/FyVXhl0pIb3C/Uu27ib+ybw/GFGDAx489kXkk8a9qhyOWYNzOufpzk7ttfpFDQC98+YAm14moZu6xM70QKPCKoSL044EeDexBkAUtZIy3fPwEfaFg4=;7:cVARECjPaUqmcxJsc+V5ryOhMfFyU9ptmS9cymkeY06uZpK0vXEO/ELsOqiLGz1eieIXTJGdQOUtZ9m4J1FwFdcqeIauvdWvIeqjhNSr8eiXRJwGbOpntTGYLK+PbblyeGr1DiWT0GELwdhchTPLwQ==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 19e267b6-5572-4e44-aa47-08d63df70e48
x-microsoft-antispam:
 BCL:0;PCL:0;RULEID:(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600074)(711020)(2017052603328)(7153060)(7193020);SRVR:DB7PR02MB4650;
x-ms-traffictypediagnostic: DB7PR02MB4650:
x-microsoft-antispam-prvs:
 <DB7PR02MB4650F88C9A0DE336F207FED4B1F30@DB7PR02MB4650.eurprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test:
 BCL:0;PCL:0;RULEID:(6040522)(2401047)(5005006)(8121501046)(3231382)(944501410)(52105095)(93006095)(93001095)(3002001)(10201501046)(148016)(149066)(150057)(6041310)(20161123560045)(20161123564045)(20161123562045)(20161123558120)(2016111802025)(6043046)(201708071742011)(7699051)(76991095);SRVR:DB7PR02MB4650;BCL:0;PCL:0;RULEID:;SRVR:DB7PR02MB4650;
x-forefront-prvs: 084080FC15
x-forefront-antispam-report:
 SFV:NSPM;SFS:(10019020)(346002)(376002)(396003)(366004)(39830400003)(136003)(252514010)(38564003)(199004)(28244002)(189003)(13624006)(8676002)(6436002)(5640700003)(71200400001)(97736004)(6306002)(222073003)(6512007)(71190400001)(4001150100001)(6486002)(2900100001)(14454004)(966005)(8936002)(1730700003)(5660300001)(76176011)(6506007)(229853002)(102836004)(81166006)(81156014)(5250100002)(2501003)(186003)(316002)(86362001)(26005)(36756003)(25786009)(14444005)(6916009)(7736002)(476003)(256004)(53936002)(6246003)(6116002)(2351001)(66066001)(11346002)(2616005)(2906002)(305945005)(99286004)(446003)(105586002)(3846002)(106356001)(68736007)(118296001)(486006)(508600001)(221513004)(42262002);DIR:OUT;SFP:1102;SCL:1;SRVR:DB7PR02MB4650;H:DB7PR02MB3740.eurprd02.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: microlab.red does not designate
 permitted sender hosts)
x-microsoft-antispam-message-info:
 aTJ85VL3jk9p5JRig3Q1UebrpQ4q/8nObozRYVLJbB/lIDumjjQoBFHCdJPOson1ZXw1vh8A7bNOrzcp+M9vIEB3OcI1/1lJYT+jIiNuVct2IoESorYBUxYz6n8BAjKPCSe0E9aIgD2P0WWToiwBuhfjDnM2Nsrz52wgEhtGCT/xNTtXsP/hqzxYE/3j6u1ZEwxnirsl1Y+NjA0xQQWUXtSf+iQlrNd5FOFcAXvsiJYpWryh70bJtl+sYlWfevHVWt8wTv3/LGVo49nEtC356e6bwMRy/RynI+wFX/JMUxfDnU0Zb0LOBnkMXtjIHSpq/VT1rQ+0EhUAuvIIXJ2qYWTurM8Z7f//uJ9D2jceEAI=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: text/plain; charset="utf-8"
Content-ID: <E64501CCE9E2FB43A14235E296C2F616@eurprd02.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: microlab.red
X-MS-Exchange-CrossTenant-Network-Message-Id: 19e267b6-5572-4e44-aa47-08d63df70e48
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2018 23:34:22.4738
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2d7f1d62-efc9-484a-88e9-3c4ea020efe0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR02MB4650

SSBhY2NlcHQNCg0KT24gTW9uLCAyMDE4LTEwLTI5IGF0IDEyOjUxIC0wNjAwLCBrdXJ0QHNlaWZy
aWVkLm9yZyB3cm90ZToNCj4gVGhpcyBpcyBhIGNvbmZpcm1hdGlvbiBlbWFpbCBzZW50IGZyb20g
Q1ZFIHJlcXVlc3QgZm9ybSBhdCANCj4gaHR0cHM6Ly9pd2FudGFjdmUub3JnLyBhc2tpbmcgeW91
IHRvIGFjY2VwdCB0aGUgTUlUUkUgQ1ZFIFRlcm1zIG9mDQo+IFVzZSAoYXNzdW1pbmcgeW91IGZp
bGxlZCBvdXQgdGhlIENWRSBmb3JtIGFuZCB3YW50IG9uZSwgd2UgY2FuJ3QgdXNlDQo+IHRoZSBk
YXRhIHVudGlsIHlvdSBhY2NlcHQgdGhlIE1JVFJFIENWRSBUZXJtcyBvZiBVc2UpLiANCj4gDQo+
IFNpbXBseSBxdW90ZSB0aGUgZW1haWwgYW5kIHJlcGx5IHdpdGggIkkgYWNjZXB0IiBhdCB0aGUg
dG9wIGlmIHlvdQ0KPiBhZ3JlZSB0byB0aGUgTUlUUkUgQ1ZFIFRlcm1zIG9mIFVzZSBhbmQgd2Ug
d2lsbCBhZGQgYSBjb3B5IG9mIHRoZQ0KPiBlbWFpbCB0byB0aGUgRFdGIE1JVFJFIENWRSBUZXJt
cyBvZiBVc2UgYWNjZXB0YW5jZSBkYXRhIGF0IA0KPiBodHRwczovL2dpdGh1Yi5jb20vZGlzdHJp
YnV0ZWR3ZWFrbmVzc2ZpbGluZy9EV0YtTGVnYWwtQWNjZXB0YW5jZS90cmVlL21hc3Rlci9UZXJt
cy1PZi1Vc2UNCj4gDQo+IFRoZSByZWFzb24gd2UgdXNlIGEgY29tcGxldGUgY29weSBvZiB0aGUg
ZW1haWwgaXMgdGhhdCBpdCBwcm92aWRlcyBhbg0KPiBhcnRpZmFjdCBzaG93aW5nIHRoYXQgdGhl
IGVtYWlsIGFkZHJlc3MgYWNjZXB0ZWQgdGhlIFRlcm1zIG9mIFVzZSwNCj4gd2hlbiB0aGV5IHdl
cmUgYWNjZXB0ZWQgYW5kIHNvIG9uLiANCj4gDQo+IElmIHlvdSBkaWQgbm90IHN1Ym1pdCBhIENW
RSByZXF1ZXN0IHRvIHRoZSBEV0YgeW91IGNhbiBzYWZlbHkgaWdub3JlDQo+IHRoaXMgbWVzc2Fn
ZSwgaG93ZXZlciB3ZSBtYXkgcmVzZW5kIGl0IGF0IHNvbWUgcG9pbnQgaW4gdGhlIGZ1dHVyZSwN
Cj4gaWYgeW91IGRvbid0IHdhbnQgYW55IGZ1dHVyZSBlbWFpbHMgc2ltcGx5IHJlcGx5IHdpdGgg
InVuc3Vic2NyaWJlIg0KPiBvciAiRE9OJ1QgU0VORCBNRSBUSElTIEVNQUlMIEVWRVIgQUdBSU4i
IGFuZCBJJ2xsIGFkZCB5b3VyIGVtYWlsDQo+IGFkZHJlc3MgdG8gdGhlIGJsb2NrIGxpc3Qgc28g
d2UgZG9uJ3Qgc3BhbSB5b3Ugd2l0aCB0aGVzZSwgcGxlYXNlDQo+IG5vdGUgdGhhdCB0aGlzIHdp
bGwgcHJldmVudCB5b3UgZnJvbSBiZWluZyBhYmxlIHRvIGFjY2VwdCB0aGUgTUlUUkUNCj4gQ1ZF
IFRlcm1zIG9mIFVzZSB2aWEgdGhlIERXRiBhdXRvbWF0aWNhbGx5IGluIGZ1dHVyZSAoeW91J2xs
IGhhdmUgdG8NCj4gbWFudWFsbHkgYXNrKS4gQnV0IGFnYWluLCBpZiB5b3UgaGF2ZSBubyBpZGVh
IHdoYXQgYSBDVkUgaXMgdGhlbiB5b3UNCj4gY2FuIGlnbm9yZSB0aGlzL2FzayB0byBiZSBhZGRl
ZCB0byB0aGUgYmxvY2sgbGlzdCB3aXRoIG5vIHByb2JsZW1zLiANCj4gDQo+IE1JVFJFIENWRSBU
ZXJtcyBvZiBVc2UNCj4gDQo+IExJQ0VOU0UNCj4gDQo+IFN1Ym1pc3Npb25zOiBGb3IgYWxsIG1h
dGVyaWFscyB5b3Ugc3VibWl0IHRvIHRoZSBDb21tb24NCj4gVnVsbmVyYWJpbGl0aWVzIGFuZCBF
eHBvc3VyZXMgKENWRT8/KSwgeW91IGhlcmVieSBncmFudCB0byBUaGUgTUlUUkUNCj4gQ29ycG9y
YXRpb24gKE1JVFJFKSBhbmQgYWxsIENWRSBOdW1iZXJpbmcgQXV0aG9yaXRpZXMgKENOQXMpIGEN
Cj4gcGVycGV0dWFsLCB3b3JsZHdpZGUsIG5vbi1leGNsdXNpdmUsIG5vLWNoYXJnZSwgcm95YWx0
eS1mcmVlLA0KPiBpcnJldm9jYWJsZSBjb3B5cmlnaHQgbGljZW5zZSB0byByZXByb2R1Y2UsIHBy
ZXBhcmUgZGVyaXZhdGl2ZSB3b3Jrcw0KPiBvZiwgcHVibGljbHkgZGlzcGxheSwgcHVibGljbHkg
cGVyZm9ybSwgc3VibGljZW5zZSwgYW5kIGRpc3RyaWJ1dGUNCj4gc3VjaCBtYXRlcmlhbHMgYW5k
IGRlcml2YXRpdmUgd29ya3MuIFVubGVzcyByZXF1aXJlZCBieSBhcHBsaWNhYmxlDQo+IGxhdyBv
ciBhZ3JlZWQgdG8gaW4gd3JpdGluZywgeW91IHByb3ZpZGUgc3VjaCBtYXRlcmlhbHMgb24gYW4g
IkFTIElTIg0KPiBCQVNJUywgV0lUSE9VVCBXQVJSQU5USUVTIE9SIENPTkRJVElPTlMgT0YgQU5Z
IEtJTkQsIGVpdGhlciBleHByZXNzDQo+IG9yIGltcGxpZWQsIGluY2x1ZGluZywgd2l0aG91dCBs
aW1pdGF0aW9uLCBhbnkgd2FycmFudGllcyBvcg0KPiBjb25kaXRpb25zIG9mIFRJVExFLCBOT04t
SU5GUklOR0VNRU5ULCBNRVJDSEFOVEFCSUxJVFksIG9yIEZJVE5FU1MNCj4gRk9SIEEgUEFSVElD
VUxBUiBQVVJQT1NFLg0KPiANCj4gQ1ZFIFVzYWdlOiBNSVRSRSBoZXJlYnkgZ3JhbnRzIHlvdSBh
IHBlcnBldHVhbCwgd29ybGR3aWRlLCBub24tDQo+IGV4Y2x1c2l2ZSwgbm8tY2hhcmdlLCByb3lh
bHR5LWZyZWUsIGlycmV2b2NhYmxlIGNvcHlyaWdodCBsaWNlbnNlIHRvDQo+IHJlcHJvZHVjZSwg
cHJlcGFyZSBkZXJpdmF0aXZlIHdvcmtzIG9mLCBwdWJsaWNseSBkaXNwbGF5LCBwdWJsaWNseQ0K
PiBwZXJmb3JtLCBzdWJsaWNlbnNlLCBhbmQgZGlzdHJpYnV0ZSBDb21tb24gVnVsbmVyYWJpbGl0
aWVzIGFuZA0KPiBFeHBvc3VyZXMgKENWRT8/KS4gQW55IGNvcHkgeW91IG1ha2UgZm9yIHN1Y2gg
cHVycG9zZXMgaXMgYXV0aG9yaXplZA0KPiBwcm92aWRlZCB0aGF0IHlvdSByZXByb2R1Y2UgTUlU
UkUncyBjb3B5cmlnaHQgZGVzaWduYXRpb24gYW5kIHRoaXMNCj4gbGljZW5zZSBpbiBhbnkgc3Vj
aCBjb3B5Lg0KPiANCj4gRElTQ0xBSU1FUlMNCj4gDQo+IEFMTCBET0NVTUVOVFMgQU5EIFRIRSBJ
TkZPUk1BVElPTiBDT05UQUlORUQgVEhFUkVJTiBQUk9WSURFRCBCWSBNSVRSRQ0KPiBBUkUgUFJP
VklERUQgT04gQU4gIkFTIElTIiBCQVNJUyBBTkQgVEhFIENPTlRSSUJVVE9SLCBUSEUNCj4gT1JH
QU5JWkFUSU9OIEhFL1NIRSBSRVBSRVNFTlRTIE9SIElTIFNQT05TT1JFRCBCWSAoSUYgQU5ZKSwg
VEhFIE1JVFJFDQo+IENPUlBPUkFUSU9OLCBJVFMgQk9BUkQgT0YgVFJVU1RFRVMsIE9GRklDRVJT
LCBBR0VOVFMsIEFORCBFTVBMT1lFRVMsDQo+IERJU0NMQUlNIEFMTCBXQVJSQU5USUVTLCBFWFBS
RVNTIE9SIElNUExJRUQsIElOQ0xVRElORyBCVVQgTk9UDQo+IExJTUlURUQgVE8gQU5ZIFdBUlJB
TlRZIFRIQVQgVEhFIFVTRSBPRiBUSEUgSU5GT1JNQVRJT04gVEhFUkVJTiBXSUxMDQo+IE5PVCBJ
TkZSSU5HRSBBTlkgUklHSFRTIE9SIEFOWSBJTVBMSUVEIFdBUlJBTlRJRVMgT0YgTUVSQ0hBTlRB
QklMSVRZDQo+IE9SIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLg0KPiANCj4gQSBj
b3B5IGlzIGF2YWlsYWJsZSBhdCANCj4gaHR0cHM6Ly9naXRodWIuY29tL2Rpc3RyaWJ1dGVkd2Vh
a25lc3NmaWxpbmcvRFdGLUxlZ2FsLUFjY2VwdGFuY2UvYmxvYi9tYXN0ZXIvVGVybXMtT2YtVXNl
Lm1kDQo+IA0KPiBUbyBjb250YWN0IHRoZSBEV0YgZWl0aGVyIGhpdCByZXBseSwgb3IgZW1haWwg
a3VydEBzZWlmcmllZC5vcmcNCj4gbWFudWFsbHkgd2l0aCB5b3VyIHF1ZXN0aW9uL2NvbmNlcm5z
L2V0Yy4gDQo+IA0KLS0gDQoNCkxvcmVuem8gTmljb2xvZGkNCg0Kd2ViOiBodHRwczovL21pY3Jv
bGFiLnJlZA0KZW1haWw6IGxvQG1pY3JvbGFiLnJlZA0KbW9iaWxlOiArMzkgMzQwIDA4OTk2NjIN
Cg==
