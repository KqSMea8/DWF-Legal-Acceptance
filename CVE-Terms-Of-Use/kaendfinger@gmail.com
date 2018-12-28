Delivered-To: kurt@seifried.org
Received: by 10.79.67.129 with SMTP id q123csp2724921iva;
        Wed, 10 Jan 2018 11:13:09 -0800 (PST)
X-Received: by 10.129.48.148 with SMTP id w142mr10606775yww.333.1515611589433;
        Wed, 10 Jan 2018 11:13:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1515611589; cv=none;
        d=google.com; s=arc-20160816;
        b=frersO+PM+Uz6uHESli2FaIo/TGXfJgoTd6N6aA9/FZzojMieOQkIViML6YvOuLPRQ
         1WppeZ2e+FdraA9XLGQ9rJuc//cjAlt7mGCEIzGmANahvHflqzEgmAcW4e6mLsnAS0H3
         +l2KMfHtSqpDvkzNcM9SJbPsrBK4cotcWYLtbTsGK4J1F6zHUgCrbEh9Tr9lUESz8Jsk
         BU/XQHn3vPXbJbYxhVFRvRZFASGkjYG3niei4EZCHfXDaUNrLB70WcuCeHoVi6SXeniI
         x6bR8IBd4EgM6HR23h6VsFv2TAu5Y3CfNm79vPxHGRvr4ATepvCiNjdkU6cUUmgnfRDZ
         nx8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=5hwiggPtxccPP6WeYqo3XEwd6+6LbaWXLGRkDXDDJLw=;
        b=XAznz0qWqVYGrqRibP5c8m+jGp4D/VukPZVwr2xiaklAU1wMao2mfRvm8k337zPdrA
         D0iQGjLG6ZUp5ajZLhGC4qWcBBMllj6j/rTeBqJYzu1COM2YZZagrXWEw7+yvwlCl2RJ
         FkHVwVJkuet+23Pw+7Bc6jmJB0iAEhH03d2Ig/DIlgZaKPOkUCDBVw4raezg2Mn+1lt8
         cjXHEToAMBiEv58eFEp9XCAx1R3OPQJfj7TNfO280jToPV1iLpC05TjvcnRQRlB2BE/U
         zi3Fq+6njcPiRJe0BzlSGNjteXj4ytqApgIkQqKBb86RI2M+PDS+TupldsWkhO1WPHVW
         uvFA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=id0kf+/G;
       spf=pass (google.com: domain of kaendfinger@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=kaendfinger@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <kaendfinger@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id x130sor4178136ybx.76.2018.01.10.11.13.09
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 10 Jan 2018 11:13:09 -0800 (PST)
Received-SPF: pass (google.com: domain of kaendfinger@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=id0kf+/G;
       spf=pass (google.com: domain of kaendfinger@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=kaendfinger@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=5hwiggPtxccPP6WeYqo3XEwd6+6LbaWXLGRkDXDDJLw=;
        b=id0kf+/G90L3Q/Tu9o6iexSJdd8vwvbHy1avj62sPnLM9J1mu9VgiNGhCe0BBnmgav
         DNl6yt2Oaf72hXhXcXofASAVm+y6YMYKCIyJe42DvY0/CdTWc9cxKfjgOmj/7GYTzsAk
         9GMTMn94It4SMWC+3dbfwifJcg2Z1kkm//V+e9FSUnUQESsLosuvpAgcZDz3RkL4LSV2
         gi4eUR75f/RQVdsB6pTOUIXbq5wXgvEP1I0/brhlRooj34T/LxSTBp2TKuoNcizVV+Oh
         5zPGGC8ENqi08DnAROeCY3tueSEDtF6fd4vmsboN8dbrkCa/dDRXEKE5Em4H/VGWRMHm
         ljBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=5hwiggPtxccPP6WeYqo3XEwd6+6LbaWXLGRkDXDDJLw=;
        b=o/tgENdUgb6StVIYp6w+maudNN0LJMs7wZZT1/qFifT4D8sPmH3+tpOuon2z7VcTo2
         OHlxsSrQyAy2zhbZosGPA3lE/p7DZZ4KMh/vXk35dnhf8gM3AqQHP0Tx/6NuVtVhVXCE
         crV5d8CpmleIxka7W+3/SliEJG9STJajm4eeV142u24yOwL37LqbkkndC9xEsgKAudyE
         oI32adb1wqDGCwRrfe83Nwsi2nvWBNwPKykIIsDKCiE6YFyqfzzY5gCsLy99C9S8Zh3s
         ZMyihd5ZCifcvuG5wuO3i9Vx5dBo6rfQdiDsrR1DmTsOCxsGE7nkznEdmbfMaVosTb46
         5nbQ==
X-Gm-Message-State: AKGB3mIylMs4kTER+6218nY2WwY3si+1cL+CJoB7STgRl7VnpObFFFBa
	a+Jj+2Cn2jb2T4KucQ6/SlDa7GaGJdj/fPNy96EEoA==
X-Google-Smtp-Source: ACJfBovrF5bz3PVq9QqPzEgD1S30A/qfGqwTgzy8fNqC3GEsYiVm7vpfCy2RruF9ZgwGYTlyrng9GTclJfnxH9Sbqy0=
X-Received: by 10.37.188.146 with SMTP id e18mr11579511ybk.371.1515611588898;
 Wed, 10 Jan 2018 11:13:08 -0800 (PST)
MIME-Version: 1.0
References: <20180110191145.72975.39667@slab.local>
In-Reply-To: <20180110191145.72975.39667@slab.local>
From: Kenneth Endfinger <kaendfinger@gmail.com>
Date: Wed, 10 Jan 2018 19:12:57 +0000
Message-ID: <CABW5C_S_g_pB2wYNt7BfvtLe8V-nuD85oHgtmXwZJ2Kiemq=6g@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for kaendfinger@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="089e082676205fb696056270d200"

--089e082676205fb696056270d200
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Wed, Jan 10, 2018 at 2:11 PM <kurt@seifried.org> wrote:

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

--089e082676205fb696056270d200
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">I accept</div><br><div class=3D"gmail_quote"><div>On=
 Wed, Jan 10, 2018 at 2:11 PM &lt;<a href=3D"mailto:kurt@seifried.org">kurt=
@seifried.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This i=
s a confirmation email sent from CVE request form at <a href=3D"https://iwa=
ntacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a=
> asking you to accept the MITRE CVE Terms of Use (assuming you filled out =
the CVE form and want one, we can&#39;t use the data until you accept the M=
ITRE CVE Terms of Use).<br>
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

--089e082676205fb696056270d200--
