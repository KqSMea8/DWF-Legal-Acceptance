Delivered-To: kurt@seifried.org
Received: by 2002:a9d:3a09:0:0:0:0:0 with SMTP id j9csp7379924otc;
        Mon, 3 Dec 2018 11:06:39 -0800 (PST)
X-Received: by 2002:a9d:6419:: with SMTP id h25mr11562776otl.34.1543863999467;
        Mon, 03 Dec 2018 11:06:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1543863999; cv=none;
        d=google.com; s=arc-20160816;
        b=J6yEMTFF86eHISBwsR6S7mitzqKfMbIe1sMOwifidrdOfi0KFtojnERJhMVL84XCgv
         PNClCTRGA5CDviZjqNuMlrwMXOgF+UnQ11taLyUtYjEDvAmAoVIJH8uT1bDqtHEslSWK
         LFhmacUmCnkx9hA0CNGHZPKlkHXKY7fxqTzpcFnfrf5fpjiQn+XHOXGs7o2zjpXCDuGf
         SF4E0IHEnCvXzmmckA2N4+0D3oakppKLYz5fmDwQKJHvijsvfsvISX/RmEXwfe/Gelhz
         hmK6OIqf6WoCQgK4Nkbo4LF/bnSV0KuP4dPcwCzTYUwMUCdzYc3FrZ5Cwdyd8zmrYuhk
         kdEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=mAfdOxVwmcj7Ral/aAbqHwCwU9LfHFs4oK0wMOURgns=;
        b=tfd1dr/H4nlLFbBZVaJkeRIMDZ53pqM4+mnezM88U4rvRbXPJjXhFKG9lCs7TOGvwz
         CBgkGQG3ogavo+/nQPDaSXlCklR9ANIvsKRQ5BTDeuvWoGMLlVgDWzFD+4sJA6FkC/T0
         as7lWJLSkgbA/ild8ECPLZSnboH6Seg26Mk8eK6JZhGp+6Lm8OEJ5CaoodR9LAPCvr5r
         Z7wcycCpbvAMRmI9UOSY6d3UYYn50JRQWqhCOEhSjfZB2nbgJMH3gjz4SY/GAIdTtQ30
         ggxhKH+pCKay7YPafy4bzDMrZWkwQeNGHCX/MfypG65LSyNmU4gbfJ5QuCr3P7AqhO5J
         4Wgw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FL60Pln4;
       spf=pass (google.com: domain of disgruntled3lf@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=disgruntled3lf@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <disgruntled3lf@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id t16sor7675783oth.4.2018.12.03.11.06.39
        for <kurt@seifried.org>
        (Google Transport Security);
        Mon, 03 Dec 2018 11:06:39 -0800 (PST)
Received-SPF: pass (google.com: domain of disgruntled3lf@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FL60Pln4;
       spf=pass (google.com: domain of disgruntled3lf@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=disgruntled3lf@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=mAfdOxVwmcj7Ral/aAbqHwCwU9LfHFs4oK0wMOURgns=;
        b=FL60Pln4hMKKCEF3FxC30IXD8k58oDK4Qy93DyKHUIhJErPEWwwMwjH2+ABN3oxHdu
         zEWgROOZAfndxgEVjcayLIN2NruPWPVim/diKs8X1HGIN+5i9mbYMZiTWIfQ63H/gJuM
         wF3LR4pLipOZGmQsPsvDszarAtd6UzThx88qN8eM8auPa9UKjcgN4D8J4WPK+GG9vXPH
         vVU/dh2GMJR9wrOL62KCt/atr6VPWJPRUpotqJTWX2gsigGFBHEKx3Vu59ZjhZiwgqZ6
         3E+8j2nyioMpO6Aoo06MrUA6qt3kvwn5KaSGbrmTypGNrtksDm3FJib9DAM/LGhc/NvS
         YM0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=mAfdOxVwmcj7Ral/aAbqHwCwU9LfHFs4oK0wMOURgns=;
        b=CTFCLgtefPTURuCSbTAyUcj4MDWTr27EFxW4OhDMT+YyzGNGXLItuVYssI6g8SwV6Z
         sUKPc2nRHRpWoTbKhM8G/DqMk0XjCxTo4JY4OjT46m5RcvQE7qxtjFfaqZ/hvXVahBVP
         N9ZsvcxOTnHMKnLicTRZeB7zZ5Flh6YKpfwW8n8FdOcdjMpZUW97dAf4J8y+Isw0Rwwi
         mHBvQfrp2lAdknliw5xYsq21qdmiz5LKzJLUQ398aZM/PjjMRq4P0OMw256g01qrf+ET
         sr4tY5r4A+4poz+4zJKDTc4AkSNWiWkNlZ1q8TTv4ta33qODTfizF/rj+GMMXss+brnm
         fHqg==
X-Gm-Message-State: AA+aEWbOW8VG4FJ3ZTqPfH+NGAUa8uhKohy/SHMMpsNVIPoCAIPFSbX4
	GqBqZu7qUtJ0v4rJF8JfqkB5OCPCtTB5h0VGnkKEnVG5
X-Google-Smtp-Source: AFSGD/UrLDfqD0QNTXib5/lJvh0l95AQxIfrdpyfGI22EsHannXlqapBUIVpwpF9PcTLeLiJ+qTG9HoAbiF2asqzhVE=
X-Received: by 2002:a9d:7653:: with SMTP id o19mr10661228otl.12.1543863998712;
 Mon, 03 Dec 2018 11:06:38 -0800 (PST)
MIME-Version: 1.0
References: <20181130001411.2883.92929@bigbox.local>
In-Reply-To: <20181130001411.2883.92929@bigbox.local>
From: Anonymous Reporter <disgruntled3lf@gmail.com>
Date: Mon, 3 Dec 2018 13:06:27 -0600
Message-ID: <CACRTk2YMv2=mwF3q8Lx7OOG0JZXxLEKQ+b4DGbSFsLYCqfvK9A@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for Disgruntled3lf@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000398e70057c22d9a2"

--000000000000398e70057c22d9a2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

This is a confirmation email sent from CVE request form at
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

On Thu, Nov 29, 2018 at 6:14 PM <kurt@seifried.org> wrote:

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

--000000000000398e70057c22d9a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<div><br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">This is a confirmation email sent from CVE request form at=
=C2=A0<a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blan=
k">https://iwantacve.org/</a>=C2=A0asking you to accept the MITRE CVE Terms=
 of Use (assuming you filled out the CVE form and want one, we can&#39;t us=
e the data until you accept the MITRE CVE Terms of Use).=C2=A0<br><br>Simpl=
y quote the email and reply with &quot;I accept&quot; at the top if you agr=
ee to the MITRE CVE Terms of Use and we will add a copy of the email to the=
 DWF MITRE CVE Terms of Use acceptance data at=C2=A0<a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer" target=3D"_blank">https://github.com/distributedwea=
knessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br><br>The re=
ason we use a complete copy of the email is that it provides an artifact sh=
owing that the email address accepted the Terms of Use, when they were acce=
pted and so on.=C2=A0<br><br>If you did not submit a CVE request to the DWF=
 you can safely ignore this message, however we may resend it at some point=
 in the future, if you don&#39;t want any future emails simply reply with &=
quot;unsubscribe&quot; or &quot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quo=
t; and I&#39;ll add your email address to the block list so we don&#39;t sp=
am you with these, please note that this will prevent you from being able t=
o accept the MITRE CVE Terms of Use via the DWF automatically in future (yo=
u&#39;ll have to manually ask). But again, if you have no idea what a CVE i=
s then you can ignore this/ask to be added to the block list with no proble=
ms.=C2=A0<br><br>MITRE CVE Terms of Use<br><br>LICENSE<br><br>Submissions: =
For all materials you submit to the Common Vulnerabilities and Exposures (C=
VE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) and all CVE Nu=
mbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge=
, royalty-free, irrevocable copyright license to reproduce, prepare derivat=
ive works of, publicly display, publicly perform, sublicense, and distribut=
e such materials and derivative works. Unless required by applicable law or=
 agreed to in writing, you provide such materials on an &quot;AS IS&quot; B=
ASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or impli=
ed, including, without limitation, any warranties or conditions of TITLE, N=
ON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.<br><=
br>CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive=
, no-charge, royalty-free, irrevocable copyright license to reproduce, prep=
are derivative works of, publicly display, publicly perform, sublicense, an=
d distribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you=
 make for such purposes is authorized provided that you reproduce MITRE&#39=
;s copyright designation and this license in any such copy.<br><br>DISCLAIM=
ERS<br><br>ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY =
MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE O=
RGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPOR=
ATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL=
 WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY =
THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY=
 IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.=
<br><br>A copy is available at=C2=A0<a href=3D"https://github.com/distribut=
edweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"n=
oreferrer" target=3D"_blank">https://github.com/distributedweaknessfiling/D=
WF-Legal-Acceptance/blob/master/Terms-Of-Use.md</a><br><br>To contact the D=
WF either hit reply, or email=C2=A0<a href=3D"mailto:kurt@seifried.org" tar=
get=3D"_blank">kurt@seifried.org</a>=C2=A0manually with your question/conce=
rns/etc.=C2=A0=C2=A0<br></blockquote></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr">On Thu, Nov 29, 2018 at 6:14 PM &lt;<a href=3D"mailto:kurt@=
seifried.org">kurt@seifried.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">This is a confirmation email sent from CVE request form at <a=
 href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https=
://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assu=
ming you filled out the CVE form and want one, we can&#39;t use the data un=
til you accept the MITRE CVE Terms of Use). <br>
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
</blockquote></div>

--000000000000398e70057c22d9a2--
