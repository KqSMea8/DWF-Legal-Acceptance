Delivered-To: kurt@seifried.org
Received: by 10.79.67.129 with SMTP id q123csp36875iva;
        Wed, 10 Jan 2018 20:21:59 -0800 (PST)
X-Received: by 10.176.20.239 with SMTP id f44mr21008156uae.119.1515644519366;
        Wed, 10 Jan 2018 20:21:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1515644519; cv=none;
        d=google.com; s=arc-20160816;
        b=L5IgbavZOmvJJm92m6FWoqzViizXZFx3B+YDJJ+2P3sETPUQHeqkkPky/wwEKwo9Jn
         OVEcJfHKwBHZvCo5+mvy96PNTJha1za6bULzHyFaw5h87R1qLlzcBRx8gTwKpjLxhucJ
         s8zz4FoEzidb4F2TFfwqrucOs17atI2mqefRURqivSBIRLBt1pGx2JNHFP1+QOGTZukf
         gZy+PZ7eqWlFZj5yFbrb6TlZYLhzmLXuuuDghqGoeIlGQuMIgg3GrCebCPGICdHeq5nG
         84x+t5Fecaj+V43sjXmxFuSam8XRgZNZGsOuhSmiwqIFNcLgGmkRDbkAK9ogYZR9N/Wi
         C/Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=myEkKZTLh1S452mtXbFz7C4C+KtcUrtumCHSpVZWdKs=;
        b=GchjNjobP+v2vBpYrOzjnNZDr3temxJ/bmB0xXWe8kdkxObLcfdvD5cYxs7vaaoG7m
         Y+fdTMkLfC6h7Dyubu4F9kb91W7N2PWQPJIBiPOppMsBWw4rNOAvBRPp2diycjFKH1x+
         TVmzvdih9/6oyYK7o2CKt279DXEphoTvmLp1Ld0jdzTT7oyzMBl3J8uahou8bbkwW0K6
         eofdbn8L8d+qJDaTYQnoONjAIoaYQ5oZWnPVV7tFmyIGCmHu3i4HWl9wSldISYkOLwaE
         xvYHMeQ7H3sNylRXtaMBj4FjqcgpQim7rigWwfJW8rAKB/JVQPrGzTasTCk+po8iz8Y6
         DzgA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pXQ7wsc3;
       spf=pass (google.com: domain of arcain.resurrect@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=arcain.resurrect@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <arcain.resurrect@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id o132sor7065244vkc.204.2018.01.10.20.21.58
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 10 Jan 2018 20:21:59 -0800 (PST)
Received-SPF: pass (google.com: domain of arcain.resurrect@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pXQ7wsc3;
       spf=pass (google.com: domain of arcain.resurrect@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=arcain.resurrect@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=myEkKZTLh1S452mtXbFz7C4C+KtcUrtumCHSpVZWdKs=;
        b=pXQ7wsc3PwiXsSgZCeDe96y2DLy/oshVOrMe6lO+B9wdzKH/gZxSZebWmzuv6RqkQC
         piiqb2/+cimd0MyuNNYd/4hj6TNNqdO/8xtYMlb2k2iqtgTmOM2nGkif/c8hDUoh6D6t
         eX1qGjvceew+Jmc/xK7liykwTrU+DOiNQ7qusoLO0bcas8HzM7Sc/O9CKVqxVrVvnZY+
         ujHH7UC4f5gqiH7j6XUV+4whlxgoSoL31911eM83RegA6wfrpdgoCQUosXBhlcKwAies
         LJph797KI3E1WRdqe9RDMpbZAzpS6YaFWbo76gQ7PA6eZ7d53Po37jLF1Tq2NcJPPral
         CR6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=myEkKZTLh1S452mtXbFz7C4C+KtcUrtumCHSpVZWdKs=;
        b=RSFH+W/QbafIVTDa51trUh/5B1NasVeEfcLFsTD1g0/S7xK/au+nUx1kMLgi/IcbBS
         9aulV+kCiLRYQDIyhfMccLMsDj7vySF235egtbe3oW39b4V9FQeLV5mAMVGDUME6r4Q7
         OAAo/9OTCA7wei2+/qHDwtxz7NynzS4F9sye1NuZtLz6rTqapZoyVquf9VsBOcv4hIi4
         FYNQNMapsoEPWN9Kgnec3fuGQTbfQjR0NAC7vrzq+ldHGwyptApPIJlhNVAUapjIqFI7
         G/lG5fXiUsO2WHxezwYrOKQBUDjJb87N8xbrq3ZuL0MExTDAuFHgAiiflmXuHBbDnkUO
         eLNQ==
X-Gm-Message-State: AKGB3mLSSSxkJ86S64tS0MOJWXPEbBLjLRXE8F2E674ljtOJsxXUfhPF
	1icyxLYAzDrKlROQnYbR7fR4R9UdwIXTu7c9hGLXYA==
X-Google-Smtp-Source: ACJfBov1PUwRm6EUxIfA0GTJl+Z39BGf27A4+kyFTDaMRJ25jXCR+QM4v+Q5+DeBBkELixkja8gDrAIGxksGm8Qm9P0=
X-Received: by 10.31.165.130 with SMTP id o124mr18668273vke.116.1515644518222;
 Wed, 10 Jan 2018 20:21:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.214.10 with HTTP; Wed, 10 Jan 2018 20:21:57 -0800 (PST)
Received: by 10.103.214.10 with HTTP; Wed, 10 Jan 2018 20:21:57 -0800 (PST)
In-Reply-To: <20180110191135.72975.29046@slab.local>
References: <20180110191135.72975.29046@slab.local>
From: =?UTF-8?B?44CC5b2x6b6Z?= <arcain.resurrect@gmail.com>
Date: Thu, 11 Jan 2018 12:21:57 +0800
Message-ID: <CAOe+=yARFi5BH-Ngn-6zn=6xC92qjtdGLZXtE43E+O_i0UgZ2Q@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for arcain.resurrect@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a114167741d526b0562787ded"

--001a114167741d526b0562787ded
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I accept.

On Jan 11, 2018 3:11 AM, <kurt@seifried.org> wrote:

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

--001a114167741d526b0562787ded
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Yes, I accept.=C2=A0</div><div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">On Jan 11, 2018 3:11 AM,  &lt;<a href=3D"mailto:=
kurt@seifried.org">kurt@seifried.org</a>&gt; wrote:<br type=3D"attribution"=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">This is a confirmation email sent from CVE =
request form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" targe=
t=3D"_blank">https://iwantacve.org/</a> asking you to accept the MITRE CVE =
Terms of Use (assuming you filled out the CVE form and want one, we can&#39=
;t use the data until you accept the MITRE CVE Terms of Use).<br>
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
</blockquote></div></div>

--001a114167741d526b0562787ded--
