Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp850701uaa;
        Thu, 6 Apr 2017 13:25:58 -0700 (PDT)
X-Received: by 10.13.235.142 with SMTP id u136mr27133209ywe.322.1491510358854;
        Thu, 06 Apr 2017 13:25:58 -0700 (PDT)
Return-Path: <sam@samwhited.com>
Received: from mail-yb0-x22c.google.com (mail-yb0-x22c.google.com. [2607:f8b0:4002:c09::22c])
        by mx.google.com with ESMTPS id a25si838666ybj.1.2017.04.06.13.25.58
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 13:25:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of sam@samwhited.com designates 2607:f8b0:4002:c09::22c as permitted sender) client-ip=2607:f8b0:4002:c09::22c;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@samwhited.com;
       spf=pass (google.com: domain of sam@samwhited.com designates 2607:f8b0:4002:c09::22c as permitted sender) smtp.mailfrom=sam@samwhited.com
Received: by mail-yb0-x22c.google.com with SMTP id f204so12947158ybc.2
        for <kurt@seifried.org>; Thu, 06 Apr 2017 13:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=samwhited.com; s=swgoo;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=qa5M5y1jXnVlyXjUMdQePOTh2kV2zMctAL7Mn+OGrSQ=;
        b=fbBQB1CEwIDT3jn5mc4igc1FSuC62Cuq1frfvK2UfvU9yVMdFru1SWTJdCnGfY+moA
         ifl7XHRxoX0xzbB3MR4hWGgnCLolniAOs9nm6OijpCcPyu79xalUcnZ8jfc76ZwWqZZC
         78WbPS7ePhZRd8mQmAg2gS+8LCNL5eIL+frkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=qa5M5y1jXnVlyXjUMdQePOTh2kV2zMctAL7Mn+OGrSQ=;
        b=U3STnvrEmKKL2mjEEtDfsKuekgR6J811eoF4+rlMBPlhqx7cOdFF5OreDjQTnGrODk
         YNHKKmyJ8JUxiog4bQl7ZiCyptxpU/mUQmQvBttnhCm+Dqcf5fYW7KEgfkLRQjPw5lz5
         Jz1udfC8kte00GWNHx0geQVhTy6TbJJOqNVSveRWMG23i0oBBhMqMGXHtQutvJMP+o1H
         Y3IkOv3KDqvMilDYB22AoG9AL8W6KgIPBYZnv0ZWgUCxqrXtnzEzHo/M6t+GcoMgkkAW
         TfbnkuR3XuUYEC2F9z4vzDtIAmGx671qzPd/emCN8YFwmxnPK0zYm9QPcv9NhLuvp/Or
         D6Bg==
X-Gm-Message-State: AFeK/H0J23SY/yL0jXb8e3Y5uRUrDtSqR4WuKR9YCr9EKZHZ+NLyXJFV6pSMbZ8MjwmrzFpHSheaRAzki22v6w==
X-Received: by 10.37.38.194 with SMTP id m185mr9296115ybm.104.1491510358074;
 Thu, 06 Apr 2017 13:25:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.13.217.12 with HTTP; Thu, 6 Apr 2017 13:25:17 -0700 (PDT)
X-Originating-IP: [72.48.156.244]
In-Reply-To: <20170406202334.4090.14149@shiny-2.local>
References: <20170406202334.4090.14149@shiny-2.local>
From: Sam Whited <sam@samwhited.com>
Date: Thu, 6 Apr 2017 15:25:17 -0500
Message-ID: <CAHbk4RKOUVtnTgK5RiWd539CsZdkH2_K8B3L=yH8eCA=0idDGA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for sam@samwhited.com
To: kurt@seifried.org
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, Apr 6, 2017 at 3:23 PM,  <kurt@seifried.org> wrote:
> This is a confirmation email sent from CVE request form at https://iwanta=
cve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you fill=
ed out the CVE form and want one, we can't use the data until you accept th=
e MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree =
to the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Terms=
 of Use acceptance data at https://github.com/distributedweaknessfiling/DWF=
-Legal-Acceptance/tree/master/Terms-Of-Use
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
> A copy is available at https://github.com/distributedweaknessfiling/DWF-D=
atabase/blob/master/TermsOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually =
with your question/concerns/etc.
>
