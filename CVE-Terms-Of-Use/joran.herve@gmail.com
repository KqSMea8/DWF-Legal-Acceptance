Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp2163520otd;
        Sun, 2 Sep 2018 22:24:35 -0700 (PDT)
X-Received: by 2002:a19:5154:: with SMTP id f81-v6mr17372085lfb.55.1535952275048;
        Sun, 02 Sep 2018 22:24:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1535952275; cv=none;
        d=google.com; s=arc-20160816;
        b=eejnsoGQosFJGREdelpMbh7K2yWfbg7oR0wMBfV0oiSPgvcR009/Xt1rHPEDjNiY+n
         Sm9S/+QwD7ZDkqm4APQbA0E80xgnbeJEgvGuoDb4/6GWDKye/Hdnp28LOT9DDikhV2D7
         69l7aSGqG/M9vUYxSNagjScI4JlMLZ7ekvopfpgGEeBP7VJf/sqxOMHYEWxWTkqiTKkm
         apr9RYaaUNsVjgU4CG7t5HPLfEdhzoka/fFq1CnJhSMNT9RPcODRgPfEUbTh/tofxWlI
         S1typJ9OQ9lbXTYQyN8H6vH53hn6/taw3qQpWV120Y441XLuvlm+3JPEfyu58CoYJYJg
         ZBcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=SZO24gK5rKeXh2EXFjzYJXZOxIuOj1iCWioMBQXk8Qw=;
        b=mtpU9QUc9hV5opx3z/UIZ5X7HFCLsvibvKCcuyIqKKzQwYB3qyUkMQT/VAlcXS7ntz
         q8U/aBEsjiWT7VWgvKqFjuZ3UDMofcRcUbHkMp9yrULHW8yOswz1Y73v/+Rb7nb9IW/l
         G6Z9KCVO4NkXYVT1AzD3vq1iSIAR8K/ODimpWvwoIPUDZDf4FgfuWJTYavb+o7kN4Lqf
         4kr6bdwy6oqLDLvZoaGM4Haxa5FOkPaRObBx5I2xzvcu2DM56ObOeqpp6Gojzkck5hFH
         PjgO5RHRwb8ppTNbnJ5xhG7cMpFbsk+XNa7OVgycnrY+X+cDbE+IEVrhBCqQgoaO8Mfd
         s4yQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Y4/Pm01t";
       spf=pass (google.com: domain of joran.herve@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=joran.herve@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <joran.herve@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a77-v6sor3640437lfe.33.2018.09.02.22.24.34
        for <kurt@seifried.org>
        (Google Transport Security);
        Sun, 02 Sep 2018 22:24:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of joran.herve@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Y4/Pm01t";
       spf=pass (google.com: domain of joran.herve@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=joran.herve@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=SZO24gK5rKeXh2EXFjzYJXZOxIuOj1iCWioMBQXk8Qw=;
        b=Y4/Pm01tXmM36A8z5QwltGZ/YspNtqa4rj/30T0yZyQcuql9pZNUPD1+SLNuApixjA
         pPj+5jZTYcrfkPOZz20jyGXznxHYkdaIil7rp28BmX0uLGq4ENNcsy4Mb+JZ13fin/Sv
         GSn7PBCE8ITl2/oDkOuGehOx6JlXa2Kfimx9snmMwM71MXn8hx9d7uVcYiXaIzLw7XRA
         8ZIZWV6xgFGercIRCPmvLo0lrfbX2LKpChraN4q2rN/75DTE47RwtJaHUAcjSxLZW2RK
         xwoOr0didgolLODEjiQERsHGVp4+4sM03WHWWVA0dmwe/dxvUgW6Q0eEh1FTxVpVNL3X
         QQLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=SZO24gK5rKeXh2EXFjzYJXZOxIuOj1iCWioMBQXk8Qw=;
        b=MhvHolcWqV4F3eLv7Z3Ra30dbtIq4fAIylHNaWOuXNo+lAKcJS7DFmYU/q6bj/YeLq
         g49Yu8NNAHYcXFdp2VK1hNC1O540uva6YWbWonINyKxgpHpIsg47xwi1fYb0ny+yuTUL
         uJvVvjhBz5yoLis9ucFKV9B3mA5qyhDbQY/9ydVs0UKDJOdK8E30ffYWrFgY4IbGbnY8
         FmO96wDN1s+BnQefsvD8y78mwaYDInMPl4CQFxJo5oqcbTvcsGaDeJcGXJGHJuN/4ees
         jEYRZzuGh9UNIABKI0WaRtqGKxyWrowJt0JDQJ3uiTWZjZ/nJ2ikIL+kazFQvmNPGGqa
         6EUQ==
X-Gm-Message-State: APzg51Dj6qRZGFDA2gJx01dmB/GPludTBSXK4UbkifwaD2Y84x/UL72p
	5ma9AFQTyCNFW5y1lxhHuN1d+S8TnLv5tGVBF0YZxQ==
X-Google-Smtp-Source: ANB0VdY+sg9w0cQjbkjTJbbMhrzHwJHvngH/u8vgc45JU9H5Y204zhzIvNnyLhaB7x57tJ8SP/NeY+Qt9ApuJjEhsfQ=
X-Received: by 2002:a19:9710:: with SMTP id z16-v6mr17595540lfd.17.1535952274258;
 Sun, 02 Sep 2018 22:24:34 -0700 (PDT)
MIME-Version: 1.0
References: <20180903005958.6662.85287@shiny-2.local>
In-Reply-To: <20180903005958.6662.85287@shiny-2.local>
From: Herve Hervee <joran.herve@gmail.com>
Date: Mon, 3 Sep 2018 07:24:25 +0200
Message-ID: <CADL+A=KBfMxHpx+eRUbNbp_emeM8+k8RQ8doABT7EHTWDJBSQQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for joran.herve@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000b3026f0574f0c12e"

--000000000000b3026f0574f0c12e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept.

Le lun. 3 sept. 2018 =C3=A0 03:00, <kurt@seifried.org> a =C3=A9crit :

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

--000000000000b3026f0574f0c12e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>I accept.=C2=A0<br><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr">Le lun. 3 sept. 2018 =C3=A0 03:00,  &lt;<a href=3D"mailto:ku=
rt@seifried.org">kurt@seifried.org</a>&gt; a =C3=A9crit=C2=A0:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">This is a confirmation email sent from CVE requ=
est form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer noreferrer=
" target=3D"_blank">https://iwantacve.org/</a> asking you to accept the MIT=
RE CVE Terms of Use (assuming you filled out the CVE form and want one, we =
can&#39;t use the data until you accept the MITRE CVE Terms of Use). <br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github.com/dis=
tributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br=
>
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
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer nor=
eferrer" target=3D"_blank">https://github.com/distributedweaknessfiling/DWF=
-Legal-Acceptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank" rel=3D"noreferrer">kurt@seifried.org</a> manually=
 with your question/concerns/etc. <br>
<br>
</blockquote></div></div></div>

--000000000000b3026f0574f0c12e--
