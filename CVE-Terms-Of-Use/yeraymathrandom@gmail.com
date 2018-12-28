Delivered-To: kurt@seifried.org
Received: by 10.79.153.144 with SMTP id a16csp2221460ivh;
        Thu, 25 Jan 2018 09:05:56 -0800 (PST)
X-Received: by 10.80.241.89 with SMTP id z25mr31186235edl.104.1516899956378;
        Thu, 25 Jan 2018 09:05:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1516899956; cv=none;
        d=google.com; s=arc-20160816;
        b=Z8/TxnmC5E59N213cRO1GrT2urqykliw78klPLd2GgVYX0MCa3hY/oGpb72Lv2N3RY
         RTiXsY45DdoKPmIhRtH5lB/fZsV5GixMqQ7LoI80JcuGvVuuo8nTb+/1LlQI84JC9A9c
         PDbwPhUYD/8PzSSU8TP1gFkV03J+u4XHvZH95hCMyhaHcbcEEWBTbJLHr6Ky1RSsLj9T
         man9FbWOyAzj9STIvyHomNIh373jwKIBq+dnwymzSZmq66jgr3FbATF3g8821XchU9uA
         Zgn1kdb9oEQhigK8J9xJLCWVmK+H5bCBzyjHmIMThkFqDZ2FhoynV4TvqhH7cbUOQakr
         iyog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=XznbrIw0mH6cK2qnM5DZZcFyeg3/pirZxZ2SS1bqEYI=;
        b=ymMHgKA07G2Ja2UYJZMDd9wXqUa0u7qGjYiDluZE8Tb14owWIsLWe3OXKo+7LZAyKl
         LVFB2UVRVdDAKSwB/PdOp/3A3VJl3GJSLsuHTjVM3/WZvGMy42jVWkXA2IQQP1IbWHgD
         zCS0A1fBD2vYD5zSigQXXRvyDo9nbeCqYGh3f2CwrI0GrrdZbdZOhdpoRkYYq7KxFk4v
         xRCVsvX4RWTO+Xvb46FgfPehT1eH/Pg2bUoAzhIr6sTLpJBE4ilVHTi/bW9oD0LdoNIB
         y4B9Xz5FhWDTx4+cn6zWBAWdsswOXRJ25flbLbhc8Ezg63orfDYih5Z0z/rf3U9RhES8
         nJKw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jCHEn/++;
       spf=pass (google.com: domain of yeraymathrandom@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=yeraymathrandom@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <yeraymathrandom@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 88sor1946471edq.31.2018.01.25.09.05.56
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 25 Jan 2018 09:05:56 -0800 (PST)
Received-SPF: pass (google.com: domain of yeraymathrandom@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jCHEn/++;
       spf=pass (google.com: domain of yeraymathrandom@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=yeraymathrandom@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=XznbrIw0mH6cK2qnM5DZZcFyeg3/pirZxZ2SS1bqEYI=;
        b=jCHEn/++kbwNBgJhOqKaasFsZ+dBDkphOoM5pSU3VuzFQ+Eb1t7s8Xc1TickOVmEDK
         rE0oKQJbVfSCxa+AxPI2wd4VG3Ay9pH6ZC0/lMsG3sMqQD/2gMsoB8dZdpM7I8YHT2RT
         xRBuHcf4GxdkTH7v42Ac0KMMRuCYHM3nTK8VkQfxiBjoW5RiDh63hDAfJgUaRmhEKrUz
         jlbTbXPZqBRw8/Htcrn6++1bImhLkY6GCjL40gwADCWUkaU2qZLg/EyFc60yv8dFaYfd
         0Lct5FY69OhmSMnXQZ+KoAxIO5SRNo37IApaeBQIIga+sx1l2It7njZLUvfhipAJ2qU/
         zieg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=XznbrIw0mH6cK2qnM5DZZcFyeg3/pirZxZ2SS1bqEYI=;
        b=lqTzoSBDnkPgcLAgoTSeQxqS+GhaPAyHRSqi8Rib8Crk29KVsYItSciTtMEzZIfVtX
         1FWCzvB+LfWc2FrnA5uusrAC1VphZVU2EVsj8GLyRzrjHqW3Uy3dheUKGKWhXidRm+wI
         Rx9QNaxs2LSZfw+kFMmMWANfr7+4rUBLb/eFxwwlfYk2Om1nVCoc6waCs5MeGP1K3biR
         pSud9RsUkMCsyl8otLtxVEgsRhOoiDUI6MhZf0Lfc+ZAwJ83xLbpb6kgaLGJL+DEkmv8
         eRn/Jk+LEnhEGl9RcopZyCNBMr1vcYGCmUnvmoHsMZxcKANnidCr4/Yc4in3bhtFI31X
         bPJA==
X-Gm-Message-State: AKwxyte3yCzWuDjb3NzbYneqym8S9bvwQN0WBSWI6aN1M8R0gN5H/wM7
	OD7wvLtCPaZYVgQkeIpYNoeLkAiNhjmpeGbeaGMjGw==
X-Google-Smtp-Source: AH8x2241JO3QjiNn/63d0R0q1CnhS20zPpsilfU00tdqayiCnqFQY+WmbWW2Q2PjysTHyZuVXLb/dXyMFFGrhFI1vFU=
X-Received: by 10.80.226.203 with SMTP id q11mr31130967edl.248.1516899955676;
 Thu, 25 Jan 2018 09:05:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.219.198 with HTTP; Thu, 25 Jan 2018 09:05:54 -0800 (PST)
Received: by 10.80.219.198 with HTTP; Thu, 25 Jan 2018 09:05:54 -0800 (PST)
In-Reply-To: <20180125170514.4519.6747@slab.local>
References: <20180125170514.4519.6747@slab.local>
From: =?UTF-8?Q?Yeray_Fern=C3=A1ndez_Mart=C3=ADnez?= <yeraymathrandom@gmail.com>
Date: Thu, 25 Jan 2018 18:05:54 +0100
Message-ID: <CAJ_DnMfOW09HfUumA=GayCnjDxtOecS7eOf0XHkD2VHi-SLHYw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for yeraymathrandom@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="f403043e32cc049ae605639ccbf8"

--f403043e32cc049ae605639ccbf8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I accept.

El 25 ene. 2018 6:05 p. m., <kurt@seifried.org> escribi=C3=B3:

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

--f403043e32cc049ae605639ccbf8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Yes, I accept.=C2=A0</div><div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">El 25 ene. 2018 6:05 p. m.,  &lt;<a href=3D"mail=
to:kurt@seifried.org">kurt@seifried.org</a>&gt; escribi=C3=B3:<br type=3D"a=
ttribution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">This is a confirmation email sen=
t from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"norefe=
rrer" target=3D"_blank">https://iwantacve.org/</a> asking you to accept the=
 MITRE CVE Terms of Use (assuming you filled out the CVE form and want one,=
 we can&#39;t use the data until you accept the MITRE CVE Terms of Use).<br=
>
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

--f403043e32cc049ae605639ccbf8--
