Delivered-To: kurt@seifried.org
Received: by 10.79.153.144 with SMTP id a16csp195673ivh;
        Thu, 25 Jan 2018 18:51:02 -0800 (PST)
X-Received: by 10.107.132.224 with SMTP id o93mr988346ioi.58.1516935062672;
        Thu, 25 Jan 2018 18:51:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1516935062; cv=none;
        d=google.com; s=arc-20160816;
        b=nemPwghPk00aWeNGfXSq6Ggg+KideTwRC7x4dG8VHVV80jqdBGdZQorOkagQMQoHYV
         VYVDOnhI94mQNbl3qttu+QiJb78kBJK4YDUa1/rMcmDzn0IzQH4XquWcnZFytRUmv79v
         V1JRULsYIE7L++1pdGzefljTM3paup2mtQ0/RltjqD2P8L0icNvqISQDBDlJl9/MIMe2
         arIgfvKxLLfcmRJevGW8QgRnpy+58UIo8wmoV9TD5YvjQBNHb38wn65reQpnS1n/24XK
         v5Yp672AxoONAGYT7H+/oq/D6k75TIeJuWLcIb1qalNqf0JukG9ShJCoHrmtFoQMRDwO
         /zwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=gUrPgFa1A/fO+qVAbVg175omYGRy2zsiTgwbz0eUCY4=;
        b=uhEfXQrkblgfjHRFw5F8LIgXWnmiifc+5uAlTHBhWY9R2BZkvt2QNclDpt009OvjeB
         g2awcBC+YA+pyMfG2Ifgl7MFNTXvlWsrhDjtu6QQk+0zjoeSXUR665NMZJd0kQkjsWxU
         x/ImZPp82XZS54KYWkWV3t0Xxm3a1+DkCWOYPS+FjOwS51Y7fB+2LFO59lRYltKL10sm
         knjCy7KvN7CLvJAqQ/KKwCbsKKRvB9ThPbb+HC/40+7Yg2IKKaJXqBeuTbJb14i2QuyA
         sAZF66sRlHE8xqCEEVMs28hb47CL2kuC8A+H6IfDoUW849vzuaqGLQXhbTfK/S1ZtDnF
         uPVg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KbM8P+U1;
       spf=pass (google.com: domain of medsgerj@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=medsgerj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <medsgerj@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id i124sor2029205ioa.346.2018.01.25.18.51.02
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 25 Jan 2018 18:51:02 -0800 (PST)
Received-SPF: pass (google.com: domain of medsgerj@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KbM8P+U1;
       spf=pass (google.com: domain of medsgerj@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=medsgerj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=gUrPgFa1A/fO+qVAbVg175omYGRy2zsiTgwbz0eUCY4=;
        b=KbM8P+U1bGKihDPwPdTvu/ChU3CstuMkhBrYbpRp/y7Cbw5jHd1Ylft5Ib0SfbJL5p
         LPBIg+vovS6XuvSyquWLDXX96RD5vOqeYHQ5P6nF3L3AgHql5BQPJBtcKJhtp4/vsA20
         gX8wb8rmeXxTj5AEY32WFIXCZ3nCCLfswMEhUNOX/7xtq8dnm0sdSCDxeJKTAPWnyMjq
         SGQE6ouFYcbaES1/Su02yBcGpJ+nxMBX+0bb7PiPQeK35j/K5rQAkkFvgDCypQcJvTxk
         iOtNR6pgxg/X2AVObPLrUW5oX+F0Sy0FHuwMKx+bbjZY8EuEKlnMqKDrB2EUrZxh0OAo
         Ll8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=gUrPgFa1A/fO+qVAbVg175omYGRy2zsiTgwbz0eUCY4=;
        b=LeYQb2bBvM7tvEb7ka43WyUW7H1i6Iha/hefnf05EPTIK4Ic+jAyWpVeM3Hlft5dTE
         hw6DCMWbhvYYvqkcGaUTVWHD42iWCLW42wnJinnoDPivdvPXcSz+zHyHpLmi+xB51GIV
         JFhIXcsHb3KPhoWV+pUQZdYCiYfd1NDWXwEdlzgUoZ5zF25lIjogCvOh9YDEzJCFUCds
         U9p3fRnvaly7wozIPM9wnYmz2PvMnsOS0SVgb+MZ9iu5F2TrWN0gsLJBRUYr5HDbppfS
         R1+b6fLsj7SGODvNXfkvDN1LpF4ydzwAnP7B26/kyeK8mqQPqWVI3vg1m5PS5VLl3cAH
         Pnuw==
X-Gm-Message-State: AKwxytflhMs8fxUqaEXdBbLAIfeJUcQ7lSV9CZRtbgF5k788tob7FYNQ
	PIFPSXUizl4vPH8Lf+qGjN3a2f1J7fROp7Kz1Io=
X-Google-Smtp-Source: AH8x22743Gw96LhnOXvL2L1NJFr+EYM3FCLu5Co00y6A/P/KnGqzYlk6iUsUuyoSb34mNbPwx8uk7qJu52YLS9pNQhc=
X-Received: by 10.107.137.26 with SMTP id l26mr15031469iod.108.1516935062163;
 Thu, 25 Jan 2018 18:51:02 -0800 (PST)
MIME-Version: 1.0
References: <20180125170543.4519.62704@slab.local>
In-Reply-To: <20180125170543.4519.62704@slab.local>
From: Jeffrey Medsger <medsgerj@gmail.com>
Date: Fri, 26 Jan 2018 02:50:51 +0000
Message-ID: <CAPLskq5u9Hgzn+sP7yxWOhmDybSok8wijoOCXNqRPWj_Y+fWAQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for medsgerj@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a113fc4048715e60563a4f757"

--001a113fc4048715e60563a4f757
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept.

On Thu, Jan 25, 2018 at 12:05 PM <kurt@seifried.org> wrote:

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

--001a113fc4048715e60563a4f757
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I accept.</div><div><br><div class=3D"gmail_quote"><div>O=
n Thu, Jan 25, 2018 at 12:05 PM &lt;<a href=3D"mailto:kurt@seifried.org">ku=
rt@seifried.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This=
 is a confirmation email sent from CVE request form at <a href=3D"https://i=
wantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/<=
/a> asking you to accept the MITRE CVE Terms of Use (assuming you filled ou=
t the CVE form and want one, we can&#39;t use the data until you accept the=
 MITRE CVE Terms of Use).<br>
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
rget=3D"_blank">https://github.com/distributedweaknessfiling/DWF-Legal-Acce=
ptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc.<br>
<br>
</blockquote></div></div>

--001a113fc4048715e60563a4f757--
