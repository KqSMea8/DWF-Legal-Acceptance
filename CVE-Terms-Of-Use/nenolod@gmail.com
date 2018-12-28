Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp3375329otd;
        Sun, 29 Jul 2018 16:35:05 -0700 (PDT)
X-Received: by 2002:a24:d256:: with SMTP id z83-v6mr11897169itf.130.1532907305061;
        Sun, 29 Jul 2018 16:35:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1532907305; cv=none;
        d=google.com; s=arc-20160816;
        b=lsvblKMIxi02R/h4O1C+oUHDsoKa4MakQHJE3mHDGMM+4k4CqMTTcihsDzomNE+CDK
         f/w+smPPz1Mo1l2Uj/3oLRBhKynBgeFS+wBs5a/u8HL8dTUttTRvjtHc7C8a6J4q2qWB
         U+lbO7scATMrt3BXqAGVSoWHLcIHjJiZEuRk9zSLe1bI77j8vhvh1bKiZwB+OtQgV+Sq
         Wf01ElwnxNVn3a579MGTQWC2HAZZhwbgUDywDJdyJy0tUWvhAiu9/KE0H8KC3dlgtmU8
         Ede1uJZvBW+WesgYGVlpP/P62EIKjiDJMr+TipTUeoLtqnzeq6gAewyaPYJdrlP77jqm
         Epnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=pqo6u0Q372vZ+XGCcMzJClvU/Q+ArWeyUXitRS9+k+E=;
        b=MXn3dCLo2uJO4/uDnKpANz4o6twScqHSwU03cvcoOL04/SCF6UpFfZIXB8iDFxA4tb
         Dz0lP89X6PpCFt2FGkKoK9mfbdilB9gZW14pEfk3OshGSGA0IAx4zO8qHhKeQRfkL9js
         eJJWNcunTN0He7kfgku6ELcCJMB71BXM90a2OgYFcOrPm0lgzgRX9S6dFTSQkL3ddMTU
         uZozQesdSad2aFqFVta7pQFGozcKc0Xw2gfhzyaISIr2bz563IpBNiDC8NU42CxJy1/t
         OsGaxd8bO8V84vYAC78r5onnaM5Xtfdn/dSZRLWEriaNRxRbsyGtFUFaOwOnizaYhZe2
         0+GA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RHENc7BL;
       spf=pass (google.com: domain of nenolod@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=nenolod@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nenolod@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id t131-v6sor2739012iof.353.2018.07.29.16.35.04
        for <kurt@seifried.org>
        (Google Transport Security);
        Sun, 29 Jul 2018 16:35:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of nenolod@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RHENc7BL;
       spf=pass (google.com: domain of nenolod@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=nenolod@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=pqo6u0Q372vZ+XGCcMzJClvU/Q+ArWeyUXitRS9+k+E=;
        b=RHENc7BLbwDRPYAxpdvKP3twWAZzCEY005RPAq3TLV+Om+I+BCsUbRsk/Ov2+llVbZ
         YQ7T5d8c4dTHb7lD6qWiB1sL3tD2jpamxXXNEIU/AdD4QamwK0lc5uYZTioPwIbgXxcI
         6LlK4+ORbTQzv0DzbEmVBMAi8Qq8pT9sWttRDgbSO7cObopmyOtrXHqo9yNrNl4z7RnF
         osIg+OGCwnzj5L2ZYUJv6UAoeep1fbxXAIzdghuZp7ATdX4EbAiBTSMhjs9MHHBiDfub
         r9Qznjayhy4W8V4joZi4wNay/0rScQOCaZA4UW9fjqkpLwyPMeWmEpYbXlA6tClNthgV
         jgDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=pqo6u0Q372vZ+XGCcMzJClvU/Q+ArWeyUXitRS9+k+E=;
        b=iTDgDJj0ayX+nUVA1MEvgNPM0N28QqjlBuppq9GRhop26n7KMpK2tfFCmAlCKIaCNE
         DngDJBWVhmgDzSkJCeETyhpAKSmq29jM+yQx5fw/IXa3F8h/96bJSFpVuzkUmAtN9lb6
         UI1VRpEVmr3Am24vkrBHeQEe15mgeIjNGWyVy0s95SuxzL8/SFHYBBGjXhoZDWcPtt7D
         XojPcFSyfcMUMJ8xhNxMnS73N3hJN21NSEE/JMuWo89TMr4sMRjJGGVvFSdRK15Q5/Pe
         9JfDEjyhYnmj/QVA+KpSYgYURgsE/LiqLYiPtjq/Wq8ENqGG1Tb+xjHYT+mpkJyKSsxh
         hpKQ==
X-Gm-Message-State: AOUpUlEhxYCccm+JHTW26UG6GUuqPpg/V235cFnVt2mAQJ6KG9wTjNy2
	rpvvoDerW6ppcdSaY1PflYNJJC4NyeztRheMMr7mDQ==
X-Google-Smtp-Source: AAOMgpe7Vzy26F0pVZ3gLhCF8Y4NK1nTeGUmu2jtR9cg6jiS5ufVzfwRO8c/jAUjwfyjvZFyLFfNeEWkfCY4u6+CUt8=
X-Received: by 2002:a6b:84c6:: with SMTP id o67-v6mr11918867ioi.119.1532907304531;
 Sun, 29 Jul 2018 16:35:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:e545:0:0:0:0:0 with HTTP; Sun, 29 Jul 2018 16:35:04
 -0700 (PDT)
In-Reply-To: <20180729223706.17994.96084@shiny-2.local>
References: <20180729223706.17994.96084@shiny-2.local>
From: William Pitcock <nenolod@gmail.com>
Date: Sun, 29 Jul 2018 18:35:04 -0500
Message-ID: <CAMau_dUaLsMJU=xvn-xXPu1t9vk3SyeyUpsoixDjH8Rbt1axFA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for nenolod@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000005c3d9305722bcbd6"

--0000000000005c3d9305722bcbd6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Sun, Jul 29, 2018 at 5:37 PM, <kurt@seifried.org> wrote:

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

--0000000000005c3d9305722bcbd6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br></div><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">On Sun, Jul 29, 2018 at 5:37 PM,  <span dir=3D"ltr">&lt;<=
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

--0000000000005c3d9305722bcbd6--
