Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp845913uaa;
        Thu, 6 Apr 2017 13:10:03 -0700 (PDT)
X-Received: by 10.157.14.202 with SMTP id 68mr11525130otj.62.1491509403413;
        Thu, 06 Apr 2017 13:10:03 -0700 (PDT)
Return-Path: <uriahl@jfrog.com>
Received: from mail-oi0-x22a.google.com (mail-oi0-x22a.google.com. [2607:f8b0:4003:c06::22a])
        by mx.google.com with ESMTPS id w131si1286424oia.284.2017.04.06.13.10.03
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 13:10:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of uriahl@jfrog.com designates 2607:f8b0:4003:c06::22a as permitted sender) client-ip=2607:f8b0:4003:c06::22a;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@jfrog.com;
       spf=pass (google.com: domain of uriahl@jfrog.com designates 2607:f8b0:4003:c06::22a as permitted sender) smtp.mailfrom=uriahl@jfrog.com
Received: by mail-oi0-x22a.google.com with SMTP id f193so64480076oib.2
        for <kurt@seifried.org>; Thu, 06 Apr 2017 13:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jfrog.com; s=jfrogcom;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=FfuOFgDh0enkPyVHQNncPHJTaaUcIG+MIufYbqIfu3s=;
        b=oL85IXaxE9QGgTX4nC+Q9m5Vb892ns+h1L1KqpfmpIT001nyvRzvOyCiCcJRUpjH0G
         KisR68pkMMnla5IwDPl1NbG6yN+/ujxtpwcItF/jeNXs+zy4lCbBeV8AvS575YROskSG
         +YkVDnNxqszYbXUJyE5m6SK0tv6YrOsBzvRkI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=FfuOFgDh0enkPyVHQNncPHJTaaUcIG+MIufYbqIfu3s=;
        b=bmvtKQACk0D2AHASqOnMBCuAkAEGHyizw3RhyGN4QG/DEUlhjhqEBrbAtIdMT5ZxWT
         ENC63Je+DMnDDgYY+q1yCcgcEhBx4Rpwr9kGhOHZ/JnusOSGT2sQtc9OGKEAIwyMFzIW
         fk/9gRAjuhqQePeIe7jboBAHw+NJhQnTFtAykfFIjE2W8wyv1WI9VijgcgfguKI6iHJ5
         mqH5Wj6rGEOQZEw6kEFWxOaMinmA97tzfWN3i5BOvo9GZXTWM2c+m+QsI0i+oh3Q1kaI
         T/eZQkFXZWBXnLegYUApzlKmVCMl/ZccrUbEK588Smw0zX10wf0fA8AAEheh6qxs3s+4
         7PGQ==
X-Gm-Message-State: AFeK/H2LufEuwXM4oiqrd5NkVLTu4v1KuzoyHrvMNBW4uu2hccRQYz/9K1hme52uOrOBrf7DHbwsIHfLOE3HkzKt
X-Received: by 10.157.24.7 with SMTP id b7mr20815416ote.178.1491509402803;
 Thu, 06 Apr 2017 13:10:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.80.1 with HTTP; Thu, 6 Apr 2017 13:10:02 -0700 (PDT)
In-Reply-To: <20170406195851.4090.11041@shiny-2.local>
References: <20170406195851.4090.11041@shiny-2.local>
From: Uriah Levy <uriahl@jfrog.com>
Date: Thu, 6 Apr 2017 13:10:02 -0700
Message-ID: <CABXB1XB+yPbdZc5TgePH2Gk-dnsZuQV708mpzo-f+6YGLNpVSA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for uriahl@jfrog.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=001a11353d54223be6054c8518f2

--001a11353d54223be6054c8518f2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, Apr 6, 2017 at 12:58 PM, <kurt@seifried.org> wrote:

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

--001a11353d54223be6054c8518f2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On Thu, Apr 6, 2017 at 12:58 PM,  <span dir=3D"ltr">&lt;<a href=3D"=
mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">This is a confirmation email sen=
t from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"norefe=
rrer" target=3D"_blank">https://iwantacve.org/</a> asking you to accept the=
 MITRE CVE Terms of Use (assuming you filled out the CVE form and want one,=
 we can&#39;t use the data until you accept the MITRE CVE Terms of Use).<br=
>
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
</blockquote></div><br></div></div>

--001a11353d54223be6054c8518f2--
