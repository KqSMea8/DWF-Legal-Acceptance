Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp419484vkh;
        Sat, 8 Oct 2016 20:50:39 -0700 (PDT)
X-Received: by 10.202.237.211 with SMTP id l202mr20540745oih.167.1475985039422;
        Sat, 08 Oct 2016 20:50:39 -0700 (PDT)
Return-Path: <liusscs@163.com>
Received: from m12-15.163.com (m12-15.163.com. [220.181.12.15])
        by mx.google.com with ESMTP id 64si18451286ott.209.2016.10.08.20.50.35
        for <kurt@seifried.org>;
        Sat, 08 Oct 2016 20:50:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of liusscs@163.com designates 220.181.12.15 as permitted sender) client-ip=220.181.12.15;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@163.com;
       spf=pass (google.com: domain of liusscs@163.com designates 220.181.12.15 as permitted sender) smtp.mailfrom=liusscs@163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Mime-Version:Message-ID; bh=5peJu
	FHo+2ZbcUrW6w8mvDnUnf9aVkQrwwf4dan9pfA=; b=M4dWfJqqdZN/Nsrt4BhWv
	XZqsvuQKVLS6J6c/od3Qq48gjop9RKJwCqLf/dMpx/9LN1VG17ympKUxjmgqadwX
	ly7EmS8DZrtt4JkK8+fI6g4aKt3agXi0X140GQYTSUpLzy/vSLyg+EYHsvbia9W5
	Gb08B+OWS/AZxGPkSL2+MI=
Received: from MININT-DGEFVA7 (unknown [42.120.74.101])
	by smtp11 (Coremail) with SMTP id D8CowAC32w10vvlXFOzFDg--.24075S2;
	Sun, 09 Oct 2016 11:50:14 +0800 (CST)
Date: Sun, 9 Oct 2016 11:50:14 +0800
From: "liusscs@163.com" <liusscs@163.com>
To: "Kurt Seifried" <kurt@seifried.org>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
X-Priority: 3
X-GUID: 1BFA5301-60B9-44D7-A4A5-786C4ADD1070
X-Has-Attach: no
X-Mailer: Foxmail 7, 2, 7, 26[cn]
Mime-Version: 1.0
Message-ID: <201610091150128206772@163.com>
Content-Type: multipart/alternative;
	boundary="----=_001_NextPart525101107782_=----"
X-CM-TRANSID:D8CowAC32w10vvlXFOzFDg--.24075S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7KFyDuFy7GFyrJF45GF1fXrb_yoW8Kw1kpr
	W2g3y5Gw18WF13JrWjqrWjkrWvyr4fZry7JFyfGFs8ua9YqwnFyrWv93y8t3W8trn7Gr1U
	XrWUZrZIqwsYyrDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zimLvAUUUUU=
X-Originating-IP: [42.120.74.101]
X-CM-SenderInfo: 5olx22lfv6il2tof0z/1tbiDRb9fFQHCfTk3AAAsM

This is a multi-part message in MIME format.

------=_001_NextPart525101107782_=----
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: base64

SGk6DQpZZXMsIEkgYWNjZXB0IHRoZSBNSVRSRSBUZXJtcyBvZiBVc2UgZm9yIENWRSwgYXZhaWxh
YmxlIGF0Og0KaHR0cHM6Ly9naXRodWIuY29tL2Rpc3RyaWJ1dGVkd2Vha25lc3NmaWxpbmcvRFdG
LURhdGFiYXNlL2Jsb2IvbWFzdGVyL1Rlcm1zT2ZVc2UubWQNCg0KDQoNClBvSmlhbihTaHVzaGVu
ZyBMaXUpDQogDQpGcm9tOiBLdXJ0IFNlaWZyaWVkDQpEYXRlOiAyMDE2LTEwLTA2IDAwOjQxDQpU
bzogS3VydCBTZWlmcmllZA0KU3ViamVjdDogQ1ZFIC0gQWNjZXB0YW5jZSBvZiBNSVRSRSBUZXJt
cyBvZiBVc2UgZm9yIENWRQ0KSGksIEkgbmVlZCB0byBjb25maXJtIHRoYXQgeW91IGhhdmUgYWNj
ZXB0ZWQgdGhlIE1JVFJFIFRlcm1zIG9mIFVzZSBmb3IgQ1ZFLCBhdmFpbGFibGUgYXQ6DQpodHRw
czovL2dpdGh1Yi5jb20vZGlzdHJpYnV0ZWR3ZWFrbmVzc2ZpbGluZy9EV0YtRGF0YWJhc2UvYmxv
Yi9tYXN0ZXIvVGVybXNPZlVzZS5tZA0KYW5kIHF1b3RlZCBiZWxvdywgcGxlYXNlIHJlcGx5IHdp
dGggIkkgYWNjZXB0IiBhbmQgSSdsbCBiZSBhYmxlIHRvIHByb2Nlc3MgeW91ciBDVkUgcmVxdWVz
dC4gVGhhbmtzIQ0KVGVybXMgb2YgVXNlDQpMSUNFTlNFDQpTdWJtaXNzaW9uczogRm9yIGFsbCBt
YXRlcmlhbHMgeW91IHN1Ym1pdCB0byB0aGUgQ29tbW9uIFZ1bG5lcmFiaWxpdGllcyBhbmQgRXhw
b3N1cmVzIChDVkXCriksIHlvdSBoZXJlYnkgZ3JhbnQgdG8gVGhlIE1JVFJFIENvcnBvcmF0aW9u
IChNSVRSRSkgYW5kIGFsbCBDVkUgTnVtYmVyaW5nIEF1dGhvcml0aWVzIChDTkFzKSBhIHBlcnBl
dHVhbCwgd29ybGR3aWRlLCBub24tZXhjbHVzaXZlLCBuby1jaGFyZ2UsIHJveWFsdHktZnJlZSwg
aXJyZXZvY2FibGUgY29weXJpZ2h0IGxpY2Vuc2UgdG8gcmVwcm9kdWNlLCBwcmVwYXJlIGRlcml2
YXRpdmUgd29ya3Mgb2YsIHB1YmxpY2x5IGRpc3BsYXksIHB1YmxpY2x5IHBlcmZvcm0sIHN1Ymxp
Y2Vuc2UsIGFuZCBkaXN0cmlidXRlIHN1Y2ggbWF0ZXJpYWxzIGFuZCBkZXJpdmF0aXZlIHdvcmtz
LiBVbmxlc3MgcmVxdWlyZWQgYnkgYXBwbGljYWJsZSBsYXcgb3IgYWdyZWVkIHRvIGluIHdyaXRp
bmcsIHlvdSBwcm92aWRlIHN1Y2ggbWF0ZXJpYWxzIG9uIGFuICJBUyBJUyIgQkFTSVMsIFdJVEhP
VVQgV0FSUkFOVElFUyBPUiBDT05ESVRJT05TIE9GIEFOWSBLSU5ELCBlaXRoZXIgZXhwcmVzcyBv
ciBpbXBsaWVkLCBpbmNsdWRpbmcsIHdpdGhvdXQgbGltaXRhdGlvbiwgYW55IHdhcnJhbnRpZXMg
b3IgY29uZGl0aW9ucyBvZiBUSVRMRSwgTk9OLUlORlJJTkdFTUVOVCwgTUVSQ0hBTlRBQklMSVRZ
LCBvciBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4NCkNWRSBVc2FnZTogTUlUUkUg
aGVyZWJ5IGdyYW50cyB5b3UgYSBwZXJwZXR1YWwsIHdvcmxkd2lkZSwgbm9uLWV4Y2x1c2l2ZSwg
bm8tY2hhcmdlLCByb3lhbHR5LWZyZWUsIGlycmV2b2NhYmxlIGNvcHlyaWdodCBsaWNlbnNlIHRv
IHJlcHJvZHVjZSwgcHJlcGFyZSBkZXJpdmF0aXZlIHdvcmtzIG9mLCBwdWJsaWNseSBkaXNwbGF5
LCBwdWJsaWNseSBwZXJmb3JtLCBzdWJsaWNlbnNlLCBhbmQgZGlzdHJpYnV0ZSBDb21tb24gVnVs
bmVyYWJpbGl0aWVzIGFuZCBFeHBvc3VyZXMgKENWRcKuKS4gQW55IGNvcHkgeW91IG1ha2UgZm9y
IHN1Y2ggcHVycG9zZXMgaXMgYXV0aG9yaXplZCBwcm92aWRlZCB0aGF0IHlvdSByZXByb2R1Y2Ug
TUlUUkUncyBjb3B5cmlnaHQgZGVzaWduYXRpb24gYW5kIHRoaXMgbGljZW5zZSBpbiBhbnkgc3Vj
aCBjb3B5Lg0KRElTQ0xBSU1FUlMNCkFMTCBET0NVTUVOVFMgQU5EIFRIRSBJTkZPUk1BVElPTiBD
T05UQUlORUQgVEhFUkVJTiBQUk9WSURFRCBCWSBNSVRSRSBBUkUgUFJPVklERUQgT04gQU4gIkFT
IElTIiBCQVNJUyBBTkQgVEhFIENPTlRSSUJVVE9SLCBUSEUgT1JHQU5JWkFUSU9OIEhFL1NIRSBS
RVBSRVNFTlRTIE9SIElTIFNQT05TT1JFRCBCWSAoSUYgQU5ZKSwgVEhFIE1JVFJFIENPUlBPUkFU
SU9OLCBJVFMgQk9BUkQgT0YgVFJVU1RFRVMsIE9GRklDRVJTLCBBR0VOVFMsIEFORCBFTVBMT1lF
RVMsIERJU0NMQUlNIEFMTCBXQVJSQU5USUVTLCBFWFBSRVNTIE9SIElNUExJRUQsIElOQ0xVRElO
RyBCVVQgTk9UIExJTUlURUQgVE8gQU5ZIFdBUlJBTlRZIFRIQVQgVEhFIFVTRSBPRiBUSEUgSU5G
T1JNQVRJT04gVEhFUkVJTiBXSUxMIE5PVCBJTkZSSU5HRSBBTlkgUklHSFRTIE9SIEFOWSBJTVBM
SUVEIFdBUlJBTlRJRVMgT0YgTUVSQ0hBTlRBQklMSVRZIE9SIEZJVE5FU1MgRk9SIEEgUEFSVElD
VUxBUiBQVVJQT1NFLg0KDQotLSANCkt1cnQgU2VpZnJpZWQNCmt1cnRAc2VpZnJpZWQub3JnDQo=

------=_001_NextPart525101107782_=----
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charse=
t=3DUTF-8"><style>body { line-height: 1.5; }blockquote { margin-top: 0px; =
margin-bottom: 0px; margin-left: 0.5em; }p { margin-top: 0px; margin-botto=
m: 0px; }div.foxdiv20161009114757270843 { }body { font-size: 10.5pt; font-=
family: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91; color: rgb(0, 0, 0); line-he=
ight: 1.5; }</style></head><body>=0A<div><span></span><span style=3D"font-=
size: 13px; line-height: 19px;">Hi:</span></div><div><font size=3D"2"><spa=
n style=3D"line-height: 19px;">Yes,&nbsp;</span></font><span style=3D"font=
-size: 12.8px; line-height: 1.5; background-color: window;">I accept the M=
ITRE&nbsp;</span><span class=3D"gmail-il" style=3D"font-size: 12.8px; line=
-height: 1.5; background-color: window;">Terms</span><span style=3D"font-s=
ize: 12.8px; line-height: 1.5; background-color: window;">&nbsp;of&nbsp;</=
span><span class=3D"gmail-il" style=3D"font-size: 12.8px; line-height: 1.5=
; background-color: window;">Use</span><span style=3D"font-size: 12.8px; l=
ine-height: 1.5; background-color: window;">&nbsp;for&nbsp;</span><span cl=
ass=3D"gmail-il" style=3D"font-size: 12.8px; line-height: 1.5; background-=
color: window;">CVE</span><span style=3D"font-size: 12.8px; line-height: 1=
.5; background-color: window;">, available at:</span></div><p class=3D"gma=
il-m_-323732369566349682gmail-p2" style=3D"font-size: 12.8px;"><a href=3D"=
https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Term=
sOfUse.md" target=3D"_blank">https://github.com/<wbr>distributedweaknessfi=
ling/DWF-<wbr>Database/blob/master/<wbr>TermsOfUse.md</a></p>=0A<div><br><=
/div><hr style=3D"width: 210px; height: 1px;" color=3D"#b5c4df" size=3D"1"=
 align=3D"left">=0A<div><span>PoJian(Shusheng Liu)</span></div>=0A<blockqu=
ote style=3D"margin-top: 0px; margin-bottom: 0px; margin-left: 0.5em;"><di=
v>&nbsp;</div><div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;pad=
ding:3.0pt 0cm 0cm 0cm"><div style=3D"PADDING-RIGHT: 8px; PADDING-LEFT: 8p=
x; FONT-SIZE: 12px;FONT-FAMILY:tahoma;COLOR:#000000; BACKGROUND: #efefef; =
PADDING-BOTTOM: 8px; PADDING-TOP: 8px"><div><b>From:</b>&nbsp;<a href=3D"m=
ailto:kurt@seifried.org">Kurt Seifried</a></div><div><b>Date:</b>&nbsp;201=
6-10-06&nbsp;00:41</div><div><b>To:</b>&nbsp;<a href=3D"mailto:kurt@seifri=
ed.org">Kurt Seifried</a></div><div><b>Subject:</b>&nbsp;CVE - Acceptance =
of MITRE Terms of Use for CVE</div></div></div><div><div class=3D"FoxDiv20=
161009114757270843"><div dir=3D"ltr"><p class=3D"gmail-m_-3237323695663496=
82gmail-p1" style=3D"font-size:12.8px"><span class=3D"gmail-m_-32373236956=
6349682gmail-s1">Hi, I need to confirm that you have accepted the MITRE&nb=
sp;<span class=3D"gmail-il">Terms</span>&nbsp;of&nbsp;<span class=3D"gmail=
-il">Use</span>&nbsp;for&nbsp;<span class=3D"gmail-il">CVE</span>, availab=
le at:</span></p><p class=3D"gmail-m_-323732369566349682gmail-p2" style=3D=
"font-size:12.8px"><a href=3D"https://github.com/distributedweaknessfiling=
/DWF-Database/blob/master/TermsOfUse.md" target=3D"_blank">https://github.=
com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/blob/master/<wbr>Term=
sOfUse.md</a><br><span class=3D"gmail-m_-323732369566349682gmail-s1"></spa=
n></p><p class=3D"gmail-m_-323732369566349682gmail-p2" style=3D"font-size:=
12.8px">and quoted below, please reply with "I accept" and I'll be able to=
 process your&nbsp;<span class=3D"gmail-il">CVE</span>&nbsp;request. Thank=
s!<br><span class=3D"gmail-m_-323732369566349682gmail-s1"></span></p><p cl=
ass=3D"gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px"><sp=
an class=3D"gmail-il">Terms</span>&nbsp;of&nbsp;<span class=3D"gmail-il">U=
se</span><br><span class=3D"gmail-m_-323732369566349682gmail-s1"></span></=
p><p class=3D"gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8=
px">LICENSE<br><span class=3D"gmail-m_-323732369566349682gmail-s1"></span>=
</p><p class=3D"gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12=
.8px"><span class=3D"gmail-m_-323732369566349682gmail-s1">Submissions: For=
 all materials you submit to the Common Vulnerabilities and Exposures (<sp=
an class=3D"gmail-il">CVE</span>=C2=AE), you hereby grant to The MITRE Cor=
poration (MITRE) and all&nbsp;<span class=3D"gmail-il">CVE</span>&nbsp;Num=
bering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge=
, royalty-free, irrevocable copyright license to reproduce, prepare deriva=
tive works of, publicly display, publicly perform, sublicense, and distrib=
ute such materials and derivative works. Unless required by applicable law=
 or agreed to in writing, you provide such materials on an "AS IS" BASIS, =
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, i=
ncluding, without limitation, any warranties or conditions of TITLE, NON-I=
NFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</span><=
/p><p class=3D"gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.=
8px"><span class=3D"gmail-m_-323732369566349682gmail-s1"><span class=3D"gm=
ail-il">CVE</span>&nbsp;Usage: MITRE hereby grants you a perpetual, worldw=
ide, non-exclusive, no-charge, royalty-free, irrevocable copyright license=
 to reproduce, prepare derivative works of, publicly display, publicly per=
form, sublicense, and distribute Common Vulnerabilities and Exposures (<sp=
an class=3D"gmail-il">CVE</span>=C2=AE). Any copy you make for such purpos=
es is authorized provided that you reproduce MITRE's copyright designation=
 and this license in any such copy.</span></p><p class=3D"gmail-m_-3237323=
69566349682gmail-p2" style=3D"font-size:12.8px">DISCLAIMERS<br><span class=
=3D"gmail-m_-323732369566349682gmail-s1"></span></p><p class=3D"gmail-m_-3=
23732369566349682gmail-p1" style=3D"font-size:12.8px"><span class=3D"gmail=
-m_-323732369566349682gmail-s1">ALL DOCUMENTS AND THE INFORMATION CONTAINE=
D THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTR=
IBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), TH=
E MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEE=
S, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED =
TO ANY WARRANTY THAT THE&nbsp;<span class=3D"gmail-il">USE</span>&nbsp;OF =
THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRAN=
TIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.</span></p><di=
v><br></div>-- <br><div class=3D"gmail_signature">Kurt Seifried<br><a href=
=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a></div=
>=0A</div>=0A</div></div></blockquote>=0A</body></html>
------=_001_NextPart525101107782_=------


