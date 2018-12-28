Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp2754282otd;
        Mon, 9 Jul 2018 08:49:26 -0700 (PDT)
X-Google-Smtp-Source: AAOMgpfOv/fv0wf7r6+MAIBjv/0WoqNkdYpY2nLx/5iVZImKZZJhd7NFZ/HMCoxb5QOA36sV5wWc
X-Received: by 2002:a19:cb44:: with SMTP id b65-v6mr133584lfg.12.1531151366159;
        Mon, 09 Jul 2018 08:49:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1531151366; cv=none;
        d=google.com; s=arc-20160816;
        b=STVhvXuAQLyXNV3dguHwxdVGed3MVKKPZgLE438kzELUrUc/fw0j2ntA6OFYWAczeS
         ST9huhLCTRWDnxdjI1+G/NInvJ/eku6EdxeazySO5N1AtdSarzgRQe0bnx13ZWmx+NO5
         tfmGQi7enncluahQi4sV/K5tABrMLvmois1QhKtZ7a9UuYtFFrTRodIxyeNNuY6Rkk6U
         a5A1lq8Ix66kW3pgl3L6j/8b2YSa6VrCNIeOxCZpLmHa0nc8GWfICwq9aH6l38pVuHDe
         8f+94ByxNY/0WzrdPKU5vOyNkdBFGu4uZsziwkcAt9F6xVo2EClxPQJGOK8LCuNP7A9B
         buNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:dkim-signature:arc-authentication-results;
        bh=CMrAqaxFCZkaRK9R01+dSZ0Yj8ot2JZ32skRkCh00CM=;
        b=jjGDg/xR8Aezb4vfsyBds5H0L9zZSzA39AAwMz/ez0pMTRAUQmz1HhxgXF6MEgaFVh
         +Owfit50lEgA51BZ6m3XHVuD7j50QVPXFWHPJMwRHLi2ibjLBNTmSm8NpuE8cyMx0zOC
         CN7Y5kYt7OUn2TavsEJUm/as0a5c+ekj+DdjvJe1DvxOo3Ifz6CRx63A+5EJY64UZN3f
         EygdCfQeF/Ql+4Bavzcq3sIZyO+H1E3Z4zflxAce+NTjiPEBnyrUR90TXGkbc764Qfyg
         Lkze/ZYj5hdpYK7HToHcF3TUGo3JS9prQh19HM1q5I82qRRpSsbGd42Uwfo4ZDnquCC2
         Papw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@agel-nash.ru header.s=mail header.b=WD4CgX5T;
       dkim=pass header.i=@agel-nash.ru header.s=mail header.b=mc3HfIPG;
       spf=pass (google.com: domain of iam@agel-nash.ru designates 5.45.198.246 as permitted sender) smtp.mailfrom=iam@agel-nash.ru
Return-Path: <iam@agel-nash.ru>
Received: from forward103j.mail.yandex.net (forward103j.mail.yandex.net. [5.45.198.246])
        by mx.google.com with ESMTPS id y16-v6si7268552lfy.389.2018.07.09.08.49.25
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Jul 2018 08:49:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of iam@agel-nash.ru designates 5.45.198.246 as permitted sender) client-ip=5.45.198.246;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@agel-nash.ru header.s=mail header.b=WD4CgX5T;
       dkim=pass header.i=@agel-nash.ru header.s=mail header.b=mc3HfIPG;
       spf=pass (google.com: domain of iam@agel-nash.ru designates 5.45.198.246 as permitted sender) smtp.mailfrom=iam@agel-nash.ru
Received: from mxback15j.mail.yandex.net (mxback15j.mail.yandex.net [IPv6:2a02:6b8:0:1619::91])
	by forward103j.mail.yandex.net (Yandex) with ESMTP id 8FE1F34C385B
	for <kurt@seifried.org>; Mon,  9 Jul 2018 18:49:25 +0300 (MSK)
Received: from smtp4o.mail.yandex.net (smtp4o.mail.yandex.net [2a02:6b8:0:1a2d::28])
	by mxback15j.mail.yandex.net (nwsmtp/Yandex) with ESMTP id ohi0HHyzTK-nP7447BP;
	Mon, 09 Jul 2018 18:49:25 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agel-nash.ru; s=mail; t=1531151365;
	bh=CMrAqaxFCZkaRK9R01+dSZ0Yj8ot2JZ32skRkCh00CM=;
	h=References:In-Reply-To:From:Date:Message-ID:Subject:To;
	b=WD4CgX5TMlLd4UfLUKsIDsJ0iuvYkjOS5f3roZLqmIBXcT0dTUNGr0DNsJC8LMouT
	 05/ALhsBppq+IyadD1TRDVf3L+0TfnWDOyg6yhLZPsFNYAkgnJaMQgKq2O5CunRLQK
	 A1eKHp44mgFvOr0H8zRH2xr0HlY0A2BFfRnLWw8U=
Received: by smtp4o.mail.yandex.net (nwsmtp/Yandex) with ESMTPSA id yTMdX7Yy6a-nOxOq70f;
	Mon, 09 Jul 2018 18:49:24 +0300
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client certificate not present)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agel-nash.ru; s=mail; t=1531151364;
	bh=CMrAqaxFCZkaRK9R01+dSZ0Yj8ot2JZ32skRkCh00CM=;
	h=References:In-Reply-To:From:Date:Message-ID:Subject:To;
	b=mc3HfIPGHl3zcs1t6y8AiLFgo7/ESPXef8pZU01AFDCzi+pnB+gi4lVosgrJcIWgU
	 NCw2t7+JK90iqE2A4OgZW+J+tqPs866x3+9yDhS1TFfsxFajvjFe/l20fXt7wt0fIB
	 QrVRm3w+rYiVqOHJjit7g/cAP/+n3uNzzg1oUB+E=
Authentication-Results: smtp4o.mail.yandex.net; dkim=pass header.i=@agel-nash.ru
Received: by mail-it0-f51.google.com with SMTP id 16-v6so26003093itl.5
        for <kurt@seifried.org>; Mon, 09 Jul 2018 08:49:24 -0700 (PDT)
X-Gm-Message-State: APt69E219YlVh/ZiXkvDV/egY4hoO1hC/bl6g2w/bF0bQvGv3dxsEPiT
	znvKtdr4tU3KNdv+JdTTEmxoXkoXYCfTUV/vFEc=
X-Received: by 2002:a02:a60e:: with SMTP id c14-v6mr16727653jam.69.1531151363253;
 Mon, 09 Jul 2018 08:49:23 -0700 (PDT)
MIME-Version: 1.0
References: <20180709154403.16845.69922@shiny-2.local>
In-Reply-To: <20180709154403.16845.69922@shiny-2.local>
From: Agel Nash <iam@agel-nash.ru>
Date: Mon, 9 Jul 2018 20:49:09 +0500
X-Gmail-Original-Message-ID: <CAEPVgDmFkWJiJmoX=GKo+V_=9W2XMC-D3qRdQcerLciD1KBYvw@mail.gmail.com>
Message-ID: <CAEPVgDmFkWJiJmoX=GKo+V_=9W2XMC-D3qRdQcerLciD1KBYvw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for security@agel-nash.ru
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000001aac2c057092f5fe"

--0000000000001aac2c057092f5fe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

=D0=BF=D0=BD, 9 =D0=B8=D1=8E=D0=BB. 2018 =D0=B3. =D0=B2 20:44, <kurt@seifri=
ed.org>:

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

--=20
*=D0=91=D0=BE=D1=80=D0=B8=D1=81=D0=BE=D0=B2 =D0=95=D0=B2=D0=B3=D0=B5=D0=BD=
=D0=B8=D0=B9,http://agel-nash.ru <http://agel-nash.ru/>*
*=D0=92=D0=B5=D0=B1-=D0=BF=D1=80=D0=BE=D0=B3=D1=80=D0=B0=D0=BC=D0=BC=D0=B8=
=D1=81=D1=82, =D0=BA=D0=BE=D0=BD=D1=81=D1=83=D0=BB=D1=8C=D1=82=D0=B0=D0=BD=
=D1=82 =D0=BF=D0=BE =D0=B2=D0=BE=D0=BF=D1=80=D0=BE=D1=81=D0=B0=D0=BC =D0=B1=
=D0=B5=D0=B7=D0=BE=D0=BF=D0=B0=D1=81=D0=BD=D0=BE=D1=81=D1=82=D0=B8 =D0=B2=
=D0=B5=D0=B1-=D1=81=D0=B0=D0=B9=D1=82=D0=BE=D0=B2.
=D0=9E=D1=84=D0=B8=D1=86=D0=B8=D0=B0=D0=BB=D1=8C=D0=BD=D1=8B=D0=B9 =D0=BF=
=D1=80=D0=B5=D0=B4=D1=81=D1=82=D0=B0=D0=B2=D0=B8=D1=82=D0=B5=D0=BB=D1=8C =
=D0=BA=D0=BE=D0=BC=D0=BF=D0=B0=D0=BD=D0=B8=D0=B8 MODX =D0=BF=D0=BE =D0=BF=
=D1=80=D0=BE=D0=B3=D1=80=D0=B0=D0=BC=D0=BC=D0=B5 MODX Ambassador.*

--0000000000001aac2c057092f5fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">=D0=BF=D0=BD, 9 =D0=B8=D1=8E=D0=BB. 2018 =D0=B3. =D0=B2 20:44, &lt=
;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</a>&gt;:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">This is a confirmation email sent from CVE re=
quest form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=
=3D"_blank">https://iwantacve.org/</a> asking you to accept the MITRE CVE T=
erms of Use (assuming you filled out the CVE form and want one, we can&#39;=
t use the data until you accept the MITRE CVE Terms of Use). <br>
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
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"l=
tr"><div><i><b>=D0=91=D0=BE=D1=80=D0=B8=D1=81=D0=BE=D0=B2 =D0=95=D0=B2=D0=
=B3=D0=B5=D0=BD=D0=B8=D0=B9</b>,<a href=3D"http://agel-nash.ru/" style=3D"c=
olor:rgb(17,85,204)" target=3D"_blank">http://agel-nash.ru</a></i></div><di=
v><i>=D0=92=D0=B5=D0=B1-=D0=BF=D1=80=D0=BE=D0=B3=D1=80=D0=B0=D0=BC=D0=BC=D0=
=B8=D1=81=D1=82, =D0=BA=D0=BE=D0=BD=D1=81=D1=83=D0=BB=D1=8C=D1=82=D0=B0=D0=
=BD=D1=82 =D0=BF=D0=BE =D0=B2=D0=BE=D0=BF=D1=80=D0=BE=D1=81=D0=B0=D0=BC =D0=
=B1=D0=B5=D0=B7=D0=BE=D0=BF=D0=B0=D1=81=D0=BD=D0=BE=D1=81=D1=82=D0=B8 =D0=
=B2=D0=B5=D0=B1-=D1=81=D0=B0=D0=B9=D1=82=D0=BE=D0=B2. =D0=9E=D1=84=D0=B8=D1=
=86=D0=B8=D0=B0=D0=BB=D1=8C=D0=BD=D1=8B=D0=B9 =D0=BF=D1=80=D0=B5=D0=B4=D1=
=81=D1=82=D0=B0=D0=B2=D0=B8=D1=82=D0=B5=D0=BB=D1=8C =D0=BA=D0=BE=D0=BC=D0=
=BF=D0=B0=D0=BD=D0=B8=D0=B8 MODX =D0=BF=D0=BE =D0=BF=D1=80=D0=BE=D0=B3=D1=
=80=D0=B0=D0=BC=D0=BC=D0=B5 MODX Ambassador.</i></div></div></div>

--0000000000001aac2c057092f5fe--
