Delivered-To: kurt@seifried.org
Received: by 10.157.8.51 with SMTP id 48csp1045435oty;
        Sun, 20 Aug 2017 23:58:04 -0700 (PDT)
X-Received: by 10.223.173.19 with SMTP id p19mr10707629wrc.29.1503298683971;
        Sun, 20 Aug 2017 23:58:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1503298683; cv=none;
        d=google.com; s=arc-20160816;
        b=zUxjEZ1qWrvrrzFZQThmQRODYNKIPNGwAXtWg1Xqg3t5jzkeKtvfq5sAx8n0otNy9o
         gDmhQg3jGOConI90lrgZQ/H4UpssIs0ohg15RxGp4+U5/WbUhavbmnPizbyZvx24Zgxr
         1LvVo7CdSVU729lP547vkynaY3gcSmHPxTxZ3T6WuvY8hV4rdSzZ5IRxslBzqjgeC+El
         ZCR+5TxcbnCI/2m2CCV5incFeUXklP++j2bzKHzoyBXZQVkFW5Bn1ngQD0CFHrrGdIPV
         54pi880ucDR50KBTcd7W7qL86I6Q1rm7J4fSNCgIFvQNH/WhEmF76UISwuuJ/PKHJa/W
         0BBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :to:from:arc-authentication-results;
        bh=0n1LlZF6aS18sScMYHPgm2BHINEfjqoVZIzhg0NfckM=;
        b=J9eBiuz1VDfGKRF9V3WVzenLYKy7R5zvMBNgywYbw/dZiS/KuPCAUkUkHJVVDW4z8q
         kUrqL+ZbT/fD8ifVx4WANpC+7Qwegm8FOMIDKoewld8xeLuaW60zYIEW9eckjMX0chMq
         QV0pbzh62eXMxvpbVvm9ZagCTgP1uI/yqP9mkCkYA9tWFEktSqOGRtORzn1rk3if+x0a
         IkxXy0g0u43fWj/Wl9wTYjFpukRnNmKGS6A+u70E0ayBUI+4psa4DjCdpEK0meXrqEYc
         rEglE+0nkUpHHSN6L12eWHiFNn0Sc/W32DxUhMB75a8/L5bFeXq0lAyqZMWKpiFSzmhs
         zuRA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of cert@intrinsec.com designates 194.6.240.20 as permitted sender) smtp.mailfrom=cert@intrinsec.com
Return-Path: <cert@intrinsec.com>
Received: from Mailer.intrinsec.com (mailer.intrinsec.com. [194.6.240.20])
        by mx.google.com with ESMTPS id c24si5258867wmi.149.2017.08.20.23.58.03
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 20 Aug 2017 23:58:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of cert@intrinsec.com designates 194.6.240.20 as permitted sender) client-ip=194.6.240.20;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of cert@intrinsec.com designates 194.6.240.20 as permitted sender) smtp.mailfrom=cert@intrinsec.com
From: CERT Intrinsec <cert@intrinsec.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: RE: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 cert@intrinsec.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 cert@intrinsec.com
Thread-Index: AdMaSqvrYGaa1bc7SFOe6/pdeuXGFw==
Date: Mon, 21 Aug 2017 06:58:02 +0000
Message-ID: <734f02b5d4f34c6382fe3c4087337c06@ISC-SRV-EXC03.Intrinsec.neurones.sa>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-exchange-transport-fromentityheader: Hosted
x-kse-antispam-interceptor-info: internally-submitted e-mail
x-exclaimer-md-config: 77fd0af7-43d4-486a-b8fa-793e4f563e72
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean, bases: 12/03/2017 19:51:00
x-kse-attachment-filter-scan-result: Clean
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0

SSBhY2NlcHQuDQoNCi0tLS0tTWVzc2FnZSBkJ29yaWdpbmUtLS0tLQ0KRGXCoDoga3VydEBzZWlm
cmllZC5vcmcgW21haWx0bzprdXJ0QHNlaWZyaWVkLm9yZ10gDQpFbnZvecOpwqA6IHNhbWVkaSAx
OSBhb8O7dCAyMDE3IDA0OjU0DQrDgMKgOiBDRVJUIEludHJpbnNlYyA8Y2VydEBpbnRyaW5zZWMu
Y29tPg0KT2JqZXTCoDogRFdGL0NWRSAtIEFjY2VwdGFuY2Ugb2YgTUlUUkUgVGVybXMgb2YgVXNl
IGZvciBDVkUgZm9yIGNlcnRAaW50cmluc2VjLmNvbQ0KSW1wb3J0YW5jZcKgOiBGYWlibGUNCg0K
VGhpcyBpcyBhIGNvbmZpcm1hdGlvbiBlbWFpbCBzZW50IGZyb20gQ1ZFIHJlcXVlc3QgZm9ybSBh
dCBodHRwczovL2l3YW50YWN2ZS5vcmcvIGFza2luZyB5b3UgdG8gYWNjZXB0IHRoZSBNSVRSRSBD
VkUgVGVybXMgb2YgVXNlIChhc3N1bWluZyB5b3UgZmlsbGVkIG91dCB0aGUgQ1ZFIGZvcm0gYW5k
IHdhbnQgb25lLCB3ZSBjYW4ndCB1c2UgdGhlIGRhdGEgdW50aWwgeW91IGFjY2VwdCB0aGUgTUlU
UkUgQ1ZFIFRlcm1zIG9mIFVzZSkuIA0KDQpTaW1wbHkgcXVvdGUgdGhlIGVtYWlsIGFuZCByZXBs
eSB3aXRoICJJIGFjY2VwdCIgYXQgdGhlIHRvcCBpZiB5b3UgYWdyZWUgdG8gdGhlIE1JVFJFIENW
RSBUZXJtcyBvZiBVc2UgYW5kIHdlIHdpbGwgYWRkIGEgY29weSBvZiB0aGUgZW1haWwgdG8gdGhl
IERXRiBNSVRSRSBDVkUgVGVybXMgb2YgVXNlIGFjY2VwdGFuY2UgZGF0YSBhdCBodHRwczovL2dp
dGh1Yi5jb20vZGlzdHJpYnV0ZWR3ZWFrbmVzc2ZpbGluZy9EV0YtTGVnYWwtQWNjZXB0YW5jZS90
cmVlL21hc3Rlci9UZXJtcy1PZi1Vc2UNCg0KVGhlIHJlYXNvbiB3ZSB1c2UgYSBjb21wbGV0ZSBj
b3B5IG9mIHRoZSBlbWFpbCBpcyB0aGF0IGl0IHByb3ZpZGVzIGFuIGFydGlmYWN0IHNob3dpbmcg
dGhhdCB0aGUgZW1haWwgYWRkcmVzcyBhY2NlcHRlZCB0aGUgVGVybXMgb2YgVXNlLCB3aGVuIHRo
ZXkgd2VyZSBhY2NlcHRlZCBhbmQgc28gb24uIA0KDQpJZiB5b3UgZGlkIG5vdCBzdWJtaXQgYSBD
VkUgcmVxdWVzdCB0byB0aGUgRFdGIHlvdSBjYW4gc2FmZWx5IGlnbm9yZSB0aGlzIG1lc3NhZ2Us
IGhvd2V2ZXIgd2UgbWF5IHJlc2VuZCBpdCBhdCBzb21lIHBvaW50IGluIHRoZSBmdXR1cmUsIGlm
IHlvdSBkb24ndCB3YW50IGFueSBmdXR1cmUgZW1haWxzIHNpbXBseSByZXBseSB3aXRoICJ1bnN1
YnNjcmliZSIgb3IgIkRPTidUIFNFTkQgTUUgVEhJUyBFTUFJTCBFVkVSIEFHQUlOIiBhbmQgSSds
bCBhZGQgeW91ciBlbWFpbCBhZGRyZXNzIHRvIHRoZSBibG9jayBsaXN0IHNvIHdlIGRvbid0IHNw
YW0geW91IHdpdGggdGhlc2UsIHBsZWFzZSBub3RlIHRoYXQgdGhpcyB3aWxsIHByZXZlbnQgeW91
IGZyb20gYmVpbmcgYWJsZSB0byBhY2NlcHQgdGhlIE1JVFJFIENWRSBUZXJtcyBvZiBVc2Ugdmlh
IHRoZSBEV0YgYXV0b21hdGljYWxseSBpbiBmdXR1cmUgKHlvdSdsbCBoYXZlIHRvIG1hbnVhbGx5
IGFzaykuIEJ1dCBhZ2FpbiwgaWYgeW91IGhhdmUgbm8gaWRlYSB3aGF0IGEgQ1ZFIGlzIHRoZW4g
eW91IGNhbiBpZ25vcmUgdGhpcy9hc2sgdG8gYmUgYWRkZWQgdG8gdGhlIGJsb2NrIGxpc3Qgd2l0
aCBubyBwcm9ibGVtcy4gDQoNCk1JVFJFIENWRSBUZXJtcyBvZiBVc2UNCg0KTElDRU5TRQ0KDQpT
dWJtaXNzaW9uczogRm9yIGFsbCBtYXRlcmlhbHMgeW91IHN1Ym1pdCB0byB0aGUgQ29tbW9uIFZ1
bG5lcmFiaWxpdGllcyBhbmQgRXhwb3N1cmVzIChDVkU/PyksIHlvdSBoZXJlYnkgZ3JhbnQgdG8g
VGhlIE1JVFJFIENvcnBvcmF0aW9uIChNSVRSRSkgYW5kIGFsbCBDVkUgTnVtYmVyaW5nIEF1dGhv
cml0aWVzIChDTkFzKSBhIHBlcnBldHVhbCwgd29ybGR3aWRlLCBub24tZXhjbHVzaXZlLCBuby1j
aGFyZ2UsIHJveWFsdHktZnJlZSwgaXJyZXZvY2FibGUgY29weXJpZ2h0IGxpY2Vuc2UgdG8gcmVw
cm9kdWNlLCBwcmVwYXJlIGRlcml2YXRpdmUgd29ya3Mgb2YsIHB1YmxpY2x5IGRpc3BsYXksIHB1
YmxpY2x5IHBlcmZvcm0sIHN1YmxpY2Vuc2UsIGFuZCBkaXN0cmlidXRlIHN1Y2ggbWF0ZXJpYWxz
IGFuZCBkZXJpdmF0aXZlIHdvcmtzLiBVbmxlc3MgcmVxdWlyZWQgYnkgYXBwbGljYWJsZSBsYXcg
b3IgYWdyZWVkIHRvIGluIHdyaXRpbmcsIHlvdSBwcm92aWRlIHN1Y2ggbWF0ZXJpYWxzIG9uIGFu
ICJBUyBJUyIgQkFTSVMsIFdJVEhPVVQgV0FSUkFOVElFUyBPUiBDT05ESVRJT05TIE9GIEFOWSBL
SU5ELCBlaXRoZXIgZXhwcmVzcyBvciBpbXBsaWVkLCBpbmNsdWRpbmcsIHdpdGhvdXQgbGltaXRh
dGlvbiwgYW55IHdhcnJhbnRpZXMgb3IgY29uZGl0aW9ucyBvZiBUSVRMRSwgTk9OLUlORlJJTkdF
TUVOVCwgTUVSQ0hBTlRBQklMSVRZLCBvciBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9T
RS4NCg0KQ1ZFIFVzYWdlOiBNSVRSRSBoZXJlYnkgZ3JhbnRzIHlvdSBhIHBlcnBldHVhbCwgd29y
bGR3aWRlLCBub24tZXhjbHVzaXZlLCBuby1jaGFyZ2UsIHJveWFsdHktZnJlZSwgaXJyZXZvY2Fi
bGUgY29weXJpZ2h0IGxpY2Vuc2UgdG8gcmVwcm9kdWNlLCBwcmVwYXJlIGRlcml2YXRpdmUgd29y
a3Mgb2YsIHB1YmxpY2x5IGRpc3BsYXksIHB1YmxpY2x5IHBlcmZvcm0sIHN1YmxpY2Vuc2UsIGFu
ZCBkaXN0cmlidXRlIENvbW1vbiBWdWxuZXJhYmlsaXRpZXMgYW5kIEV4cG9zdXJlcyAoQ1ZFPz8p
LiBBbnkgY29weSB5b3UgbWFrZSBmb3Igc3VjaCBwdXJwb3NlcyBpcyBhdXRob3JpemVkIHByb3Zp
ZGVkIHRoYXQgeW91IHJlcHJvZHVjZSBNSVRSRSdzIGNvcHlyaWdodCBkZXNpZ25hdGlvbiBhbmQg
dGhpcyBsaWNlbnNlIGluIGFueSBzdWNoIGNvcHkuDQoNCkRJU0NMQUlNRVJTDQoNCkFMTCBET0NV
TUVOVFMgQU5EIFRIRSBJTkZPUk1BVElPTiBDT05UQUlORUQgVEhFUkVJTiBQUk9WSURFRCBCWSBN
SVRSRSBBUkUgUFJPVklERUQgT04gQU4gIkFTIElTIiBCQVNJUyBBTkQgVEhFIENPTlRSSUJVVE9S
LCBUSEUgT1JHQU5JWkFUSU9OIEhFL1NIRSBSRVBSRVNFTlRTIE9SIElTIFNQT05TT1JFRCBCWSAo
SUYgQU5ZKSwgVEhFIE1JVFJFIENPUlBPUkFUSU9OLCBJVFMgQk9BUkQgT0YgVFJVU1RFRVMsIE9G
RklDRVJTLCBBR0VOVFMsIEFORCBFTVBMT1lFRVMsIERJU0NMQUlNIEFMTCBXQVJSQU5USUVTLCBF
WFBSRVNTIE9SIElNUExJRUQsIElOQ0xVRElORyBCVVQgTk9UIExJTUlURUQgVE8gQU5ZIFdBUlJB
TlRZIFRIQVQgVEhFIFVTRSBPRiBUSEUgSU5GT1JNQVRJT04gVEhFUkVJTiBXSUxMIE5PVCBJTkZS
SU5HRSBBTlkgUklHSFRTIE9SIEFOWSBJTVBMSUVEIFdBUlJBTlRJRVMgT0YgTUVSQ0hBTlRBQklM
SVRZIE9SIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLg0KDQpBIGNvcHkgaXMgYXZh
aWxhYmxlIGF0IGh0dHBzOi8vZ2l0aHViLmNvbS9kaXN0cmlidXRlZHdlYWtuZXNzZmlsaW5nL0RX
Ri1EYXRhYmFzZS9ibG9iL21hc3Rlci9UZXJtc09mVXNlLm1kDQoNClRvIGNvbnRhY3QgdGhlIERX
RiBlaXRoZXIgaGl0IHJlcGx5LCBvciBlbWFpbCBrdXJ0QHNlaWZyaWVkLm9yZyBtYW51YWxseSB3
aXRoIHlvdXIgcXVlc3Rpb24vY29uY2VybnMvZXRjLiANCg0KDQoNCsKgDQoNCg0K
