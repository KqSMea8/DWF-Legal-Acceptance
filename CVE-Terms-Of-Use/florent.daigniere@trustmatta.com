Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp854885uaa;
        Thu, 6 Apr 2017 13:38:51 -0700 (PDT)
X-Received: by 10.28.66.74 with SMTP id p71mr26067802wma.131.1491511131759;
        Thu, 06 Apr 2017 13:38:51 -0700 (PDT)
Return-Path: <florent.daigniere@trustmatta.com>
Received: from email.trustmatta.com (email.trustmatta.com. [83.142.224.18])
        by mx.google.com with ESMTPS id i28si4089755wrc.136.2017.04.06.13.38.51
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 13:38:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of florent.daigniere@trustmatta.com designates 83.142.224.18 as permitted sender) client-ip=83.142.224.18;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@trustmatta.com;
       spf=pass (google.com: domain of florent.daigniere@trustmatta.com designates 83.142.224.18 as permitted sender) smtp.mailfrom=florent.daigniere@trustmatta.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=trustmatta.com
Received: from email.trustmatta.com (localhost [127.0.0.1])
	by filter.trustmatta.local (Postfix) with ESMTP id 8879240040
	for <kurt@seifried.org>; Thu,  6 Apr 2017 21:38:49 +0100 (BST)
Authentication-Results: filter.trustmatta.local; dkim=pass
	reason="1024-bit key; unprotected key"
	header.d=trustmatta.com header.i=@trustmatta.com header.b=O88v0s0o;
	dkim-adsp=pass; dkim-atps=neutral
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,MATTA_APP_ATTACHED,MATTA_HAS_PGP_SIGNATURE,
	NO_RECEIVED,NO_RELAYS autolearn=ham autolearn_force=no version=3.4.0
X-Spam-ASN:  
Message-ID: <1491511128.28211.2.camel@trustmatta.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trustmatta.com;
	s=dkim2015; t=1491511129;
	bh=Itd/JWZ3Bsgr2OvntEiIRxjpp6O590KM0T9xI6JqnAc=;
	h=Subject:From:To:Date:In-Reply-To:References;
	b=O88v0s0op40kRMbs6dtvNmWYPbx3q4swZO51QdAzXEMFJKR7iGOjZZxCzFUpVWSv/
	 g3OEp/s8VXqZ74hfjgWcKEy2KAjEPV+6NPbSIxqB0N2XjOuWZH134lBQJz/A50kR3F
	 Tg+3jD0bbJiB7nh7RgssU8twmLIkcq61Ee/3xQ1k=
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 florent.daigniere@trustmatta.com
From: Florent Daigniere <florent.daigniere@trustmatta.com>
To: kurt@seifried.org
Date: Thu, 06 Apr 2017 22:38:48 +0200
In-Reply-To: <20170406201133.4090.88053@shiny-2.local>
References: <20170406201133.4090.88053@shiny-2.local>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-6CJvOp/eVv6x8KlalCln"
Mime-Version: 1.0
X-Envelope-From: <florent.daigniere@trustmatta.com>


--=-6CJvOp/eVv6x8KlalCln
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept


On Thu, 2017-04-06 at 14:11 -0600, kurt@seifried.org wrote:
> This is a confirmation email sent from CVE request form at https://iwa
> ntacve.org/ asking you to accept the MITRE CVE Terms of Use (assuming
> you filled out the CVE form and want one, we can't use the data until
> you accept the MITRE CVE Terms of Use).=C2=A0
>=20
> Simply quote the email and reply with "I accept" at the top if you
> agree to the MITRE CVE Terms of Use and we will add it to the DWF
> MITRE CVE Terms of Use acceptance data at https://github.com/distribut
> edweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>=20
> If you did not submit a CVE request to the DWF you can safely ignore
> this message, however we may resend it at some point in the future, if
> you don't want any future emails simply reply with "unsubscribe" or
> "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address
> to the block list so we don't spam you with these, please note that
> this will prevent you from being able to accept the MITRE CVE Terms of
> Use via the DWF automatically in future (you'll have to manually ask).
> But again, if you have no idea what a CVE is then you can ignore
> this/ask to be added to the block list with no problems.=C2=A0
>=20
> MITRE CVE Terms of Use
>=20
> LICENSE
>=20
> Submissions: For all materials you submit to the Common
> Vulnerabilities and Exposures (CVE), you hereby grant to The MITRE
> Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a
> perpetual, worldwide, non-exclusive, no-charge, royalty-free,
> irrevocable copyright license to reproduce, prepare derivative works
> of, publicly display, publicly perform, sublicense, and distribute
> such materials and derivative works. Unless required by applicable law
> or agreed to in writing, you provide such materials on an "AS IS"
> BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
> implied, including, without limitation, any warranties or conditions
> of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A
> PARTICULAR PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-
> exclusive, no-charge, royalty-free, irrevocable copyright license to
> reproduce, prepare derivative works of, publicly display, publicly
> perform, sublicense, and distribute Common Vulnerabilities and
> Exposures (CVE). Any copy you make for such purposes is authorized
> provided that you reproduce MITRE's copyright designation and this
> license in any such copy.
>=20
> DISCLAIMERS
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
> A copy is available at https://github.com/distributedweaknessfiling/DW
> F-Database/blob/master/TermsOfUse.md
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org
> manually with your question/concerns/etc.=C2=A0
--=-6CJvOp/eVv6x8KlalCln
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEE27dzODvDSclSA+2R6sXr8HqpwqMFAljmp1gACgkQ6sXr8Hqp
wqMD2wgAvmFHBVN+TfAxfemiu3VPIVdAhfsYB0Cdju9YZPtbXDU/ceoXiiWVstBa
SWjs8+nPPmyoDx0Btn+s8qv5LJVzvzYSV6UwhMf4qlbYSDoOrUgJW1E6e+kbII3R
6zSFD5iXz8V1sgJTPO5GfMEmvcEpm2Y8FrgC1GY8jE16dv2N5HbwGoJ+xxUqQi79
eGl/SctRoVrdbgNjp2YQ6HCa5vUHILQeNM655K/s6mnjsYrlpPY3DiLVa1GVIlfY
SYIwOGnK5vfxkgB1O2utFm+CuAdD/51id0q90GWqfNqp5QCAUbwgPDEv1S768/N+
KWADXcJtOkpj83F5/feB19eZFGXsQg==
=wL1G
-----END PGP SIGNATURE-----

--=-6CJvOp/eVv6x8KlalCln--
