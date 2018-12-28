Delivered-To: kurt@seifried.org
Received: by 10.176.3.133 with SMTP id 5csp442988uau;
        Sat, 5 Aug 2017 02:51:20 -0700 (PDT)
X-Received: by 10.200.55.129 with SMTP id d1mr7150460qtc.167.1501926680433;
        Sat, 05 Aug 2017 02:51:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1501926680; cv=none;
        d=google.com; s=arc-20160816;
        b=auY4DHlkPUZvtLcip99NnyNOSIOg7cq1dMM/o0wpSmHVy5Vr3kfFyXai5D3CdyHj5Y
         61eEYLKh5BGsKchJx/bMHtFgzgaxRl9KOOWKylKVn1kNB73F3RNhfcQT5cnXbuzJB55p
         u/wql/FtbXraP2XsRc6IXtJP0AppTp/8XivyqNHP6VFyz2PiEJBrBvqwhrYlldwNiOXI
         am86oXy7KbA0KTlHFV6+ZV3P9ITJa+E87nKhJzNJEBz+SbH4GUP3O0kecHHOCvmXQkko
         42b/XhXl6s3DdxzCSUu3HQsTZ6JpFWSFMk+jydL1fAepbSMN/JUZEyGEWQHrrCAcSHlI
         P/Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=chMsw/9h6aLc1xsCIyT9bFCY5+Fo0VBjeVxd7HhFeJE=;
        b=Ojfumr5j/XOpTEn2S0sQm6CPK7Be75dawkmgXrFzlWJIlAP5KrE5N3rjDRLHg+KxiF
         HuICL2cHY7sjgoJuLrKaN27lI+6kzFOu9BoQWOf/cCgToiGE77Ya5mwJTs4Hp9ccvm54
         cT412DUCF8uphJF30z3DEcyvAn6Hwya/DTt0akUgTAYW4bOCM72j3SxKPqtAS1UwdUol
         qFN8fE6uepjQNwfrJbGrbeBORk4q0jzBGIxrGPnyokzmEg6eu8d6h3RkhjTc6uqVE3Gx
         QElVzB8QtxgcsFUSPnblh2E6qntCQX18wKHgN0eNh3bGlgh3P33O1TgaEurkSDXPZ3gm
         FRMQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.b=AneITmoC;
       spf=pass (google.com: domain of jasonmagic.cisco@gmail.com designates 2607:f8b0:400d:c0d::22e as permitted sender) smtp.mailfrom=jasonmagic.cisco@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <jasonmagic.cisco@gmail.com>
Received: from mail-qt0-x22e.google.com (mail-qt0-x22e.google.com. [2607:f8b0:400d:c0d::22e])
        by mx.google.com with ESMTPS id s43si3068812qta.415.2017.08.05.02.51.20
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Aug 2017 02:51:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jasonmagic.cisco@gmail.com designates 2607:f8b0:400d:c0d::22e as permitted sender) client-ip=2607:f8b0:400d:c0d::22e;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.b=AneITmoC;
       spf=pass (google.com: domain of jasonmagic.cisco@gmail.com designates 2607:f8b0:400d:c0d::22e as permitted sender) smtp.mailfrom=jasonmagic.cisco@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x22e.google.com with SMTP id s6so20642614qtc.1
        for <kurt@seifried.org>; Sat, 05 Aug 2017 02:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=chMsw/9h6aLc1xsCIyT9bFCY5+Fo0VBjeVxd7HhFeJE=;
        b=AneITmoCX9DiviHBWfi9liiXDOLd6VHQAsIkrhVOeVTblEl+X+EtS2FMarK9Uxss0a
         nIOfawu9zogLaSDmbd1/0ZAsm/5u0hqzlQcTsjRnLEvdh+kjD6WUFI/7JQm2eNyQqlzl
         Jmesc7PoY8bzOduJzONH0aHxrNDqMHjhR8jcBS9ByLep0fvmexoQKybGMHB1Qj2AB/Q2
         CYhkRTtXf6tPNCdO3TPuJon8YgttKAnSTMGjV8/kE0fym9YWLR/PSAuFL2n0TTDmNV5Y
         PmGq3lmPRy+oZBs0PJCMj03r4ZsWhOc3ZNpYrTjMpsKxtO4WcCFvDr3SsQmJcBEf6bi+
         6bsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=chMsw/9h6aLc1xsCIyT9bFCY5+Fo0VBjeVxd7HhFeJE=;
        b=Ao3R6inAwlip+UvOurom7GugVp76lG/HE2NFLzFTr5NL6AeRiS0VwwKdcJZd8qOAFY
         d1n21EfmwrhTAVIaeEeFM1Z/LStctEG8ghws5Vq2D7jpl5+TVYKsyVTqytTJrV4O5Fts
         n/nB8OpsRiJ1z0nb5WhL5HHv7rwpkDgtWbGQV2renaBE24hMv049YuWjqaP2v2iu4Nll
         g8uBchUei1FtZu9HV+KE4bekQSuOrEY7hwFw1bIpM9Xjlt3UtC5fF+zMY2415BC1cFsE
         G08jxsqQDNeX1JPOCYfxwytTc9VS4iDdIZqbWZQ1w59DYOGViw0TaqDj4FlWuIFg7qdc
         Wjpw==
X-Gm-Message-State: AHYfb5hrMBhcXmPinqgxUScm38t3/WyZo0ayiUI7hKmmMLmBfv63uKqe
	MGMlsHVLllWC4+hlxHa575B8KHgdDw==
X-Received: by 10.237.33.68 with SMTP id 62mr7186347qtc.65.1501926679730; Sat,
 05 Aug 2017 02:51:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.151 with HTTP; Sat, 5 Aug 2017 02:51:19 -0700 (PDT)
In-Reply-To: <20170803181915.4892.46159@shiny-2.local>
References: <20170803181915.4892.46159@shiny-2.local>
From: Jason Magic <jasonmagic.cisco@gmail.com>
Date: Sat, 5 Aug 2017 19:51:19 +1000
Message-ID: <CAKtvtLwFWBjV3MiU_ZOM0LADgme0+pFjCktVrW-FpCJvkWTh0A@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for jasonmagic.cisco@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="94eb2c0cbca4395cf40555fe8eef"

--94eb2c0cbca4395cf40555fe8eef
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Fri, Aug 4, 2017 at 4:19 AM, <kurt@seifried.org> wrote:

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
> Database/blob/master/TermsOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--94eb2c0cbca4395cf40555fe8eef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept</div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On Fri, Aug 4, 2017 at 4:19 AM,  <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation emai=
l sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"n=
oreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to accep=
t the MITRE CVE Terms of Use (assuming you filled out the CVE form and want=
 one, we can&#39;t use the data until you accept the MITRE CVE Terms of Use=
).<br>
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
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" target=3D"_b=
lank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/b=
lob/master/<wbr>TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br></div>

--94eb2c0cbca4395cf40555fe8eef--
