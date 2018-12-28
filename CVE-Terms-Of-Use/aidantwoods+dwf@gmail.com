Delivered-To: kurt@seifried.org
Received: by 10.79.202.129 with SMTP id n1csp1161504ivl;
        Thu, 5 Apr 2018 05:38:43 -0700 (PDT)
X-Received: by 2002:a19:15d9:: with SMTP id 86-v6mr13810222lfv.96.1522931923479;
        Thu, 05 Apr 2018 05:38:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522931923; cv=none;
        d=google.com; s=arc-20160816;
        b=nNxIk9J2MI5Ka9jqKMij2ebVCEGhVcVcGEWJPvkdpRB0pDtYBRFSGdetWQPrueRVJ0
         m7gFHQK3eMCufBwI8lF/VxIXxfY1OLd9F8h4RAAxgD4Z1nmM/NOJoZDYo22yE+hNhrIU
         zfvKeaS3uw1M6FThu0bs3gk4qn2obx0pp3lEGTUOBRXH+2u+3eDc/QJwKT+Yns0SKMtK
         u8GcDgdEO8eqoI+Ky3S6twdxeYJubI6wRaQH87ir0cdKlKaNkbc+K8+13/AXPF1Lt2Pi
         5YKo+A0iq6sYNYFqaLDQRP2F9W+LoEVq1e6O3qXuYEqeUSpNp3XFBOdpHyRwDzxRm1cx
         jLOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=XKMCl38GaivXyYd2LU1fDPuGWOE5kUJyZF1T7l3PrIw=;
        b=vuDHgz/zkryruH3vdVlSYjAUtKKojn+nhEeVXy/duMVhvhb7WzzcdYBkjBXql1YMkD
         VR3MCQVo/v5asLfwKuyB5/WniLvG6W0ZO+HV+T1i+Lc/yPd0SBIJHDj53l6McupAsksQ
         t0S3krVg51vaY6FVeN9HBJFMeV5y4GWQ4cFdLNdkx3p31yelA7Q9vatSDm2vGlCd9mIZ
         fffvYTaf7re88KuY2FCqJuwiO5r9azOZ0rYJhS2TrzMfa+bbXFXsde+ZXU5qYJf/xdLu
         o0eN0B0RjziKFAu846G/G0fooEMn1WyPolSiRL0qMG1s+aJL7Drh4W/0ro5NYFLBAgwA
         fi/w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R5fJw6SS;
       spf=pass (google.com: domain of aidantwoods@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=aidantwoods@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <aidantwoods@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id e11sor1882127ljb.4.2018.04.05.05.38.43
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 05 Apr 2018 05:38:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of aidantwoods@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R5fJw6SS;
       spf=pass (google.com: domain of aidantwoods@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=aidantwoods@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=XKMCl38GaivXyYd2LU1fDPuGWOE5kUJyZF1T7l3PrIw=;
        b=R5fJw6SSjOJDnGf21LKfAT5hNJKvgSYFPXkBjW6wQ94bEvKcWSgKmZ8KG3w2utLxnj
         sNi04wJpSO3B2Ea58biQDnm6+FqWwcwxEYXiGcSDD78ExwHFg3x/uYnkRq3PZ9CPnNpf
         W56XkyZcGiH5AcS6k/aMvnu/DTZ1fzhDpglPcxHKW1+ygeSBgBuIzS2Bs8ZduImrDbaL
         hGjMAdR7M9cQDadgE6m5y/s8c5CH6vTcB4hd0QaqR6jl8ADBiaOJVi1+UI7mfSYcUpEN
         XO2Z1PWp4RxkL6d8vhccO5Y9LpUHHzZVSoD6FagBkS2L4x0t1RSxZinQ1VWD77TAS2Xo
         3U/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=XKMCl38GaivXyYd2LU1fDPuGWOE5kUJyZF1T7l3PrIw=;
        b=AcCE/oxIlrVvnJi2/O909/V+rv1taTM2Kb5s4K8s1ZKmxDsGh/OEgPavJxOD0Hn2T0
         6zhqx5UhjwQdj6zzOO9l904P1PMQNbzfPyCTu+SzoQJSuykw4Ww64klUlPoN1REupyJ7
         M9irk2yDuwhIejhotajOU3khSgRYxXoA9n591bHJGNvijdY56fMGutMtBHXlBduKiUEL
         r8JU7XX87xVfPhJ/Ua41ZPgrclTPNZvqDiq0GeQtY2d9tvFM+URfwGJGH+HrHq3vSK84
         8VCfrCyf4VAgsqI9wpLnNvbddaIee6tup4n6/kZBTmTHds13pSHx/EadL8mbfmW6P40T
         +gBw==
X-Gm-Message-State: ALQs6tBfc2pQnYajKi095urXZMo6vOYMUG71a7t5y8Hbn/QC2G3V8Io9
	wcPNiHiwfURHG0YxgGZDuynErI86gbsvWkcnHR1Fag==
X-Google-Smtp-Source: AIpwx4+NmHX+MvQdHs4GmemAaV5lk99Tijl45NKLuWoqKIqo+bRor6kjNtZmML7utBuYwnUK+qChOa8bXUHNwHQUmfc=
X-Received: by 10.46.129.137 with SMTP id e9mr4083817ljg.40.1522931922682;
 Thu, 05 Apr 2018 05:38:42 -0700 (PDT)
MIME-Version: 1.0
References: <20180405090532.26722.91991@slab.local>
In-Reply-To: <20180405090532.26722.91991@slab.local>
From: Aidan Woods <aidantwoods@gmail.com>
Date: Thu, 05 Apr 2018 12:38:32 +0000
Message-ID: <CALtMV+OFpRfbgsegOMBa9ikHL-k1yx9W9a4Da10ULGgEoEebVg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for aidantwoods+dwf@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="f4f5e80c5ba444c95d05691938b0"

--f4f5e80c5ba444c95d05691938b0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, 5 Apr 2018 at 10:05, <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add a copy of the email to the
> DWF MITRE CVE Terms of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
ster/Terms-Of-Use
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
> A copy is available at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/ma=
ster/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--f4f5e80c5ba444c95d05691938b0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">I accept</div><br><div class=3D"gmail_quote"><div>On=
 Thu, 5 Apr 2018 at 10:05, &lt;<a href=3D"mailto:kurt@seifried.org">kurt@se=
ifried.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is =
a confirmation email sent from CVE request form at <a href=3D"https://iwant=
acve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> =
asking you to accept the MITRE CVE Terms of Use (assuming you filled out th=
e CVE form and want one, we can&#39;t use the data until you accept the MIT=
RE CVE Terms of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer" target=3D"_blank">https://github.com/distributedwea=
knessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br>
<br>
The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.<br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems.<br>
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
rget=3D"_blank">https://github.com/distributedweaknessfiling/DWF-Legal-Acce=
ptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc.<br>
<br>
</blockquote></div></div>

--f4f5e80c5ba444c95d05691938b0--
