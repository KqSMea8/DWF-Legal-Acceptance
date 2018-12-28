Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp724391vkh;
        Fri, 30 Sep 2016 00:35:50 -0700 (PDT)
X-Received: by 10.28.60.2 with SMTP id j2mr2656130wma.46.1475220950698;
        Fri, 30 Sep 2016 00:35:50 -0700 (PDT)
Return-Path: <matteo@beccati.com>
Received: from box.beccati.com (box.beccati.com. [176.9.123.236])
        by mx.google.com with ESMTPS id yr1si3873581wjb.142.2016.09.30.00.35.50
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 00:35:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of matteo@beccati.com designates 176.9.123.236 as permitted sender) client-ip=176.9.123.236;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@beccati.com;
       spf=pass (google.com: domain of matteo@beccati.com designates 176.9.123.236 as permitted sender) smtp.mailfrom=matteo@beccati.com
Received: from authenticated-user (box.beccati.com [176.9.123.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by box.beccati.com (Postfix) with ESMTPSA id E7F0E2001DE
	for <kurt@seifried.org>; Fri, 30 Sep 2016 09:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=beccati.com; s=mail;
	t=1475220947; bh=OUv2/RdGuUB6m/BKcJyBWkgrZRQQig2pTTM9+zWevlk=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=dZDW+EtV87o6JzVhON9fztest0iPv4zLEkQL5k55A2pQAKkSHym3IQwnrMlsekler
	 HHwJ90NHCBtGGsibhYhrQMO4TcQPWGsD1FRdEP4K2kbFEGkRD/DjuieWLuAcZGfL9h
	 qepJKHgybWOOO272dTIcInrZjVA4KOxlcLZvGz8nKzofO+z60+8a4AKc5HRcIMc6LJ
	 /RohKGWfOqerjrzYW6uAv0Xv5ikgB+Ii9G07ZU5XvLgpLYeA0Ulbs3K6QOpsloQY3L
	 Os0eE7hmFx5hEAuizz3QriaAqJvkm3iVYsPEK9R2JRK/7bqlCiNY1MOpDxLErJnYW2
	 CtKCSKR61uRkA==
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
References: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
From: Matteo Beccati <matteo@beccati.com>
Message-ID: <64e544f6-f403-83ce-38b8-7858e0863b44@beccati.com>
Date: Fri, 30 Sep 2016 09:35:00 +0200
MIME-Version: 1.0
In-Reply-To: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="dvj8OVT7unwUk7F7GwcBFHX0caaqKpTvU"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--dvj8OVT7unwUk7F7GwcBFHX0caaqKpTvU
Content-Type: multipart/mixed; boundary="s6mnFCwHNuq5xxdD2EPpSVr5kA86o6cXJ";
 protected-headers="v1"
From: Matteo Beccati <matteo@beccati.com>
To: Kurt Seifried <kurt@seifried.org>
Message-ID: <64e544f6-f403-83ce-38b8-7858e0863b44@beccati.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
References: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
In-Reply-To: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>

--s6mnFCwHNuq5xxdD2EPpSVr5kA86o6cXJ
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I accept.

On 30/09/2016 02:31, Kurt Seifried wrote:
> Hi, I need to confirm that you have accepted the MITRE Terms of Use for=

> CVE, available at:
>=20
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/T=
ermsOfUse.md
>=20
> and quoted below, please reply with "I accept" and I'll be able to
> process your CVE request. Thanks!
>=20
>=20
>   Terms of Use
>=20
>=20
>     <https://github.com/distributedweaknessfiling/DWF-Database/blob/mas=
ter/TermsOfUse.md#license>LICENSE
>=20
> Submissions: For all materials you submit to the Common Vulnerabilities=

> and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (M=
ITRE)
> and all CVE Numbering Authorities (CNAs) a perpetual, worldwide,
> non-exclusive, no-charge, royalty-free, irrevocable copyright license t=
o
> reproduce, prepare derivative works of, publicly display, publicly
> perform, sublicense, and distribute such materials and derivative works=
=2E
> Unless required by applicable law or agreed to in writing, you provide
> such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF=

> ANY KIND, either express or implied, including, without limitation, any=

> warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, o=
r
> FITNESS FOR A PARTICULAR PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide,
> non-exclusive, no-charge, royalty-free, irrevocable copyright license t=
o
> reproduce, prepare derivative works of, publicly display, publicly
> perform, sublicense, and distribute Common Vulnerabilities and Exposure=
s
> (CVE=C2=AE). Any copy you make for such purposes is authorized provided=
 that
> you reproduce MITRE's copyright designation and this license in any suc=
h
> copy.
>=20
>=20
>     <https://github.com/distributedweaknessfiling/DWF-Database/blob/mas=
ter/TermsOfUse.md#disclaimers>DISCLAIMERS
>=20
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE
> ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION
> HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION,
> ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL
> WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY
> WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY
> RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A
> PARTICULAR PURPOSE.
>=20
>=20
>=20
>=20
> --=20
> Kurt Seifried
> kurt@seifried.org <mailto:kurt@seifried.org>


--=20
Matteo Beccati

Development & Consulting - http://www.beccati.com/


--s6mnFCwHNuq5xxdD2EPpSVr5kA86o6cXJ--

--dvj8OVT7unwUk7F7GwcBFHX0caaqKpTvU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJX7hXOAAoJEHlDnsQiEkAuxgoQAI36k1gAabn+y2Gr1iuqnCVM
b1ygOrYPLwnxiPQaOvYjKEeCcppL1GxAPL91CHl1wYmm4U55MZd0BcLSAb1n+rq4
uWFCusaOZ/S/g7Zj8tnfKsm5JJcLbLnQ4I94IbccT93lKGvSrboN57eWFczWyklN
a9Z3WrYDbpg6A62WrA9TSFMe5tbSOswAsTV2P5Y0CmS+N1rzImKvX7z9TQXSn2Nx
QKhxYYGInDk7dHTalAH7rkeZU4x0K1Ufzi3azb9GZeWHCeT6Xoz6NmoyFugtMqym
VHpTe4Q+yJsRePgmKOUuunbk/g3i8RdEAhofBvybeCRVKiv3izjDFnptODFdBhUQ
zanChw48qz+y2bfOghDEPxQvxtnwozD276sT7Ins0O8OXgoBs2yFyGAe6gQ2jDs+
0WjiDz8VNvf8Y0x94FjTQn/4Yz2XO012fbKFcBrBEuAxkM8fRBQWL0qXoauVnU55
RDNtvNw1srOGW4k41N+YKk7vLXxdbkFZWs3noipKs68rxqejQbr0fZZQb8+h1/RR
Vx72nBXEqVoGWPUixOvGsGhmZU3L8pCo+P53YGprXp1uQunYYkWkO4Mq3caw8iiW
lfzjYbLCoQzufnMF5rs0KviHHdWDpSsCqovymGMlCz495RjbdfrCqXpBwxOzNuIh
5LYHWmCoF48koHHxnroZ
=s+rX
-----END PGP SIGNATURE-----

--dvj8OVT7unwUk7F7GwcBFHX0caaqKpTvU--
