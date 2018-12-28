Delivered-To: kurt@seifried.org
Received: by 2002:a4f:b47:0:0:0:0:0 with SMTP id 68-v6csp10327304ivl;
        Fri, 18 May 2018 18:56:43 -0700 (PDT)
X-Received: by 2002:a37:2995:: with SMTP id p21-v6mr11017426qkp.397.1526695003623;
        Fri, 18 May 2018 18:56:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1526695003; cv=none;
        d=google.com; s=arc-20160816;
        b=W+IAH3P7IMK6q33dPg+zjHki86u29O6LqurjBF59G76PCFkSRSbakkfElyw42kfnbB
         hx90VNpqeWmQrYN4Gx4HAnl880PApUkP9oM5km/B5QgCGiTdpIg7XeaqFjs269xYI3kZ
         6Qup244bghSXz/3dbPT5q7/gNO6yUW56ixGOcvCleGuIwjHYAjQIUYg1sHugjS3s2Iy7
         PZmsrjlh2zbnzouTnmLMdhrPPQin/B20u0O+BVwQ89jcVhqJZChK0kzz9fonuBg+mtjW
         qFmjJ4iEanqrgZrBowPf5nb+jPhfOYuN7Q/EQAVCJ31MSiAeQtFDTY/FvUCM0VUV+//e
         jE7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:to:references:date:subject:mime-version
         :content-transfer-encoding:from:dkim-signature
         :arc-authentication-results;
        bh=u+4I1gcBy8/J8qBpo0padDByRMAUrMLK0CDeyJHv20E=;
        b=IGjFRy9FELIC7qcs2O/ZZ8QhYxlm9hf91JvA59oE6TLUN5u2Kk3ZqR6FzDkq06iC0I
         +R8E4AA9A/oaz7tDpr4lBRB9dwHLchjjtW/y3BqFbuyMIBAjJRGtbnNrqO9/SiH5xI1R
         AIJoVhT2zlfsHxU7G3EG3N7CosAXXm0cRXBPk6OZ5uU0M+sYIeIc45r177VZA3+KLZn6
         lu5gLB0BTKHXipmiZzvy7j43TaKhvV5d8sy7TodHRSiTr8D8q1Rl1u0JU20L0+iqjlEz
         6kKdtfTGvPiDg9plXuSghPo7YqdF9HfOGt8RPCnB5cXb3MrgThp8a2T4R8xMpEWMs9i1
         uILQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pj80eSo9;
       spf=pass (google.com: domain of ricardobgoncales@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=ricardobgoncales@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <ricardobgoncales@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id q67-v6sor6806893qkb.166.2018.05.18.18.56.43
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 18 May 2018 18:56:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ricardobgoncales@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pj80eSo9;
       spf=pass (google.com: domain of ricardobgoncales@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=ricardobgoncales@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=u+4I1gcBy8/J8qBpo0padDByRMAUrMLK0CDeyJHv20E=;
        b=Pj80eSo9U14/bs3IbLpojRkj8i1G13+e4TkXMc3ejFkebXN2iObSB2MzG3OyKLcv7I
         CYLxQgONax6x/dQY8mnDhFnp31lwhsqI0j9A1aSJJYwe5LMSCM5L7XXl3l6ljXuYhffu
         EU6g7qMy6bz2DJaM/JuPElnQ929vTIx9ATjZQFfCwXApHUe95qXia1xAH2/uYarL8ymS
         JM+Eb+vWvI0RILCeflweRE4bVQOOAKr+tChBlmLJpFsHX9ANqd/bKZp44zlffEUe2emL
         rFOCnlAUvLpzmPIVppsnpI8Q1uF3iPCDgFzRQrT394eza31y5bpM3JHQTXs14OPJviA3
         RPJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=u+4I1gcBy8/J8qBpo0padDByRMAUrMLK0CDeyJHv20E=;
        b=owOru7/psSKwAvvr5d4zyurgeNgIIfedvoNft6CVvwSFP17AHBvaxKLqyg4FqIlhNa
         W7MRBxmzh8k9AurCsdDQ4VVou4mc6jog46SAb5Y4y4yKJ65hTVZ5JAB0xhXC232kgfSj
         5yRZv+iQ57SgB9wZk1fkhk9Sy1GNG2Z7AJCN67x4tBLdk0V57fcuhdXYYObH2rLJ8rZn
         m5V5qD+IAKemibmEBFRhy987jG9Mp0x8xIPsSEd6c68dKAXjij6rvtx84fHruJu5yk2x
         s5LvcR8KnaRTH2gBxSmPDkQNNBbB/cQwd9t8NA99pQOeHVbojAmC0ScIN0X6OX+aLduF
         /m2Q==
X-Gm-Message-State: ALKqPwcAvhwEKbSR6rpy6pnQgXbEtTJzh8U1/em6Df0LR8v4BJljgKFj
	eYRD0Fb4uIlz0h+ZyCUeV9SBFnlX
X-Google-Smtp-Source: AB8JxZpWSR7aT2xzygIZaz/qF7hgzIn7Nf8lBZ6wY9f/fCWJ3k6lv8/7Ri5GKl4t71JtM022933ZmQ==
X-Received: by 2002:a37:ef07:: with SMTP id j7-v6mr11061195qkk.22.1526695002697;
        Fri, 18 May 2018 18:56:42 -0700 (PDT)
Return-Path: <ricardobgoncales@gmail.com>
Received: from [192.168.1.101] ([187.106.24.210])
        by smtp.gmail.com with ESMTPSA id l5-v6sm6182507qtp.25.2018.05.18.18.56.40
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 May 2018 18:56:41 -0700 (PDT)
From: Ricardo Bernardini <ricardobgoncales@gmail.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.2 \(3445.5.20\))
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 ricardobgoncales@gmail.com
Date: Fri, 18 May 2018 22:56:36 -0300
References: <20180517165500.91066.85403@slab.local>
To: kurt@seifried.org
In-Reply-To: <20180517165500.91066.85403@slab.local>
Message-Id: <5CD55EE3-1360-46C5-ACC1-7E411035B69C@gmail.com>
X-Mailer: Apple Mail (2.3445.5.20)

I accept

> Em 17 de mai de 2018, =C3=A0(s) 13:55, kurt@seifried.org escreveu:
>=20
> This is a confirmation email sent from CVE request form at =
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use =
(assuming you filled out the CVE form and want one, we can't use the =
data until you accept the MITRE CVE Terms of Use).=20
>=20
> Simply quote the email and reply with "I accept" at the top if you =
agree to the MITRE CVE Terms of Use and we will add a copy of the email =
to the DWF MITRE CVE Terms of Use acceptance data at =
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/mas=
ter/Terms-Of-Use
>=20
> The reason we use a complete copy of the email is that it provides an =
artifact showing that the email address accepted the Terms of Use, when =
they were accepted and so on.=20
>=20
> This data cannot be removed from the Internet, or from our git repo. =
If you are concerned about your personal information (in the form of =
your email address and any attached information you include like your =
name) please do not submit it, setup an email address and use that. I =
cannot comply with GDPR requests to remove your information due to the =
nature of git, and my inability to confirm if you are a european or not, =
so if you don't want it in there, don't reply with "I accept".=20
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
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/mas=
ter/Terms-Of-Use.md
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org =
manually with your question/concerns/etc.=20
>=20

