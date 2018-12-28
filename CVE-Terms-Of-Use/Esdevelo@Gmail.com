Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp4756214otd;
        Mon, 30 Jul 2018 20:47:15 -0700 (PDT)
X-Received: by 2002:a1c:3351:: with SMTP id z78-v6mr1024999wmz.23.1533008835480;
        Mon, 30 Jul 2018 20:47:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1533008835; cv=none;
        d=google.com; s=arc-20160816;
        b=GWGTzBbfULmHe72e1Us4NjDYcMmg3Vnsg+PQEivgOHNLzTUWVenUbuvPKBuZgWuHYI
         5rN6zbVojdfFeVyYcyVgPgwmwzNXsXUvL0HkYeCgfWyLo+tYhDyqEuyn04ct4kotpK8N
         g8ahMCUbWRHuv1iHGRqpVnCYsWNuKh+fn2dqOTnHzd76LGZG2MugH9sEO3lIMUaabDdm
         R39Jv346N0wNyWjnn+od0osKiY8OvmZ829d+SrvrtPgF7oPJzUQnu1bRamcqbt+Z/hqJ
         XBoXlbmiCQ2Se++aYm694NaDOF2oUajRqYz13tXXP6fz6k/P5R2oWl7oo7Yl0AVgf5Lo
         jMHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:dkim-signature
         :arc-authentication-results;
        bh=p40RMcCPqV+juYzcvv7jxVGco/EWLqo1ggq7AX2JlcI=;
        b=SijYEK0Osj95uJF+lgK1n3Dyyr3Bh/cphwuzvu1D1TA/clhdI4rOvu3PD0SjB9C4Ee
         dMAXc477wWsaMlddRvVXrAPbqilR4sxYPuznmTWwFzc8/zY661sp7HbChWH2d8uVk5ia
         GhT/8v9JQ1bN5pUy3+YVVRkYVHHhpXRjJl37Ksy/sw8qmw6kXM4Ird7joNSpY/Ep2u3U
         DKPrP8gFzX8Wl57nPtX9HHw832iNXoQaCQH6soi2gvaYxpyUujwMaDD1irGeY5d8R8MN
         dAZwTDU1l8mIq3+Kz2jMiZ095SWdeBQkXN2SSeEcvI2SMAUSjUr4bygrORtBZjBj1P6r
         M6IA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tlxnvyQl;
       spf=pass (google.com: domain of esdevelo@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=esdevelo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <esdevelo@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id h132-v6sor309924wmd.12.2018.07.30.20.47.15
        for <kurt@seifried.org>
        (Google Transport Security);
        Mon, 30 Jul 2018 20:47:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of esdevelo@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tlxnvyQl;
       spf=pass (google.com: domain of esdevelo@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=esdevelo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=p40RMcCPqV+juYzcvv7jxVGco/EWLqo1ggq7AX2JlcI=;
        b=tlxnvyQl861QAjIEjEDTqM0sobdnvO0thjYhefG8UGtCMqfPw1RhlaRSEBpnVO0kUP
         neSMdSaKb8Fl/JBIhlWNrgtdxhGpFVXLI9tX8hbdUwAKW95j0WTWz6h3blEhwuxZw0Oe
         1mckRgvhh/yZioLr0jgtrJ1XZbNf7j7VkLxoshH4Kv/c+kmW4Q65RjdE1SqAuzdOID/3
         vLdJovcn/O7kOZXpczT2T3R99Trxo4jxMuMFdcHjZ65h2VD/+GN1eRa3Lp1mplRZki7R
         DOi2FVnpo01P3JgySWiBnQy9eoMyCTcUNT/71K8jqlUdXvBFXc9WeMCTbtsA7iKXl0n7
         MOHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=p40RMcCPqV+juYzcvv7jxVGco/EWLqo1ggq7AX2JlcI=;
        b=oSvYcmQn40EzWlSHMpqa7A/qeEYDudfTuaagOXsPKVQRmBNUrfMtkU1zWbhvnykMUB
         biixZLy8YXbHZihcTtZzACKJ7o2K16YT7tLCnEzUcTM+kXIJh57CKEuXZtsA70ySy/8E
         2J+3OB3PSCMkS/WYw3eg4KiN+WirgSdVGMj2pju6zTVIz3B/PlgDNOS6lF7nyN30eXQR
         7LPkt8vSlGmphzelwURrzSLHTln3pVl0uk6qM3em5Xy7zC5WXp0KUtGX61LnuzccSGPp
         ORZINJ+KUkCaLG53qPB2wejAjw38qqL5MUQvELanIeSV1vkUk34N6yfVFyTPFK8SKO6l
         gQwg==
X-Gm-Message-State: AOUpUlE0zKMq+ZgrXOYJd0FdX1mtQSwZwSOJSoqlSWUGjUCgOlJ3icQc
	OQNQAS2imFxIrMqzng38nJM/HBgfo6QZIibJJOuC8dLl
X-Google-Smtp-Source: AAOMgpdlq5/9kHm/bV36SfmB3nii5l7r5s4xTGXHOTkzqpgYMc4QkXQkAHtXVMW6KjlOA0aUgqsTSlKKVnJDnENZ6QY=
X-Received: by 2002:a1c:1ad0:: with SMTP id a199-v6mr1046693wma.131.1533008834708;
 Mon, 30 Jul 2018 20:47:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:1c46:0:0:0:0:0 with HTTP; Mon, 30 Jul 2018 20:47:13
 -0700 (PDT)
In-Reply-To: <20180729223716.17994.20772@shiny-2.local>
References: <20180729223716.17994.20772@shiny-2.local>
From: Erik Sanche <esdevelo@gmail.com>
Date: Mon, 30 Jul 2018 21:47:13 -0600
Message-ID: <CAMKokMTUQbWV4ma9tW1pMaQaG25AGE9E+mFA94uB1=Wad6MM8A@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for Esdevelo@Gmail.com
To: kurt@seifried.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

"i accept"

2018-07-29 16:37 GMT-06:00, kurt@seifried.org <kurt@seifried.org>:
> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree =
to
> the MITRE CVE Terms of Use and we will add a copy of the email to the DWF
> MITRE CVE Terms of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
ster/Terms-Of-Use
>
> The reason we use a complete copy of the email is that it provides an
> artifact showing that the email address accepted the Terms of Use, when t=
hey
> were accepted and so on.
>
> If you did not submit a CVE request to the DWF you can safely ignore this
> message, however we may resend it at some point in the future, if you don=
't
> want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
> THIS EMAIL EVER AGAIN" and I'll add your email address to the block list =
so
> we don't spam you with these, please note that this will prevent you from
> being able to accept the MITRE CVE Terms of Use via the DWF automatically=
 in
> future (you'll have to manually ask). But again, if you have no idea what=
 a
> CVE is then you can ignore this/ask to be added to the block list with no
> problems.
>
> MITRE CVE Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities a=
nd
> Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) =
and all
> CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
> no-charge, royalty-free, irrevocable copyright license to reproduce, prep=
are
> derivative works of, publicly display, publicly perform, sublicense, and
> distribute such materials and derivative works. Unless required by
> applicable law or agreed to in writing, you provide such materials on an =
"AS
> IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express o=
r
> implied, including, without limitation, any warranties or conditions of
> TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR
> PURPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
> no-charge, royalty-free, irrevocable copyright license to reproduce, prep=
are
> derivative works of, publicly display, publicly perform, sublicense, and
> distribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you=
 make
> for such purposes is authorized provided that you reproduce MITRE's
> copyright designation and this license in any such copy.
>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
> PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
> REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD =
OF
> TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRE=
SS
> OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
> INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIE=
S
> OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>
> A copy is available at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/ma=
ster/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>
