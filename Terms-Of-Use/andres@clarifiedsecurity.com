Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp700491otd;
        Wed, 18 Jul 2018 09:34:23 -0700 (PDT)
X-Received: by 2002:a1f:ba81:: with SMTP id k123-v6mr3780895vkf.167.1531931662960;
        Wed, 18 Jul 2018 09:34:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1531931662; cv=none;
        d=google.com; s=arc-20160816;
        b=CUXvvUdnq0a1CZS3GlStcQF9AK641mRLZB48ppC2+LD3mfdFONbbFSLN5hN1FR1dAJ
         ynh2gOlLrXPGpE6njJoRK6MYcdZlV+Ukpn9v4ehBen86EidX0LbsFasVT+hZbazcyRtJ
         ibfahRsKElVdYIhWyE/EPWuyVYQLwFGlX+/55tkoEODZ52atGLcMwYuoQ/b7co+UEzqR
         WOlNilg+qAZukwysFlNAPY/JHKF8Z1+Huzh69UkzL4e2HmvxsFs/Bd9njD+RT0oRWF+u
         LlyIRWjqlQeUI9K8XYLIEe0PGulZ1XOWiSde0o7ILB1kOKCDt8aQ3n/GYPVhlNhgcC3e
         kfiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=o0LHQndv1gd+B7EIRJjZ5zlGOwB2MAYx17dUGTHKEiQ=;
        b=zc34rdxvsvfNH3K08j/QOy9Nz/kQDT1vJZcjOVudv8p3VeHsUoxBWGQL/LAooNrxNm
         tgdR7+Q/5tB6vz/VGxTChMfoSUO8e773oWnivdsKGGUgMdO0nbZNT1nfXT+23omXmGYi
         MF7XOmkrV6aBZruJZvSSGDmeuaVq5+JIfczK7B1LJRrQQ400lWDw2yz26KFLUiYxmiYR
         F/TgptIsSIAQAUtMATOSwYlH0tOuNOB7PYqdhQd4ikXcU7dAWCVRNgpJq9C3sAlRso66
         h45cKhCYbP2EwX4JFjjDNk9IsquDnUS3O1nUE26hf7j0DUmR4Mk/enRj3TT2GJEpdWBX
         3OJA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@clarifiedsecurity-com.20150623.gappssmtp.com header.s=20150623 header.b=iV9UF5XD;
       spf=pass (google.com: domain of andres@clarifiedsecurity.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=andres@clarifiedsecurity.com
Return-Path: <andres@clarifiedsecurity.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id o3-v6sor1732203uae.20.2018.07.18.09.34.22
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 18 Jul 2018 09:34:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of andres@clarifiedsecurity.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@clarifiedsecurity-com.20150623.gappssmtp.com header.s=20150623 header.b=iV9UF5XD;
       spf=pass (google.com: domain of andres@clarifiedsecurity.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=andres@clarifiedsecurity.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=clarifiedsecurity-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=o0LHQndv1gd+B7EIRJjZ5zlGOwB2MAYx17dUGTHKEiQ=;
        b=iV9UF5XD4X5luh2B4Z7i7P2Wrl6nscuEEmfX4bFIUwJh/OnGXLxGsSzgv8hnHuzu/M
         G2MZS+f0RLksfipwwayOlAG9L7VqrD6gQ0gthctC9nQlikcOLVzSrUDNr0ZJiOnnLNlH
         dS47wiOW1YlWl9D87ap/BqoJ/jZFa9Xml2lG/PYFfpzqkOgrPxUUF2fIeyZS/3+fD3gm
         c17w9crt5ibvNzqLswJK7zLoMuGFPchBjXehRV/2BtnEypEAwOcaaOdpUAAGj7EvaPPi
         g1ScWXZm0cUsgriRNyU99/QNCTQ8d/OSE4kaKULR0UgNDdpUs+wgQs8FRb/C1N+Joh0j
         OpTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=o0LHQndv1gd+B7EIRJjZ5zlGOwB2MAYx17dUGTHKEiQ=;
        b=kh9J9CivWoAQzvHhHBGOpuasYdLUqRg2uD/zQTO0YJyP5QaOPkD8lyKdBkxPoJKgyG
         MGeAK8CAwKT9Ooek8IVrmbDoVhPa8WRsmDjOlWAf8tohpT2Cf7lZ8g6zAju0FcBezuk6
         /MsK7Z+udEcqMtgoDM8BnzOfMIqko1b+uE4gmejPAlZkLo4d7RVnBYWXDWM5qKu39Tn7
         PIejjKgQatdLDNX9W86Uo9X3koQYPnLHigz6VPdb/MaJmwDl1qT27O5x9DT7d99G2EDm
         HDwMqsZf7pLp36v2OhUfWCFtUsmGMLP9Tkz3HUxdWGUHmMkvvpjFvwOkxb4PFtrgZXUX
         53uQ==
X-Gm-Message-State: AOUpUlHnGfI8f8WdSHbyOibsRzWHXzCE6ysinas99Tm8YFMlgnJfahKT
	DRGWf+AKn8BHdwVk/7iKDBEUN4sXaYDExHPbSsi03iBr
X-Google-Smtp-Source: AAOMgpfp1uf0eFHC+ovOIU1oro+BnqK5H9gO2/HypFTzlXSxZqWMRgJlT51k7kN182otBvoMhvUtt5RDsCrTsI6t57w=
X-Received: by 2002:ab0:210b:: with SMTP id d11-v6mr4375723ual.108.1531931662251;
 Wed, 18 Jul 2018 09:34:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9f:36ef:0:0:0:0:0 with HTTP; Wed, 18 Jul 2018 09:34:21
 -0700 (PDT)
In-Reply-To: <20180718161523.5378.26055@shiny-2.local>
References: <20180718161523.5378.26055@shiny-2.local>
From: Andres Liiver <andres@clarifiedsecurity.com>
Date: Wed, 18 Jul 2018 19:34:21 +0300
Message-ID: <CAL+DzDG4xgRXRYNRovWFCOUtKVwcFSd+dRgVu7cPeZ0N8zjY1w@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for andres@clarifiedsecurity.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000008c8d92057148a25f"

--0000000000008c8d92057148a25f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Wed, Jul 18, 2018 at 7:15 PM, <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add a copy of the email to the
> DWF MITRE CVE Terms of Use acceptance data at https://github.com/
> distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>
> The reason we use a complete copy of the email is that it provides an
> artifact showing that the email address accepted the Terms of Use, when
> they were accepted and so on.
>
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
>
> MITRE CVE Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities
> and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MIT=
RE) and
> all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusiv=
e,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute such materials and derivative works. Unless
> required by applicable law or agreed to in writing, you provide such
> materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
> KIND, either express or implied, including, without limitation, any
> warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
> FITNESS FOR A PARTICULAR PURPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=
=AE). Any
> copy you make for such purposes is authorized provided that you reproduce
> MITRE's copyright designation and this license in any such copy.
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
> A copy is available at https://github.com/distributedweaknessfiling/DWF-
> Legal-Acceptance/blob/master/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--0000000000008c8d92057148a25f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br></div><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">On Wed, Jul 18, 2018 at 7:15 PM,  <span dir=3D"ltr">&lt;<=
a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation=
 email sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=
=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to =
accept the MITRE CVE Terms of Use (assuming you filled out the CVE form and=
 want one, we can&#39;t use the data until you accept the MITRE CVE Terms o=
f Use). <br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer" target=3D"_blank">https://github.com/<wbr>distribut=
edweaknessfiling/DWF-<wbr>Legal-Acceptance/tree/master/<wbr>Terms-Of-Use</a=
><br>
<br>
The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on. <br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems. <br>
<br>
MITRE CVE Terms of Use<br>
<br>
LICENSE<br>
<br>
Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) a=
nd all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusi=
ve, no-charge, royalty-free, irrevocable copyright license to reproduce, pr=
epare derivative works of, publicly display, publicly perform, sublicense, =
and distribute such materials and derivative works. Unless required by appl=
icable law or agreed to in writing, you provide such materials on an &quot;=
AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either exp=
ress or implied, including, without limitation, any warranties or condition=
s of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR =
PURPOSE.<br>
<br>
CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you ma=
ke for such purposes is authorized provided that you reproduce MITRE&#39;s =
copyright designation and this license in any such copy.<br>
<br>
DISCLAIMERS<br>
<br>
ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE US=
E OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WA=
RRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.<br>
<br>
A copy is available at <a href=3D"https://github.com/distributedweaknessfil=
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>=
Legal-Acceptance/blob/master/<wbr>Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc. <br=
>
<br>
</blockquote></div><br></div>

--0000000000008c8d92057148a25f--
