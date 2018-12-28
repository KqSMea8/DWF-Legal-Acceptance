Delivered-To: kurt@seifried.org
Received: by 10.79.153.144 with SMTP id a16csp2824743ivh;
        Thu, 8 Feb 2018 12:38:54 -0800 (PST)
X-Received: by 10.223.195.141 with SMTP id p13mr361840wrf.19.1518122334241;
        Thu, 08 Feb 2018 12:38:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518122334; cv=none;
        d=google.com; s=arc-20160816;
        b=Y8Rt8hbKtTo+cyzoIK3JBbB5qTmnKcqceM+JwN2RqqS5zpWKOIFrfNaG5e/MDsBhC4
         zFfczPSvK06oJYK6iFeL+bwvKnojvbfoablAa+9IM1DzDE9zb+lcsVsp2+xO8V6Kvboq
         2K5qcga+1j2VBIluRtTt9XXObtuhyfEJx+Gz4j0JA5zh0zHwbjuVo2EOycgn4Nl29VKD
         l5mXQLeE7EIt9T8jgSiHVLcBs8XCB23xsWgmiC9HY+pTbaIlADfvfzE6vfbOpW590PBy
         /Wj2Q+WDvqODBeyJCHZU5NCnl20Sv0+Fdq7TQTiHpi6iQethrKPnjnUAqEvKkRLhFZE/
         ghlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=rcFlweXS7gahlrZkLshJlueauAIpuiM5l6Rop/ori1M=;
        b=lUmQwc6puMWSKSlPQXG2o4FaKedl7l5/PnjSVvVwkOtPk6K/4kr95nujYPKOYgP9dW
         g+XEU6TflEZT45Mo5ENdA/uHjT/eOGxYvn6lUQnq1KDvmdBcTHqZt3qEzZ6en6Zx3GaR
         RtS6cLJK5enPNl7Eg4gr2qbHdNVCW9v5J1X9mqXBlcLMa1mCmMPRTvEK0tJHUoC+RWo7
         WlMr1RVscIhKTzBoCp2PnTDzyFPHBp2GULQi43QD6pDZh+S1NTaP04PLbVc34vl06a0K
         Qjza7fMYh6emR3wO+L5Vba6+4QdrIkJxqWvgpRfXUPRmtFHDGFCtyozbXRWVRI3oItI1
         ZN5w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@sensu-io.20150623.gappssmtp.com header.s=20150623 header.b=IAslEtYV;
       spf=softfail (google.com: domain of transitioning justin@sensu.io does not designate 209.85.220.41 as permitted sender) smtp.mailfrom=justin@sensu.io
Return-Path: <justin@sensu.io>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id n108sor448917wrb.80.2018.02.08.12.38.53
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 08 Feb 2018 12:38:54 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning justin@sensu.io does not designate 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@sensu-io.20150623.gappssmtp.com header.s=20150623 header.b=IAslEtYV;
       spf=softfail (google.com: domain of transitioning justin@sensu.io does not designate 209.85.220.41 as permitted sender) smtp.mailfrom=justin@sensu.io
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sensu-io.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=rcFlweXS7gahlrZkLshJlueauAIpuiM5l6Rop/ori1M=;
        b=IAslEtYVaeQMqkiIM+bTcEQ/NY6tDxcrefA4iKi6FtrgEv4HIK6O1dJ2Y+wGeXc/ge
         CCZEihidImBLv+d9xzyp9RnLFJHk7n4vms+b9L7vNgT0iTIwrhbwAxAAfTACz1/d9dOI
         8CnRnrRGJJPrlj97htEWObiuJX0xDeAec6enxW7ApIXFXyr2HxSsgyot/m0rDAAwHyzQ
         4W9PbtWbn6tUyBf1oG8yWPmyxjrrqU5hClUnL0RzT/zMJ6xnW2yPcbolevLKP5BGdBiM
         eGdB83Gmr5DbakUBAFoz7e0WcYvnHS5U0aRR98KCYfty3JDBYGBdOHUWSlV1NfmdV7rR
         at0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=rcFlweXS7gahlrZkLshJlueauAIpuiM5l6Rop/ori1M=;
        b=SuOK1JSsOUHxJthccxYPAkA8oFDDzCmgzlo34VujU96ICficayPlTQ2kXopXAxnOtZ
         L1kYEG8164LoYFEn7vkeO/4BXU2EL1dgdvlI2VpihUOi5bR4DgewWEpw2OWDaB03AkGf
         svdrF7r1DGMgbqNYcagwk5wRY6RcK295F0xvlhWFU3us5+l/KcfDzb1UDvemkf5Jh72C
         9bdIMvHrgY8GBIxeU8u/jyqNGbHN2c58lRXODFyyqnmK2sSiRReiy0AWK6J5XksB9PU7
         0TO9hP2aN9DYv1NPAzpaGtkasYHB7EF5Dg4n/mpODambwlV6kEUaGzwTk9sasH7OXc2F
         Rg7w==
X-Gm-Message-State: APf1xPC2E0SIaD8qfMdfdBgUWCZb2RJefD/B33YphYttgZ1WZDH1WMBi
	M2asQ/h3JYqXoc8itAP3CRhM82qyGf1cWqvu5qm8PgDo
X-Google-Smtp-Source: AH8x224fgqkBH0H0mqh7vzxLnZsia3u9u5LcQkXoQF2qBNJhKfu7hXLqRhrFUhypCqBBg0qvGcs4DnVQ6seVTmcuWhY=
X-Received: by 10.223.151.53 with SMTP id r50mr355904wrb.207.1518122333491;
 Thu, 08 Feb 2018 12:38:53 -0800 (PST)
MIME-Version: 1.0
References: <20180208153913.12562.74715@slab.local>
In-Reply-To: <20180208153913.12562.74715@slab.local>
From: Justin Kolberg <justin@sensu.io>
Date: Thu, 08 Feb 2018 20:38:42 +0000
Message-ID: <CAKNfC7cv2w7Y4BFU3ATpABEeM3Z-Fg1ika4XoRuH8MAoF-gbdA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for justin@sensu.io
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="f403045d5a6069e9ce0564b966dd"

--f403045d5a6069e9ce0564b966dd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept.

On Thu, Feb 8, 2018 at 7:39 AM <kurt@seifried.org> wrote:

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
> --

Justin Kolberg | Engineer
http://sensuapp.com | @sensu

--f403045d5a6069e9ce0564b966dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept.<br><div dir=3D"ltr"><div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr">On Thu, Feb 8, 2018 at 7:39 AM &lt;<a href=3D"mail=
to:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">This is a confirmation email sent fro=
m CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer"=
 target=3D"_blank">https://iwantacve.org/</a> asking you to accept the MITR=
E CVE Terms of Use (assuming you filled out the CVE form and want one, we c=
an&#39;t use the data until you accept the MITRE CVE Terms of Use).<br>
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
</blockquote></div></div></div>-- <br><div dir=3D"ltr" class=3D"m_-54424824=
93824055823gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"=
ltr"><p dir=3D"ltr">Justin Kolberg | Engineer<br>
<a href=3D"http://sensuapp.com" target=3D"_blank">http://sensuapp.com</a> |=
 @sensu</p>
</div></div></div>

--f403045d5a6069e9ce0564b966dd--
