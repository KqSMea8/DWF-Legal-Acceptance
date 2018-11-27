Delivered-To: kurt@seifried.org
Received: by 2002:a9d:3a09:0:0:0:0:0 with SMTP id j9csp4462872otc;
        Tue, 13 Nov 2018 06:07:42 -0800 (PST)
X-Received: by 2002:ae9:f80f:: with SMTP id x15mr4626005qkh.341.1542118062421;
        Tue, 13 Nov 2018 06:07:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1542118062; cv=none;
        d=google.com; s=arc-20160816;
        b=lR+oi7eVGYqMZIm/O8eQ0FlHRDrxGf2vlh+MnWJZjoeWfkzsAkyyBR2xzSvw6xKuyi
         LHr2FMsRAHfHY3vK9OCXfmjM7+y26hC7qT+M6uQgEYgEfXnbHDOXVXTE/rjI7fbP8Kpf
         d2as9zrlc2WPzgViYodpnHc1nCCjcCm7MFZ4EmwPfNI3tavuFroZsq86aROu/p/N8Z27
         73PBUP48Bns0cyqSA11QPoat8eJnjpdpY7pSqzXbnC4PHUZuo6X67E4Tt7InCbO0L2If
         ZFM0+IjcFahRSaBLCYp5p1TD5AvvobOSNY9dNX0ZHuQCBgTIpBX6QOgMFuhLoxmzUO4+
         FbVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:references:message-id:subject:date:mime-version
         :content-transfer-encoding:from:dkim-signature;
        bh=xqmO9dlHRAGlwY1NecdJSNwsj7v6H2+raLk+I3zsrwc=;
        b=C5UudiIPSgl4bZwIydblwUXcJQjl7hIwgIPxTF22PCre+t+IAk9LcnF5yl9jCexiC5
         qOIff1s5q5pGROH/xoQoXkJ73RIWMITvNjAi1cPKo1GEjDmFRgcPREdz5OuTHbU9MTQ2
         C2NNpymikTFWKvm1q7Vc0pXrFApkIBiT4XKIPCdiDvuKeY0vxMBZBaMlREjfEUGURth4
         rqu/xIuhxqO0g9EbV8zc3GV2JKe6xbPNoTi0U2QjzSGk0eJJ8mgtOiC5I+HkjfCMfzhf
         s0qQpn3i9w/yzpSaSHDKNbRJI4CdX6lxjxKcCOj1XJL9Tpr1OH24CAbndsFMHhXsQ997
         0r9A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gryrx2+Z;
       spf=pass (google.com: domain of ben.kurtovic@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=ben.kurtovic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <ben.kurtovic@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id s186sor6369036qkh.54.2018.11.13.06.07.42
        for <kurt@seifried.org>
        (Google Transport Security);
        Tue, 13 Nov 2018 06:07:42 -0800 (PST)
Received-SPF: pass (google.com: domain of ben.kurtovic@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gryrx2+Z;
       spf=pass (google.com: domain of ben.kurtovic@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=ben.kurtovic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:date:subject:message-id
         :references:in-reply-to:to;
        bh=xqmO9dlHRAGlwY1NecdJSNwsj7v6H2+raLk+I3zsrwc=;
        b=Gryrx2+ZHHIhDfcmowClpourT0NKIDGs5X/I0agrfUjq2q10EyePwPG4aitQ6vyHWI
         JUaW152tr/tDI2HXxw9ETcqQVg5XcVDgA9vUNlPqampJ6DHTeRRIM0mzb3vAobrlRTbu
         mx38M+aeryQBU7nANHltXyC8TpGLO5Y2MNA5XYcTz4QU3COe5RJawES1tZqKPI6rxQzu
         +LtYcVqcBGVnpPLOzM7/QJaVq4/XY9uyAhJhwh9LZL1lkCVvlBYDPR05Zu+b5pi209oR
         DFpTTNhcnTtAX/l2mt6h7mTYT32craLiz5ZlfWxJNfWPIYyrhvhZ5Edfg4kbhCPrxsDz
         Oq4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
         :subject:message-id:references:in-reply-to:to;
        bh=xqmO9dlHRAGlwY1NecdJSNwsj7v6H2+raLk+I3zsrwc=;
        b=nN5sjpkgV1bIggLDkcaD/n0JUHXq0A43khSn1h0GaUwacUG0GYWCcP0AnBqi7Ub6nD
         WP/aHmGY4YjcH96tEinIehb1JaaCkQu8ERKxJ7iQV/n0e5KBa/ePFcQNAO1I8asZ2oW1
         wHsfBUM5AKg+PkefLDl/wcLlkuodoywvNs0hZnAj4UtMSMYdbAxjaxyGzeTdltOANsCX
         CUGfbzmkRZfL8eAwbiAvOlWn64MsKB3sMmnlmrFYavf2is4tzqTDWDE8nVCwgSelCi4W
         2Jfi+MjIlU9Ra/JYPUFSUOyGNOU28N+iUVOzwGBkH6KH/h7yTrvi8F5gbbUqAcL8TN14
         syTw==
X-Gm-Message-State: AGRZ1gJsn7narkWjTVwQjje3T39ceg372AnbYm7IrwmpGw1m2k5swGCz
	E7fhIWzoil/MMl23gauDhctORxbX
X-Google-Smtp-Source: AJdET5dNEyMRu1JeM1RrS0027pruFTaesIxz2+jl/Q/6m3fVfHPMMI2KiAjljNDicI9r6Si99uZDCA==
X-Received: by 2002:a37:2a14:: with SMTP id q20mr1327648qkh.185.1542118061946;
        Tue, 13 Nov 2018 06:07:41 -0800 (PST)
Return-Path: <ben.kurtovic@gmail.com>
Received: from [10.117.214.172] (mobile-107-107-62-209.mycingular.net. [107.107.62.209])
        by smtp.gmail.com with ESMTPSA id q62-v6sm8948458qkf.74.2018.11.13.06.07.40
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Nov 2018 06:07:41 -0800 (PST)
From: Ben Kurtovic <ben.kurtovic@gmail.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (1.0)
Date: Tue, 13 Nov 2018 09:07:39 -0500
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for ben.kurtovic@gmail.com
Message-Id: <D8953C8B-2A29-4B98-8925-8359E8BC44D4@gmail.com>
References: <20181113042525.54157.47342@bigbox.local>
In-Reply-To: <20181113042525.54157.47342@bigbox.local>
To: kurt@seifried.org
X-Mailer: iPhone Mail (16B92)

I accept.

> On Nov 12, 2018, at 11:25 PM, kurt@seifried.org wrote:
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
