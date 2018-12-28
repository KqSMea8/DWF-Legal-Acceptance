Delivered-To: kurt@seifried.org
Received: by 10.103.27.130 with SMTP id b124csp1101066vsb;
        Fri, 18 Aug 2017 12:31:59 -0700 (PDT)
X-Received: by 10.46.87.93 with SMTP id r29mr3693765ljd.8.1503084719749;
        Fri, 18 Aug 2017 12:31:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1503084719; cv=none;
        d=google.com; s=arc-20160816;
        b=l8x0qpiotE7PxRTtX8TgK1PAEAB4Uyys9EcLVQx7gzo5rva2MmleLARitZkmKJ37qt
         YVG2vhcz24fPZPNua51MXrKnQTJvHbudBTliWOie0lUzkB/w3Rt+IxCdbGjTVQ8thHpD
         S+kz8VCX7EzzpKKQRobrOV9Bb6foPONAn8yWD21fNyxcUtpAXiVLLtYawUSnq7Ikf3l3
         xC2hPWyTckxnm4SNtKR8d67PyIjb5uGlFMfTcXaq1JSErg25yTIXX+qdolU7sudUVRcQ
         A+oDny82VLvYkHK6Yt4yBqI2sBVV2vGdM/5ODrSpNkYNcOUCFAXpU7H1r4eejRlB63dZ
         8Jew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=fs+q+9pJNjnuvzfCxS+mYSqpOEtC8tzWiW7TcFdpIG8=;
        b=V8iV4E553R032TWalFgna9tV4ixBizjg+e9ucLFbN8sZbfeRsf8YkfwOM7y33ibMaB
         1caJBXSFV5l8wdqjnOXQfsDPfJYlQBboJzU/dVCtI+NQBC4je1RxWgl6owMorJMLsv23
         nP8XMP4WTgU0OpgKO6sAM7oI6xjAlnHWP0/dsNQCAFSMic9qoCslVO5FzV7/N040Iu1L
         pr0oUKY4/OD9wADwMwJHmfT0de6KrZJS60r7l4fqL05a5+w8gbB5nedl7XVQ3rQ/zce7
         QBNLvbkndWCBB0SOV2LJUi5phWngqUBRvpGfLACMQvjnh7u1WHnR5sCanp2e2qCE42NU
         v4ww==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=My93oNaf;
       spf=pass (google.com: domain of kpolulak@gmail.com designates 2a00:1450:4010:c07::231 as permitted sender) smtp.mailfrom=kpolulak@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <kpolulak@gmail.com>
Received: from mail-lf0-x231.google.com (mail-lf0-x231.google.com. [2a00:1450:4010:c07::231])
        by mx.google.com with ESMTPS id d9si2898161lfk.180.2017.08.18.12.31.59
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Aug 2017 12:31:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of kpolulak@gmail.com designates 2a00:1450:4010:c07::231 as permitted sender) client-ip=2a00:1450:4010:c07::231;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=My93oNaf;
       spf=pass (google.com: domain of kpolulak@gmail.com designates 2a00:1450:4010:c07::231 as permitted sender) smtp.mailfrom=kpolulak@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x231.google.com with SMTP id y15so46429012lfd.5
        for <kurt@seifried.org>; Fri, 18 Aug 2017 12:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=fs+q+9pJNjnuvzfCxS+mYSqpOEtC8tzWiW7TcFdpIG8=;
        b=My93oNafm0ZpbATaOAJwli2NuJwAx7qE/8+8K7BH/l65gdryvx0rrJVzd8zOCEvoJh
         EorTYp/1GoDPgmWLI9CIgdVfSrsapJMGGzCOkUhsJUXb/a1+vpffnmUbYuiV7aqsJgjb
         8smUK5q6WxxhC64AxGI4OMyL3gRbz5MnWgQ2OWyIFKOnRbsZcLM87f2/f8dmD0IPthL6
         NBSLhkEU3Zd4Hdv5PFm5lzWYrbV30zHQpTz5seuwMBbM6ItacYL55BeNe3uGc3T764PX
         igTdBa7Y9bqSmAe+YJajfSeNa8Ng6NzozbMP10cXg02EhXa+ESf1ZcUG9M5Mu9WaL5cp
         6H8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=fs+q+9pJNjnuvzfCxS+mYSqpOEtC8tzWiW7TcFdpIG8=;
        b=prH8/TkoY1zs5tW/qAtsg47X/r7HyGrb9XcirS+/rqDNRbRNzyOrMrekj6w2e+Uc8S
         Xzsyu9Du5vmQA/FbGPy4vpEFYkFOKcXQ0PaiADNHVOt2+7rubbIyAtIpQ3YnbXPsUEP/
         2s2c1QZB/gNrMo8aGN2mODctdwi3rZilzAloBtEcAhxXteHpVGmL14AALF8RAjaozGQq
         IMUxg64nW3tHu4OqDYa61vVJ/rBH7K3RnhyJXaRb86Nm9NSLu6n+TanQgUx9XzgtM14M
         L0HcUa3mMVYkBsYrPejjK5JB+Omr8JF1nCw8/lbJGLXq3mCLy6yNTIsNy7a9Y/zHq/5D
         NpjA==
X-Gm-Message-State: AHYfb5gr/wfie3HWrKKtaUC+EFuEombWW2Y7yGniV45k5PWDZIMPR+aj
	zlfIJ/R4MVYYw4MhMTkz77NJx+z+VGEA
X-Received: by 10.46.2.72 with SMTP id 69mr3607391ljc.113.1503084719097; Fri,
 18 Aug 2017 12:31:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.46.32.150 with HTTP; Fri, 18 Aug 2017 12:31:58 -0700 (PDT)
In-Reply-To: <20170818192902.55281.74078@shiny-2.local>
References: <20170818192902.55281.74078@shiny-2.local>
From: Kevin Polulak <kpolulak@gmail.com>
Date: Fri, 18 Aug 2017 15:31:58 -0400
Message-ID: <CAHRX3kzrS_Tib9y3osd4bo+mQUEQh0U9KFBOLnVN4LoA8wYz7w@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for kpolulak@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="94eb2c057e4abfcd1505570c2e3d"

--94eb2c057e4abfcd1505570c2e3d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Fri, Aug 18, 2017 at 3:29 PM, <kurt@seifried.org> wrote:

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
> Database/blob/master/TermsOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--94eb2c057e4abfcd1505570c2e3d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">On Fri, Aug 18, 2017 at 3:29 PM,  <span dir=3D"ltr">&lt;<a href=
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
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" target=3D"_b=
lank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/b=
lob/master/<wbr>TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><div><br></div>
</div></div>

--94eb2c057e4abfcd1505570c2e3d--
