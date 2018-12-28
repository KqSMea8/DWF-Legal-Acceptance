Delivered-To: kurt@seifried.org
Received: by 10.176.6.200 with SMTP id g66csp811178uag;
        Mon, 19 Jun 2017 19:45:39 -0700 (PDT)
X-Received: by 10.202.87.213 with SMTP id l204mr15120053oib.163.1497926739029;
        Mon, 19 Jun 2017 19:45:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1497926738; cv=none;
        d=google.com; s=arc-20160816;
        b=OGuQlH9fJip9TpyLZ/XrL67RCGqImKj7sOzjpEoNORJNTI/VukwuZdiQAqp1EeOkem
         LnHIRN0gDNBJmWXCFwG/N/ElDkEc2rD8SFUpxD+AxjAhvAm2XPS/Zs73WhO8Ba+oMVcW
         XhlCg+TPf+sWAsz44omVV9GsoH3L5DS7tLzELUJ5prHUr1JtQCeYA8HyikLWhtkN9OfR
         XGOXq0CWcWEYKdgRwp5QNyQL89+xIQrqfeGvEAZxuEhN3vHa7vKUiago7/062k3188ZV
         r1jJKbg1O+NV2/PVqopGQDBrwINS8zaNRD5rd4YVqftTZNbEZiakI1r7gh63Bz6GpKJt
         4N/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=T6/cbQzeGxUYjez7Y/zNvVE/WtEDT4oh+f5UfTG4PQ4=;
        b=hbNC6dAeCz8h4OVIX2VdpkwwcNA/cLAvs2cDx4gvyQ5O/y9a1PU1KuUlQlOOKPMISC
         XUkfAH9u5NPYsDpfDxaDWL1HZ2tB+el46p+GECLCKUiUC3c4j+NrAYPuJ4dT104bC1Ma
         gof7WnJ2oJggMFNPsktBkXxtmtQGDJnFC1Vb0/dPGkyBYpWAki92iDRk1nJNqnbPhh0h
         ROQFn+rpmd6jvvtFNnEmYNsfknxZ3+fiaz+SklS/xC5IBAF4fWwe3VDxxtR1neLK+BQC
         hOkkIEvCE3MH/UmYDapVAkCGp0Osos4lQBGmIE309SFp8OswluM6sdFP/2wG8xXvPP5O
         zAsA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.b=Xpy7oQQu;
       spf=pass (google.com: domain of shiham.wang@gmail.com designates 2607:f8b0:4003:c0f::22d as permitted sender) smtp.mailfrom=shiham.wang@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shiham.wang@gmail.com>
Received: from mail-ot0-x22d.google.com (mail-ot0-x22d.google.com. [2607:f8b0:4003:c0f::22d])
        by mx.google.com with ESMTPS id a47si2138214oth.317.2017.06.19.19.45.38
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Jun 2017 19:45:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of shiham.wang@gmail.com designates 2607:f8b0:4003:c0f::22d as permitted sender) client-ip=2607:f8b0:4003:c0f::22d;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.b=Xpy7oQQu;
       spf=pass (google.com: domain of shiham.wang@gmail.com designates 2607:f8b0:4003:c0f::22d as permitted sender) smtp.mailfrom=shiham.wang@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ot0-x22d.google.com with SMTP id y47so58428881oty.0
        for <kurt@seifried.org>; Mon, 19 Jun 2017 19:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=T6/cbQzeGxUYjez7Y/zNvVE/WtEDT4oh+f5UfTG4PQ4=;
        b=Xpy7oQQulWrdhz2+9JbIhu4ZYGiWxy8gqON51Am6Q9+0F4oflFqDIWAHpHxRWqVPnL
         mhdoRMgMUWfb7WAJbZByz6jqLDu0By+A1m8hdQq5WSMJYdkCXG7DzTvVcdAriRdO9buO
         pcNkBh54ywPRO063VPNXLmoDWadB8TBYycJ7nSMlHql8UFJdv2gC9brNP/j6aPot5cJ1
         HrQRcDF8lGrWozndw4BKDiR9FS44wq/ahAL6+SXWVfTm4+AzEnaurbMr+fvxjLY7h9x0
         Mxay9UKC/xNjl3FVzHJPZByHLOzeCGOsPp3SCTAukfGrhRJmUL2IeQZSBuUxrwocNJ5Y
         FUog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=T6/cbQzeGxUYjez7Y/zNvVE/WtEDT4oh+f5UfTG4PQ4=;
        b=M4vJRzVLewTNHNPMrE4X76HTsvYTwJvHlUwUhI9ya7sVy7nF79L8gDINy4lv5Axss1
         HQmRbxkrAATWmgBbkUoUhN35aV9lokN85DQ0dWFfgJNIgWTz5jAQtUvKrrgMhhWInsCK
         du7XisgK2T2uETh4lQHlE+m7aWpfzxGYJw7Rsmgy3111NLi8Bzhmy6K5vEhO7cDX3GDK
         uZrVZyMHXoyj4fQ1ECqG0f4ob4C7LcPeQMEn5Vc7qKW8IFM6ItkcGWGEUKn15QHc9oEI
         G8oqUGFqdZvTLlZ6VfiUss6W8cSdZT9drNnBiVhGgbfPErrbA5pTpvVJfpTTQDt8r9AD
         emUA==
X-Gm-Message-State: AKS2vOxqLp7gwdKIe96u4aB8V62e9DYai5gPJalQFN+JLtO2dYyC/SBi
	jwCLb3xxYJp58sChDdO9FM40htYvvede
X-Received: by 10.157.48.117 with SMTP id w50mr15774349otd.61.1497926738328;
 Mon, 19 Jun 2017 19:45:38 -0700 (PDT)
MIME-Version: 1.0
References: <20170620014506.46686.94307@bigbox.local>
In-Reply-To: <20170620014506.46686.94307@bigbox.local>
From: Shi Han Wang <shiham.wang@gmail.com>
Date: Tue, 20 Jun 2017 02:45:27 +0000
Message-ID: <CABOzYef3mVLbNUXm0cQ+AfkWLdyHed_osnH+hmGKi0jH7e1t6w@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for shiham.wang@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a113e2d2a23514105525b3fa1"

--001a113e2d2a23514105525b3fa1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

"I accept"
<kurt@seifried.org>=E6=96=BC 2017=E5=B9=B46=E6=9C=8820=E6=97=A5 =E9=80=B1=
=E4=BA=8C=EF=BC=8C09:45=E5=AF=AB=E9=81=93=EF=BC=9A

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
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--001a113e2d2a23514105525b3fa1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><span style=3D"color:rgb(49,49,49);word-spacing:1px;background-color:r=
gb(255,255,255)">&quot;I accept&quot;</span><br><div class=3D"gmail_quote">=
<div>&lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</a>&gt;=E6=
=96=BC 2017=E5=B9=B46=E6=9C=8820=E6=97=A5 =E9=80=B1=E4=BA=8C=EF=BC=8C09:45=
=E5=AF=AB=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is=
 a confirmation email sent from CVE request form at <a href=3D"https://iwan=
tacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a>=
 asking you to accept the MITRE CVE Terms of Use (assuming you filled out t=
he CVE form and want one, we can&#39;t use the data until you accept the MI=
TRE CVE Terms of Use).<br>
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
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" target=3D"_b=
lank">https://github.com/distributedweaknessfiling/DWF-Database/blob/master=
/TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc.<br>
<br>
</blockquote></div></div>

--001a113e2d2a23514105525b3fa1--
