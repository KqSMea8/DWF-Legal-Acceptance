Delivered-To: kurt@seifried.org
Received: by 10.176.65.42 with SMTP id j39csp271629uad;
        Tue, 18 Apr 2017 10:43:44 -0700 (PDT)
X-Received: by 10.36.88.200 with SMTP id f191mr15025460itb.74.1492537424407;
        Tue, 18 Apr 2017 10:43:44 -0700 (PDT)
Return-Path: <ulsh@mapbox.com>
Received: from mail-io0-x232.google.com (mail-io0-x232.google.com. [2607:f8b0:4001:c06::232])
        by mx.google.com with ESMTPS id r133si12140549ith.84.2017.04.18.10.43.44
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Apr 2017 10:43:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulsh@mapbox.com designates 2607:f8b0:4001:c06::232 as permitted sender) client-ip=2607:f8b0:4001:c06::232;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@mapbox.com;
       spf=pass (google.com: domain of ulsh@mapbox.com designates 2607:f8b0:4001:c06::232 as permitted sender) smtp.mailfrom=ulsh@mapbox.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mapbox.com
Received: by mail-io0-x232.google.com with SMTP id r16so5322584ioi.2
        for <kurt@seifried.org>; Tue, 18 Apr 2017 10:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mapbox.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=jahGyjeC+d8YAPcbv1uzcM6hcxTKM4t6MGHDQufWjpY=;
        b=IAyGVzktRBqyPvDR5SHTkariZ0qvJEdg+3IQ9nxwKMzvK1b9FrsmUvs1Bz+vhZeMOd
         AgGEYhpr35J2NrdJj5Y7+FG1zqz7wKSARbTpPEdd02J5Wxu1DOHlsnOenSSiqVlVCAGo
         kXo2s8VzIlehv7WuyPWOjTGE+M6Omo8wjRjKM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=jahGyjeC+d8YAPcbv1uzcM6hcxTKM4t6MGHDQufWjpY=;
        b=Bwub+ht+qkNMEJ83p1HFc9N4k05CG6/NIzYR6Lgow0N+zsgEjyMewyqLgFDRb2zOb0
         4Xsqi8x3EXWbOH1UsZnIuuafcSbf8e4DclXgb3tsZx4uUR9lJn1DrmH0d5g+JL5d+TW0
         FnCWyKmiGvwY9B5Hh+ErZwJraIAAl+jGwKfDPSWjgyOOgUrcNyUDI6D5Y8Bbx5HSQmJi
         NYAKpcpMfxmCCijxVpo9pvZSao1wTrkrw4S6aevqyG765DEstXSVzYfMPr26U3vu8UM+
         irsIs3mYF7woD/O7jkEjrUGS1kCC+rAi3m1HRAmWOTip2EMaLBjne1gpKYdNqd2zb4ZZ
         CfaA==
X-Gm-Message-State: AN3rC/7UW/OiXfwqrgvxzHvQISgS3t/niTZHadDFUDbK5C3JJwQrKqzM
	/G0cWcOOcoSC3/sbNIaoij+5Lu0UlQw8
X-Received: by 10.36.124.85 with SMTP id a82mr16153655itd.90.1492537423613;
 Tue, 18 Apr 2017 10:43:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.10.197 with HTTP; Tue, 18 Apr 2017 10:43:43 -0700 (PDT)
In-Reply-To: <20170406200936.4090.94053@shiny-2.local>
References: <20170406200936.4090.94053@shiny-2.local>
From: Alex Ulsh <ulsh@mapbox.com>
Date: Tue, 18 Apr 2017 13:43:43 -0400
Message-ID: <CAD575awK=ty=j=tg34DzQAJb3NrhjsnWripwUftQo2CzVvRP2w@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for ulsh@mapbox.com
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a114aa74af2f8bf054d747278

--001a114aa74af2f8bf054d747278
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, Apr 6, 2017 at 4:09 PM, <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Ter=
ms
> of Use acceptance data at https://github.com/
> distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
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
> Database/blob/master/TermsOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>


--=20
Alexandra Ulsh
Mapbox

--001a114aa74af2f8bf054d747278
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">On Thu, Apr 6, 2017 at 4:09 PM,  <span dir=3D"ltr">&lt;<a href=
=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation email=
 sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"no=
referrer" target=3D"_blank">https://iwantacve.org/</a> asking you to accept=
 the MITRE CVE Terms of Use (assuming you filled out the CVE form and want =
one, we can&#39;t use the data until you accept the MITRE CVE Terms of Use)=
.<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE C=
VE Terms of Use acceptance data at <a href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" rel=3D"noref=
errer" target=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/=
DWF-<wbr>Legal-Acceptance/tree/master/<wbr>Terms-Of-Use</a><br>
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
lank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/b=
lob/master/<wbr>TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Al=
exandra Ulsh<div>Mapbox</div></div></div>
</div></div>

--001a114aa74af2f8bf054d747278--
