Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp1871047otd;
        Sun, 8 Jul 2018 13:15:13 -0700 (PDT)
X-Received: by 2002:a0c:8564:: with SMTP id n91-v6mr15534345qva.13.1531080913088;
        Sun, 08 Jul 2018 13:15:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1531080913; cv=none;
        d=google.com; s=arc-20160816;
        b=iXlP9RRBuI3+p8VDkdOV47j4lO6AWs9RahRv+u6y/4FYDMijb60UWUQQKkgyHJpWQy
         edOFAEhZZLpRDB0mNsGptfAtRpmfyRA4gaHkSydy6Hd+6GMwU7aTcv6dweYXpLJeYKG5
         +E+qtOK7qx0KbVykC/o9XTkioAleMJ0EjESdBzllxvPs7wvAmKGbEdQ/EQBVjVsFB8Kf
         4wliQ5j+XWZ2MmbaCnrfKyWydo1nNswHy32hhNNpgo4qp1+exL761CEilhW1UJnH/e3o
         HJS1564bNAhkz/XY9wUK/dm7WLR3zXZOmSLeQHkEB9zH2Z8LmGxOgXFT+6eRXgeKQ10s
         pIcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:references:message-id:subject:date:mime-version
         :content-transfer-encoding:from:dkim-signature
         :arc-authentication-results;
        bh=sKpXn9Tj4FsOHV2e7zTlF9BGndpWjiefys8rk0xdHN0=;
        b=E+buqNfd9lr0WcLb4UociOFDQeoxTlHeFfpNhQD9lwwMCU9bqxAnMlAcW0/8/eMlXd
         5OuWT46Ze858Tiezn6oSkkBhbyRy/Ee5wJlbQWiRmeZjercdK5pHMThVGodqgK+AD9VL
         OyL1UkIET70QXCdOdOEI+kx3liXEzAy2BcTPcXYUwaSF1/pLU1MIVHtm5V3BWSYyhgWK
         zcK1BR//Yuj3TU/fKsQagNqqTMRn9qlvUV/oLkCu/r2bfDk7+D37LXyh7hUk6PGo6LYN
         AngyIQcGcsws0KnwfQv/bBnLobiABCfwd21sibnsCLRQn1UglMs81WmMKnWLddCzB9ul
         KFwg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@steveklabnik-com.20150623.gappssmtp.com header.s=20150623 header.b=qBxtmX2i;
       spf=neutral (google.com: 209.85.220.41 is neither permitted nor denied by best guess record for domain of steve@steveklabnik.com) smtp.mailfrom=steve@steveklabnik.com
Return-Path: <steve@steveklabnik.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id b10-v6sor6985411qta.76.2018.07.08.13.15.12
        for <kurt@seifried.org>
        (Google Transport Security);
        Sun, 08 Jul 2018 13:15:13 -0700 (PDT)
Received-SPF: neutral (google.com: 209.85.220.41 is neither permitted nor denied by best guess record for domain of steve@steveklabnik.com) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@steveklabnik-com.20150623.gappssmtp.com header.s=20150623 header.b=qBxtmX2i;
       spf=neutral (google.com: 209.85.220.41 is neither permitted nor denied by best guess record for domain of steve@steveklabnik.com) smtp.mailfrom=steve@steveklabnik.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=steveklabnik-com.20150623.gappssmtp.com; s=20150623;
        h=from:content-transfer-encoding:mime-version:date:subject:message-id
         :references:in-reply-to:to;
        bh=sKpXn9Tj4FsOHV2e7zTlF9BGndpWjiefys8rk0xdHN0=;
        b=qBxtmX2iHRpDOyU+DYtG1Hu03uqDsBSG+fDfD5/XzDjl7cZ6RiN7LJjrP08jgTbWmh
         Lq4y5XoPnMb0+yPoP7Lhmt35OoCy5y6jrHyVWDUJ7qKNQB0oW4lB4e0ahXy5UnY2E1VT
         tD9uWYmCKyxGMRIMCBPnfO7pMJxiFPwTpSvjakih1e1KkNuqW8k0er/3VWnp83Xm+2f4
         h8dDdaVreEi1qbIBAN7eqFcL2S5GI5iPC1UjXn0LBrUJShDZnTlt9YhdePCa12/NR2RO
         ym7y8RCXmFuIgYMZFglGczhBa65zPJ+9USNtLCDo0CCJ+V0k84UkkuHmrlPGO+bUHZNI
         cMBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
         :subject:message-id:references:in-reply-to:to;
        bh=sKpXn9Tj4FsOHV2e7zTlF9BGndpWjiefys8rk0xdHN0=;
        b=NI3ARDPx7bR3Z9i396Nz8bNpS0yf6bb4MWiRmbcgjMKdz/l2agdGFjbynBn/bIcCyk
         pUEF21YD6P7CCwR6aWzpFhk/8pfZFYLa551FyLb+DvBXtO7uDPr6Jc+NFzfS+71IIiSw
         TGpDjxJSsoE/ax5mHoaOu6yHxPRjHywr6qP2UwJYWxA7Dew3TXkWoLFCDNuwdNIwIyHt
         FjAuCbDjcEst1h0rDQ4BZ29YYOwEM3bQlIEwQL/v/jC8zjhdMezcM6fbH3oU//g5ktoS
         lo+ZkrNn7QFXeQ3Z73kPK46s8Xl0i/TAhUJxmfJ3gwf9WQo5CnlGYmdqwa1od6OjxC4G
         2Y9Q==
X-Gm-Message-State: APt69E3/FZSLCp2/GqNdo8B/fxwX8PW8mA3LOqzKBpiJLc06HsLDrpMO
	Un3rI+EH6stGbaCIj7VG2AYEp8p8FHY=
X-Google-Smtp-Source: AAOMgpdzvKNfIy982XKvo8Ppquzok2v5075fwXbnxEH1hgKGjNQakcZgWhlIuOBKl92e5rtuooRFyw==
X-Received: by 2002:aed:3534:: with SMTP id a49-v6mr15869834qte.244.1531080912309;
        Sun, 08 Jul 2018 13:15:12 -0700 (PDT)
Return-Path: <steve@steveklabnik.com>
Received: from ?IPv6:2600:1017:b427:f5a0:1968:47cf:6128:9199? ([2600:1017:b427:f5a0:1968:47cf:6128:9199])
        by smtp.gmail.com with ESMTPSA id 43-v6sm10933098qtx.12.2018.07.08.13.15.11
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Jul 2018 13:15:11 -0700 (PDT)
From: Steve Klabnik <steve@steveklabnik.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (1.0)
Date: Sun, 8 Jul 2018 16:15:10 -0400
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for steve@steveklabnik.com
Message-Id: <9738A1F9-543B-4E0E-969D-72914752203E@steveklabnik.com>
References: <20180708194356.15482.8551@shiny-2.local>
In-Reply-To: <20180708194356.15482.8551@shiny-2.local>
To: kurt@seifried.org
X-Mailer: iPhone Mail (15F79)

I accept

> On Jul 8, 2018, at 3:43 PM, kurt@seifried.org wrote:
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
