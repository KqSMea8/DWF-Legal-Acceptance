Delivered-To: kurt@seifried.org
Received: by 2002:ac9:1c8c:0:0:0:0:0 with SMTP id l12-v6csp893179ocg;
        Fri, 28 Sep 2018 08:29:48 -0700 (PDT)
X-Received: by 2002:a81:8784:: with SMTP id x126-v6mr9042639ywf.362.1538148588651;
        Fri, 28 Sep 2018 08:29:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538148588; cv=none;
        d=google.com; s=arc-20160816;
        b=YAZGAwjI686loAx+VPWPeUekFATZqlXL5ai7EOMX5JJih/xd78qpVz43313aLumd9X
         yxyPthAZXx+T72BGqeNXv7cjsLK2xDWS9ZvA+lf4T7V1kJnVwG/EIjUNYm3YF5cDf2/z
         hyrbWTp/WE0lR2teCSQzgI7UD4whcp1MVhzmLKR+VltmJknjQhFcpPOECquhlQlrlTmg
         WRtrPlqVDiQunBxKnPuRSNOazstouPaJMslVNHUMtG7NVl/ZPTK+xPwI3s3bP1Qwlxbq
         4VPBqt6KrfMqDUdMDYo8sN2+HuvxUdAr8vNXnI25kLcW7+CJKLYx6iBconH1bpeVL5Hs
         q8Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=2+hxqXXWvkMIMlrs4i6TaC8QWA2J288tLzPTro9x4MM=;
        b=bgBZokcG4K93jO/igHgywhyzDE+2pihOxcTusYEaMj+5MLCZ87p3bMESkW1BXHVci7
         Iqzf86jSjLPXopz8JptR8h4G2fIgAHBRDJDo5cs7yVznRSrGVN8OueYQUqfeuSzdrzyY
         2M8CE9x+Wk7w4caVvaGRODSplHGIqGmr9bzgtbj/UzHVf0OJlcv8OtnjxxoU8SR/NYhu
         DtTlbkK1lFfh+HgcZEiRbdHfzbqM/yvsxACYrwmvFGThETYseSIGARJLfjRwDc6bk7E2
         994Hzzq55ebcUUezEoKsJKsHXyYxRNmyzbYi3pmxs39LomUNNe0lIwL0iX8eok6XnAf9
         L53g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="c3iO/Yyr";
       spf=pass (google.com: domain of arthurnn@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=arthurnn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arthurnn@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a2-v6sor342939ywh.463.2018.09.28.08.29.48
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 28 Sep 2018 08:29:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of arthurnn@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="c3iO/Yyr";
       spf=pass (google.com: domain of arthurnn@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=arthurnn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=2+hxqXXWvkMIMlrs4i6TaC8QWA2J288tLzPTro9x4MM=;
        b=c3iO/YyrxHrIlkyH9qGd5ytmVv4lS1XBs0ksKhS9F3iNBar/sgT6YdOxsBzgqg5A3O
         5arJvHOmiOBgfX864DV057huciFmriB+UZ6e4Nl9JRL2d9zt0SHeWcBLS5rwJtvHCBaV
         z/gX6AseaFvXnBmzBCd53TcXQ/5QUVmCFficlhHxzj7TZk9hm4Hff/pX3r+YxkHFu7ZX
         11SRkLg0XT1nLbKkQ7KtycIsMBkZmJpqKl2ppZ79V9zz6SkrRJELMktb+/xrgtcKKqcI
         snwfxFNonSkCUfBuJlcm3rzmwqeP6jjjJ2dkTymNa+Ylgiaog1Q9w9YdTxp0U3wfcbJr
         DbXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=2+hxqXXWvkMIMlrs4i6TaC8QWA2J288tLzPTro9x4MM=;
        b=GgRG23g+mMKIyKsr0q2IpKLa7Ql5DyKcO7bRC6E7QIoaoSNpQOIxZw3wNu58M0G+TW
         a1lLIVhoc4ToMi6JUXW8RyyBALueiPE1GC4WYA31IGclM/E288cA/SEtk4vbL8X8C5rg
         uCFx6LaK5GEOWTOVzUKx0dBsWyKqEPt+jE+j7C+MYFJdW2mQH36hm+PA6PAUGvQI1IaN
         f5rxP9BZALLibrOH+3/MbdiWtx3Bik/zF7wT9cVHDVqnWaEEJNmCIaaygeXCbBwz9XPx
         uVDPQRzyVEw1bfdS3+wAjMmRvG8dL2C2o6zqK6Tpsz+ODU19nZQH1f6l/tgz66DFtMDQ
         qqNQ==
X-Gm-Message-State: ABuFfojOahWCnT4H1bHqLPMkYCFG94fatBdf8N+Aa0eb3XDwe3iEL6XN
	bhUBZ/Lg3bkBEUe/Ur5esl2NB7KRtj+Ppo+GK4/hPDwh
X-Google-Smtp-Source: ACcGV63Tnpsz5k1lOcLIBPKkjNkCPRAxj5FgSHcfhDAMdGUdVmeB5lkG/FVvy8phLQAWWNIZAsoXJgEyRICjnBW1rsw=
X-Received: by 2002:a81:ae04:: with SMTP id m4-v6mr8735981ywh.474.1538148587976;
 Fri, 28 Sep 2018 08:29:47 -0700 (PDT)
MIME-Version: 1.0
References: <20180928152840.22875.97490@shiny-2.local>
In-Reply-To: <20180928152840.22875.97490@shiny-2.local>
From: Arthur Neves <arthurnn@gmail.com>
Date: Fri, 28 Sep 2018 11:29:36 -0400
Message-ID: <CAA6kw-9MQaD_=S-jmFao2Oj3HUa2eG2OS5+Wv6DerKUdCdQuyw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for arthurnn@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="00000000000032bcf10576f02058"

--00000000000032bcf10576f02058
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I accept.

On Fri, Sep 28, 2018 at 11:28 AM <kurt@seifried.org> wrote:

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

--=20
Arthur Nogueira Neves

--00000000000032bcf10576f02058
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, I accept.=C2=A0<br></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr">On Fri, Sep 28, 2018 at 11:28 AM &lt;<a href=3D"mailto:=
kurt@seifried.org">kurt@seifried.org</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">This is a confirmation email sent from CVE request form at=
 <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">ht=
tps://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (a=
ssuming you filled out the CVE form and want one, we can&#39;t use the data=
 until you accept the MITRE CVE Terms of Use). <br>
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
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"l=
tr"><div>Arthur Nogueira Neves<br></div></div></div>

--00000000000032bcf10576f02058--
