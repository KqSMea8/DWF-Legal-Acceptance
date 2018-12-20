Delivered-To: kurt@seifried.org
Received: by 2002:a9d:3475:0:0:0:0:0 with SMTP id v108csp5977973otb;
        Wed, 19 Dec 2018 22:10:51 -0800 (PST)
X-Received: by 2002:a17:906:2f88:: with SMTP id w8-v6mr18313410eji.114.1545286251121;
        Wed, 19 Dec 2018 22:10:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1545286251; cv=none;
        d=google.com; s=arc-20160816;
        b=dqa6FuSBdtvu74pO0rR62buvBHx4+0T+WUS6UQJyHSFY4kYsxqJweZ3eaiI+fBSz1r
         zp8z0VKtbdaY0weQrPM10YItlIzZ5MCdutiVzlbaMehh5EDAO4kZyFiRz6cSKhTV1bTD
         r8CV//KqwqfcRDFnH3refyYexy9t8aImgSMChZBFig0DBCrCaUKQE72ISfS49Gf7Or0i
         rnZPYvqwruaPlJghHmlIZ6E8vyvLP+tpIT2Q+Hk14xJ4IAdtBNd9MKepLtnh2WhV9twr
         55axN0k26b9Nwv4xt8cKDS8vpKOGHNKZyre7BwMiUIM1PPIWRADs31bF+vXw2don0SZ9
         Bd8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:references:message-id:subject:date:mime-version
         :content-transfer-encoding:from:dkim-signature;
        bh=r5Bh5mGoSD618LbbgnNhBIQPZCdDLP3i/K2DlhTGJ7I=;
        b=0PqioLYU4C9ppByVgZI2L2EBSnoMMactmEWcyjHw9kW6yC7ZYjDX2FaIkn8RWAltTP
         XZBviLMequqMUq3phrdLQzh1/RSgOjhe1EbruPVUApqUGzrSehqDfC9H7v0BUCAKEoWy
         9NGKgVsMCXsRSwgu/M7bThYTi9ZoMYe8M6K+3868gATaDpdh3I9lzEX8KM0lqQ7dTTGq
         S82+L8oESN6Gp6agK2T+CSi1kKdu4d0fFkuqIHUyNWxY9xiLjlZlEXEXeVGLvfk3Hzey
         I4Rr4iIs0IZDkeIzQ8YZMGmkXSN+W6d44vdTyYceOpsktnXfkrpnsBFWdBwH0w7QlrsH
         YAWw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@joshmartin.ch header.s=google header.b=PqPI4t0g;
       spf=pass (google.com: domain of maennchen@joshmartin.ch designates 209.85.220.41 as permitted sender) smtp.mailfrom=maennchen@joshmartin.ch;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=joshmartin.ch
Return-Path: <maennchen@joshmartin.ch>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id n10sor11848603edq.15.2018.12.19.22.10.50
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 19 Dec 2018 22:10:51 -0800 (PST)
Received-SPF: pass (google.com: domain of maennchen@joshmartin.ch designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@joshmartin.ch header.s=google header.b=PqPI4t0g;
       spf=pass (google.com: domain of maennchen@joshmartin.ch designates 209.85.220.41 as permitted sender) smtp.mailfrom=maennchen@joshmartin.ch;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=joshmartin.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=joshmartin.ch; s=google;
        h=from:content-transfer-encoding:mime-version:date:subject:message-id
         :references:in-reply-to:to;
        bh=r5Bh5mGoSD618LbbgnNhBIQPZCdDLP3i/K2DlhTGJ7I=;
        b=PqPI4t0gO60KXSP+9b7vyH4Pral2vvn3jlULCDnd0i1XBR4vzWR8Vu2VryOvxBTP2h
         Sasx3Vt4o8qioJuxv2JoFOD8SNWSt8whXzPdD5rXYuKSURcsxgaRt+Ckp7PWs7qdvjIN
         Szn9XQM0uFswBa1fgKeaczySCV4pV93Yjn1zE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
         :subject:message-id:references:in-reply-to:to;
        bh=r5Bh5mGoSD618LbbgnNhBIQPZCdDLP3i/K2DlhTGJ7I=;
        b=d2WnJbsIvXyPxKQGH9lSXlY4qTIuMfbKJHIFTLeAfT8/vtZqhQLJTlLq+OTRkl6ViP
         pWQiT/bB+2IvVsMr8oDyAQoXZrRqkoorWd/+jl/HKUb4ZzafmxqwTgLaHo6WcWD93lul
         hNjQ54BtxNn4hPemEKGSJWDxf7Ui/lU2s/zdKbHk6iAME7fD9tqc6Jvw4Pj91pBt6AF2
         +YLD4V0l+Iismz2RapsR/XJ62zVJCwlLBJyEYX1LLhvWUoTzF2pc5XcRUuWdKhnljWHb
         qqa7KwdxR4RYYXTEAMdjUH33i94u+WeEb9g9gqQRNDxdIojRZ8Yxrxfn9B6t/IwKOOma
         PGmw==
X-Gm-Message-State: AA+aEWZS1giLXCUOUoydddohECIcbDDPMfmzfJCzLHW6bF77zZT8FcaI
	dykp5Ge8oHoqkoyIvJtrbN9fmZMNv33O4rLshu3dgr3DpNyQ22sq2HxIObBFxcDBklKRQebaCiW
	APDbjbOaSm5XIRljtYdFaHgXJ5HHVaXfSsIJ4ta2hfbPSutZAcTPXT3Gu+IW79SgAFvsq
X-Google-Smtp-Source: AFSGD/Wpyts42sUWgiDmKdp0nGFXOqQQwL29TFK8/iD/+4g90x12LnulBjBOzREsq284s49qaj2bEg==
X-Received: by 2002:a05:6402:1286:: with SMTP id w6mr18439649edv.53.1545286250356;
        Wed, 19 Dec 2018 22:10:50 -0800 (PST)
Return-Path: <maennchen@joshmartin.ch>
Received: from ?IPv6:2001:1620:4:c019:617a:ef06:b6d4:cf00? ([2001:1620:4:c019:617a:ef06:b6d4:cf00])
        by smtp.gmail.com with ESMTPSA id gy12-v6sm3031689ejb.44.2018.12.19.22.10.49
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Dec 2018 22:10:49 -0800 (PST)
From: =?utf-8?Q?Jonatan_M=C3=A4nnchen?= <maennchen@joshmartin.ch>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (1.0)
Date: Thu, 20 Dec 2018 07:10:48 +0100
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for maennchen@joshmartin.ch
Message-Id: <3A3012C8-14EF-4BD7-A178-58D3C4DC46BB@joshmartin.ch>
References: <20181220030435.11155.95209@bigbox.local>
In-Reply-To: <20181220030435.11155.95209@bigbox.local>
To: kurt@seifried.org
X-Mailer: iPhone Mail (16C50)

I accept

Sent from my iPhone

> On 20 Dec 2018, at 04:04, kurt@seifried.org wrote:
>=20
> This is a confirmation email sent from CVE request form at https://iwantac=
ve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can't use the data until you accept the M=
ITRE CVE Terms of Use).=20
>=20
> Simply quote the email and reply with "I accept" at the top if you agree t=
o the MITRE CVE Terms of Use and we will add a copy of the email to the DWF M=
ITRE CVE Terms of Use acceptance data at https://github.com/distributedweakn=
essfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>=20
> The reason we use a complete copy of the email is that it provides an arti=
fact showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.=20
>=20
> If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don't w=
ant any future emails simply reply with "unsubscribe" or "DON'T SEND ME THIS=
 EMAIL EVER AGAIN" and I'll add your email address to the block list so we d=
on't spam you with these, please note that this will prevent you from being a=
ble to accept the MITRE CVE Terms of Use via the DWF automatically in future=
 (you'll have to manually ask). But again, if you have no idea what a CVE is=
 then you can ignore this/ask to be added to the block list with no problems=
.=20
>=20
> MITRE CVE Terms of Use
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
> A copy is available at https://github.com/distributedweaknessfiling/DWF-Le=
gal-Acceptance/blob/master/Terms-Of-Use.md
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org manually w=
ith your question/concerns/etc.=20
>=20
