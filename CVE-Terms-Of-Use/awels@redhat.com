Delivered-To: kurt@seifried.org
Received: by 10.79.17.3 with SMTP id 3csp628549ivr;
        Wed, 21 Feb 2018 04:53:11 -0800 (PST)
X-Received: by 10.55.217.73 with SMTP id u70mr4827577qki.223.1519217591139;
        Wed, 21 Feb 2018 04:53:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519217591; cv=none;
        d=google.com; s=arc-20160816;
        b=ILn20dFD2OQuz1W3ixWzFRQVVsEL/8Wy0b2HVDf7jr9bc11Z3ZmXV2RmqgHDBKVrcB
         bnUTUoPVOW/ZY+CiswvJTxlWJc/cNQc6LRAif1vGEjgwlG1nS951z4rlFioRWi6PRM9R
         JaIvDjXbmfPYBIdk/+5cUTKpPibDyJOiOFtLc7Csz04dqdfGmQweOv2slxvdzE01glO5
         BYMN4wlUZIRYBC4h/dCnLMHOihE52oLQ8mFl7xNAJAtCy9ojt7CJ7FrIrmdLc1eQ2Cj3
         qXZy16mLj6aN3oOmod2adXVGGsUfrAt7vGOAsvIoYMAaKSxx9kF8JA6Jr/+ZILgYxNl6
         DuhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:arc-authentication-results;
        bh=PxPGI3RTMxM3G/BVsJYivDCdjfWQAtTgMUxFfCCrbgc=;
        b=S+6WbDFB+vTENqKq1YGLWZ4fyUXr1LyAjMxji5ahZgPvCyukZwDj8chiphfdaiDD7P
         Rr4uw5EFHdPthu5ELL5pLGr52PEull1w7JJPk50K2/y3xMaKGhVIFdufTn+lhhuwzSG4
         SUXIuY68ejKf/QmLqJAbGrrAQh8F2Mklcqa9ynb65k8i9xtvzf56cOjZPc78UrqoMeoQ
         2r8ZJYNFNt/3YLT2It8qWcjmYHTnP3ezeZTPpxYzMiF0Aygk7F34Xyo0BzfhXY23KVIC
         DN+3icM2D6bbza2mT6BHDq1VQT61JrefKjOE5IPrvZNkgymMy94Za8FqkJtVB5bLb4y2
         ok0w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of awels@redhat.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=awels@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <awels@redhat.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id o62sor2234590qkd.41.2018.02.21.04.53.10
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 21 Feb 2018 04:53:11 -0800 (PST)
Received-SPF: pass (google.com: domain of awels@redhat.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of awels@redhat.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=awels@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PxPGI3RTMxM3G/BVsJYivDCdjfWQAtTgMUxFfCCrbgc=;
        b=ZGrmVxuuvetU3AajpkN6NRemHwDGV2tGwCG5ni0y9S2KbhWIv8DsbeP+gEmsmIc5cE
         xDu88JbWbzrz3Ky1R2Gf1PvNhDDqBKvLYMmdHDVYFYnFwy9Pg+VNjXBxxd+MQIw1C68g
         fpDiJY9VoWsc5l3AHWmutZBzqVu1sUMFsui3fbo4qn3HnUN+Gcbq4d3GRFecs0mm+Mht
         MKUsulHxtaBheyLN/m8QKrse86g4G9J6xT1zthX7jfGJj2voyydMS5ep75Ghdcekdwm8
         WhePlhVEERim6WyRxxu6GoV6NqojK0xyNdVlxtaD7qTaYODRtGOw16OB+jWoOxdznijQ
         8wdQ==
X-Gm-Message-State: APf1xPDNwGf2LvVWHn6wz2vk+BRuWOqrZYIBqOmg9mnd/fY0QrmBpzAs
	sYk85L2hdc9lWskCrdJ14BIIq70Nhdc=
X-Google-Smtp-Source: AH8x224nBOc8o2CNr/iWE4LL1mZ+ETthLmZaGjgpCN6FCK/zzex2yeO7jotgJDlXDnJToWMrhA2n2w==
X-Received: by 10.55.97.66 with SMTP id v63mr4707197qkb.266.1519217590408;
        Wed, 21 Feb 2018 04:53:10 -0800 (PST)
Return-Path: <awels@redhat.com>
Received: from awels.localnet (136.67-212-46-net.sccoast.net. [67.212.46.136])
        by smtp.gmail.com with ESMTPSA id r4sm2502382qta.61.2018.02.21.04.53.09
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 04:53:09 -0800 (PST)
From: Alexander Wels <awels@redhat.com>
To: kurt@seifried.org
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for awels@redhat.com
Date: Wed, 21 Feb 2018 07:53:08 -0500
Message-ID: <7378285.DadMIsxtHb@awels>
In-Reply-To: <20180221014656.2013.26725@slab.local>
References: <20180221014656.2013.26725@slab.local>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

I accept

On Tuesday, February 20, 2018 8:46:56 PM EST you wrote:
> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>=20
> Simply quote the email and reply with "I accept" at the top if you agree =
to
> the MITRE CVE Terms of Use and we will add a copy of the email to the DWF
> MITRE CVE Terms of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
st
> er/Terms-Of-Use
>=20
> The reason we use a complete copy of the email is that it provides an
> artifact showing that the email address accepted the Terms of Use, when
> they were accepted and so on.
>=20
> If you did not submit a CVE request to the DWF you can safely ignore this
> message, however we may resend it at some point in the future, if you don=
't
> want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
> THIS EMAIL EVER AGAIN" and I'll add your email address to the block list =
so
> we don't spam you with these, please note that this will prevent you from
> being able to accept the MITRE CVE Terms of Use via the DWF automatically
> in future (you'll have to manually ask). But again, if you have no idea
> what a CVE is then you can ignore this/ask to be added to the block list
> with no problems.
>=20
> MITRE CVE Terms of Use
>=20
> LICENSE
>=20
> Submissions: For all materials you submit to the Common Vulnerabilities a=
nd
> Exposures (CVE=AE), you hereby grant to The MITRE Corporation (MITRE) and=
 all
> CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute such materials and derivative works. Unless
> required by applicable law or agreed to in writing, you provide such
> materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
> KIND, either express or implied, including, without limitation, any
> warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
> FITNESS FOR A PARTICULAR PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute Common Vulnerabilities and Exposures (CVE=AE).=
 Any
> copy you make for such purposes is authorized provided that you reproduce
> MITRE's copyright designation and this license in any such copy.
>=20
> DISCLAIMERS
>=20
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
> PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
> REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD =
OF
> TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRE=
SS
> OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
> INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES
> OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>=20
> A copy is available at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/ma=
st
> er/Terms-Of-Use.md
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.


