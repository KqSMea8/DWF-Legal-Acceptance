Delivered-To: kurt@seifried.org
Received: by 10.79.202.129 with SMTP id n1csp1194322ivl;
        Fri, 6 Apr 2018 13:18:40 -0700 (PDT)
X-Received: by 2002:a24:7343:: with SMTP id y64-v6mr20368037itb.6.1523045920511;
        Fri, 06 Apr 2018 13:18:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1523045920; cv=none;
        d=google.com; s=arc-20160816;
        b=bDUhQe+2Rs97YuEuGfYGv1NhoWP4/4GWnk3rhg44aLRBr9LHT1sxo5r3xJFfAJ7rft
         ku6x0AkHiY4JUOQKTYwHXcTKEHZeuxkuP/eNEp+YAiZdOsP/S/q+4ZO+BiiyKK/umBEM
         kSTTmTN8E+/PeKAenbq/c6AOt8YryeIKjk2q/Unw+gGJjoj38El0e4DurtSZ4bk3Q0oL
         LDEvWkm5zQoxlQ/f6RwiOSDlOXxpP0ngCzjFb9Wepck+jO1IDzXNDP+kY/Sk2a2ARJcD
         p/ThBzQUzHB4seSKQrijI91fiIzmCu+1ZCP8+IDNBsv65zV+ljXjvlAZt4udlBrNJNxL
         l+OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:dkim-signature
         :arc-authentication-results;
        bh=PyE+0IpPhr9K+v2x1OPxKrwfMOWWNKbgqfwqYOkvzLY=;
        b=K2A0WziXyAapV2bsYHP7pYloLHRElcpIacVaaIVoj9P4oN1g3u6nIfRp4NnLOu/CDe
         vFUPqNqnoOlxe6b5ziNT0QgCcaK61CygMkmggycRlznjKGK9OTa/9vg5GTPlMp/gZVrz
         HGB7Tng2FBtoys2Ge7GyFh3dhk/zGgDvsLO2nKbm6awA+YUGh2k29uk+f8hq14FnNt+Z
         FVbGbKEH0qnog3OFJ6UVPGVspWOw/Bk+ChUJaGc6cRIvXiB2H5i0hF+NsY9g0wYKYQjt
         6eebUL+V+UNthWYT6PrsIg9putqYgZR0y8o3nFDwfojyAlESLRL9ozSIwC2tZuXMht9j
         ENbA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n5bY8gZb;
       spf=pass (google.com: domain of yzy9952@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=yzy9952@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <yzy9952@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id y184sor5272667ioy.331.2018.04.06.13.18.40
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 06 Apr 2018 13:18:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of yzy9952@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n5bY8gZb;
       spf=pass (google.com: domain of yzy9952@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=yzy9952@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=PyE+0IpPhr9K+v2x1OPxKrwfMOWWNKbgqfwqYOkvzLY=;
        b=n5bY8gZb/7hM7tMNQeTM/aolqPO2IEnoheRCTOOCF+yQ9PWUY3itYEIQ61usjdAMdn
         RS5CAQKVwCg8D5aaZCThHkVZjYD27fvgJpIAb/h0N2RBl1lvwo2hl+OXyG2Q9WkaCgQn
         lWo8ZZUSGEXJRzMQW+pRDWOKWgE7J6K0OYKI2pfN8LofonVbtbOBY1qeyF9oNnrsrz6Q
         lBbWgtgrapZmvbOtV1mNKpA8lKxI/XWja54NaeNLmnwYMs3vhYxJ7HCVZHO9IziQa3XM
         Qeq+jvFetMAU/hAQd+b8x+VqBnSXErYCQy49iIhT6wijQBpkxPPT5AHVwABOBLccxcxk
         Pj3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=PyE+0IpPhr9K+v2x1OPxKrwfMOWWNKbgqfwqYOkvzLY=;
        b=SwIlas4NdOEsUGcFo8Ynh8Ub8UiVKmltznxNTvMfkd26P0qCMyk9Orb9dxHmbSVT5A
         bpqMnSpL6eLbB7MfN9KKqfRUsGJimORs0ksVowT/JHVr6HVNcKE3GMqtq502Z05VVBkY
         vEIUKMxdRHr/vuKytaHGmQ4kqcMcNQJjD8vMPGVAYheoPG4bX7u4EWQpPF/6T9Aq532m
         Jysyq/tXr/twxykwdbVOcSOKLBC43aq6YvBRyZaWXoNEvOblplkb+JKmYEBwa+wLeNq8
         z7BIJVK0wlAzxsMxgxx/CSuKBqY2B8KQD/R8AFgcgQt88XZh9LPURbt50+vcPqfm9OeL
         9Q4A==
X-Gm-Message-State: ALQs6tAjnEx3t0hcgvZCDPKmU4QU6tvYcY3lVmuC1JVAjVpyCOkg6p8t
	HjS6hy9+4l/QnAZtmD0PGGJRmQVBXrMQidbIlvjCYw==
X-Google-Smtp-Source: AIpwx49Mug0YBtom9S1y5C7lMWC/EL5FSqQEiuz+WHfudDoDWocmWAixnrGsMWWonREDOJd2AqYpEyCZMrdRIJWOXJw=
X-Received: by 10.107.165.206 with SMTP id o197mr24220864ioe.27.1523045919497;
 Fri, 06 Apr 2018 13:18:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.4.198 with HTTP; Fri, 6 Apr 2018 13:18:38 -0700 (PDT)
In-Reply-To: <20180405090523.26722.1448@slab.local>
References: <20180405090523.26722.1448@slab.local>
From: =?UTF-8?B?5p2o5a6Z6L+c?= <yzy9952@gmail.com>
Date: Fri, 6 Apr 2018 13:18:38 -0700
Message-ID: <CAB+RTWqgyRg4LXzjKxfHW3XutMvkBagvZu3pR3o-cAUMVtKyPg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for yzy9952@gmail.com
To: kurt@seifried.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, Apr 5, 2018 at 2:05 AM,  <kurt@seifried.org> wrote:
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
