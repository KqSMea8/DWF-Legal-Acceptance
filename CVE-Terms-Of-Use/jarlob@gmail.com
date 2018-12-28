Delivered-To: kurt@seifried.org
Received: by 2002:ac9:1c8c:0:0:0:0:0 with SMTP id l12-v6csp952765ocg;
        Fri, 28 Sep 2018 09:24:51 -0700 (PDT)
X-Received: by 2002:aed:3de5:: with SMTP id j34-v6mr10220863qtf.266.1538151891482;
        Fri, 28 Sep 2018 09:24:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538151891; cv=none;
        d=google.com; s=arc-20160816;
        b=lZSyZMsIServ8eZHE3obvsn8hpQNYFalOGEx689EmHwep3NhufXbqKr6eDNg9y0NSD
         /GnCDDKamrk50LF/d+SR517d/D24tHdlq4HwrSHKRzNsKfcG+vwv/MSbPU6HZA1jb3mc
         FKyxUp6VmsZiTKX8zJJJjSp4hSOXZqa6fxxxH4zLBEZ3AfNY5HrXaiBnyNAuYsGtBkJo
         /EBPlVdecFVyYeBgcOOxgx/unrtwkFEfCZGRxKFJTLvE1nN083wZFm5ypGief3RwskqI
         qe1n3mEEBNaSeIXPJthq9IsDDqPPqjxkIbxdri4EgsAGmRHPF3fP9Ir1gpBzMkwjtOB/
         WXOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=Ma7Qz9RCWwXCI/Qx3meXUQ8FZeVbkPukak8/ZY2gaZg=;
        b=BtNoB+AqDXgBJL2yeWDx5QWdCKGW3Qkq5EF1OCLa3A3YdXkLGoM1B5kubyyFyPfFEP
         B0N5v5HFk5VuvSYf/gTxMHW/KDVWYdB2CmcqciWlHnoyGX2/aDzxMMMVt8tNhmBSZSxC
         fqLpcVeTulZa9HZRVFaOCTC212rbtF5KC2EV3rdGmr0zyC+Xy6Vus8p5gI4DWWR4Clth
         TOUC/GWEpl/Ibx6SKZ4DxJ14zXo26ZkBdmkkMN6rSFdEjYIduShDpK+UoseplYsjnzUU
         hzW6bIJLyxyzudPrzN/WLLkn4RQ3mnDLpolASXMZ1+h+Ozh//mwqtHoDWljzwsE9vv7A
         cwIw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hXWd666G;
       spf=pass (google.com: domain of novaisas@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=novaisas@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <novaisas@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id t13-v6sor3280863qtc.15.2018.09.28.09.24.51
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 28 Sep 2018 09:24:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of novaisas@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hXWd666G;
       spf=pass (google.com: domain of novaisas@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=novaisas@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Ma7Qz9RCWwXCI/Qx3meXUQ8FZeVbkPukak8/ZY2gaZg=;
        b=hXWd666GJxStmPUBFJZLfW1eUxs/+q7RViGunJVA8yr4QaEr46/i6UDKJZ+QpvFX5J
         CQoUpsTgC973muLcLH0LmEd7UmG0qgzTr+WvqPXJ4tZtGYJ4MPeLcSr0DQUWlElKFxt0
         ZewC77xHZ0wZJZDsZHuROnSUgc+4kNVJDvmDCh4xU5qKzX261zA7gMRMpuTZ0z0fnSiE
         +PwhsP9PiXgSpA3B9h+H1W/vPEeZe9kXM2PRxB6yO9Cptl/JERrJlrMdL/AfZe6yLvLa
         6at5LbttUsAkV970AfMdlbJHLz+Z2QpCSpPfF/NNc7TXEfr3XGf5nyyLUwz1amq+PSas
         anRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Ma7Qz9RCWwXCI/Qx3meXUQ8FZeVbkPukak8/ZY2gaZg=;
        b=VCp+zHzH9+HN2f+TBDAIFhnbICEHOkHiZIl7aZgsnk2VcaooEbOoW8re9iKWSFtWDz
         XvsIwiSmzidVfyYIA3Er9GKOo395E6hERj+ssXwesnEsbWeL2rs76WWgEj4HnEHHFP9V
         RSe3dxqB4xW+3T8fkUzjTUrOhj5vDavpAdGyHvByY8kzHKqMrS/hEEFMPzoqL1iX065T
         KIL3ujeeNE6vL/btCoWYca0FDQjPN3A5mX6i8dX6p42N50HYs0GmWBLdAnmte1nQR3MM
         TyrqNL1XhPse2YeHzWHwozFu32aB5QNGSrv9/CF5mX+0UZMcFZelXs9qBRWBXaJuEVrg
         ELrA==
X-Gm-Message-State: ABuFfoioDPEEO3kkV7iOCQZ5ruXLRyj1v5L4keDG7ZPYPe5YcKcZ8ud9
	OwcwWjoSn01Ywh82Vwn77LweW+nfTVT+8f46qcW6mA==
X-Google-Smtp-Source: ACcGV63U/rCRr2llTvW2EK+oHcDi4ZVxGUaFVnBWq7jlwJ2bYByICP28lMLI2IgRFx0sRHBAXetps8bOE5mE/ibhKVQ=
X-Received: by 2002:ac8:1a13:: with SMTP id v19-v6mr10585906qtj.183.1538151890983;
 Fri, 28 Sep 2018 09:24:50 -0700 (PDT)
MIME-Version: 1.0
References: <20180928153015.22875.14195@shiny-2.local>
In-Reply-To: <20180928153015.22875.14195@shiny-2.local>
From: Yaroslav Lobachevski <jarlob@gmail.com>
Date: Fri, 28 Sep 2018 19:24:39 +0300
Message-ID: <CAGt6WoqSVKp7xAXTwm-Ag7qfy3r12mh9GvUsXsZEA87QfW7-qg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for jarlob@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000129d710576f0e501"

--000000000000129d710576f0e501
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I accept.

On Fri, Sep 28, 2018 at 6:30 PM <kurt@seifried.org> wrote:

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

--000000000000129d710576f0e501
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, I accept.=C2=A0</div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr">On Fri, Sep 28, 2018 at 6:30 PM &lt;<a href=3D"mailto:kurt@=
seifried.org">kurt@seifried.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">This is a confirmation email sent from CVE request form at <a=
 href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https=
://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assu=
ming you filled out the CVE form and want one, we can&#39;t use the data un=
til you accept the MITRE CVE Terms of Use). <br>
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
rget=3D"_blank">https://github.com/distributedweaknessfiling/DWF-Legal-Acce=
ptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc. <br>
<br>
</blockquote></div>

--000000000000129d710576f0e501--
