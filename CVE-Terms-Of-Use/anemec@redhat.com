Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp1236771uaa;
        Mon, 10 Apr 2017 05:14:03 -0700 (PDT)
X-Received: by 10.55.167.201 with SMTP id q192mr9307227qke.133.1491826443840;
        Mon, 10 Apr 2017 05:14:03 -0700 (PDT)
Return-Path: <anemec@redhat.com>
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by mx.google.com with ESMTPS id e26si13299393qta.114.2017.04.10.05.14.03
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Apr 2017 05:14:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of anemec@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of anemec@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=anemec@redhat.com
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id BC13FC04B924
	for <kurt@seifried.org>; Mon, 10 Apr 2017 12:14:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com BC13FC04B924
Authentication-Results: ext-mx07.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx07.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=anemec@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com BC13FC04B924
Received: from dhcp-10-40-1-154.brq.redhat.com (dhcp-10-40-1-155.brq.redhat.com [10.40.1.155])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A697B2401
	for <kurt@seifried.org>; Mon, 10 Apr 2017 12:14:02 +0000 (UTC)
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 anemec@redhat.com
To: kurt@seifried.org
References: <20170406200128.4090.13632@shiny-2.local>
From: Andrej Nemec <anemec@redhat.com>
Message-ID: <3e187dbd-7bb9-60fc-29df-ae1679944973@redhat.com>
Date: Mon, 10 Apr 2017 14:14:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20170406200128.4090.13632@shiny-2.local>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="pv7GvhsElF34dbp0xjmaFkQELSGJXAF3C"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Mon, 10 Apr 2017 12:14:02 +0000 (UTC)

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--pv7GvhsElF34dbp0xjmaFkQELSGJXAF3C
Content-Type: multipart/mixed; boundary="adkso1dPUX3iCnviqVXNbkLio99hPAuQp";
 protected-headers="v1"
From: Andrej Nemec <anemec@redhat.com>
To: kurt@seifried.org
Message-ID: <3e187dbd-7bb9-60fc-29df-ae1679944973@redhat.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 anemec@redhat.com
References: <20170406200128.4090.13632@shiny-2.local>
In-Reply-To: <20170406200128.4090.13632@shiny-2.local>

--adkso1dPUX3iCnviqVXNbkLio99hPAuQp
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

I accept


On 04/06/2017 10:01 PM, kurt@seifried.org wrote:
> This is a confirmation email sent from CVE request form at https://iwan=
tacve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you =
filled out the CVE form and want one, we can't use the data until you acc=
ept the MITRE CVE Terms of Use).=20
>
> Simply quote the email and reply with "I accept" at the top if you agre=
e to the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE T=
erms of Use acceptance data at https://github.com/distributedweaknessfili=
ng/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>
> If you did not submit a CVE request to the DWF you can safely ignore th=
is message, however we may resend it at some point in the future, if you =
don't want any future emails simply reply with "unsubscribe" or "DON'T SE=
ND ME THIS EMAIL EVER AGAIN" and I'll add your email address to the block=
 list so we don't spam you with these, please note that this will prevent=
 you from being able to accept the MITRE CVE Terms of Use via the DWF aut=
omatically in future (you'll have to manually ask). But again, if you hav=
e no idea what a CVE is then you can ignore this/ask to be added to the b=
lock list with no problems.=20
>
> MITRE CVE Terms of Use
>
> LICENSE
>
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
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusiv=
e, no-charge, royalty-free, irrevocable copyright license to reproduce, p=
repare derivative works of, publicly display, publicly perform, sublicens=
e, and distribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any c=
opy you make for such purposes is authorized provided that you reproduce =
MITRE's copyright designation and this license in any such copy.
>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE A=
RE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/=
SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BO=
ARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE =
USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIE=
D WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>
> A copy is available at https://github.com/distributedweaknessfiling/DWF=
-Database/blob/master/TermsOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manuall=
y with your question/concerns/etc.=20
>

--=20
Andrej Nemec, Red Hat Product Security
3701 3214 E472 A9C3 EFBE 8A63 8904 44A1 D57B 6DDA



--adkso1dPUX3iCnviqVXNbkLio99hPAuQp--

--pv7GvhsElF34dbp0xjmaFkQELSGJXAF3C
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJY63cIAAoJEIkERKHVe23aGTMP/jd6XTXOVUJptmcd51MSXt3O
w99E1jhbNi2drg3Mkv/5+kK57RLoC0pO9MyEWKtxU7gKpOpn+1WJbamCmYhsuYvV
c1WCjGCoY0BNXa0wRBIEgiaDZznA5LNMJtHPwTbkbhLvNHEQJPVdJpshhu6H1BQP
p9oVXLdexYO8EQG3oNHj8XCXmG+vwn8hBlLxGuj17sMj85E/aBEA4RAMK9U51tHZ
e3m7Qrh7Ieop0JysvZc7wRyz9u8vOfdy36zxEuFZzEcg21MKJtDLu+eG85up7BJh
5+T9HkL3uICr/QJ2w/P8sknRbssyHpPg1Ok60AlM3ftV3GgbWg4lR7cgHmTznOmi
kTFzvnpt0G6lCg20X49c5rY/pAHMMSrCifyV5W3T40gXZOm5C5kiuy7KDRyHBrme
PPpCwplH+4bf4Lfjwi1zMA/uQDk0BXukjKCxuXnAVed3LvNNRueBTe4uUmwJFtOE
C2ewsuJHQiMQylvpz5sFRmzxUgbIVc2VgYO+W0ldQKZ8TbT3LHFKphgQUoP32vMo
oU+oJzBtj7uNH5NspuAo4XMpMgfxnwBTPlepWvOYwwhvLDIRRQtM0XPKvyFuxniw
wZGpzEawObYtJAjdEBd7WBHRbYXrRrAAHg9voJZTx0sfeJAHzXPp6psgJMoZ2euB
Y7y53qruu+e55hHweMyk
=UK8O
-----END PGP SIGNATURE-----

--pv7GvhsElF34dbp0xjmaFkQELSGJXAF3C--
