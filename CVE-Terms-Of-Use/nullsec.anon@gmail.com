Delivered-To: kurt@seifried.org
Received: by 10.176.3.133 with SMTP id 5csp1201630uau;
        Thu, 3 Aug 2017 11:51:52 -0700 (PDT)
X-Received: by 10.176.10.28 with SMTP id q28mr1921382uah.97.1501786312733;
        Thu, 03 Aug 2017 11:51:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1501786312; cv=none;
        d=google.com; s=arc-20160816;
        b=YYONr3y0B9EmCpIL2TmApTfQWRghEs+Y82Ba2yJ8g3A3W4V5gAq5zDCJIzGyctHJjd
         NQM42msOSG8FnBRaX5KU1bNxHaqfV8F8kqoByKS+vhyu1xpjUkSsVAjLt2KnntM44rln
         v9jytiVFzbwdztD0YjiN4vt/nyjUQ0fH4l55/7VJx2CD7p1CTfKq0urikKb0mQsBhcf4
         p0SKLxGZShznJBWKa8r8P6Rkni2EuWBpz9jSanfBtWKAMm+nbCbZ3v7c5KpaP1+FoRPI
         VWhHSjED+HWaEoti6jlCfC4dWWXt7NsGOLTU4n9WU4KZjVWtZECqPC97aWyNGM3eOVZ4
         7cpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=talRcFd7rYVvP76CLPmwoxvN3j6qgRtEWsZ/en4bmmg=;
        b=kuETmFLOPYTvvxAZ5g4G2SwwWgextUmjzeS+E/mxTaprKTb3erKgh/BQM+kJKOkNMS
         IMJEgReKJnUR7qWaqPeyQKl5GTMqXynOmN+xCAXFv4hRVwYv2DpXdvmrEg6dZ6FHHvDs
         0h0ke4kWBjnK3dv3RG0dCEBFiYdijDZu44EJyjyWicqX/L81JcCanPAZk8GqV3+/h0lr
         aKqeRihdd+Ino5JJ0HedSGg/y+P3LepeECc9erBby6ckM3RQALIvVw/lRwkVF70BBnz7
         kQ+2lxSeJ/nqiP9rrPSPaV18kWxL7VWLvY8h8qWfOxgi5qdHvdisZfzerX51d8miy+x7
         mXbA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.b=OoW3PQgX;
       spf=pass (google.com: domain of nullsec.anon@gmail.com designates 2607:f8b0:400c:c08::22a as permitted sender) smtp.mailfrom=nullsec.anon@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <nullsec.anon@gmail.com>
Received: from mail-ua0-x22a.google.com (mail-ua0-x22a.google.com. [2607:f8b0:400c:c08::22a])
        by mx.google.com with ESMTPS id k24si11231879vki.28.2017.08.03.11.51.52
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Aug 2017 11:51:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of nullsec.anon@gmail.com designates 2607:f8b0:400c:c08::22a as permitted sender) client-ip=2607:f8b0:400c:c08::22a;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.b=OoW3PQgX;
       spf=pass (google.com: domain of nullsec.anon@gmail.com designates 2607:f8b0:400c:c08::22a as permitted sender) smtp.mailfrom=nullsec.anon@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x22a.google.com with SMTP id d29so10113013uai.2
        for <kurt@seifried.org>; Thu, 03 Aug 2017 11:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=talRcFd7rYVvP76CLPmwoxvN3j6qgRtEWsZ/en4bmmg=;
        b=OoW3PQgXULxGL0rRezxz+Xpg5mreCnhDnnXpNW6I+agiMmg76f4JWtujtC95mLLqjr
         XWEW+NO7I/5zaPla8kCrSIr83hdE4a5JEbgQ/JEt1VfkbMuiEyE5mjfT0g9mXS847bf9
         D5oZHhxudkq+0iGwY/C9RR5ncPfValzJ1r+xskb5svdQ22ZbzPEFMFvPCm/QC00Nz79A
         kqPFGIk3cpCHhXeE4hHq4Bp+wYw3bFI3bbG7qZTmh1olrs8Z8aKFgsvtZ30XfNYV2Xvf
         iE2a6neigUctIHe6VSRO308aNehtMthK5fep7J1LvYOmOm1ovjWHhMLiWydW09S8jtPS
         NJWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=talRcFd7rYVvP76CLPmwoxvN3j6qgRtEWsZ/en4bmmg=;
        b=DNkXV6GfAsOIGAzeOeseU+XZg2ZKf/DvdA2RUkXNJt2yQziVvuYZPkcQrb9VkzPoX3
         OytBjdWHVrAht2GLaK8Qpu8/mSxuQV5Z1SFd+zSs9Jt8QWNp3Bq9wSNqsAhAnU/4NdT/
         NjO6MjeqAioMvQZgFMnfIrXZwOnCLbu3fMZk/4sJx4feFUt6ygvNOJepYP0ddKieAO9I
         eCaDiM0TSLMdCuo+dI1vq87ePQAR6KwfwO6FfqOv8TrKse1iBJ4cv3q/dNcALQ+eTZ6V
         yluhfUGVlPVZJJ3v00hS4xKt8pOqPN/9M7JEWmfkuqjrm3h3thsaj8ExoPuT2z6Hity0
         yDpw==
X-Gm-Message-State: AIVw110Uv4OSCtKD2vXxaq4BWcNhFAgbQxi2lURl6WrgLpLKB14jo9pZ
	jDcptsJS3sFke8zB57+h+19Ovdc3282M
X-Received: by 10.176.94.23 with SMTP id z23mr1537584uag.182.1501786312055;
 Thu, 03 Aug 2017 11:51:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.111.3 with HTTP; Thu, 3 Aug 2017 11:51:51 -0700 (PDT)
Received: by 10.103.111.3 with HTTP; Thu, 3 Aug 2017 11:51:51 -0700 (PDT)
In-Reply-To: <20170803181539.4892.95492@shiny-2.local>
References: <20170803181539.4892.95492@shiny-2.local>
From: Zach Gardner <nullsec.anon@gmail.com>
Date: Thu, 3 Aug 2017 14:51:51 -0400
Message-ID: <CAKNMjxC6FOhBtEL=rxxkDsEAYSELd2rQp7Eqom+z3osixvO2Hg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for nullsec.anon@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="f403043c3de8a8a2250555dddfb9"

--f403043c3de8a8a2250555dddfb9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I agree.

On Aug 3, 2017 2:15 PM, <kurt@seifried.org> wrote:

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

--f403043c3de8a8a2250555dddfb9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I agree.</div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Aug 3, 2017 2:15 PM,  &lt;<a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a>&gt; wrote:<br type=3D"attribution"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">This is a confirmation email sent from CVE request for=
m at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank=
">https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Us=
e (assuming you filled out the CVE form and want one, we can&#39;t use the =
data until you accept the MITRE CVE Terms of Use).<br>
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
</blockquote></div></div>

--f403043c3de8a8a2250555dddfb9--
