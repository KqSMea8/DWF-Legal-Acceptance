Delivered-To: kurt@seifried.org
Received: by 10.79.12.84 with SMTP id 81csp2819408ivm;
        Thu, 1 Mar 2018 07:59:17 -0800 (PST)
X-Google-Smtp-Source: AG47ELv3bbL7OhRERgO4Jkq3f5sPmGI4k6/srMPniWRYE4Sogdr6Jk6ww3B2j1XV2P7o0gbV3UN+
X-Received: by 2002:a17:902:7148:: with SMTP id u8-v6mr2273781plm.91.1519919957555;
        Thu, 01 Mar 2018 07:59:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519919957; cv=none;
        d=google.com; s=arc-20160816;
        b=d7MkGCgafwz75WK8HPYgsKN3ekK/eCpp8T6wODTbH5LLpGuDzUVO6L9cf3SIKjwDlg
         6Wq4Mzk/nLeCGwgCwBG/PJxZ8eTi0t+NJKlJ0ycPQ4DVsDzifuqylkZajFxXma8zDw8F
         vrQ3Q3EQX/gK+QB9Y4P03Joc6zGvaP9zq4GBtXkOAzOG2XMsIU0MuuOHtobjk/PDzHua
         OGHjJyn9wUxTsK+R3c0VJJuU1gy8ObfQ+G2bQkEQJSJaHp1EaNtbQenYPi9yvP1b+5rD
         dIH+okKMh3S4OwfzY+r367YOcKV4cwsJLlKBuDFFni8C0zcsguSpuBxNuZBN1jm17uON
         XDHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:to:dkim-signature:from
         :dkim-signature:arc-authentication-results;
        bh=826P1wGSL/5ko8M0tqAfys7pG/QjWYcUYAA+SoT75J0=;
        b=cRYTNTf00+PTrFCcQNazBkkXF4i/GyX5Dh1pmimga2U33rFp9RlLmwVOzCkEshFJ7M
         lz+53tUvANIPKitmb7ZxSwPDheG1PWtp5omjW381h/FxHsG6Tu/9ppO4n9OyuPPR9Np8
         ZSDHfoEinV9X3fbn0aT6npPm0rzcVS2g0CivIkWyAaGtmJB33xuNE2fKyZo3EuV+Rksd
         dXniwerV1KsVC/2XUXfDVd1Hmm89bMVkGODtdGxNtqAz4kwDCHWhbc0fuAVD5DgTf7/2
         yrgd0JdUNY/nBIeFjOpzRNKgkV5kzW4GSL907ARp7nV4ELZO9haVGGFc9rW2Ik4t7Fdv
         PiaQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@dell.com header.s=smtpout header.b=AAdYKgBJ;
       dkim=fail header.i=@emc.com header.s=jan2013 header.b=J9kgPK5I;
       spf=pass (google.com: domain of nazira.carlage@dell.com designates 68.232.149.218 as permitted sender) smtp.mailfrom=Nazira.Carlage@dell.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=dell.com
Return-Path: <Nazira.Carlage@dell.com>
Received: from esa8.dell-outbound.iphmx.com (esa8.dell-outbound.iphmx.com. [68.232.149.218])
        by mx.google.com with ESMTPS id f9-v6si3313857pli.445.2018.03.01.07.59.17
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 07:59:17 -0800 (PST)
Received-SPF: pass (google.com: domain of nazira.carlage@dell.com designates 68.232.149.218 as permitted sender) client-ip=68.232.149.218;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@dell.com header.s=smtpout header.b=AAdYKgBJ;
       dkim=fail header.i=@emc.com header.s=jan2013 header.b=J9kgPK5I;
       spf=pass (google.com: domain of nazira.carlage@dell.com designates 68.232.149.218 as permitted sender) smtp.mailfrom=Nazira.Carlage@dell.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=dell.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=dell.com; i=@dell.com; q=dns/txt; s=smtpout;
  t=1519919957; x=1551455957;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-id:content-transfer-encoding:mime-version;
  bh=826P1wGSL/5ko8M0tqAfys7pG/QjWYcUYAA+SoT75J0=;
  b=AAdYKgBJCy+YGDvLpm2zdgL9lj2YLtaM1ygL7THs9DRiaozETVcJnKQ+
   0HoH3xQxVoND8S11KawGSuRujLKVyqZxk0mpE/CqCUCH3DuEVFFX9xuxX
   6b6//ZrAX6VCHwttkVobM7YPCAJIU7gRB2bLETsRlUq3cLfNHkqib/RWz
   4=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2GnAgDlIphahz+a6EReHQEBBQELAYJ8I?=
 =?us-ascii?q?4EHEHAoCoNKmBSBW4E9lECBP0IKJYEJgm+BEwIagkQhNxUBAgEBAQEBAQIBAhA?=
 =?us-ascii?q?BAQEKCwkIKCQLgjgiDQRLIQYDLgEBAQEBAQEBAQEBAQEBAQEBAQEXAg0iDhMbB?=
 =?us-ascii?q?iMRDA4sDwIBCBoCJgICAi8BFAEQAgQTHQSEegEPqm2CJ4MIhV+CFgEBAQEBBQE?=
 =?us-ascii?q?BAQEBARoDBYEPhBeCJ1SBBIIODIJ4gy4CgTYIAQsHAR+DDTCCMogrhVuFPIcbC?=
 =?us-ascii?q?QKGUIwPhDWIWh0BiV2EPgGCbAIEAgQFAhqBLjSBBHFwLiEqAYIYgkMQDBYYgU1?=
 =?us-ascii?q?3ijcPGIEKgRcBAQE?=
X-IPAS-Result: =?us-ascii?q?A2GnAgDlIphahz+a6EReHQEBBQELAYJ8I4EHEHAoCoNKmBS?=
 =?us-ascii?q?BW4E9lECBP0IKJYEJgm+BEwIagkQhNxUBAgEBAQEBAQIBAhABAQEKCwkIKCQLg?=
 =?us-ascii?q?jgiDQRLIQYDLgEBAQEBAQEBAQEBAQEBAQEBAQEXAg0iDhMbBiMRDA4sDwIBCBo?=
 =?us-ascii?q?CJgICAi8BFAEQAgQTHQSEegEPqm2CJ4MIhV+CFgEBAQEBBQEBAQEBARoDBYEPh?=
 =?us-ascii?q?BeCJ1SBBIIODIJ4gy4CgTYIAQsHAR+DDTCCMogrhVuFPIcbCQKGUIwPhDWIWh0?=
 =?us-ascii?q?BiV2EPgGCbAIEAgQFAhqBLjSBBHFwLiEqAYIYgkMQDBYYgU13ijcPGIEKgRcBA?=
 =?us-ascii?q?QE?=
Received: from esa3.dell-outbound2.iphmx.com ([68.232.154.63])
  by esa8.dell-outbound.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2018 09:59:00 -0600
From: "Carlage, Nazira (Omuralieva)" <Nazira.Carlage@dell.com>
Received: from mailuogwhop.emc.com ([168.159.213.141])
  by esa3.dell-outbound2.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2018 21:49:14 +0600
Received: from maildlpprd01.lss.emc.com (maildlpprd01.lss.emc.com [10.253.24.33])
	by mailuogwprd01.lss.emc.com (Sentrion-MTA-4.3.1/Sentrion-MTA-4.3.0) with ESMTP id w21Fwv1n022507
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <kurt@seifried.org>; Thu, 1 Mar 2018 10:58:58 -0500
X-DKIM: OpenDKIM Filter v2.4.3 mailuogwprd01.lss.emc.com w21Fwv1n022507
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=emc.com; s=jan2013;
	t=1519919939; bh=wWV7wUEYi0SAPSt311E64GgSyH0=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:Content-ID:Content-Transfer-Encoding:MIME-Version;
	b=J9kgPK5I1I/Kq56AF0rmJowMnW2g7KLJ+KNiXMQ5E4E3VLA4+GQICaEay0NW2YdTi
	 XYuRe8fsNUf//enNmcP6WaUpV78FC1z/QiljPn6mnIRILriz+FdFojMA4sgnFEGH25
	 Zgj/jtMmyCQycXl78i6MEAq+N1vG0Ll8egtrOFS8=
X-DKIM: OpenDKIM Filter v2.4.3 mailuogwprd01.lss.emc.com w21Fwv1n022507
Received: from mailusrhubprd52.lss.emc.com (mailusrhubprd52.lss.emc.com [10.106.48.25]) by maildlpprd01.lss.emc.com (RSA Interceptor) for <kurt@seifried.org>; Thu, 1 Mar 2018 10:58:34 -0500
Received: from MXHUB309.corp.emc.com (MXHUB309.corp.emc.com [10.146.3.35])
	by mailusrhubprd52.lss.emc.com (Sentrion-MTA-4.3.1/Sentrion-MTA-4.3.0) with ESMTP id w21FwfMO020206
	(version=TLSv1.2 cipher=AES128-SHA256 bits=128 verify=FAIL)
	for <kurt@seifried.org>; Thu, 1 Mar 2018 10:58:41 -0500
Received: from MX308CL03.corp.emc.com ([fe80::e5cc:43b0:311a:ac9e]) by
 MXHUB309.corp.emc.com ([10.146.3.35]) with mapi id 14.03.0352.000; Thu, 1 Mar
 2018 10:58:40 -0500
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 nazira.carlage@dell.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 nazira.carlage@dell.com
Thread-Index: AQHTsXX9bF0TSc0cUEWNp7QRK3LOkqO7iWgA
Date: Thu, 1 Mar 2018 15:58:40 +0000
Message-ID: <88D9963D-54E9-4870-8564-B7C5E06B3CA8@emc.com>
References: <20180301155712.16854.12752@slab.local>
In-Reply-To: <20180301155712.16854.12752@slab.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-originating-ip: [10.253.49.41]
Content-Type: text/plain; charset="utf-8"
Content-ID: <C4750EE089D22948BC852B486C245CE1@mail.corp.emc.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Sentrion-Hostname: mailusrhubprd52.lss.emc.com
X-RSA-Classifications: public, GIS Solicitation

SSBhY2NlcHQuDQoNCg0KDQoNCk9uIDMvMS8xOCwgMTA6NTcgQU0sICJrdXJ0QHNlaWZyaWVkLm9y
ZyIgPGt1cnRAc2VpZnJpZWQub3JnPiB3cm90ZToNCg0KPlRoaXMgaXMgYSBjb25maXJtYXRpb24g
ZW1haWwgc2VudCBmcm9tIENWRSByZXF1ZXN0IGZvcm0gYXQgaHR0cHM6Ly9pd2FudGFjdmUub3Jn
LyBhc2tpbmcgeW91IHRvIGFjY2VwdCB0aGUgTUlUUkUgQ1ZFIFRlcm1zIG9mIFVzZSAoYXNzdW1p
bmcgeW91IGZpbGxlZCBvdXQgdGhlIENWRSBmb3JtIGFuZCB3YW50IG9uZSwgd2UgY2FuJ3QgdXNl
IHRoZSBkYXRhIHVudGlsIHlvdSBhY2NlcHQgdGhlIE1JVFJFIENWRSBUZXJtcyBvZiBVc2UpLiAN
Cj4NCj5TaW1wbHkgcXVvdGUgdGhlIGVtYWlsIGFuZCByZXBseSB3aXRoICJJIGFjY2VwdCIgYXQg
dGhlIHRvcCBpZiB5b3UgYWdyZWUgdG8gdGhlIE1JVFJFIENWRSBUZXJtcyBvZiBVc2UgYW5kIHdl
IHdpbGwgYWRkIGEgY29weSBvZiB0aGUgZW1haWwgdG8gdGhlIERXRiBNSVRSRSBDVkUgVGVybXMg
b2YgVXNlIGFjY2VwdGFuY2UgZGF0YSBhdCBodHRwczovL2dpdGh1Yi5jb20vZGlzdHJpYnV0ZWR3
ZWFrbmVzc2ZpbGluZy9EV0YtTGVnYWwtQWNjZXB0YW5jZS90cmVlL21hc3Rlci9UZXJtcy1PZi1V
c2UNCj4NCj5UaGUgcmVhc29uIHdlIHVzZSBhIGNvbXBsZXRlIGNvcHkgb2YgdGhlIGVtYWlsIGlz
IHRoYXQgaXQgcHJvdmlkZXMgYW4gYXJ0aWZhY3Qgc2hvd2luZyB0aGF0IHRoZSBlbWFpbCBhZGRy
ZXNzIGFjY2VwdGVkIHRoZSBUZXJtcyBvZiBVc2UsIHdoZW4gdGhleSB3ZXJlIGFjY2VwdGVkIGFu
ZCBzbyBvbi4gDQo+DQo+SWYgeW91IGRpZCBub3Qgc3VibWl0IGEgQ1ZFIHJlcXVlc3QgdG8gdGhl
IERXRiB5b3UgY2FuIHNhZmVseSBpZ25vcmUgdGhpcyBtZXNzYWdlLCBob3dldmVyIHdlIG1heSBy
ZXNlbmQgaXQgYXQgc29tZSBwb2ludCBpbiB0aGUgZnV0dXJlLCBpZiB5b3UgZG9uJ3Qgd2FudCBh
bnkgZnV0dXJlIGVtYWlscyBzaW1wbHkgcmVwbHkgd2l0aCAidW5zdWJzY3JpYmUiIG9yICJET04n
VCBTRU5EIE1FIFRISVMgRU1BSUwgRVZFUiBBR0FJTiIgYW5kIEknbGwgYWRkIHlvdXIgZW1haWwg
YWRkcmVzcyB0byB0aGUgYmxvY2sgbGlzdCBzbyB3ZSBkb24ndCBzcGFtIHlvdSB3aXRoIHRoZXNl
LCBwbGVhc2Ugbm90ZSB0aGF0IHRoaXMgd2lsbCBwcmV2ZW50IHlvdSBmcm9tIGJlaW5nIGFibGUg
dG8gYWNjZXB0IHRoZSBNSVRSRSBDVkUgVGVybXMgb2YgVXNlIHZpYSB0aGUgRFdGIGF1dG9tYXRp
Y2FsbHkgaW4gZnV0dXJlICh5b3UnbGwgaGF2ZSB0byBtYW51YWxseSBhc2spLiBCdXQgYWdhaW4s
IGlmIHlvdSBoYXZlIG5vIGlkZWEgd2hhdCBhIENWRSBpcyB0aGVuIHlvdSBjYW4gaWdub3JlIHRo
aXMvYXNrIHRvIGJlIGFkZGVkIHRvIHRoZSBibG9jayBsaXN0IHdpdGggbm8gcHJvYmxlbXMuIA0K
Pg0KPk1JVFJFIENWRSBUZXJtcyBvZiBVc2UNCj4NCj5MSUNFTlNFDQo+DQo+U3VibWlzc2lvbnM6
IEZvciBhbGwgbWF0ZXJpYWxzIHlvdSBzdWJtaXQgdG8gdGhlIENvbW1vbiBWdWxuZXJhYmlsaXRp
ZXMgYW5kIEV4cG9zdXJlcyAoQ1ZFPz8pLCB5b3UgaGVyZWJ5IGdyYW50IHRvIFRoZSBNSVRSRSBD
b3Jwb3JhdGlvbiAoTUlUUkUpIGFuZCBhbGwgQ1ZFIE51bWJlcmluZyBBdXRob3JpdGllcyAoQ05B
cykgYSBwZXJwZXR1YWwsIHdvcmxkd2lkZSwgbm9uLWV4Y2x1c2l2ZSwgbm8tY2hhcmdlLCByb3lh
bHR5LWZyZWUsIGlycmV2b2NhYmxlIGNvcHlyaWdodCBsaWNlbnNlIHRvIHJlcHJvZHVjZSwgcHJl
cGFyZSBkZXJpdmF0aXZlIHdvcmtzIG9mLCBwdWJsaWNseSBkaXNwbGF5LCBwdWJsaWNseSBwZXJm
b3JtLCBzdWJsaWNlbnNlLCBhbmQgZGlzdHJpYnV0ZSBzdWNoIG1hdGVyaWFscyBhbmQgZGVyaXZh
dGl2ZSB3b3Jrcy4gVW5sZXNzIHJlcXVpcmVkIGJ5IGFwcGxpY2FibGUgbGF3IG9yIGFncmVlZCB0
byBpbiB3cml0aW5nLCB5b3UgcHJvdmlkZSBzdWNoIG1hdGVyaWFscyBvbiBhbiAiQVMgSVMiIEJB
U0lTLCBXSVRIT1VUIFdBUlJBTlRJRVMgT1IgQ09ORElUSU9OUyBPRiBBTlkgS0lORCwgZWl0aGVy
IGV4cHJlc3Mgb3IgaW1wbGllZCwgaW5jbHVkaW5nLCB3aXRob3V0IGxpbWl0YXRpb24sIGFueSB3
YXJyYW50aWVzIG9yIGNvbmRpdGlvbnMgb2YgVElUTEUsIE5PTi1JTkZSSU5HRU1FTlQsIE1FUkNI
QU5UQUJJTElUWSwgb3IgRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UuDQo+DQo+Q1ZF
IFVzYWdlOiBNSVRSRSBoZXJlYnkgZ3JhbnRzIHlvdSBhIHBlcnBldHVhbCwgd29ybGR3aWRlLCBu
b24tZXhjbHVzaXZlLCBuby1jaGFyZ2UsIHJveWFsdHktZnJlZSwgaXJyZXZvY2FibGUgY29weXJp
Z2h0IGxpY2Vuc2UgdG8gcmVwcm9kdWNlLCBwcmVwYXJlIGRlcml2YXRpdmUgd29ya3Mgb2YsIHB1
YmxpY2x5IGRpc3BsYXksIHB1YmxpY2x5IHBlcmZvcm0sIHN1YmxpY2Vuc2UsIGFuZCBkaXN0cmli
dXRlIENvbW1vbiBWdWxuZXJhYmlsaXRpZXMgYW5kIEV4cG9zdXJlcyAoQ1ZFPz8pLiBBbnkgY29w
eSB5b3UgbWFrZSBmb3Igc3VjaCBwdXJwb3NlcyBpcyBhdXRob3JpemVkIHByb3ZpZGVkIHRoYXQg
eW91IHJlcHJvZHVjZSBNSVRSRSdzIGNvcHlyaWdodCBkZXNpZ25hdGlvbiBhbmQgdGhpcyBsaWNl
bnNlIGluIGFueSBzdWNoIGNvcHkuDQo+DQo+RElTQ0xBSU1FUlMNCj4NCj5BTEwgRE9DVU1FTlRT
IEFORCBUSEUgSU5GT1JNQVRJT04gQ09OVEFJTkVEIFRIRVJFSU4gUFJPVklERUQgQlkgTUlUUkUg
QVJFIFBST1ZJREVEIE9OIEFOICJBUyBJUyIgQkFTSVMgQU5EIFRIRSBDT05UUklCVVRPUiwgVEhF
IE9SR0FOSVpBVElPTiBIRS9TSEUgUkVQUkVTRU5UUyBPUiBJUyBTUE9OU09SRUQgQlkgKElGIEFO
WSksIFRIRSBNSVRSRSBDT1JQT1JBVElPTiwgSVRTIEJPQVJEIE9GIFRSVVNURUVTLCBPRkZJQ0VS
UywgQUdFTlRTLCBBTkQgRU1QTE9ZRUVTLCBESVNDTEFJTSBBTEwgV0FSUkFOVElFUywgRVhQUkVT
UyBPUiBJTVBMSUVELCBJTkNMVURJTkcgQlVUIE5PVCBMSU1JVEVEIFRPIEFOWSBXQVJSQU5UWSBU
SEFUIFRIRSBVU0UgT0YgVEhFIElORk9STUFUSU9OIFRIRVJFSU4gV0lMTCBOT1QgSU5GUklOR0Ug
QU5ZIFJJR0hUUyBPUiBBTlkgSU1QTElFRCBXQVJSQU5USUVTIE9GIE1FUkNIQU5UQUJJTElUWSBP
UiBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4NCj4NCj5BIGNvcHkgaXMgYXZhaWxh
YmxlIGF0IGh0dHBzOi8vZ2l0aHViLmNvbS9kaXN0cmlidXRlZHdlYWtuZXNzZmlsaW5nL0RXRi1M
ZWdhbC1BY2NlcHRhbmNlL2Jsb2IvbWFzdGVyL1Rlcm1zLU9mLVVzZS5tZA0KPg0KPlRvIGNvbnRh
Y3QgdGhlIERXRiBlaXRoZXIgaGl0IHJlcGx5LCBvciBlbWFpbCBrdXJ0QHNlaWZyaWVkLm9yZyBt
YW51YWxseSB3aXRoIHlvdXIgcXVlc3Rpb24vY29uY2VybnMvZXRjLiANCj4NCg==
