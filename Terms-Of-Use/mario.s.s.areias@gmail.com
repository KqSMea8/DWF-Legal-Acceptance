Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp2790138otd;
        Thu, 2 Aug 2018 18:09:27 -0700 (PDT)
X-Received: by 2002:aed:3cae:: with SMTP id d43-v6mr1799397qtf.379.1533258567888;
        Thu, 02 Aug 2018 18:09:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1533258567; cv=none;
        d=google.com; s=arc-20160816;
        b=L2hmngoLWvDrrdoaDgSvvPSYwNMAF2rCrQ+JeqMNH8BsO2Ik4sDbbqm32p64nmHh1/
         jeyCRlqHDBIbJsr5QkIASoXyOvICoa2+DW30aEdE1G6zaCm7/jX4zJYnDq7NXvh/NZNp
         ua5gSKPIxAE9mFy0tgJyWlKqJFvivsGdYz17g0y2+fYsk/D8VJsXU6shHT3qBLXDkWO7
         AKvJ82DsrDAZ1sjYvgT0gS8lKeKKvdIuEGbPQbRH4k3AfhK9WrK/YFECpMLnaI5mVxth
         DrwjXq5aAc5rtSFnKvM6S+kRUI2/krLGaCA6o1Yh/WC/RzcWwYU4iG5PILOxW9+Ny2EL
         RqCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=Umzi22p/lmgfqBWX9rTj9xze6Hnd5qrGtXFgCvsJrBQ=;
        b=Mi4NyB1lZK1f7hKo76mq0RI1jOrSSJVx66xs3e8PDaMehrPjGbE90S8sGzFyWAo/EL
         zOgGUtgCrIWFfO5y33wZcdcWbBAtg/yAMhcxE9lcRoAdQ2Z3Wyuuw515MAobPZ/s2IGs
         H180PsLgcR0hgB0W8xI6RdYESuF7ZveGhlup0XEnb1aKMVyqq7o+t+zIWNPuLpEqu7a+
         pcJ9Y7jFnSkJtg4ENFR12NNIvTqg5XceaS418Ceb1oZ35TmJvR6B4tRE/JrlBTyxPEuf
         JGfNVdmAV65L+KSjJYhrgaIlRQRl5siojxd8qYVZZ+8acySB1/y7lbIjGkHbKS+Lw6PP
         SQcw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IV7gbeHT;
       spf=pass (google.com: domain of mario.s.s.areias@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=mario.s.s.areias@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mario.s.s.areias@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a4-v6sor1646730qvo.67.2018.08.02.18.09.27
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 02 Aug 2018 18:09:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of mario.s.s.areias@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IV7gbeHT;
       spf=pass (google.com: domain of mario.s.s.areias@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=mario.s.s.areias@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=Umzi22p/lmgfqBWX9rTj9xze6Hnd5qrGtXFgCvsJrBQ=;
        b=IV7gbeHTeHKBlqx3YB8ZcIJQeqDcfaqGQqFpD17TuM4XmXSq+bJ5ZMziRC+U0POR21
         SeGaYybfnOYCFzZW5K+3vdT/tL3z4tbGQ3LFVMdsL2M4SUsqVaWti2JrqSPktLGREjCN
         ko9gMnyQKivHK1Jr4tfIsCzzOG1NKkns39GEPkazlNtz4xoEAS8IxXNaBO1fhxZoVoVA
         r77q5UF5O4rxNATguBcH4waw67WFQTf42NXA8PM1SKFXt0JwBAc8IunhDIT0bvq8uvMX
         3s7XvYRjUMqR1Ej9nuVtvMjwDyTUr/4X2ckAM+GQ2+Ui85uWESI5w9ur8ACk+tt9cEeC
         f70Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=Umzi22p/lmgfqBWX9rTj9xze6Hnd5qrGtXFgCvsJrBQ=;
        b=GONKvzdqfaZjIEUZMqzPajm5iBXAVPaXdLmrxY28rO90UFrgeu5UnorH0LWfJZbZbt
         Ol/QVwmXEPBo3ktcjZlVhB/jEZVhae+RW8B1edp147qyzSOL8OBSnA1rbHHfLlbeYjnR
         mMHNe38XTn4MBYpZcp5sVwABCWlTK7M0iyywUqXvNjAWC2Ms3stJ+WCkhwhDa7gWGlGw
         oFGBGzg3gtLkwE4I+HpTKnszzX6JCdI7yruOxR/oy2IsIW0rKCc6lEP8hbTQwJcR/EsW
         A71Ky3AXSi8ZRTFo/nbQcxwsFGBKs+EKffjDpIgOJWPrw6sF6KFyKm2E5eNOA7/UwYbO
         ogZw==
X-Gm-Message-State: AOUpUlEbpYQdfIYRnos7Ly8aOJT72Wis28qxuBjHAQBrkGlsn2Ebu1gY
	ee5rSgtDTInpaoYLt7TfDqYgI2R4yAn1NGUZrP5N5w==
X-Google-Smtp-Source: AAOMgpe9WUuGknpS7mqHvYKKz9VTVaOK8eF8a3Yn/WhrUkzqnHXLNBMduXXp17Frf/iO1B8c4DsKmhrZPEv8m00TztY=
X-Received: by 2002:a0c:b3d4:: with SMTP id b20-v6mr1712970qvf.141.1533258567294;
 Thu, 02 Aug 2018 18:09:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:25bc:0:0:0:0:0 with HTTP; Thu, 2 Aug 2018 18:09:06 -0700 (PDT)
In-Reply-To: <20180802205435.25315.37739@shiny-2.local>
References: <20180802205435.25315.37739@shiny-2.local>
From: =?UTF-8?Q?M=C3=A1rio_Areias?= <mario.s.s.areias@gmail.com>
Date: Fri, 3 Aug 2018 11:09:06 +1000
Message-ID: <CACp98asY86X3j4FC0BFamTV+nHWC0u5dtf0tMXNJxx_H005z5g@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for mario.s.s.areias@gmail.com
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary="00000000000040a4c105727d944d"

--00000000000040a4c105727d944d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

 I accept.


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

--00000000000040a4c105727d944d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0I accept.<div>=C2=A0=C2=A0 =C2=A0<br><div class=3D"g=
mail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This =
is a confirmation email sent from CVE request form at <a href=3D"https://iw=
antacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</=
a> asking you to accept the MITRE CVE Terms of Use (assuming you filled out=
 the CVE form and want one, we can&#39;t use the data until you accept the =
MITRE CVE Terms of Use). <br>
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
</blockquote></div><br></div></div></div>

--00000000000040a4c105727d944d--
