Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp243346vkh;
        Wed, 5 Oct 2016 10:17:26 -0700 (PDT)
X-Received: by 10.194.235.103 with SMTP id ul7mr9880620wjc.201.1475687846912;
        Wed, 05 Oct 2016 10:17:26 -0700 (PDT)
Return-Path: <labs@sysdream.com>
Received: from mail.sysdream.com (syspartbassot.pck.nerim.net. [213.41.139.64])
        by mx.google.com with ESMTP id r133si33019332wmb.73.2016.10.05.10.17.26
        for <kurt@seifried.org>;
        Wed, 05 Oct 2016 10:17:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of labs@sysdream.com designates 213.41.139.64 as permitted sender) client-ip=213.41.139.64;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of labs@sysdream.com designates 213.41.139.64 as permitted sender) smtp.mailfrom=labs@sysdream.com
Received: from localhost (localhost [127.0.0.1])
	by mail.sysdream.com (Postfix) with ESMTP id 373C21A13C3
	for <kurt@seifried.org>; Wed,  5 Oct 2016 19:17:26 +0200 (CEST)
Received: from mail.sysdream.com ([127.0.0.1])
	by localhost (mail.sysdream.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id FUciwOJt2EYx for <kurt@seifried.org>;
	Wed,  5 Oct 2016 19:17:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysdream.com (Postfix) with ESMTP id 02E451A16AA
	for <kurt@seifried.org>; Wed,  5 Oct 2016 19:17:25 +0200 (CEST)
X-Virus-Scanned: amavisd-new at sysdream.com
Received: from mail.sysdream.com ([127.0.0.1])
	by localhost (mail.sysdream.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 3r9p9igV2owh for <kurt@seifried.org>;
	Wed,  5 Oct 2016 19:17:24 +0200 (CEST)
Received: from localhost.localdomain (LFbn-1-3305-234.w90-79.abo.wanadoo.fr [90.79.78.234])
	by mail.sysdream.com (Postfix) with ESMTPSA id 56F901A13C3
	for <kurt@seifried.org>; Wed,  5 Oct 2016 19:17:24 +0200 (CEST)
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: Sysdream Labs <labs@sysdream.com>
Message-ID: <55bff41b-90e7-8091-2a9f-696f817a7ebd@sysdream.com>
Date: Wed, 5 Oct 2016 19:17:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="iDMmJtwaBvDAjlEtj65Vds9VppunFP49O"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--iDMmJtwaBvDAjlEtj65Vds9VppunFP49O
Content-Type: multipart/mixed; boundary="mInWDFAV2J8tPFp9nFbXI4FtIL1uB4Sde"
From: Sysdream Labs <labs@sysdream.com>
To: Kurt Seifried <kurt@seifried.org>
Message-ID: <55bff41b-90e7-8091-2a9f-696f817a7ebd@sysdream.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>

--mInWDFAV2J8tPFp9nFbXI4FtIL1uB4Sde
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I accept.

Le 05/10/2016 =C3=A0 18:41, Kurt Seifried a =C3=A9crit :
> Hi, I need to confirm that you have accepted the MITRE Terms of Use for=
 CVE, available at:
>=20
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/T=
ermsOfUse.md <https://github.com/distributedweaknessfiling/DWF-Database/b=
lob/master/TermsOfUse.md>
>=20
> and quoted below, please reply with "I accept" and I'll be able to proc=
ess your CVE request. Thanks!
>=20
> Terms of Use
>=20
> LICENSE
>=20
> Submissions: For all materials you submit to the Common Vulnerabilities=
 and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MI=
TRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non=
-exclusive, no-charge, royalty-free, irrevocable copyright license to rep=
roduce, prepare derivative works of, publicly display, publicly perform, =
sublicense, and distribute such materials and derivative works. Unless re=
quired by applicable law or agreed to in writing, you provide such materi=
als on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, ei=
ther express or implied, including, without limitation, any warranties or=
 conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A=
 PARTICULAR PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusiv=
e, no-charge, royalty-free, irrevocable copyright license to reproduce, p=
repare derivative works of, publicly display, publicly perform, sublicens=
e, and distribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any c=
opy you make for such purposes is authorized provided that you reproduce =
MITRE's copyright designation and this license in any such copy.
>=20
> DISCLAIMERS
>=20
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE A=
RE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/=
SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BO=
ARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE =
USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIE=
D WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>=20
>=20
> --=20
> Kurt Seifried
> kurt@seifried.org <mailto:kurt@seifried.org>

--=20
SYSDREAM Labs <labs@sysdream.com>

GPG :
47D1 E124 C43E F992 2A2E
1551 8EB4 8CD9 D5B2 59A1

* Website: https://sysdream.com/
* Twitter: @sysdream


--mInWDFAV2J8tPFp9nFbXI4FtIL1uB4Sde--

--iDMmJtwaBvDAjlEtj65Vds9VppunFP49O
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJX9TWjAAoJEI60jNnVslmh90MP/34ck6+ZWsfEOop7pQVeGFKZ
NID8JZbGzYhxLrghHI/MSOgFuxpcVPvLSLWtqiPseTZ8dQPXRWfvPH+BQPqBy8UI
jS59uVMoo3WRe0KTwszUOKSNeXX3uPgsgrq5yOyeVTyNrjR7OMtelDGF3aSRwq+8
Qt1xaULyF7Eki6JiSII3hYJDI8pc1n09Y8uAZdrppw8EYd1ahZ/IihvaHmWOs+K9
3hDt5ncmrMhrXaaJ6xfdKcL9pdZ2UIc+5FioxalhYHJEnyIZ4loETR8e7+iuGjYf
Nh+yOFN4HB2EciMDySbRv5LJcBWMyMfm30GjUxdCc2ZoWCP2AC/PNr/taYTtY/oZ
sUwVD8D+mBwGajZ3VmH270TMzDh+TmvopUw+DmlAbnUDRvRRGM/7Eu4u7gxwWpBr
1nYAlla/XGj3J5Xlja+za2rOkDv4R2h3j1kDXldet3jmRMDd35NF+/E8IqNGfOo9
4z2VwlnP0SA3YNTCUHP/HI4yQAkp3jctAwkq2+g37BZ0ZdpFyf7wCZc/knzj8MmF
dCHijDjiJiQKUz5mN8svn8MpDK9NSBeXtfE/OKkEuedqzZuXctv/40GtKCO3ZbD3
3QAxtu9GgmF76KWXe86gAC+AFypVi5Oko3L2z85h3tJutxU8l3AKIss2FjaE3JK7
2Ab+g4ysHtJgcSBCfQ6V
=eLE+
-----END PGP SIGNATURE-----

--iDMmJtwaBvDAjlEtj65Vds9VppunFP49O--
