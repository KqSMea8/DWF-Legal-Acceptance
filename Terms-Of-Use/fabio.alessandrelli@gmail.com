Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp2598463otd;
        Thu, 2 Aug 2018 13:56:50 -0700 (PDT)
X-Received: by 2002:a24:fdc8:: with SMTP id m191-v6mr4450230ith.10.1533243410402;
        Thu, 02 Aug 2018 13:56:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1533243410; cv=none;
        d=google.com; s=arc-20160816;
        b=0OElAVnN35zUUwhQhTRDrL8yvPgGuAqXlfxhB8tS543uL8l1wm97hM1F0elLwMz9cJ
         L9VgXtPsHEUjDMxdTGzC8b0+Y5IVzRqJlgqMde2hYxBJLtY29PwSMl56zHqEqiq8W8Yb
         YM6ss+PC5jIiGDBZ6ge5/i9ZkNgQ8LAS9+/omPWAaRwwdSGlXtYkwK8g4E0PAx9Uijkv
         ASybCfze+D+mdeiFi36Yjm6O9PMPrBbuTRsvmG/3D/Lql3AigV/+VFnMrj7sF/ZXuDXx
         orYQrXBbxEtCPta/z/AhqIWtBDIcv4Kdf1+1mw6iyNxri8J5scsAQIssgoQkVMxVNUh+
         m/iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=GCgUdSU8wCRz/H06MhVneAPkRPwZJD6pNqF7RxoWPJU=;
        b=I0X+xPtC6t3gRfdvgmrCv52jGMwPy/vhkzLPJAYkoYlvxPamku2jqPstRUELN+5jrx
         T2mnJHmKV+J43JzB6KLJdBaHNKb2UnoYlbv/qdArNCmVxgls9M48kB74+eKGzcL/2RYk
         /u9kNTQ45NWUCdwKSjAGrXYeivVLTXvGOANbbEouBcGHZyrj5/wQ2KYT/RxJS9LwqTnY
         vcasJz1nbAcTTvCZRFoBS4t1LmpsRd4COaGvHbPor+P2ACGie+fz7eVeRIQhWKiRO9v9
         SdzjuhqrJKN0ZxuGB7pWAtOhQ3jqauEx22Db5wrkSkOZ8AWrGE7ce2ENmMeYCjsDA/Go
         qSBw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GkKNx9dL;
       spf=pass (google.com: domain of fabio.alessandrelli@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=fabio.alessandrelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fabio.alessandrelli@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id o21-v6sor1133834jam.73.2018.08.02.13.56.50
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 02 Aug 2018 13:56:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of fabio.alessandrelli@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GkKNx9dL;
       spf=pass (google.com: domain of fabio.alessandrelli@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=fabio.alessandrelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=GCgUdSU8wCRz/H06MhVneAPkRPwZJD6pNqF7RxoWPJU=;
        b=GkKNx9dLaq9INMarObdqHOYP/RiBHVdT20qUwc/uX14c2EfaEowJJ6yaLXS2m0duyK
         YMGa5y6vecFBlVQfGcXI/hbbbUhhcRliEnc7SHYopU28zMqrkGNrOdIEtZC9b6EUAVQ5
         48gY2bd+heT4k7peQ7DcEb7h15qOTJZE/58+OJqyXTj24+C0vrtrq665FDdXXogfJynC
         nDCZcvL09Plk9/O++TgK6ezsFKRCbsT02sjkiYzSig3Io6DrFCEL8jpZZQ9bb6Ca3Y0T
         4V0gbt330sSi8+EhGp70v9biT3rp1JUoOyQyjvCHhcDlf+GGwXYx9Ml8fuN90dpd4goR
         dlCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=GCgUdSU8wCRz/H06MhVneAPkRPwZJD6pNqF7RxoWPJU=;
        b=bUgzrvZpltQXkX1SZ6xt8eYiRxP04JLYIsAJ/i27tdjNdV3+9gbipjWyOcvejBEa1P
         T16KnA1hwGu2nXFOoFZFfNVdRaaTP+qLIyvlY/2RsWL0OLKRB40H0eGMi5qU9NPp6DTI
         1KMJKvaa3t7icnYGZb/xM3rIpW29CeOmc4DGsOTo8d6e5vE/FdOEFh4MkeyQ0hh3T6Hs
         qz+ZHxrHmOKDmDNxZnQADy5QfUSgktV7MQG01BVHGJU4i35GoyqZF72FnZ46MZC5mnxz
         aUR+elzVg8nFXWbNd8zfrEhGz/HcTrlcXmDC+aRKt8v7rMSzPIOI2ZpW2w1F9ahrAylj
         xM2w==
X-Gm-Message-State: AOUpUlFCRqkqso5u3Ub3caSjU8A55Tc2WuJWSx5ibLixf+KrUgY2Fsvy
	PdpsZ7YhRh62zX083ct7/1UQY0UbvyHPv7a6m4DHNQ==
X-Google-Smtp-Source: AAOMgpfVLFnaJ2VD3pUjuw4qWAyFdGirxEm6FDkp9tbMJ663JbsGPDzxAoE/0LJvqpfliclfiB60riCGigJiMQtoEWE=
X-Received: by 2002:a02:b4a4:: with SMTP id k33-v6mr1049084jaj.53.1533243409738;
 Thu, 02 Aug 2018 13:56:49 -0700 (PDT)
MIME-Version: 1.0
References: <20180802205445.25315.73916@shiny-2.local>
In-Reply-To: <20180802205445.25315.73916@shiny-2.local>
From: Fabio Alessandrelli <fabio.alessandrelli@gmail.com>
Date: Thu, 2 Aug 2018 22:56:35 +0200
Message-ID: <CAPu9Pn-1iCkSkWvDBFXA8Y9yiXK3pPsYK-yghnU+PaKVwGtP3g@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for fabio.alessandrelli@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000cab19c05727a0caa"

--000000000000cab19c05727a0caa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept.

On Thu, Aug 2, 2018, 22:54 <kurt@seifried.org> wrote:

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

--000000000000cab19c05727a0caa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I accept.</div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr">On Thu, Aug 2, 2018, 22:54  &lt;<a href=3D"mailto:kurt@seifried.org">=
kurt@seifried.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Th=
is is a confirmation email sent from CVE request form at <a href=3D"https:/=
/iwantacve.org/" rel=3D"noreferrer noreferrer" target=3D"_blank">https://iw=
antacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assuming =
you filled out the CVE form and want one, we can&#39;t use the data until y=
ou accept the MITRE CVE Terms of Use). <br>
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
</blockquote></div>

--000000000000cab19c05727a0caa--
