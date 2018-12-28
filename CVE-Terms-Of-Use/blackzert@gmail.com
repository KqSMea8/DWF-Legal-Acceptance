Delivered-To: kurt@seifried.org
Received: by 10.79.17.3 with SMTP id 3csp551589ivr;
        Wed, 21 Feb 2018 03:36:03 -0800 (PST)
X-Received: by 10.46.87.2 with SMTP id l2mr2131594ljb.80.1519212963817;
        Wed, 21 Feb 2018 03:36:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519212963; cv=none;
        d=google.com; s=arc-20160816;
        b=jKcMHY5lA1KNScKA1WwBE4A056pJXj5lRePGCZMN+72H//jCb58jY+WJvys9U3CKXn
         cS+5WiZPqPg/sTCceUz26UP7Kxgrm6uLidvdR1173FniDx86Uv57fOkxlyElsKdei2UZ
         MSB4EQ092CFMtEwXkOOjoufkZy1sFBfU/vhzz4rP9kkNYYlixmsZ8TGLaPLQBbJ8peHa
         bijOCTCSKAtQZ8tItMVDavJRRnF7/RZ72wyG5fhRlsL6eR6rK/PSKmHcq4aBReRMPElI
         v+BA+wFaCYoHxG/fzjvM1PDy5GJfHOgA+u20rWY8uzAc/Zahn5ufxLtZ/mF/Naba8wSr
         Iq2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:dkim-signature
         :arc-authentication-results;
        bh=/t2IJdyNitgqSvhz7E7KW/Ej8HKRlH2EuNFoacB3Xuw=;
        b=0nqv9F+af/x4bDF8QgwyYcuT4fT/gN4vVa+vIbWwuisAgOfS30iwArQjqP78z2Z6Lc
         p19tT8TwubOa6eJpwfcGSGosvEY5XDnpmNJTHojSl81JIGIYKd3PznFnRooqwqch/CNL
         21YUUDRG6ToM50JlAWKJpUOrXHeP64quyJJ0V1tcmYOWJYfIdjIOx8yRJuDK579KXQmH
         dp0Ucdi6SYVqdhzvIwZQ+44yDleKIgDiebhxswMGjizxfHezjanzk925GYepCkAG7U5h
         lPntC+aW6/UplKfNxNmH51GRVwxD/clJndnPpI6VwPzPy9ENJb888ysAgo034hYGZELd
         3xvw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lhDcUG+I;
       spf=pass (google.com: domain of blackzert@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=blackzert@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <blackzert@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id y22sor268651lfb.42.2018.02.21.03.36.03
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 21 Feb 2018 03:36:03 -0800 (PST)
Received-SPF: pass (google.com: domain of blackzert@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lhDcUG+I;
       spf=pass (google.com: domain of blackzert@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=blackzert@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=/t2IJdyNitgqSvhz7E7KW/Ej8HKRlH2EuNFoacB3Xuw=;
        b=lhDcUG+IT9eHcvNqtOgwPaFfoFfoBXffxHXvEBt+HME8RvOXTKsEg6FiXGnbaKyyaD
         gYCnF83Ch3T2LSb7U1U9m1YWCA7yBOZ8EdPhFsL8vJ3fbQyWPVLKjzeAyM96VYzOq68q
         l81iCHA4qhtJf2RUPyRxluKpt5MBPM5Fo6kkJGE8DsolMrAtiPL6iJNSKJIMNKVhtfij
         Seauzo6o3cyjTTBcO/dDB5gK/nCTvIGETouDmc1qZfA6lahz+HdVzaU7wDpd9HZXu+9w
         p7clJTDYcJJbsEZThS4s2FyjT2+qgNES0LpE+grx3s42+vvANZ71Ra+lpq2xCO0rnPcp
         fhng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=/t2IJdyNitgqSvhz7E7KW/Ej8HKRlH2EuNFoacB3Xuw=;
        b=NppDf+0DsLdJeZSFNUwJc93YtXwXQJXcJmo1dZoiXRY7arKHWRHrkptf04nsDyOvcR
         nlvICDuuieqnINRpStTl2wlgv0NGKUqNooTj/hVsIqhrxQ48rIl+N9JD9Q1XYoPGMp22
         8fZo1VRvGR77x/F80EscDsazmko9gYPkv/a1O3L6xGGqeaHF0ZM6C8lX1m6p8sqH6mnQ
         LPTB1uksEXn39T8HLCE6UziAxzM4HTuZDDzugKUGDsMZwH5Qh37vCMsYmAWWceKnQ4U4
         qkMGzP3GMgHsi0eglNe+1iMDvogFg8YKzjT7OPf23OYI+3PJg3a5N8xRsU3N4zPbco/B
         NBIQ==
X-Gm-Message-State: APf1xPBZSHgvkYJ1595Dudd9INGqEmn+eAq2YoM6frKz7vXnjJVRwi0P
	sbNmuvfA8Al5JsqkAiMHS2N8vWmB2ltlGVmK+icDyw==
X-Google-Smtp-Source: AH8x227H0CRNwB1ncU7idAR7vl7+gj4rj1PWNptcrETB8oho+NkuF5UPmuHKdpIll5LupmAZ42SH24aWf7tHyQrPzME=
X-Received: by 10.25.226.3 with SMTP id z3mr1973729lfg.118.1519212962679; Wed,
 21 Feb 2018 03:36:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.46.9.200 with HTTP; Wed, 21 Feb 2018 03:36:02 -0800 (PST)
In-Reply-To: <20180220195425.1788.73512@slab.local>
References: <20180220195425.1788.73512@slab.local>
From: Zero Cu <blackzert@gmail.com>
Date: Wed, 21 Feb 2018 14:36:02 +0300
Message-ID: <CAJ315SHRyoKN0QQft5Oo+QyytMNF9W06m-rEM-MnkO0PK0X8SQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for blackzert@gmail.com
To: kurt@seifried.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

2018-02-20 22:54 GMT+03:00  <kurt@seifried.org>:
> This is a confirmation email sent from CVE request form at https://iwanta=
cve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you fill=
ed out the CVE form and want one, we can't use the data until you accept th=
e MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree =
to the MITRE CVE Terms of Use and we will add a copy of the email to the DW=
F MITRE CVE Terms of Use acceptance data at https://github.com/distributedw=
eaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>
> The reason we use a complete copy of the email is that it provides an art=
ifact showing that the email address accepted the Terms of Use, when they w=
ere accepted and so on.
>
> If you did not submit a CVE request to the DWF you can safely ignore this=
 message, however we may resend it at some point in the future, if you don'=
t want any future emails simply reply with "unsubscribe" or "DON'T SEND ME =
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so=
 we don't spam you with these, please note that this will prevent you from =
being able to accept the MITRE CVE Terms of Use via the DWF automatically i=
n future (you'll have to manually ask). But again, if you have no idea what=
 a CVE is then you can ignore this/ask to be added to the block list with n=
o problems.
>
> MITRE CVE Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities a=
nd Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE)=
 and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclu=
sive, no-charge, royalty-free, irrevocable copyright license to reproduce, =
prepare derivative works of, publicly display, publicly perform, sublicense=
, and distribute such materials and derivative works. Unless required by ap=
plicable law or agreed to in writing, you provide such materials on an "AS =
IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or =
implied, including, without limitation, any warranties or conditions of TIT=
LE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,=
 no-charge, royalty-free, irrevocable copyright license to reproduce, prepa=
re derivative works of, publicly display, publicly perform, sublicense, and=
 distribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you =
make for such purposes is authorized provided that you reproduce MITRE's co=
pyright designation and this license in any such copy.
>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE=
 PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE =
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF=
 TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRES=
S OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE=
 INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES=
 OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>
> A copy is available at https://github.com/distributedweaknessfiling/DWF-L=
egal-Acceptance/blob/master/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually =
with your question/concerns/etc.
>
