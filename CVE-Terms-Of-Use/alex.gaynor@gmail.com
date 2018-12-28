Delivered-To: kurt@seifried.org
Received: by 10.79.79.71 with SMTP id d68csp944204ivb;
        Thu, 23 Nov 2017 07:29:53 -0800 (PST)
X-Received: by 10.157.47.34 with SMTP id h31mr7791816otb.362.1511450993485;
        Thu, 23 Nov 2017 07:29:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1511450993; cv=none;
        d=google.com; s=arc-20160816;
        b=ZSYoAhZhJ0/CWNIs1E6LmkN6DR1z1dzQn47jS/Sgaw4YLBtzBabxwMOmClXqPkngjp
         seAIxmcbN+CPZSJO+OIkQh70dqvIL6i7O5rogxjL7GHkEJJb0aZ11UXQVbJBeA7ue/Mv
         18++nJggUIyv4hkXkX89hAGPUcHcSG6M8NwyYUtvMNJWmuEJGVbx6NrJxZXSDR7Ej9FG
         OO3eHF0+xtpEjWd3G2NguQ1Pa6ovbNWGkwwrK+Is7Hlx6wfoNWu11h68+jeW7pE4NQU1
         8MKZY5lkzmYk8u/37qo3OJi53cZ7lS3tcvw00E6eUuBVubupptMwYxVehWswiROB6ZHu
         AhVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=HeW9D0wvtIyw7G+yVu5LNmZcuuIXFy04+fyFcM+sP8c=;
        b=rfZP2Bw0GLfZWc9hoa/4Wj0MLz0sl7WQgqMTpO/R/o6Zccjzk0vh4SRJVCvxOk76tx
         jn6G5UgXPYMzyqrLSu2ZbuOfx7LgyhMAAig/Gq/osn85kv06S+3PvmMykY75uXw2w3oD
         BCztc8KwMxZWB0KDA/JGv/QxtZbXdPc63JV7H8iMAHT1WzjhBwn9ybT3zs68MLuvEcUe
         xjKtioN3pXORo2TNwJ3nX6KgY2zIuS4brU/FkPF5OAfLWmgShZ7AYAnZJfpVdkPr1wP5
         3CwoYpn7oM8fwomJdI3TUWdrLoEkoPYNa0o1T1h4sNGyb/JhiDo/0x6Sqov45+DJAbKe
         cRXA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R4e1FWB3;
       spf=pass (google.com: domain of alex.gaynor@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=alex.gaynor@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <alex.gaynor@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id j135sor6238046oih.37.2017.11.23.07.29.53
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 23 Nov 2017 07:29:53 -0800 (PST)
Received-SPF: pass (google.com: domain of alex.gaynor@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R4e1FWB3;
       spf=pass (google.com: domain of alex.gaynor@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=alex.gaynor@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=HeW9D0wvtIyw7G+yVu5LNmZcuuIXFy04+fyFcM+sP8c=;
        b=R4e1FWB3xwFCyhEgEaZe2xOuVb3RPh/SGFyx6fSiTbIL7uanwPNtdKtLBQPDYWHRj3
         /kjoZUQBFRhg7glG/e2+hAoSk4rqvNXgBym734sgaqfE4Sjsr4Sc4vHROfXEn6WRgfHV
         QSX1frPDFuknm4vjlKLSqHx8jrpnLElqxLqd8s8bdDiScK6JwifBvgW6QMANFwhMTAFy
         KgG8xmUjh3haCOfNIOO4cl2YRBD8zAEUyQqPGKllEQyT076PF4/zRBYjyiQf4qVKnY+s
         KMZOW74nZSvWBZoqnN22Xk/SVU9dJzSgp0mHBqXNjuql1r2vY9+Z8PaRIgRGOmU6Mx58
         a2tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=HeW9D0wvtIyw7G+yVu5LNmZcuuIXFy04+fyFcM+sP8c=;
        b=V3UmiiYeqmFzGotEV4sPGEcwfDU0SIgBis4wcLJ1nEkIlq1fBA4mopBMgER5lPleO5
         U+aMYJ2ndTt0EH9MTFI0HSHOSvYJrozktzYYR0y93vN0EsrwEEOBJJKSJk8Q/aV8oceA
         L4yLPJQsk1WrTRuiogP/BV0RV/QSe/yzwJViGIAiyN1h27xMCgSfl/6zBTuCkkrNy88g
         ryszM9F4gE0+X5T9YkUXnLEL45Xxe/ssoilZoaiwa+QAJw4wU8f1zvfVyaxDij+q4v7V
         EIVWEB0Z8v9MqIY6bK7Dy+2viFipWxEth4wJ0IVa3ZPhIoM+mPABfmG+dCj6o56ynJ+a
         7zNg==
X-Gm-Message-State: AJaThX5waxD8/RTqXL5vr5FsFzx6mFa0KwC7W44h43vZIVMiqCnuBall
	YoEEf3t+lqKP+K3gw6I8H8jmgUwWTRtZSa6Zrh+9FQ==
X-Google-Smtp-Source: AGs4zMb2jcxk1qF4l0yswebbya1WCO8Kq+beZrVhiTN263JxQSI1xShhbSjsYz/UeJJUYcgFZ6IXzLYw0aJ6kvRqFL0=
X-Received: by 10.202.230.2 with SMTP id d2mr15329145oih.229.1511450992961;
 Thu, 23 Nov 2017 07:29:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.168.68.15 with HTTP; Thu, 23 Nov 2017 07:29:52 -0800 (PST)
In-Reply-To: <20171123152714.7013.81306@slab.local>
References: <20171123152714.7013.81306@slab.local>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Thu, 23 Nov 2017 09:29:52 -0600
Message-ID: <CAFRnB2UAZ7uKiwWSRtTAWG4OitfVMX1sUavSixjtVsF2AJO12Q@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for alex.gaynor@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a1141baba87eeb0055ea81b9b"

--001a1141baba87eeb0055ea81b9b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, Nov 23, 2017 at 9:27 AM, <kurt@seifried.org> wrote:

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


--=20
"I disapprove of what you say, but I will defend to the death your right to
say it." -- Evelyn Beatrice Hall (summarizing Voltaire)
"The people's good is the highest law." -- Cicero
GPG Key fingerprint: D1B3 ADC0 E023 8CA6

--001a1141baba87eeb0055ea81b9b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept</div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On Thu, Nov 23, 2017 at 9:27 AM,  <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation ema=
il sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"=
noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to acce=
pt the MITRE CVE Terms of Use (assuming you filled out the CVE form and wan=
t one, we can&#39;t use the data until you accept the MITRE CVE Terms of Us=
e).<br>
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
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>=
Legal-Acceptance/blob/master/<wbr>Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr">&quot;I disapprove of what you say, but I will defend t=
o the death your right to say it.&quot; -- Evelyn Beatrice Hall (summarizin=
g Voltaire)<br>&quot;The people&#39;s good is the highest law.&quot; -- Cic=
ero</div><div dir=3D"ltr">GPG Key fingerprint:=C2=A0D1B3 ADC0 E023 8CA6<br>=
<div><br></div></div></div></div></div>
</div>

--001a1141baba87eeb0055ea81b9b--
