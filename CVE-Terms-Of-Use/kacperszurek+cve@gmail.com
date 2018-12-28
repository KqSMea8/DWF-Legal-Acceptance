Delivered-To: kurt@seifried.org
Received: by 2002:a4f:ca81:0:0:0:0:0 with SMTP id n1-v6csp43852ivl;
        Thu, 26 Apr 2018 14:08:35 -0700 (PDT)
X-Received: by 2002:adf:a158:: with SMTP id r24-v6mr4821199wrr.191.1524776915139;
        Thu, 26 Apr 2018 14:08:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1524776915; cv=none;
        d=google.com; s=arc-20160816;
        b=VTtWARfd+2aYj0wYxYjqycz+5YtfXw5UxNBr+6vtedWXELxorxy0INixsA7L7K53hK
         pQS6t3THBWrP7rX1FrEv40io6yZ6c7x09pD6/rtoKZDxOJvd9sicZNpl6Jgn9MfvdMZb
         Wvo+OREXWTCa9AH/aesRmIBy/eTNU/pYhB3JWsI9nDJ6TtBr+WmiQ+pbiFEluqal2w6Q
         gSDuE5Tfov9qaHwckO/Es+4BrJCsv+qdNfiDxaACaNsmEpf7VOcvg/bLdTs0JtKj7K+n
         rKTWa/7XDeo+nNOmOh6Djz0h/+fddvbWN732w4gzfQntNdacLur8kv6E9UIcSwOpA4uD
         IF0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:dkim-signature
         :arc-authentication-results;
        bh=JItljDtko8QQ/lADAOTUog9GoyVsrBm7oYWN9F0JOvk=;
        b=Cm6DG57ov6IYyDc+X03FqADFwO9OE8JUnqqwcKZAUqhO79FaXJJLTUTrrWBGir4I9l
         u5Vpt6SFNZifQGqQgsEMWcb7c8cacgFg0HVvOnAmFTkIt8nawSMltQLEF+qT7Vn/IrPT
         iR4G3e0X5JeqNNQd1D8+lroWf2/jYRqjOAKyXgvTylrA1oMDraZRdQm8KCvA34gEWFXi
         HvIQ10VP3gPP1uRqSNf/oIOJ+MeYpLf0CME1W5oU+mJIEvjyTF55W4aDRU6oPH/d1eNQ
         fwuvV7dKJdTPlUVmZA1NA+LBdalNZocAIrQZgIcKXisyNAQO8vXVJI9Ps0SZeMCKADBD
         MrTQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jFjBQ2Nc;
       spf=pass (google.com: domain of kacperszurek@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=kacperszurek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kacperszurek@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id g184sor16473wmg.55.2018.04.26.14.08.34
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 26 Apr 2018 14:08:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of kacperszurek@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jFjBQ2Nc;
       spf=pass (google.com: domain of kacperszurek@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=kacperszurek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=JItljDtko8QQ/lADAOTUog9GoyVsrBm7oYWN9F0JOvk=;
        b=jFjBQ2NctDKujup40RWF9MjHsh5xISR9ol7yhjtn5l/UtBXM7p1Rg4ZvCeUP8yyQbf
         D+T+gJ9kjUFcy4GprfTylEdYYDySCX4Klb2ZagOYQbJuab8TrHswsIm4M6ezoP+KyudD
         CIj/6ga6RHT8/blT+j6qpFyyqKKit4c0Vk6f4F6AAU1Bmm7fK/zJ321L7MCW2ZvYk4d+
         WLUAJ7Xfw9WrnrLhqdAddAY4Zwe3J2ZEjo/ODoQCfP2r4buinl+sMSo3tln8x7IsmG/r
         H2QtQFdlrgL/qs7UVAMtFVlcF1j2qiFnmfxyLbjF517Gck3pU41T6Fi9XLB6trUz3s2t
         lxHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=JItljDtko8QQ/lADAOTUog9GoyVsrBm7oYWN9F0JOvk=;
        b=okktcfmeA6gdsGfIWvOvUNK/wwCjoCMdg6hJ9mvj/z69VE39tJx8pGvyy6krOqxRaa
         sE7zrALIJsNgveO0Qs4Zcem3asiefFCk9FQlleZ647gLAeHW4ZDyw0vFqCI/X/X75YhJ
         LJtHCALb4amteMhnurBYwqCIFnYS2XzADW3uhUkRRCAbr/hq8pWNbe9jsTTYNHLlfpdT
         k/QBplJ2iBPIs0cldbC/pyX00UKeVgtymGTSE/O3CtxZOPSYwdKxrVFZZePN9bkaibeA
         lb+6II4WQvAXFbZRqAMIj0qDzWVzTUHv17LzV3MggCKxYLBMJrHyFs5f7qJ7pzLbT3Hg
         o8aQ==
X-Gm-Message-State: ALQs6tDkn4XbXj8psIqNAS9h3zeVY191z7pn5Kwk38JAJBvXNEP65cgv
	s7VhGJwx/XPC79Vxek+lPZbe3GjM4g0wlneSZrcpzsxX
X-Google-Smtp-Source: AB8JxZpiiWQvxMA4FxcRxbMlqXuPFrdYbkqWxiCfYkIHR8ORZYCcxx6ISaS51+MnK7AmEqV0V0uXibch+VT6D+3OyvU=
X-Received: by 10.28.63.2 with SMTP id m2mr37995wma.158.1524776914391; Thu, 26
 Apr 2018 14:08:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.174.241 with HTTP; Thu, 26 Apr 2018 14:08:33 -0700 (PDT)
In-Reply-To: <20180426143434.43285.57683@slab.local>
References: <20180426143434.43285.57683@slab.local>
From: Kacper Szurek <kacperszurek@gmail.com>
Date: Thu, 26 Apr 2018 23:08:33 +0200
Message-ID: <CACoXDXg-qfxkzY6HOeHM5H1z6_WP8Lp_3x=t8+ajVUrg1-DndA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for kacperszurek+cve@gmail.com
To: kurt@seifried.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

2018-04-26 16:34 GMT+02:00  <kurt@seifried.org>:
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
> This data cannot be removed from the Internet, or from our git repo. If y=
ou are concerned about your personal information (in the form of your email=
 address and any attached information you include like your name) please do=
 not submit it, setup an email address and use that. I cannot comply with G=
DPR requests to remove your information due to the nature of git, and my in=
ability to confirm if you are a european or not, so if you don't want it in=
 there, don't reply with "I accept".
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
