Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp21057vkh;
        Tue, 4 Oct 2016 12:08:25 -0700 (PDT)
X-Received: by 10.31.198.199 with SMTP id w190mr3645581vkf.42.1475608105883;
        Tue, 04 Oct 2016 12:08:25 -0700 (PDT)
Return-Path: <ljames@flashpoint-intel.com>
Received: from mail-ua0-x235.google.com (mail-ua0-x235.google.com. [2607:f8b0:400c:c08::235])
        by mx.google.com with ESMTPS id 53si4475114uac.69.2016.10.04.12.08.25
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 12:08:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ljames@flashpoint-intel.com designates 2607:f8b0:400c:c08::235 as permitted sender) client-ip=2607:f8b0:400c:c08::235;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@flashpoint-intel.com;
       spf=pass (google.com: domain of ljames@flashpoint-intel.com designates 2607:f8b0:400c:c08::235 as permitted sender) smtp.mailfrom=ljames@flashpoint-intel.com
Received: by mail-ua0-x235.google.com with SMTP id p102so17926592uap.0
        for <kurt@seifried.org>; Tue, 04 Oct 2016 12:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flashpoint-intel.com; s=google;
        h=from:content-transfer-encoding:mime-version:date:subject:message-id
         :references:in-reply-to:to;
        bh=88HODRFouAlzN9tDeOVGiRRjleLq5RLLQ+C93vbGUKM=;
        b=CfuO44auQLWVA2MZQ46ca5kCNCrKXk7MDe2H1iA575ww5QYOQGj91+cGDKuIAvkhqd
         9tS1yBogAS5/TzppWPT6Kc4TsKlBqqrelIqP1hucyhavS59bT0m8ofJJH2FWe4yxlVC6
         SZmjSSignbR+OwGu5qkIRcwD3Kri8D5iQJQoM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
         :subject:message-id:references:in-reply-to:to;
        bh=88HODRFouAlzN9tDeOVGiRRjleLq5RLLQ+C93vbGUKM=;
        b=SpFH4AWe2WzLdgGLfrDt4wuPcnllJzANHiiciJYMUme0fy2dPkM8ER9HhBdZIBjiih
         LKQhtL1W5mNz+DxDUPWKyuuj8lUPVL4gfiAKKHry4YfN2hukHa2vhpBFpe846kNA77ig
         S59pktFKygBJ1J2RKNbd1JDtmGdX5QdD9GLu7KteD3fNnoAYg3wo6WKUzR1KXbLoCVrY
         rVR/uUs4YgUv9EkHJJHZm+WzeQloEnGAmpY9y10rYk20TpDYtGTpYnnzFSAJCCmfYzFm
         bnCzTXa/EYJdIVlW2RTSGQYBBNOgdScqN8FJHPGQhlaAQCpGtLfZBHzHi81oDwWB+lsY
         KhWQ==
X-Gm-Message-State: AA6/9RmU1SHokotv6RlQeRAiG+eBn77rtw3omCZ+vUqKQuckRvY6mB5pcxCEJt7LYT+Cd8sF
X-Received: by 10.159.36.10 with SMTP id 10mr3522936uaq.70.1475608105245;
        Tue, 04 Oct 2016 12:08:25 -0700 (PDT)
Return-Path: <ljames@flashpoint-intel.com>
Received: from [192.168.111.64] (static-108-41-226-114.nycmny.fios.verizon.net. [108.41.226.114])
        by smtp.gmail.com with ESMTPSA id y145sm1584017vkd.18.2016.10.04.12.08.24
        for <kurt@seifried.org>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 04 Oct 2016 12:08:24 -0700 (PDT)
From: Lance James <ljames@flashpoint-intel.com>
Content-Type: multipart/signed;
	boundary=Apple-Mail-91E73890-C9AD-4085-823B-53CF9851AB31;
	protocol="application/pkcs7-signature";
	micalg=sha1
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (1.0)
Date: Tue, 4 Oct 2016 15:08:24 -0400
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
Message-Id: <A1863C8C-8070-4B18-A9A2-64C7958D8805@flashpoint-intel.com>
References: <CABqVa38DmBDFL1wHgtiadnVqZAB1gQk6+7bcuQNYPk1ixabEWw@mail.gmail.com>
In-Reply-To: <CABqVa38DmBDFL1wHgtiadnVqZAB1gQk6+7bcuQNYPk1ixabEWw@mail.gmail.com>
To: Kurt Seifried <kurt@seifried.org>
X-Mailer: iPhone Mail (14A403)


--Apple-Mail-91E73890-C9AD-4085-823B-53CF9851AB31
Content-Type: multipart/alternative;
	boundary=Apple-Mail-075AE5EF-D0EA-4184-B59D-1B1490277B33
Content-Transfer-Encoding: 7bit


--Apple-Mail-075AE5EF-D0EA-4184-B59D-1B1490277B33
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I accept.=20

--
Lance James
Chief Scientist
Flashpoint
Tel: +1 760-262-4141
Email: ljames@flashpoint-intel.com
URL: https://www.flashpoint-intel.com
PGP: F063 FEB6 9928 940A 9251  B4D3 52E6 8AB1 0823 33

> On Oct 4, 2016, at 2:44 PM, Kurt Seifried <kurt@seifried.org> wrote:
>=20
> Hi, I need to confirm that you have accepted the MITRE Terms of Use for CV=
E, available at:
>=20
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Term=
sOfUse.md
>=20
> and quoted below, please reply with "I accept" and I'll be able to process=
 your CVE request. Thanks!
>=20
> Terms of Use
>=20
> LICENSE
>=20
> Submissions: For all materials you submit to the Common Vulnerabilities an=
d Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) a=
nd all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusiv=
e, no-charge, royalty-free, irrevocable copyright license to reproduce, prep=
are derivative works of, publicly display, publicly perform, sublicense, and=
 distribute such materials and derivative works. Unless required by applicab=
le law or agreed to in writing, you provide such materials on an "AS IS" BAS=
IS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied,=
 including, without limitation, any warranties or conditions of TITLE, NON-I=
NFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare d=
erivative works of, publicly display, publicly perform, sublicense, and dist=
ribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you make f=
or such purposes is authorized provided that you reproduce MITRE's copyright=
 designation and this license in any such copy.
>=20
> DISCLAIMERS
>=20
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REP=
RESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRU=
STEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR I=
MPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORM=
ATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERC=
HANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>=20
>=20
> --=20
> Kurt Seifried
> kurt@seifried.org

--Apple-Mail-075AE5EF-D0EA-4184-B59D-1B1490277B33
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div><div style=3D"direction: inherit;">I a=
ccept.&nbsp;</div><br><div style=3D"direction: inherit;"><div id=3D"AppleMai=
lSignature"><span style=3D"background-color: rgba(255, 255, 255, 0);">--</sp=
an></div><div id=3D"AppleMailSignature"><span style=3D"background-color: rgb=
a(255, 255, 255, 0);">Lance James</span></div><div id=3D"AppleMailSignature"=
><span style=3D"background-color: rgba(255, 255, 255, 0);">Chief Scientist</=
span></div><div id=3D"AppleMailSignature"><span style=3D"background-color: r=
gba(255, 255, 255, 0);">Flashpoint</span></div><div id=3D"AppleMailSignature=
"><span style=3D"background-color: rgba(255, 255, 255, 0);">Tel:&nbsp;<a dir=
=3D"ltr" href=3D"tel:+1%20760-262-4141" x-apple-data-detectors=3D"true" x-ap=
ple-data-detectors-type=3D"telephone" x-apple-data-detectors-result=3D"3/0">=
+1 760-262-4141</a></span></div><div id=3D"AppleMailSignature"><span style=3D=
"background-color: rgba(255, 255, 255, 0);">Email:&nbsp;<a href=3D"mailto:lj=
ames@flashpoint-intel.com" class=3D"">ljames@flashpoint-intel.com</a></span>=
</div><div id=3D"AppleMailSignature"><span style=3D"background-color: rgba(2=
55, 255, 255, 0);">URL:&nbsp;<a href=3D"https://www.flashpoint-intel.com/" c=
lass=3D"">https://www.flashpoint-intel.com</a></span></div><div id=3D"AppleM=
ailSignature"><span style=3D"background-color: rgba(255, 255, 255, 0);">PGP:=
&nbsp;F063 FEB6 9928&nbsp;<a dir=3D"ltr" href=3D"x-apple-data-detectors://4"=
 x-apple-data-detectors=3D"true" x-apple-data-detectors-type=3D"calendar-eve=
nt" x-apple-data-detectors-result=3D"4">940A</a>&nbsp;9251 &nbsp;B4D3 52E6 8=
AB1 0823 33</span></div></div></div><div><br>On Oct 4, 2016, at 2:44 PM, Kur=
t Seifried &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</a>&gt=
; wrote:<br><br></div><blockquote type=3D"cite"><div><div dir=3D"ltr">







<p class=3D"gmail-p1"><span class=3D"gmail-s1">Hi, I need to confirm that yo=
u have accepted the MITRE Terms of Use for CVE, available at:</span></p>
<p class=3D"gmail-p2"><a href=3D"https://github.com/distributedweaknessfilin=
g/DWF-Database/blob/master/TermsOfUse.md">https://github.com/distributedweak=
nessfiling/DWF-Database/blob/master/TermsOfUse.md</a><br><span class=3D"gmai=
l-s1"></span></p>
<p class=3D"gmail-p2">and quoted below, please reply with "I accept" and I'l=
l be able to process your CVE request. Thanks!<br><span class=3D"gmail-s1"><=
/span></p>
<p class=3D"gmail-p2">Terms of Use<br><span class=3D"gmail-s1"></span></p>
<p class=3D"gmail-p2">LICENSE<br><span class=3D"gmail-s1"></span></p>
<p class=3D"gmail-p1"><span class=3D"gmail-s1">Submissions: For all material=
s you submit to the Common Vulnerabilities and Exposures (CVE=C2=AE), you he=
reby grant to The MITRE Corporation (MITRE) and all CVE Numbering Authoritie=
s (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irr=
evocable copyright license to reproduce, prepare derivative works of, public=
ly display, publicly perform, sublicense, and distribute such materials and d=
erivative works. Unless required by applicable law or agreed to in writing, y=
ou provide such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITI=
ONS OF ANY KIND, either express or implied, including, without limitation, a=
ny warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or =
FITNESS FOR A PARTICULAR PURPOSE.</span></p>
<p class=3D"gmail-p1"><span class=3D"gmail-s1">CVE Usage: MITRE hereby grant=
s you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevo=
cable copyright license to reproduce, prepare derivative works of, publicly d=
isplay, publicly perform, sublicense, and distribute Common Vulnerabilities a=
nd Exposures (CVE=C2=AE). Any copy you make for such purposes is authorized p=
rovided that you reproduce MITRE's copyright designation and this license in=
 any such copy.</span></p>
<p class=3D"gmail-p2">DISCLAIMERS<br><span class=3D"gmail-s1"></span></p>
<p class=3D"gmail-p1"><span class=3D"gmail-s1">ALL DOCUMENTS AND THE INFORMA=
TION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AN=
D THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF=
 ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND E=
MPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIM=
ITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRIN=
GE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A P=
ARTICULAR PURPOSE.</span></p><div><br></div>-- <br><div class=3D"gmail_signa=
ture">Kurt Seifried<br><a href=3D"mailto:kurt@seifried.org" target=3D"_blank=
">kurt@seifried.org</a></div>
</div>
</div></blockquote></body></html>=

--Apple-Mail-075AE5EF-D0EA-4184-B59D-1B1490277B33--

--Apple-Mail-91E73890-C9AD-4085-823B-53CF9851AB31
Content-Type: application/pkcs7-signature;
	name=smime.p7s
Content-Disposition: attachment;
	filename=smime.p7s
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIFUjCCBU4w
ggQ2oAMCAQICEQC9/MhjcgONgs7qrchJeamXMA0GCSqGSIb3DQEBCwUAMIGbMQswCQYDVQQGEwJH
QjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQK
ExFDT01PRE8gQ0EgTGltaXRlZDFBMD8GA1UEAxM4Q09NT0RPIFNIQS0yNTYgQ2xpZW50IEF1dGhl
bnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1haWwgQ0EwHhcNMTUxMDIzMDAwMDAwWhcNMTYxMDIyMjM1
OTU5WjAsMSowKAYJKoZIhvcNAQkBFhtsamFtZXNAZmxhc2hwb2ludC1pbnRlbC5jb20wggEiMA0G
CSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCpzuBhsy/CTZRrmayA9jQ2goyqKZ42PYNZHUM4tTAs
APomicwK2L9cAC9VqQ4ngZOF9Lksw3IXRrZqZSYa3DiAUa24LsA+BvllClt+/RQnSzBIYKUhkB92
mqorcEnB6dX2s/dD1EBIEByp+9X2TKBTHgQ9UVk4bL8l920eRP+JvCzW7pxOH5tJDwmEl7PDtATX
K+JyR432DFI5TIlyaDZfWEAM7qCTCoWU+YV5XomL64Ol6TPWNCBJIAIa7rouREuEyIY8cJBmRYPj
VMUc1avYHoEHbfbabgeuqnRcaAbEOvey5cD6AjQ445bcIKDQXq37uAjP14fVUuKbx8REPIqXAgMB
AAGjggH5MIIB9TAfBgNVHSMEGDAWgBSSYWuC4aKgqk/sZ/HCo/e0gADB7DAdBgNVHQ4EFgQUA4ZV
2Wh8cWstyf6qeWYUfrAl+94wDgYDVR0PAQH/BAQDAgWgMAwGA1UdEwEB/wQCMAAwIAYDVR0lBBkw
FwYIKwYBBQUHAwQGCysGAQQBsjEBAwUCMBEGCWCGSAGG+EIBAQQEAwIFIDBGBgNVHSAEPzA9MDsG
DCsGAQQBsjEBAgEBATArMCkGCCsGAQUFBwIBFh1odHRwczovL3NlY3VyZS5jb21vZG8ubmV0L0NQ
UzBdBgNVHR8EVjBUMFKgUKBOhkxodHRwOi8vY3JsLmNvbW9kb2NhLmNvbS9DT01PRE9TSEEyNTZD
bGllbnRBdXRoZW50aWNhdGlvbmFuZFNlY3VyZUVtYWlsQ0EuY3JsMIGQBggrBgEFBQcBAQSBgzCB
gDBYBggrBgEFBQcwAoZMaHR0cDovL2NydC5jb21vZG9jYS5jb20vQ09NT0RPU0hBMjU2Q2xpZW50
QXV0aGVudGljYXRpb25hbmRTZWN1cmVFbWFpbENBLmNydDAkBggrBgEFBQcwAYYYaHR0cDovL29j
c3AuY29tb2RvY2EuY29tMCYGA1UdEQQfMB2BG2xqYW1lc0BmbGFzaHBvaW50LWludGVsLmNvbTAN
BgkqhkiG9w0BAQsFAAOCAQEAYIt0K6vFvyvKIqeV5Ds0pkdVaDV8cOI3k7bC+XJL/NKANiZYwl7e
ao8fnuVDxUYyFf1tr2hFaHVpon50qoQ/m1V0hZxyS/Tt7kHgIL1Q6nUQhVav6BGiNAuM3WGp99PY
9U6VYNNmqmM/H6W8Gbjvs+mdT3xKRXFFlwNDIsxtxNGXWr3+W1gzeC8vmLICYGac4bgtNqD6Bx7Y
iPubbaCwX/m+tZRR2LUsS1JJIH/hFJEaU0v5IUhqcM61h4x+nOPGyVptnZuzl98w6GIA+lBN7QCp
z/0rT8VWnhmLOiaBOJqZNXp1F+gYyrN6GAlu1VOKqg/9EvBwsD8BuhBRtQxjjDGCA8YwggPCAgEB
MIGxMIGbMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQH
EwdTYWxmb3JkMRowGAYDVQQKExFDT01PRE8gQ0EgTGltaXRlZDFBMD8GA1UEAxM4Q09NT0RPIFNI
QS0yNTYgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1haWwgQ0ECEQC9/MhjcgON
gs7qrchJeamXMAkGBSsOAwIaBQCgggHpMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZI
hvcNAQkFMQ8XDTE2MTAwNDE5MDgyNFowIwYJKoZIhvcNAQkEMRYEFFxn9wiwBF3V0uTQuuI2+oVO
/WVAMIHCBgkrBgEEAYI3EAQxgbQwgbEwgZsxCzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVy
IE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAYBgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVk
MUEwPwYDVQQDEzhDT01PRE8gU0hBLTI1NiBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3Vy
ZSBFbWFpbCBDQQIRAL38yGNyA42CzuqtyEl5qZcwgcQGCyqGSIb3DQEJEAILMYG0oIGxMIGbMQsw
CQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3Jk
MRowGAYDVQQKExFDT01PRE8gQ0EgTGltaXRlZDFBMD8GA1UEAxM4Q09NT0RPIFNIQS0yNTYgQ2xp
ZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1haWwgQ0ECEQC9/MhjcgONgs7qrchJeamX
MA0GCSqGSIb3DQEBAQUABIIBADUeSgl22WGlxbhB2lqHy5BSwDd0Lq5rehjRQ6KfaFeHLghZq/iB
gqVTh0oTjzlsVR9JnDbgkBNOx0VQAotAbXV5BrvYII2M0aL4bxCWvfVwiJAxU5MEdQiVMvFyzdBd
LHhfvpWGFDTt2ONCd+YWOsY7BPg9MV97qIGEW0s9pbCplX57Uh8FwocFPX5BNkSx0kYGmyIe0ZeD
DNQ/KFHw4DM4wuG/P1abr7jd504FMkVjJ/TXt4BVonwJmamx9F+YYTcG/fBvrMcrFrbmyDQfnzqU
qsICx5blkRHwmz1S2uwAm8+Ux4mh9zdG3a09SDDlEzNCfacPTyeI1N+4GUmN38sAAAAAAAA=

--Apple-Mail-91E73890-C9AD-4085-823B-53CF9851AB31--
