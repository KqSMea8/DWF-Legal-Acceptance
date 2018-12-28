Delivered-To: kurt@seifried.org
Received: by 10.79.37.80 with SMTP id l77csp2828077ivl;
        Mon, 6 Nov 2017 05:38:24 -0800 (PST)
X-Received: by 10.223.167.65 with SMTP id e1mr13744131wrd.280.1509975503943;
        Mon, 06 Nov 2017 05:38:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1509975503; cv=none;
        d=google.com; s=arc-20160816;
        b=nNZqIr5mlvFS6qnmkUYaw/uRByIS4UVhKpiHgmuW4dXOupRuUkLOtgeJH+qstGj2ZG
         u2q4QuP+X73Xn2jQKGwz4FmbhqXQCp47l5VdNm/xy9W5wGZw1h9cNObpJKdhEzeWhKmH
         hnoTOL78QDdsboP7sDjYLqdj1jDjGwTN70MxToZvyKUR7tLVxsYNkfZO20spVmx5ChNb
         Trc/O6Gtl9lI6YoEx62PfydBlN0DZRbjq6sotdaYzGZ220l8sQjX2+AblyeOEYZC+Uof
         FFER71QXY1a8KfkwQfAg0P7hMvOhxfOh7Yuhz5WIuhWe8XW2gTjQLPiPeLYRxN1bBtkS
         FwDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=wJ0YjXfcJtDgvx3QQo2qoQvnT2c9srfZQvefFMvq9EM=;
        b=bA2zmFzM/2l+bvLw+KJs3C373E6ktxKImZKGQdGr3EfSY4KIdkdQUFiFxlagTF+1oU
         dZHubJRConkb7I+8oa8nVlluhrGQpOX5ivbymFZO3OFwrGMjUufxDzSNYVp/u4oI1TQA
         5DKVX4rHTz2pbCRtDVgUsfvMSqu/A8KR0WaE2IuU+vrdU5jb0kcsfusY2nBGuR3PW8vc
         4GfK2iZ+/8E0RqBUxFlJOytKF6cDNbM+BJRbLu2nXv3pna1aN7QQtoJSyP5eFoLY20Tt
         Mbr06pvWc4LXRamNvdiVwp0X70y8f32TVEMIaCpL4NVAvzKfBnKJZjP4VfOUT4DMONLy
         UIBg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bjZUJL0v;
       spf=pass (google.com: domain of m.daniel.legall@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=m.daniel.legall@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <m.daniel.legall@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id q64sor2019821wmg.71.2017.11.06.05.38.23
        for <kurt@seifried.org>
        (Google Transport Security);
        Mon, 06 Nov 2017 05:38:23 -0800 (PST)
Received-SPF: pass (google.com: domain of m.daniel.legall@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bjZUJL0v;
       spf=pass (google.com: domain of m.daniel.legall@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=m.daniel.legall@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=wJ0YjXfcJtDgvx3QQo2qoQvnT2c9srfZQvefFMvq9EM=;
        b=bjZUJL0vllWNiidIV72bmVPsxzlfjq2jYUkPgAzDySSxu/nrYH6MBbWyy3S0jrCHyL
         eWSHUKaeoNkIJd6bZ/9vmsKljTveISq2ZK/loxxM0DXiFiCfXcYWjkKveMNPWBLpDj++
         mj+dHeJpfCACJAqxOmRsAdYSYdgxw63pSWCC/6Z1gh2CXemZVeMC1HhtYUZwAwwkSA5J
         MZ/7px2nWnM9kPI5ZJgcRoMsakKgE/7EUcBZSVNO8Jp/APWo0gNvaX8osDriA4Vk5W81
         //BKDWtCkab32Rz0kuvg0PWoGkYbiY4SIQ3nJvJdIWMdChEdQTJNZjvWh7ws1RvrPu8i
         cuEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=wJ0YjXfcJtDgvx3QQo2qoQvnT2c9srfZQvefFMvq9EM=;
        b=W01MCDRL4/I8j7IAW/dEWfhS0hy26HNoEIdSpRwo0TSFSOFcxdm52vewjs02Z6tpE1
         7PxgluxB8ApGs6F4/YQRX1+Ubr2NOznf2/DpBNiKgKuY5EQYQr+/osj6WwAkAV8FaDH5
         mStgarTfBOn0/qVrTjrYZ+auegWVSYv8KdlZP+4tWYwZd2tM7RBGgs9MgpNieGwz8FMA
         LfYefA1j6hu2Gj/XtOJUCgT/3akaTasHE2UYqQREOecGaT8ITxwY1iY8xz1u2yRZGmVA
         b9b4L+bc5fGwLr97bkmrjUuiR7T1/DOfdCEa/urH0MizsFKGqOJMMX8bMdO6YtB1RV8S
         aLrg==
X-Gm-Message-State: AJaThX7SPS68gzK3rCfZVGaxxNh8FqUUF4nXZT92WSLiu8+UX/mX8biv
	npndGSSYifERgJ425JpXFjSJcCvdQ5ZKH593w/s=
X-Google-Smtp-Source: ABhQp+Q1lq5T0Oqp8jwOrowG6XJ4gxK+jZSPFa3S/rzI9VvY9jyRxHlcEdKZyQYx1Ob7bGD841nZUsJPMnM/jcvvooI=
X-Received: by 10.28.12.18 with SMTP id 18mr6001647wmm.129.1509975503402; Mon,
 06 Nov 2017 05:38:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.139.141 with HTTP; Mon, 6 Nov 2017 05:38:02 -0800 (PST)
In-Reply-To: <20171021210202.19234.6066@shiny-2.local>
References: <20171021210202.19234.6066@shiny-2.local>
From: daniel le gall <m.daniel.legall@gmail.com>
Date: Mon, 6 Nov 2017 14:38:02 +0100
Message-ID: <CAMF--pSOyvAnf65_QfxzDE7tCNNRVdMkWEFFHkYgJ+Xjv1cCDg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for m.daniel.legall@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a11443a4e7ffb77055d509178"

--001a11443a4e7ffb77055d509178
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

2017-10-21 23:02 GMT+02:00 <kurt@seifried.org>:

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

--001a11443a4e7ffb77055d509178
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">2017-10-21 23:02 GMT+02:00  <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</span>:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">This is a confirmation email sent from C=
VE request form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" ta=
rget=3D"_blank">https://iwantacve.org/</a> asking you to accept the MITRE C=
VE Terms of Use (assuming you filled out the CVE form and want one, we can&=
#39;t use the data until you accept the MITRE CVE Terms of Use).<br>
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
</blockquote></div><br></div></div>

--001a11443a4e7ffb77055d509178--
