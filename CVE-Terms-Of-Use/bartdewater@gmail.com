Delivered-To: kurt@seifried.org
Received: by 2002:a4f:b47:0:0:0:0:0 with SMTP id 68-v6csp11713423ivl;
        Sun, 20 May 2018 06:06:11 -0700 (PDT)
X-Received: by 2002:a24:7f0d:: with SMTP id r13-v6mr14590021itc.39.1526821571924;
        Sun, 20 May 2018 06:06:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1526821571; cv=none;
        d=google.com; s=arc-20160816;
        b=NhWXEj1ct1y3se1eGlQNLb0jfXGs0m4YF78oOrWdPDhHnikdOOlN+1YMcxqj11+9y2
         3jI4oMYR6IIpDwu0F4Skge/XTvJfaLR/SuRWpLUpUVh2mGsK8r8/XaPTR8g/ZGE9epLz
         Dm6fMW0E9iD/Stbxc4iGzleZqT8pD2BIGIPsXkXkhOUpbwJTaR8NdWC+IKw3c4eZr2Xt
         oLnOrIoW2e7MrSgrSK6fJfYDDkecgT5wndFVaYsklUhKpf5WSDVzAaiwTwrMQ9YVWRQM
         QCjYOqy7nthDX3GrtJP3fDbdq9KeBG9xctxzh7LbS/bpk04/pow1ST87YmwNUtxOkMu3
         oacw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=llLQ9r3cUTkYSNmPtjhN2KQpKlZWxKPTOFlrdqJmLwY=;
        b=dX3AUIaNKp/1h+9LtW1O7/nBehlWIf7lFh0I/Nm6kwdHU3kwqLk8+HjYCGZYrhKNZB
         sK6SaiLBuN1PKuYujviq0iBjLDbIt4tgpD0UFuzclTLGs3sJh7fZrnHwU5OSRHQEJFo8
         Bl2ecp2gH3ls385Ny20NZGv3rGZs5k+wy1fGnRk5Bo0EfmX3IGBbJhVJF497vxDMSn7a
         GVu9siKNtNQiL+LByj7ue9cjtEoDtuMr/CenskMZ5gi5PQfFXXQ7cmQFUkxe1pdSoq2k
         7wTKNugDhIQRP7wRXdyGlpwU6UsV/wuBiDimuHq7OjTfYrI4Iv0LhM1BAVQELwwd54xL
         BzoA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tKOV2bIZ;
       spf=pass (google.com: domain of bartdewater@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bartdewater@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bartdewater@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id e68-v6sor5985165iof.359.2018.05.20.06.06.11
        for <kurt@seifried.org>
        (Google Transport Security);
        Sun, 20 May 2018 06:06:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of bartdewater@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tKOV2bIZ;
       spf=pass (google.com: domain of bartdewater@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bartdewater@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=llLQ9r3cUTkYSNmPtjhN2KQpKlZWxKPTOFlrdqJmLwY=;
        b=tKOV2bIZuorBlXLHfhGLuAaqwzZCeCJf6XcnbPRvCsVMqUnOJMTUfJVrC4o9FPZitX
         MUr56fBfINQOhUMWQCO+uuqxqnrnacrxgvoAkH2Aq/V20NJV4pqsAk9Mo+qi+DtVgbBj
         3R6wJ8FvMS9Z9l9KcLxO7uNYDpeELFuCMt9JvrI1SRv0/ljSjutj3lIidjGDrl0FSqnI
         tvYTGOn4qkdUFqY5Ks1S9Ap8rf71WUNsw4CNjygEtDrSYXAg+Xi6oEDQtMXsj8S+N5vW
         tDYRitNjZ6CqJ5COxMxqxH27ZHKhAfyOerxhziRs0dwj4hD3+GYEB1xARynTfNDhLncQ
         FeKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=llLQ9r3cUTkYSNmPtjhN2KQpKlZWxKPTOFlrdqJmLwY=;
        b=eLNZ5wz1J6WsB9s9tLdajSTvaIdB9tjqogxgSuTMHQme4YaYgxupDWuwZv4yzpekSP
         E5yzLeHy0pL8zPdKaVAoac8Pm+rXDQ8sSaMiMlSjzga3h3MH4vlNJk+tBvwFvmpaiDYx
         Py8w4eMnoxm2DIGhEBMPui/Cj4H49bzf1Jeh9tKanzDpD1zXDOjZxtRb7GYn7Q3WlUFr
         VJpsY0q1GiSYgN+LFoQmLtbYiYDKeQENcyEc88gSwRKYdnDi19s+V3VXEcSQBIQrjsxE
         geIX2gwEHqqPhVBeK2yvdd50THxgfIHiXIVOhF94pN6a1xjI9cYt6YDRMVyUNdr7DKN2
         WvAA==
X-Gm-Message-State: ALKqPwfKKV+08TVe56Z45auOGchUCclTvuH53Yz89eSMzyROmIYk0Fea
	LGo+gSQDUNpvCdjlR1iBRPfWX0zPGpOB+1vgwUNLDg==
X-Google-Smtp-Source: AB8JxZolbBKPvXSz9OujuMxc0mtGBd58rXOU1pmb9aj1pPItRtkiZszOtPqlA7p+W5DBvkrxgBBRM5r4RKjebbMOcEI=
X-Received: by 2002:a6b:a6d3:: with SMTP id p202-v6mr16707201ioe.144.1526821571202;
 Sun, 20 May 2018 06:06:11 -0700 (PDT)
MIME-Version: 1.0
References: <20180517165405.91066.5820@slab.local>
In-Reply-To: <20180517165405.91066.5820@slab.local>
From: Bart de Water <bartdewater@gmail.com>
Date: Sun, 20 May 2018 15:05:41 +0200
Message-ID: <CAEVxJ+aHjizbwEQJ7KQfUCk-FnvF4KDZb78_nyOh0WcvX=to0g@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for bartdewater@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000631341056ca2d981"

--000000000000631341056ca2d981
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, 17 May 2018 at 12:54 <kurt@seifried.org> wrote:

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
> This data cannot be removed from the Internet, or from our git repo. If
> you are concerned about your personal information (in the form of your
> email address and any attached information you include like your name)
> please do not submit it, setup an email address and use that. I cannot
> comply with GDPR requests to remove your information due to the nature of
> git, and my inability to confirm if you are a european or not, so if you
> don't want it in there, don't reply with "I accept".
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

--000000000000631341056ca2d981
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(33,33,33)">I accept</span><br><br=
><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, 17 May 2018 at 12:54 &=
lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">This is a confirmation email sent fro=
m CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer"=
 target=3D"_blank">https://iwantacve.org/</a> asking you to accept the MITR=
E CVE Terms of Use (assuming you filled out the CVE form and want one, we c=
an&#39;t use the data until you accept the MITRE CVE Terms of Use). <br>
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
This data cannot be removed from the Internet, or from our git repo. If you=
 are concerned about your personal information (in the form of your email a=
ddress and any attached information you include like your name) please do n=
ot submit it, setup an email address and use that. I cannot comply with GDP=
R requests to remove your information due to the nature of git, and my inab=
ility to confirm if you are a european or not, so if you don&#39;t want it =
in there, don&#39;t reply with &quot;I accept&quot;. <br>
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
</blockquote></div></div>

--000000000000631341056ca2d981--
