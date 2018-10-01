Delivered-To: kurt@seifried.org
Received: by 2002:ac9:1c8c:0:0:0:0:0 with SMTP id l12-v6csp893735ocg;
        Fri, 28 Sep 2018 08:30:20 -0700 (PDT)
X-Received: by 2002:a0c:89e6:: with SMTP id 35-v6mr12622106qvs.240.1538148620648;
        Fri, 28 Sep 2018 08:30:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538148620; cv=none;
        d=google.com; s=arc-20160816;
        b=xNaGihGupxuIe9QJ9uNg70G5weWlgU+R1bYbh4AT3Nw7HxAV/4i1bO/F8ndvTFznj6
         0lF/Zi163XAD25OAsCEQNmH8V9flsuV3rUFc5si44fVnipX70XK42mBZ33IssOJbUUsD
         S9dOI0Omco1GWtQIL9eIsb+UeE9dkLOD0C4xV5IKdnl06flakR4e2eJg3JC1BJX6AfFq
         TqTKGtzvIehgtcbz4Y5Y7Jqbah5xoO80zDx3t8Q3Pz+wfbwgK8EvodsxVP038ERVEv4a
         w7gvVy/aD1WhEm6EGkA72twZoXJl70QVEPWbxInXxJINCmWDUA+K70TexK4pqSGdPr/c
         NZqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=qZi5iw3P9zXl7SBqnYBlHoNyQFCcVk/z9S6IujeOzUU=;
        b=rEC5p2hMmtqxHc3zjKv6YbK0TmPkOjj09EjNzM/fUt/dDU8ves25Q5iE12qkyEU3Jj
         fZIpE+8KePKCqZBpB0wFtP78sORJqw2RO35W5OqfvtLXXoADncVI9gsFzmyA0yOPwM48
         d47pL/cFUYYOGQtpUmzCjKnoAXURlLTmKIova3xwVOABC7RPZKpi1gnB1J8DE5TJPbaq
         F19ZeUwlZaB8I57A7DybWfDJUpPEsvX0rSkF9R/fUMAz29gZiH+eb1K4FUL+Wa/u0wt6
         kv1bAoseFOyk1mrs5dR+Slgg20qtvDRhQfCBBcvFwkji1HxFqX3+4lsmcq7+f4Ww3B3u
         fYcA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@objectcomputing-com.20150623.gappssmtp.com header.s=20150623 header.b=YDj5eVNp;
       spf=pass (google.com: domain of lopezi@objectcomputing.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=lopezi@objectcomputing.com
Return-Path: <lopezi@objectcomputing.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 193-v6sor2808985qkm.123.2018.09.28.08.30.20
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 28 Sep 2018 08:30:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of lopezi@objectcomputing.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@objectcomputing-com.20150623.gappssmtp.com header.s=20150623 header.b=YDj5eVNp;
       spf=pass (google.com: domain of lopezi@objectcomputing.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=lopezi@objectcomputing.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=objectcomputing-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=qZi5iw3P9zXl7SBqnYBlHoNyQFCcVk/z9S6IujeOzUU=;
        b=YDj5eVNp+wFg8A/9OOv8O1Fwy2eM0OTU2r/KK6OhwRhFYpWLoNi9LqmlaZB3BEFEZ8
         Av2FcUaNBs4hpTMbyplFnAbKShF5VYgmu2Zzf6ieE3KrPKDR02et2Bbacm0StnFqWdxz
         tkNw2jE3kKwl17JoeBpE40WTun7ke5V3tC6DX7/PpZEylgSHS9wd8vHYvL9P1MqOUk8W
         I3WNL+cpqJhwnqfAEzOS24pmpM5ZmbPHQO88IvUtMjZheRFaSvscSJ3dtvD5mgmuLytT
         r4lrfeX6BdanaSwHgKaWBpKWybKhvObBESEibvLGHy0f7sOPd64PT97U/LJmedF0Tvyw
         oXaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=qZi5iw3P9zXl7SBqnYBlHoNyQFCcVk/z9S6IujeOzUU=;
        b=Cl6kfA22Dz+R/soIMzvAvEtEy6h5EEF4VxTpz3YOTh3nANS0f7XDWhd9gfpfWdlw2c
         YF2o4TwyffsTqmxqKLPbDmdzOrpmW6DHDgadW9S+/tT9dghJI5772FK/OY4Rqae5Y4hR
         hjlyOnNsQ1obPgkNa3tHsn5JqwATHBP1M+XG65XO6Hcnbm8s3QB1wXDCFpbLc05Ei5SO
         uzrg951yOUKnqGGPmtrWrEkjPpIGYaMJwgyKpO8k6/iL5VG54GHDtwUykPYkDhtsD+sf
         spQFHnwe83edWHbY6GPq4DKlvAXxkeIdIHWeQpfmHuhx3x/hu3+qf/I9GIvJej+8zAGL
         ex4Q==
X-Gm-Message-State: ABuFfogitkQMeLv9Mprqkrm7d2EewYNtLeGYocNVEYL6jebBC1PCnIGx
	5r4SO4vb8yYv+9TX3XQe80ocZRa5QrCxj6OoZCkxs6Sj
X-Google-Smtp-Source: ACcGV61C4UOekHIygNA0ZrPn78um16x7a9zQEFYRofl85i/ICtqTWDWZd+yV1FCV9TSV3Jf1HIWVzmUoeyffC0qY7Jc=
X-Received: by 2002:a37:51d5:: with SMTP id f204-v6mr11706145qkb.265.1538148620116;
 Fri, 28 Sep 2018 08:30:20 -0700 (PDT)
MIME-Version: 1.0
References: <20180928152849.22875.93444@shiny-2.local>
In-Reply-To: <20180928152849.22875.93444@shiny-2.local>
From: =?UTF-8?B?SXbDoW4gTMOzcGV6?= <lopezi@objectcomputing.com>
Date: Fri, 28 Sep 2018 17:30:08 +0200
Message-ID: <CAKo++z_2sDtTEDMCTebe0jsC6z8fuHSoN9JiFS2GxEk_YE6BYw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for lopezi@objectcomputing.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000001d3a0a0576f02222"

--0000000000001d3a0a0576f02222
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Fri, Sep 28, 2018 at 5:28 PM <kurt@seifried.org> wrote:

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

--0000000000001d3a0a0576f02222
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smart=
mail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"=
><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div d=
ir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div style=3D"font-size:small"=
><div>I accept</div></div></div></div></div></div></div></div></div></div><=
/div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On F=
ri, Sep 28, 2018 at 5:28 PM &lt;<a href=3D"mailto:kurt@seifried.org">kurt@s=
eifried.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is =
a confirmation email sent from CVE request form at <a href=3D"https://iwant=
acve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> =
asking you to accept the MITRE CVE Terms of Use (assuming you filled out th=
e CVE form and want one, we can&#39;t use the data until you accept the MIT=
RE CVE Terms of Use). <br>
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
</blockquote></div></div>

--0000000000001d3a0a0576f02222--
