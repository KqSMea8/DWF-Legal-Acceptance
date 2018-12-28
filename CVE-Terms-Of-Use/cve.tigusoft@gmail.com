Delivered-To: kurt@seifried.org
Received: by 10.79.201.12 with SMTP id n12csp644944ivk;
        Fri, 16 Feb 2018 05:38:24 -0800 (PST)
X-Received: by 10.200.2.67 with SMTP id o3mr9521317qtg.142.1518788304675;
        Fri, 16 Feb 2018 05:38:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518788304; cv=none;
        d=google.com; s=arc-20160816;
        b=V1P9rhItHTGEbiZgqGE9C/tjzmG8eNb+ggBp2F1k3l6AkhSr2X2seWcrxd6HRQcY5B
         ICdWT2+gNBt+DHeuBJpb/AAjXCdQM1NxclFA0K3hmQzltdpz1MuBd+ox/xgKFcXxmwkD
         OOOgFzCoyQ4k5W+ZdCip4XEcOflK+NqO5I4DOihtBRSh4cMcsAHiRtIrfAA34yEuqcWc
         x68aAumbzB5YBWvCmtLrkw4FBjyPywJo6+h6aOiMUtfx4l5O0Ou1yWB5hB9W0Rr+159q
         JojmSJMDtE66hHkwSeuTxwEPTAhkh/k/4dd7cmGiK10UtvmZsjHmKQExIcOJyCI3VDyz
         8JXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=vJeSGoMzuJOq2rJYlceVDaS6jMr07QT/VZvlbOHYNUk=;
        b=Ew7RXWgDcvCIkC8qlXcQVOL9FSF62+VoEGjrLbyDEeT8CBCnfJm+UCdoi4HxdLqopG
         mLFh45RED028TsU9Y+Ogjx6YvBobW5Nxd/lHOvMyRXIGETxZ31+x5wg6PGp9aszRvxAv
         7JxPGZasksBEH/+40rpGXWtdNr40w1JfbqprzJ5GtNsTB7mOh5gVLLzJtc6cj3LMjAZ9
         6D16TAH+xcCnRNHOzcc2Yju4vC5hkEXVSwed8/M5zbd/PQRSuI96GSnXWlCGKR57goSX
         eXn0NQ0aOX6OwDpYuGBV0lblCnKFidrEpewcBwEy9fE4spLp7NzlSDCdzyuurvUtmVq6
         Qnbw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dK7X7MO5;
       spf=pass (google.com: domain of cve.tigusoft@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=cve.tigusoft@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cve.tigusoft@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d190sor1690698qka.138.2018.02.16.05.38.24
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 16 Feb 2018 05:38:24 -0800 (PST)
Received-SPF: pass (google.com: domain of cve.tigusoft@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dK7X7MO5;
       spf=pass (google.com: domain of cve.tigusoft@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=cve.tigusoft@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=vJeSGoMzuJOq2rJYlceVDaS6jMr07QT/VZvlbOHYNUk=;
        b=dK7X7MO5l3a+XSpwI/yWf1YVp1MxzKnKVf9i03gIYaQU0ZQ3/uyJBjloeHy/8h8bB/
         iLHCTuOLeoes5pLZ6SWSwpdsaBWzAWMQtiZdpZ1Xfwd7gJFzcYZCHAujrhvM6T5PC840
         wE8JxNuXAoFoNAn0X/gGx5rdjFW9bzPEwdBYWle1UeW5v/ERXURrXwwwVEMRBRh8HWke
         MQj0yCbMpDRjyferLmdI+rxDyFUm3eQHCatPv8kqNOwB+L2StX+aYC7InQT58nvKFTw+
         A3i8gTZm9FgMyvMwUe4KLdbtxRlaGucuskHzQ8aM4rzvPxS8Uaj70VcQADNdzJKyKM+a
         OAcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=vJeSGoMzuJOq2rJYlceVDaS6jMr07QT/VZvlbOHYNUk=;
        b=TFvTAYPapbA4TUYPfMIvf/ZEZfGnuedJFVHbnXNMnRv1GNJZVLluP4rhXffsp1dvxO
         9wNtHLZYrG+Bb/B/LG+6cwONNNKAu+Wj2IQ025dpZvBUW/vhtOSjZjv3uHgT/eXamMns
         f68sc7CSpjEZ/wP3kTZSFXSekWPy6hSOueAjnVC7F7QhjeWXvWsX1yOWpzPf9JNEKJL9
         vgzWtjC7ByINNmYo1OjUEW2dJdEdQ+TqcwJ4JrrAjnpQdBXCztGQouIL3y3m6BlCcBiN
         e56PCZuCAvlfqdvxzyEsP30MScze3ONoiVBC3D1X0a0Tg70t7TS5MVQ91JwzV3mbQIbk
         sP4g==
X-Gm-Message-State: APf1xPDgK5v/OcdXQ3fL3+rK+l9Rf7fFvsCXwa9IqaESwgG3rLQ2wiQl
	IN1bWKqP41sM9sJ64lVH/KETpMsHiMFnD4PT409EgWM=
X-Google-Smtp-Source: AH8x224e+C1xWp440YZ3CfwZEmzMQbUzVPYqxBNgZLloFkCZF1qibQ8lZ2oA7x0ejMjdUAik0kgELgxFqsIMI0NtvFM=
X-Received: by 10.55.16.11 with SMTP id a11mr7757621qkh.61.1518788304230; Fri,
 16 Feb 2018 05:38:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.47.3 with HTTP; Fri, 16 Feb 2018 05:38:23 -0800 (PST)
In-Reply-To: <20180215221341.81550.6675@slab.local>
References: <20180215221341.81550.6675@slab.local>
From: Meshnet Security <cve.tigusoft@gmail.com>
Date: Fri, 16 Feb 2018 13:38:23 +0000
Message-ID: <CADNhD9_RfSHQL6s64FikkY9nWz9cQ=ei_mFoPULwkd-_Yz-pwQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for cve.tigusoft@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a11475cbc5cdd6c0565547520"

--001a11475cbc5cdd6c0565547520
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept.


On Thu, Feb 15, 2018 at 10:13 PM, <kurt@seifried.org> wrote:

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

--001a11475cbc5cdd6c0565547520
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>I accept.<br><br><div><div class=3D"gmail_extra"><br><=
div class=3D"gmail_quote">On Thu, Feb 15, 2018 at 10:13 PM,  <span dir=3D"l=
tr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifrie=
d.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a con=
firmation email sent from CVE request form at <a href=3D"https://iwantacve.=
org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> askin=
g you to accept the MITRE CVE Terms of Use (assuming you filled out the CVE=
 form and want one, we can&#39;t use the data until you accept the MITRE CV=
E Terms of Use).<br>
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
</blockquote></div><br></div></div></div>

--001a11475cbc5cdd6c0565547520--
