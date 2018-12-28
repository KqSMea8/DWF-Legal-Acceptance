Delivered-To: kurt@seifried.org
Received: by 2002:a4f:b47:0:0:0:0:0 with SMTP id 68-v6csp1399566ivl;
        Sat, 26 May 2018 22:16:30 -0700 (PDT)
X-Received: by 2002:ab0:195f:: with SMTP id u31-v6mr5388470uag.123.1527398190581;
        Sat, 26 May 2018 22:16:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1527398190; cv=none;
        d=google.com; s=arc-20160816;
        b=sYALI+jrG/WrdYKVgcJjYYWu9go7ksRIE+XKmL4wTmMsNVscfYDlPUspsh9gVUDOYr
         MRd1MfsJb3PbwqAXhgffeu0JEbciiu8viUryyvdQv1p33/i6XGOg407mr7NRyBTZ5+qX
         BiRkI2jIq94WhsxfiYGhS/ft2Wbgr6WNVBgA8YWhQm8DQCNS7pTQgH3wiggp1blCPSbT
         pmHaXpe+HnT1xr8fYqUEIyFtqCg+aD4D7EKbFhFzCIliyutrF4/lJHKLOOIwrzuRx060
         taL4XZqeGcw2uEIqNsbyewfUX3h/XKiPYx76yXfs0tW/lO7w/5AG+AhOmP/Q5EbA91ZZ
         gEfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=3g5hQe4gP1XOHp4HjFPGKxMb/MgOV7Ekutw5Y0Tysh0=;
        b=Bru+sKr5CFabXMnPN7M2mphHVFZjs085ylSA0Xw9DOPTJOkqpoVAgAswg4FatHH8uI
         6aLeYo/0knvIcySP/ak90kSOd5RhTKzqsTI49SXS5I6I09IRYhUH2Vdhb1JCmXGUzaim
         v2mCYpWNiceG2ilQWFP3hO+sBBCLbZfAJDx9JJEyfi88dF34fkIorQK2KrxcHPSlog2R
         9sNmawyAlBViV0x1oCChZiTqRpe8fMieDgEpFEsQwIGtRslw/w0qRIm5EHZzQwKeglFZ
         1F35RzmrxDM/VgEGwFKBOzOPAwIdExNENR9LnESFiLHAFkl4n/fmD2//0tlyfb6t3BTg
         p3Xw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CyapKcAh;
       spf=pass (google.com: domain of d.naumenko.a@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=d.naumenko.a@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <d.naumenko.a@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id r25-v6sor12153427uaa.283.2018.05.26.22.16.30
        for <kurt@seifried.org>
        (Google Transport Security);
        Sat, 26 May 2018 22:16:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of d.naumenko.a@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CyapKcAh;
       spf=pass (google.com: domain of d.naumenko.a@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=d.naumenko.a@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=3g5hQe4gP1XOHp4HjFPGKxMb/MgOV7Ekutw5Y0Tysh0=;
        b=CyapKcAheA6ahFpGNPXMyTr0tT8t2bRT46re4vMm4nlfXvO8M+OHXIr88AoqYG9zVB
         +zMOAl2PhE631wFZsqjCPuXHmcm9X9s59yibrF4Bty1Fyu8qOqqF4SZGqdfvZj7vTFlF
         H3CwrBh7ndIosTJCIMBrP8cUk3D2VB0dGDOtBXFCExJD0qJ1ctgZYhK4BuMKnzzXz6aA
         jcD9CfLuiSbUvntQdIJvwyZFO7CZ2hkxFE0eXY8plwEeo5gltOavDnW+JckpBofCJbjs
         0oHGhPwk5UBszpvSIHmF43BCyP+IKPSDXeTAlETIxivo61hM3aVbECEQmAPtcL3FJlIV
         dEjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=3g5hQe4gP1XOHp4HjFPGKxMb/MgOV7Ekutw5Y0Tysh0=;
        b=Ysjkzr4PsVbv2knnaOEWGWpRNWCVBzvTyYC0D+zhsRMaLDq4AQ4FgSt6YOnmAonFiv
         nWrHBW7/uU3atXToqznW/gfHv5lAUdXTz53kfQ7ZErhSDigyUohjwgpIYEXNKKaIPVuh
         Yvzxar32s/hXzHCAzCxDeJmQfwdpfbOc2hgxoTnJEBHDfkxHuVKrS1lPxN/iIrveq2NC
         1Exe1AowQj9AK4k4va15ffwwKGfdIKs45IPyKh10fpTT7BYM5E/uBUMbdiK5JOqJBwna
         H+NCH20m2NfCXrFZIoiMAvyOhcpWCvsN19tEZ6YzCGl9oXBGfk1tvMWAwymVEF/8H+Fk
         rsDg==
X-Gm-Message-State: ALKqPwfJfVow4IvLKonfQuECzKUL+lIOtiYg0PTB5Dw1OBFFk5SyRUKz
	qhk0uj/ApgUUpjXZv5XSlIxnZhU+bFf8yoE34ZshOw==
X-Google-Smtp-Source: AB8JxZoduWnnTm1MWABRhnXT83DoEFbNxwx3WN7w39f1hDrosPfB5B/1rlW9XfyKcWYWsfR63xHOB5TEpC7GqISRI2U=
X-Received: by 2002:a9f:39d9:: with SMTP id p25-v6mr5501061uag.72.1527398189908;
 Sat, 26 May 2018 22:16:29 -0700 (PDT)
MIME-Version: 1.0
References: <20180527030957.8054.41058@shiny-2.local>
In-Reply-To: <20180527030957.8054.41058@shiny-2.local>
From: =?UTF-8?B?0JTQvNC40YLRgNC40Lkg0J3QsNGD0LzQtdC90LrQvg==?= <d.naumenko.a@gmail.com>
Date: Sun, 27 May 2018 08:16:19 +0300
Message-ID: <CAA_BP-jbGZMUomk5dU__Zjwtn3nT13E8cZNPsB3HT_4c04p0uw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for d.naumenko.a@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000008a4d4e056d291ad0"

--0000000000008a4d4e056d291ad0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

=D0=B2=D1=81, 27 =D0=BC=D0=B0=D1=8F 2018 =D0=B3. =D0=B2 6:09, <kurt@seifrie=
d.org>:

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
> --
=D0=A1 =D1=83=D0=B2=D0=B0=D0=B6=D0=B5=D0=BD=D0=B8=D0=B5=D0=BC,
=D0=94=D0=BC=D0=B8=D1=82=D1=80=D0=B8=D0=B9 =D0=9D=D0=B0=D1=83=D0=BC=D0=B5=
=D0=BD=D0=BA=D0=BE

--0000000000008a4d4e056d291ad0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">I accept</div><br><div class=3D"gmail_quote"><div>=
=D0=B2=D1=81, 27 =D0=BC=D0=B0=D1=8F 2018 =D0=B3. =D0=B2 6:09, &lt;<a href=
=3D"mailto:kurt@seifried.org">kurt@seifried.org</a>&gt;:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">This is a confirmation email sent from CVE request fo=
rm at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blan=
k">https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of U=
se (assuming you filled out the CVE form and want one, we can&#39;t use the=
 data until you accept the MITRE CVE Terms of Use). <br>
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
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature">=D0=A1 =D1=83=D0=B2=D0=B0=D0=B6=D0=B5=D0=
=BD=D0=B8=D0=B5=D0=BC,<div>=D0=94=D0=BC=D0=B8=D1=82=D1=80=D0=B8=D0=B9 =D0=
=9D=D0=B0=D1=83=D0=BC=D0=B5=D0=BD=D0=BA=D0=BE</div></div>

--0000000000008a4d4e056d291ad0--
