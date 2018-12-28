Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp70884uaa;
        Thu, 6 Apr 2017 19:34:01 -0700 (PDT)
X-Received: by 10.99.4.195 with SMTP id 186mr38056260pge.77.1491532441218;
        Thu, 06 Apr 2017 19:34:01 -0700 (PDT)
Return-Path: <wykcomputer@gmail.com>
Received: from mail-pg0-x22e.google.com (mail-pg0-x22e.google.com. [2607:f8b0:400e:c05::22e])
        by mx.google.com with ESMTPS id l1si3453814pfg.366.2017.04.06.19.34.01
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 19:34:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of wykcomputer@gmail.com designates 2607:f8b0:400e:c05::22e as permitted sender) client-ip=2607:f8b0:400e:c05::22e;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of wykcomputer@gmail.com designates 2607:f8b0:400e:c05::22e as permitted sender) smtp.mailfrom=wykcomputer@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22e.google.com with SMTP id x125so52419193pgb.0
        for <kurt@seifried.org>; Thu, 06 Apr 2017 19:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:references:mime-version:message-id;
        bh=NYcHbZSmmoSJG/U+ndoVauJnbjfs2d4JfzXI3GjG7Vs=;
        b=gtMAsY9Yo8J3WipnsqT8s2dToAtFI9t/ch4ja+t3cjDcfgA+byaK29Du0r49iR2/0Y
         eiQt1UlLwG41+iG0jx5GTUCoS6FC0pPP5XflA60LqElsN96nlF0fw20TpWkGpGV8gdj2
         jt6RsXf5Kf/FktXACg4n2LDzXrrHyzr7LbhFgoQEaec8oYkQPjqgMxH29Pocec2U3U2/
         wNspd7+ugKDSm7EhT5QfRJ1LPWsYNKqxMTxGEFggvLxeYYfkFnHHKTuWLuWotPk6puf+
         d1jKO7xVVT40oPd31M+NvLp8ybKtHPCw/Kb40YfjwcIV05x4DyQ1tFHwIhe+PkHpQFYw
         QGoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:references:mime-version
         :message-id;
        bh=NYcHbZSmmoSJG/U+ndoVauJnbjfs2d4JfzXI3GjG7Vs=;
        b=dILISHL+otKCDBXdgMLquwe2Wh1ra10n2pUKtLWPITMxLQvwbke52YgbH3L+2vxbqQ
         3QaXsr1xS58DCk9MJa1j8yNLLmnht7F9e4YK0IGYOTSyNS5x7ZMzr0AXP2bokGbW8+LJ
         yaE4dFLb57AFckZRxXpruUHUQD4RzXYbUwHbZ9V9QeVRmWuLb9BCumbAsytA+TBwigG1
         huDhx9+etlhXnSXUi/GS2WHC5FBeOQQmWVvBLNlBDhItnAgATTNySuLZ02dWq3eeZKdk
         ETb1W0trEfBZSsqWogY8HFo6LOXCn0fH/bVRlXobi8g0Bgs6s3qFzFvKrxx0zt81YwaO
         3ZbA==
X-Gm-Message-State: AFeK/H0Q/i4IGllpd9A3eBfpMBBGkPt6cN5R8hjSN8bm2rxpMFHaOKZIrl1pKaElh1inMA==
X-Received: by 10.98.40.5 with SMTP id o5mr38033832pfo.262.1491532440668;
        Thu, 06 Apr 2017 19:34:00 -0700 (PDT)
Return-Path: <wykcomputer@gmail.com>
Received: from rudykewang-PC0 ([203.205.141.123])
        by smtp.gmail.com with ESMTPSA id e76sm5955174pfk.75.2017.04.06.19.33.59
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 19:33:59 -0700 (PDT)
Date: Fri, 7 Apr 2017 10:34:00 +0800
From: "wykcomputer@gmail.com" <wykcomputer@gmail.com>
To: kurt <kurt@seifried.org>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for wykcomputer@gmail.com
References: <20170406195949.4090.79785@shiny-2.local>
X-Priority: 3
X-GUID: 3AA1D887-1823-4057-81B1-9AA35B0504CC
X-Has-Attach: no
X-Mailer: Foxmail 7, 2, 8, 379[cn]
Mime-Version: 1.0
Message-ID: <2017040710335848381947@gmail.com>
Content-Type: multipart/alternative;
	boundary="----=_001_NextPart180168517864_=----"

This is a multi-part message in MIME format.

------=_001_NextPart180168517864_=----
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: base64

SSBhY2NlcHQNCg0KDQoNCnd5a2NvbXB1dGVyQGdtYWlsLmNvbQ0KIA0KRnJvbToga3VydA0KRGF0
ZTogMjAxNy0wNC0wNyAwMzo1OQ0KVG86IHd5a2NvbXB1dGVyDQpTdWJqZWN0OiBEV0YvQ1ZFIC0g
QWNjZXB0YW5jZSBvZiBNSVRSRSBUZXJtcyBvZiBVc2UgZm9yIENWRSBmb3Igd3lrY29tcHV0ZXJA
Z21haWwuY29tDQpUaGlzIGlzIGEgY29uZmlybWF0aW9uIGVtYWlsIHNlbnQgZnJvbSBDVkUgcmVx
dWVzdCBmb3JtIGF0IGh0dHBzOi8vaXdhbnRhY3ZlLm9yZy8gYXNraW5nIHlvdSB0byBhY2NlcHQg
dGhlIE1JVFJFIENWRSBUZXJtcyBvZiBVc2UgKGFzc3VtaW5nIHlvdSBmaWxsZWQgb3V0IHRoZSBD
VkUgZm9ybSBhbmQgd2FudCBvbmUsIHdlIGNhbid0IHVzZSB0aGUgZGF0YSB1bnRpbCB5b3UgYWNj
ZXB0IHRoZSBNSVRSRSBDVkUgVGVybXMgb2YgVXNlKS4gDQogDQpTaW1wbHkgcXVvdGUgdGhlIGVt
YWlsIGFuZCByZXBseSB3aXRoICJJIGFjY2VwdCIgYXQgdGhlIHRvcCBpZiB5b3UgYWdyZWUgdG8g
dGhlIE1JVFJFIENWRSBUZXJtcyBvZiBVc2UgYW5kIHdlIHdpbGwgYWRkIGl0IHRvIHRoZSBEV0Yg
TUlUUkUgQ1ZFIFRlcm1zIG9mIFVzZSBhY2NlcHRhbmNlIGRhdGEgYXQgaHR0cHM6Ly9naXRodWIu
Y29tL2Rpc3RyaWJ1dGVkd2Vha25lc3NmaWxpbmcvRFdGLUxlZ2FsLUFjY2VwdGFuY2UvdHJlZS9t
YXN0ZXIvVGVybXMtT2YtVXNlDQogDQpJZiB5b3UgZGlkIG5vdCBzdWJtaXQgYSBDVkUgcmVxdWVz
dCB0byB0aGUgRFdGIHlvdSBjYW4gc2FmZWx5IGlnbm9yZSB0aGlzIG1lc3NhZ2UsIGhvd2V2ZXIg
d2UgbWF5IHJlc2VuZCBpdCBhdCBzb21lIHBvaW50IGluIHRoZSBmdXR1cmUsIGlmIHlvdSBkb24n
dCB3YW50IGFueSBmdXR1cmUgZW1haWxzIHNpbXBseSByZXBseSB3aXRoICJ1bnN1YnNjcmliZSIg
b3IgIkRPTidUIFNFTkQgTUUgVEhJUyBFTUFJTCBFVkVSIEFHQUlOIiBhbmQgSSdsbCBhZGQgeW91
ciBlbWFpbCBhZGRyZXNzIHRvIHRoZSBibG9jayBsaXN0IHNvIHdlIGRvbid0IHNwYW0geW91IHdp
dGggdGhlc2UsIHBsZWFzZSBub3RlIHRoYXQgdGhpcyB3aWxsIHByZXZlbnQgeW91IGZyb20gYmVp
bmcgYWJsZSB0byBhY2NlcHQgdGhlIE1JVFJFIENWRSBUZXJtcyBvZiBVc2UgdmlhIHRoZSBEV0Yg
YXV0b21hdGljYWxseSBpbiBmdXR1cmUgKHlvdSdsbCBoYXZlIHRvIG1hbnVhbGx5IGFzaykuIEJ1
dCBhZ2FpbiwgaWYgeW91IGhhdmUgbm8gaWRlYSB3aGF0IGEgQ1ZFIGlzIHRoZW4geW91IGNhbiBp
Z25vcmUgdGhpcy9hc2sgdG8gYmUgYWRkZWQgdG8gdGhlIGJsb2NrIGxpc3Qgd2l0aCBubyBwcm9i
bGVtcy4gDQogDQpNSVRSRSBDVkUgVGVybXMgb2YgVXNlDQogDQpMSUNFTlNFDQogDQpTdWJtaXNz
aW9uczogRm9yIGFsbCBtYXRlcmlhbHMgeW91IHN1Ym1pdCB0byB0aGUgQ29tbW9uIFZ1bG5lcmFi
aWxpdGllcyBhbmQgRXhwb3N1cmVzIChDVkXDgsKuKSwgeW91IGhlcmVieSBncmFudCB0byBUaGUg
TUlUUkUgQ29ycG9yYXRpb24gKE1JVFJFKSBhbmQgYWxsIENWRSBOdW1iZXJpbmcgQXV0aG9yaXRp
ZXMgKENOQXMpIGEgcGVycGV0dWFsLCB3b3JsZHdpZGUsIG5vbi1leGNsdXNpdmUsIG5vLWNoYXJn
ZSwgcm95YWx0eS1mcmVlLCBpcnJldm9jYWJsZSBjb3B5cmlnaHQgbGljZW5zZSB0byByZXByb2R1
Y2UsIHByZXBhcmUgZGVyaXZhdGl2ZSB3b3JrcyBvZiwgcHVibGljbHkgZGlzcGxheSwgcHVibGlj
bHkgcGVyZm9ybSwgc3VibGljZW5zZSwgYW5kIGRpc3RyaWJ1dGUgc3VjaCBtYXRlcmlhbHMgYW5k
IGRlcml2YXRpdmUgd29ya3MuIFVubGVzcyByZXF1aXJlZCBieSBhcHBsaWNhYmxlIGxhdyBvciBh
Z3JlZWQgdG8gaW4gd3JpdGluZywgeW91IHByb3ZpZGUgc3VjaCBtYXRlcmlhbHMgb24gYW4gIkFT
IElTIiBCQVNJUywgV0lUSE9VVCBXQVJSQU5USUVTIE9SIENPTkRJVElPTlMgT0YgQU5ZIEtJTkQs
IGVpdGhlciBleHByZXNzIG9yIGltcGxpZWQsIGluY2x1ZGluZywgd2l0aG91dCBsaW1pdGF0aW9u
LCBhbnkgd2FycmFudGllcyBvciBjb25kaXRpb25zIG9mIFRJVExFLCBOT04tSU5GUklOR0VNRU5U
LCBNRVJDSEFOVEFCSUxJVFksIG9yIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLg0K
IA0KQ1ZFIFVzYWdlOiBNSVRSRSBoZXJlYnkgZ3JhbnRzIHlvdSBhIHBlcnBldHVhbCwgd29ybGR3
aWRlLCBub24tZXhjbHVzaXZlLCBuby1jaGFyZ2UsIHJveWFsdHktZnJlZSwgaXJyZXZvY2FibGUg
Y29weXJpZ2h0IGxpY2Vuc2UgdG8gcmVwcm9kdWNlLCBwcmVwYXJlIGRlcml2YXRpdmUgd29ya3Mg
b2YsIHB1YmxpY2x5IGRpc3BsYXksIHB1YmxpY2x5IHBlcmZvcm0sIHN1YmxpY2Vuc2UsIGFuZCBk
aXN0cmlidXRlIENvbW1vbiBWdWxuZXJhYmlsaXRpZXMgYW5kIEV4cG9zdXJlcyAoQ1ZFw4LCriku
IEFueSBjb3B5IHlvdSBtYWtlIGZvciBzdWNoIHB1cnBvc2VzIGlzIGF1dGhvcml6ZWQgcHJvdmlk
ZWQgdGhhdCB5b3UgcmVwcm9kdWNlIE1JVFJFJ3MgY29weXJpZ2h0IGRlc2lnbmF0aW9uIGFuZCB0
aGlzIGxpY2Vuc2UgaW4gYW55IHN1Y2ggY29weS4NCiANCkRJU0NMQUlNRVJTDQogDQpBTEwgRE9D
VU1FTlRTIEFORCBUSEUgSU5GT1JNQVRJT04gQ09OVEFJTkVEIFRIRVJFSU4gUFJPVklERUQgQlkg
TUlUUkUgQVJFIFBST1ZJREVEIE9OIEFOICJBUyBJUyIgQkFTSVMgQU5EIFRIRSBDT05UUklCVVRP
UiwgVEhFIE9SR0FOSVpBVElPTiBIRS9TSEUgUkVQUkVTRU5UUyBPUiBJUyBTUE9OU09SRUQgQlkg
KElGIEFOWSksIFRIRSBNSVRSRSBDT1JQT1JBVElPTiwgSVRTIEJPQVJEIE9GIFRSVVNURUVTLCBP
RkZJQ0VSUywgQUdFTlRTLCBBTkQgRU1QTE9ZRUVTLCBESVNDTEFJTSBBTEwgV0FSUkFOVElFUywg
RVhQUkVTUyBPUiBJTVBMSUVELCBJTkNMVURJTkcgQlVUIE5PVCBMSU1JVEVEIFRPIEFOWSBXQVJS
QU5UWSBUSEFUIFRIRSBVU0UgT0YgVEhFIElORk9STUFUSU9OIFRIRVJFSU4gV0lMTCBOT1QgSU5G
UklOR0UgQU5ZIFJJR0hUUyBPUiBBTlkgSU1QTElFRCBXQVJSQU5USUVTIE9GIE1FUkNIQU5UQUJJ
TElUWSBPUiBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4NCiANCkEgY29weSBpcyBh
dmFpbGFibGUgYXQgaHR0cHM6Ly9naXRodWIuY29tL2Rpc3RyaWJ1dGVkd2Vha25lc3NmaWxpbmcv
RFdGLURhdGFiYXNlL2Jsb2IvbWFzdGVyL1Rlcm1zT2ZVc2UubWQNCiANClRvIGNvbnRhY3QgdGhl
IERXRiBlaXRoZXIgaGl0IHJlcGx5LCBvciBlbWFpbCBrdXJ0QHNlaWZyaWVkLm9yZyBtYW51YWxs
eSB3aXRoIHlvdXIgcXVlc3Rpb24vY29uY2VybnMvZXRjLiANCiANCg==

------=_001_NextPart180168517864_=----
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charse=
t=3Dutf-8"><style>body { line-height: 1.5; }blockquote { margin-top: 0px; =
margin-bottom: 0px; margin-left: 0.5em; }body { font-size: 10.5pt; font-fa=
mily: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91; color: rgb(0, 0, 0); line-heig=
ht: 1.5; }</style></head><body>=0A<div><span></span><span style=3D"font-fa=
mily: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91, Tahoma; line-height: normal;">=
I accept</span></div>=0A<div><br></div><hr style=3D"width: 210px; height: =
1px;" color=3D"#b5c4df" size=3D"1" align=3D"left">=0A<div><span><div style=
=3D"MARGIN: 10px; FONT-FAMILY: verdana; FONT-SIZE: 10pt"><div>wykcomputer@=
gmail.com</div></div></span></div>=0A<blockquote style=3D"margin-top: 0px;=
 margin-bottom: 0px; margin-left: 0.5em;"><div>&nbsp;</div><div style=3D"b=
order:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm"><div =
style=3D"PADDING-RIGHT: 8px; PADDING-LEFT: 8px; FONT-SIZE: 12px;FONT-FAMIL=
Y:tahoma;COLOR:#000000; BACKGROUND: #efefef; PADDING-BOTTOM: 8px; PADDING-=
TOP: 8px"><div><b>From:</b>&nbsp;<a href=3D"mailto:kurt@seifried.org">kurt=
</a></div><div><b>Date:</b>&nbsp;2017-04-07&nbsp;03:59</div><div><b>To:</b=
>&nbsp;<a href=3D"mailto:wykcomputer@gmail.com">wykcomputer</a></div><div>=
<b>Subject:</b>&nbsp;DWF/CVE - Acceptance of MITRE Terms of Use for CVE fo=
r wykcomputer@gmail.com</div></div></div><div><div>This is a confirmation =
email sent from CVE request form at https://iwantacve.org/ asking you to a=
ccept the MITRE CVE Terms of Use (assuming you filled out the CVE form and=
 want one, we can't use the data until you accept the MITRE CVE Terms of U=
se). </div>=0A<div>&nbsp;</div>=0A<div>Simply quote the email and reply wi=
th "I accept" at the top if you agree to the MITRE CVE Terms of Use and we=
 will add it to the DWF MITRE CVE Terms of Use acceptance data at https://=
github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Term=
s-Of-Use</div>=0A<div>&nbsp;</div>=0A<div>If you did not submit a CVE requ=
est to the DWF you can safely ignore this message, however we may resend i=
t at some point in the future, if you don't want any future emails simply =
reply with "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll=
 add your email address to the block list so we don't spam you with these,=
 please note that this will prevent you from being able to accept the MITR=
E CVE Terms of Use via the DWF automatically in future (you'll have to man=
ually ask). But again, if you have no idea what a CVE is then you can igno=
re this/ask to be added to the block list with no problems. </div>=0A<div>=
&nbsp;</div>=0A<div>MITRE CVE Terms of Use</div>=0A<div>&nbsp;</div>=0A<di=
v>LICENSE</div>=0A<div>&nbsp;</div>=0A<div>Submissions: For all materials =
you submit to the Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE), =
you hereby grant to The MITRE Corporation (MITRE) and all CVE Numbering Au=
thorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty=
-free, irrevocable copyright license to reproduce, prepare derivative work=
s of, publicly display, publicly perform, sublicense, and distribute such =
materials and derivative works. Unless required by applicable law or agree=
d to in writing, you provide such materials on an "AS IS" BASIS, WITHOUT W=
ARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including,=
 without limitation, any warranties or conditions of TITLE, NON-INFRINGEME=
NT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</div>=0A<div>&nb=
sp;</div>=0A<div>CVE Usage: MITRE hereby grants you a perpetual, worldwide=
, non-exclusive, no-charge, royalty-free, irrevocable copyright license to=
 reproduce, prepare derivative works of, publicly display, publicly perfor=
m, sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C3=
=82=C2=AE). Any copy you make for such purposes is authorized provided tha=
t you reproduce MITRE's copyright designation and this license in any such=
 copy.</div>=0A<div>&nbsp;</div>=0A<div>DISCLAIMERS</div>=0A<div>&nbsp;</d=
iv>=0A<div>ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY=
 MITRE ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZAT=
ION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, =
ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRA=
NTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT =
THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMP=
LIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.</d=
iv>=0A<div>&nbsp;</div>=0A<div>A copy is available at https://github.com/d=
istributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md</div>=0A<d=
iv>&nbsp;</div>=0A<div>To contact the DWF either hit reply, or email kurt@=
seifried.org manually with your question/concerns/etc. </div>=0A<div>&nbsp=
;</div>=0A</div></blockquote>=0A</body></html>
------=_001_NextPart180168517864_=------

