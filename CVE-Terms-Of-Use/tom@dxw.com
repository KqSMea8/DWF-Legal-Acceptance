Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp225514uaa;
        Fri, 7 Apr 2017 05:11:10 -0700 (PDT)
X-Received: by 10.28.103.84 with SMTP id b81mr28043904wmc.124.1491567070771;
        Fri, 07 Apr 2017 05:11:10 -0700 (PDT)
Return-Path: <tom@dxw.com>
Received: from crumble.dxw.net (crumble.dxw.net. [212.110.187.238])
        by mx.google.com with ESMTPS id i83si7943903wmi.22.2017.04.07.05.11.10
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 07 Apr 2017 05:11:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of tom@dxw.com designates 212.110.187.238 as permitted sender) client-ip=212.110.187.238;
Authentication-Results: mx.google.com;
       dkim=pass (test mode) header.i=@dxw.com;
       spf=pass (google.com: domain of tom@dxw.com designates 212.110.187.238 as permitted sender) smtp.mailfrom=tom@dxw.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=dxw.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dxw.com; s=harold;
	h=Message-Id:In-Reply-To:To:References:Date:Subject:Mime-Version:Content-Transfer-Encoding:Content-Type:From; bh=H40uS3if7rkMwPlSsrcHTt3ZFayhW5fl3loDOtoLjus=;
	b=n3UBDY5iyBbfTNC3EuZc5ggvuYCq56hgkQHAzS7fww27BhAgYzn7kK3jFzrDyPJpKfqLU/wsbd3r8+R/A2Ufm491+XZN0XGiaVxebEnAuJJylwHWZQ1/UXfG6y+I7kgtmk6I5GdpW19Y6VL7jeFsuMoys3djsLVjX9FdMGhqiVg=;
Received: from submission.local ([10.14.1.8])
	by crumble.dxw.net with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.82)
	id 1cwSjO-0004lM-34
	for kurt@seifried.org; Fri, 07 Apr 2017 13:11:10 +0100
From: Tom Adams <tom@dxw.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 tom@dxw.com
Date: Fri, 7 Apr 2017 08:11:07 -0400
References: <20170406195812.4090.22326@shiny-2.local>
To: kurt@seifried.org
In-Reply-To: <20170406195812.4090.22326@shiny-2.local>
Message-Id: <D2E08649-E8C9-4270-80EA-3574CD3EB8D4@dxw.com>
X-Mailer: Apple Mail (2.3273)

I accept

> On 6 Apr 2017, at 15:58, kurt@seifried.org wrote:
>=20
> This is a confirmation email sent from CVE request form at =
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use =
(assuming you filled out the CVE form and want one, we can't use the =
data until you accept the MITRE CVE Terms of Use).=20
>=20
> Simply quote the email and reply with "I accept" at the top if you =
agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE =
CVE Terms of Use acceptance data at =
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/mas=
ter/Terms-Of-Use
>=20
> If you did not submit a CVE request to the DWF you can safely ignore =
this message, however we may resend it at some point in the future, if =
you don't want any future emails simply reply with "unsubscribe" or =
"DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to =
the block list so we don't spam you with these, please note that this =
will prevent you from being able to accept the MITRE CVE Terms of Use =
via the DWF automatically in future (you'll have to manually ask). But =
again, if you have no idea what a CVE is then you can ignore this/ask to =
be added to the block list with no problems.=20
>=20
> MITRE CVE Terms of Use
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
> A copy is available at =
https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Term=
sOfUse.md
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org =
manually with your question/concerns/etc.=20
>=20

--=20
Tom Adams
Developer, dxw
Web: http://dxw.com/
Twitter: @tom_dxw

