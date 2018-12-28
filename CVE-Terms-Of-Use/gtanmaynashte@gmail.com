Delivered-To: kurt@seifried.org
Received: by 10.79.153.144 with SMTP id a16csp2686892ivh;
        Thu, 8 Feb 2018 10:19:01 -0800 (PST)
X-Received: by 10.46.82.220 with SMTP id n89mr39232lje.145.1518113941490;
        Thu, 08 Feb 2018 10:19:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518113941; cv=none;
        d=google.com; s=arc-20160816;
        b=yKwtAhUCtYntD8jIvEz0QKTqU8oX702kr4ysxsCciDhe2+aWLqFYTaQGFEO99oQL94
         Vabwic7a0cpcvxKTHsb3a4FQYHikbpxnBVmuorJJh2gEPv0+QpD1rVquCs2ctQX+KqSI
         C8IRsSwZ5jp0nfkg7C5HvSXJOjdvs8o09/Xyid3CP0A74ouE02zGJS+qbzKan0l+CQka
         ywgp8x/GIOeN/4Ekdy7AjaKjrMwhvyTsk664kBDTrBJ/QmwATExy9H1ED+fumLNQGa7J
         uTBc/XktsvJuhzTd9rKSLwY60ecAGiuLYV+ralDTFL/mC2FXi3bzeIWN0oeHl5tk5gKx
         WB3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=AfCSOmpe5bhrqzRYpTnog88Gi/Jrrr0hwo/LUQ+fcug=;
        b=n5p0ItCn26nUuKC34cTGRKBYMjEvL1YSVmiBBwsCAybKn13wCoGHA8TfRASJ2geLb7
         2SmtbZHILd6Cm0dM0+hxdqqRPezxeUfsTi4ukQ2rLyPmBQMhgMfCxTNjDUp0k8kHfbaq
         8wKhmXMB9jDLMOP6HCOhkqSRuxdt4E7ji3CW7v0txG0hTrztOeGNgwWzP2BaLa1iMIr+
         AFmvT2zfpYTJkkFcIEStgaao1lnLGlgszzM/oHBhNWid0rfDlo78gXNuB4ecmZFcDtFm
         SJcma+3KE2DgeH8U8snaLpm4W5Ke16WEYZvz71O/W2HC/Gm/CqNaUZBL/vZQp58J43LC
         BHVQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LOawclJp;
       spf=pass (google.com: domain of gtanmaynashte@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gtanmaynashte@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gtanmaynashte@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id r76sor157506ljr.93.2018.02.08.10.19.01
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 08 Feb 2018 10:19:01 -0800 (PST)
Received-SPF: pass (google.com: domain of gtanmaynashte@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LOawclJp;
       spf=pass (google.com: domain of gtanmaynashte@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gtanmaynashte@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=AfCSOmpe5bhrqzRYpTnog88Gi/Jrrr0hwo/LUQ+fcug=;
        b=LOawclJpzcz4TxxYh7j85VEiNfy46PQcixtU/MNkimADM9BSwGYCoqcBUh9ft4O3i4
         8CMKe7qRtlkCqTwCpc5oP4uF+Cvyu7Gvjgih5DFt8vFrH5EB5d2fSx1Y8l1Q0/M5akIu
         WlH7QuVuJ7VqSCOr/Q/4v9G31ciJKZ35HKCaiakoqq9LZcV1hru1r2pupqcrcRBt45sP
         8owx/Z+ngUwB3OUxZRRQwPLFO7kIZWCx+fFCRfWhDk+wTcxTBrLoBNKPUdM+dtdD8fDN
         u3XjOwUrqnJ4hbcb01DcfGWjLkzXGmfMlkdjxvOGoWtHalgs8uO+2LiG4RoY1HCNxddn
         Mkcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=AfCSOmpe5bhrqzRYpTnog88Gi/Jrrr0hwo/LUQ+fcug=;
        b=bVKzCIILJSJoHoDUjgbL7ohlV7pNC5/V4ei5B1PUrWDG6XnFfsvgvsPbBOzD8KU/7X
         oc0wSyKKybzw48GhNyZp9Nae+M3l1MUGtgFFZgSTxiKLvJVld0psxxAWDS38VnRHtHjR
         bVy3Is0LltM/0ut5nJmThS+sxU163XYIMTPuyifAs2NB+Z1B56FD9Qni2+HWu+eVBLjo
         l7IQo5YxsX4/FlAQ7xz5fvjh5h2nHQUIecFFBNfLczTRaspes1HooeIQPuPtJ5pAFwtn
         p3Xn2UWEoIXtEVRB5/CTqF7hJt5lu6lm0Et7ube252Ynssl/fTcUzOpkUNFUJYjEtKqF
         PONg==
X-Gm-Message-State: APf1xPAZA3PYAXE3pKco9xcFOi3wQrjPRRVMTaZm09qy3zqtz+SsArlh
	drQm7nHCL38PoeOgjfjc1q+7E652pqE46ZyWag==
X-Google-Smtp-Source: AH8x224B94c7hhPdfxuah/Dm/iRy1HyCIIypmqKFmqBB6HPdXdRRWlaxyiz0gLDiTDj5vZmLsOHj2wUQ3WcRXuE9w+Y=
X-Received: by 10.46.66.143 with SMTP id h15mr66466ljf.42.1518113940525; Thu,
 08 Feb 2018 10:19:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.46.54.22 with HTTP; Thu, 8 Feb 2018 10:18:59 -0800 (PST)
In-Reply-To: <20180208153922.12562.27581@slab.local>
References: <20180208153922.12562.27581@slab.local>
From: Tanmay Nashte <gtanmaynashte@gmail.com>
Date: Thu, 8 Feb 2018 23:48:59 +0530
Message-ID: <CAGS-9LojBn6o9gT5nqY7Uazoz_ko1LLBVTa8Vhsvj2q4RhssSA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for gtanmaynashte@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="94eb2c1ce0302754e10564b77226"

--94eb2c1ce0302754e10564b77226
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, Feb 8, 2018 at 9:09 PM, <kurt@seifried.org> wrote:

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

--94eb2c1ce0302754e10564b77226
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept</div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On Thu, Feb 8, 2018 at 9:09 PM,  <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation emai=
l sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"n=
oreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to accep=
t the MITRE CVE Terms of Use (assuming you filled out the CVE form and want=
 one, we can&#39;t use the data until you accept the MITRE CVE Terms of Use=
).<br>
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
</blockquote></div><br></div>

--94eb2c1ce0302754e10564b77226--
