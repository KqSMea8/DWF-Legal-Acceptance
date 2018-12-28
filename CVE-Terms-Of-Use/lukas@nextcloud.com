Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp701369vkh;
        Mon, 10 Oct 2016 04:41:39 -0700 (PDT)
X-Received: by 10.55.73.23 with SMTP id w23mr1320754qka.13.1476099699876;
        Mon, 10 Oct 2016 04:41:39 -0700 (PDT)
Return-Path: <lukas@nextcloud.com>
Received: from nextcloud.com (mx.nextcloud.com. [88.198.160.131])
        by mx.google.com with ESMTPS id n76si15896369qkn.24.2016.10.10.04.41.39
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 04:41:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas@nextcloud.com designates 88.198.160.131 as permitted sender) client-ip=88.198.160.131;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@nextcloud.com;
       dkim=pass header.i=@nextcloud.com;
       spf=pass (google.com: domain of lukas@nextcloud.com designates 88.198.160.131 as permitted sender) smtp.mailfrom=lukas@nextcloud.com
Received: by nextcloud.com (Postfix, from userid 1001)
	id C0474D40A3C; Mon, 10 Oct 2016 11:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nextcloud.com;
	s=mail; t=1476099698;
	bh=UnzGTuPAl43lt8aRbKxt3SQak2dF7We1hvddGYTJMJY=;
	h=From:Subject:Date:References:To:In-Reply-To:From;
	b=zM/8kDdP0Nu+l7xQzFvGQ2SbKL52aJVhATW0OPoTZePfxiyVwtN68J/4SKe3OYFxb
	 PvkiY5kq5Ps6g4STh44tSMcy/CMkhVmmcyEPJ1fLFe/Zay89/fUuqYI5bFEQyBvyPo
	 YvUxgHrw83jny3XRI71iloE0dznuPkp/Oix4O8Bc=
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on mx.nextcloud.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham autolearn_force=no version=3.4.1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nextcloud.com;
	s=mail; t=1476099698;
	bh=UnzGTuPAl43lt8aRbKxt3SQak2dF7We1hvddGYTJMJY=;
	h=From:Subject:Date:References:To:In-Reply-To:From;
	b=zM/8kDdP0Nu+l7xQzFvGQ2SbKL52aJVhATW0OPoTZePfxiyVwtN68J/4SKe3OYFxb
	 PvkiY5kq5Ps6g4STh44tSMcy/CMkhVmmcyEPJ1fLFe/Zay89/fUuqYI5bFEQyBvyPo
	 YvUxgHrw83jny3XRI71iloE0dznuPkp/Oix4O8Bc=
From: Lukas Reschke <lukas@nextcloud.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.0 \(3207.2\))
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
Date: Mon, 10 Oct 2016 13:41:32 +0200
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
To: Kurt Seifried <kurt@seifried.org>
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
Message-Id: <63176A11-F932-4F59-A820-65C7CCAA2D71@nextcloud.com>

Hi Kurt,

We=E2=80=99ve read and confirm the MITRE ToS for CVE.

Regards,
Lukas

> On 5 Oct 2016, at 18:41, Kurt Seifried <kurt@seifried.org> wrote:
>=20
> Hi, I need to confirm that you have accepted the MITRE Terms of Use =
for CVE, available at:
>=20
> =
https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Term=
sOfUse.md
>=20
> and quoted below, please reply with "I accept" and I'll be able to =
process your CVE request. Thanks!
>=20
> Terms of Use
>=20
> LICENSE
>=20
> Submissions: For all materials you submit to the Common =
Vulnerabilities and Exposures (CVE=C2=AE), you hereby grant to The MITRE =
Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a =
perpetual, worldwide, non-exclusive, no-charge, royalty-free, =
irrevocable copyright license to reproduce, prepare derivative works of, =
publicly display, publicly perform, sublicense, and distribute such =
materials and derivative works. Unless required by applicable law or =
agreed to in writing, you provide such materials on an "AS IS" BASIS, =
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, =
including, without limitation, any warranties or conditions of TITLE, =
NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, =
non-exclusive, no-charge, royalty-free, irrevocable copyright license to =
reproduce, prepare derivative works of, publicly display, publicly =
perform, sublicense, and distribute Common Vulnerabilities and Exposures =
(CVE=C2=AE). Any copy you make for such purposes is authorized provided =
that you reproduce MITRE's copyright designation and this license in any =
such copy.
>=20
> DISCLAIMERS
>=20
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE =
ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION =
HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, =
ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL =
WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY =
WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY =
RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A =
PARTICULAR PURPOSE.
>=20
>=20
> --=20
> Kurt Seifried
> kurt@seifried.org

