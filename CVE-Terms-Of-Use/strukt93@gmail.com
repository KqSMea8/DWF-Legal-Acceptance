Delivered-To: kurt@seifried.org
Received: by 10.176.6.162 with SMTP id g31csp338778uag;
        Wed, 24 May 2017 08:38:53 -0700 (PDT)
X-Received: by 10.157.41.198 with SMTP id g6mr4834315otd.34.1495640333744;
        Wed, 24 May 2017 08:38:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1495640333; cv=none;
        d=google.com; s=arc-20160816;
        b=lsVCha1QKDSrbQzoq9WKivd6hs+HKDx6tNj9QDwX8EftjzpPXG05fCgmEm3Z0P5lX2
         pP03AC+zI3PCXkH5hBPaeIomKXN8HwnOvnWGs7ab2+JRiqqNgBlWUw6GAe5GuYTjyqm7
         JDwUuK9JLmZslFMnalwPtJ+sDkadaySPNRonYeozg0c6FL6xGnUMGYHdAVpM2ZIu3Cr+
         9u2ApQHKQJTcFGT4z29BVmk+eIO62zX80C0ZwMl24JVnLgwIl8ayYanOKXFgMzSbV0g7
         cuYYEMsqNrw9rfESVt/dxTVZkvo3AwaDUOGabCpYQJfcZbkqcZn/B3zfBeco7psL9dDh
         yIww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=xA3xhrNgCgTuDFX+7b4ZIkEyC1gRPjQsRtNFjVnWh84=;
        b=gFGYhQWHtrERBKLV71+K9p9Op6toUbNF+WPt6zmKu+/xAagfzEmopHekWpMHxaf5qH
         WbZ9Tz0Bjd5EWuFnFbiqoG39ob7b9NQp1yk3LqDPtrx4Jnbow2p0KH1g6QmgM8f+xqNT
         a1byrr0n3VESevz0upWqK0WCXw+1/veYdtq/yjhSlBxhfxc+MrsEGWtr8lGj+0Nq6L/3
         IWcKvnodBodKguQtxHYzj+8E87aR2xsTjDte8phq7snrSq16vi/9bMB0K0HwjWOW9V+d
         MIGF466s+WH9oHpysIpl1uURy6AaO0WDSrgNw0HmxLYFMNuGjnqa/aSeTDCYWtobiLfQ
         nrfQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of strukt93@gmail.com designates 2607:f8b0:4003:c06::229 as permitted sender) smtp.mailfrom=strukt93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <strukt93@gmail.com>
Received: from mail-oi0-x229.google.com (mail-oi0-x229.google.com. [2607:f8b0:4003:c06::229])
        by mx.google.com with ESMTPS id o125si11174006oib.262.2017.05.24.08.38.53
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 May 2017 08:38:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of strukt93@gmail.com designates 2607:f8b0:4003:c06::229 as permitted sender) client-ip=2607:f8b0:4003:c06::229;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of strukt93@gmail.com designates 2607:f8b0:4003:c06::229 as permitted sender) smtp.mailfrom=strukt93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x229.google.com with SMTP id l18so246392470oig.2
        for <kurt@seifried.org>; Wed, 24 May 2017 08:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=xA3xhrNgCgTuDFX+7b4ZIkEyC1gRPjQsRtNFjVnWh84=;
        b=qE/XUZ2oCaBH32HqOkitaxbcxsBaL2JcdswGMUr2FCwwq8mdt9AeeLwa+R8uCYJtrQ
         zqLYkZfxiHLWxlSqL+opDmYgG/cKHczGxBwVHrafbyKbW41WApuHaRwWkioy9nY2GsHb
         pe7L/QVtnRtHek8iP8SkHN2hy4kH37JfH7+duQBex4tPJEnh3VyqB/WhUsdCM40Vsmo2
         jZxQlPWNBIt5l6NA8hAcP77kxH0Pm8L+cXThetCfEWgqOx9KGbyM0zCe1fDDeKRMzeVm
         UeEMVo8e7HiQ7GglD1/uV2H+fhIHGDM5SjmCZ/2c+vRxrLA1BdnCAiFtIwdjCUqk1tjv
         EGxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=xA3xhrNgCgTuDFX+7b4ZIkEyC1gRPjQsRtNFjVnWh84=;
        b=PHPLLkMxWcJNR3rc+9BPMM8JBG8YUq7r7HS5eCbvOZgP8LpAIT7aJnOgHxy0GK2D2e
         ToWjh62WsfS/f3NnFjfsf2e5vGKOErcYUoiPTUJT+CJ9zfgJFT9WBpIiG7s8DGbXTxP6
         XdhEv/b85qmdLQeEd2m/gB1Zp7HbHTz4sfsH/jTPw376wPwetrYt6wfXNW1ovY5RJrTK
         3g7VR8N/kxYN4+z8DKcDMFwlQMBPSveh2S/b24qLnJjlahEDxbOCfjOQB5lri1ltqNDV
         Shmr/PSXLi0zROj6vnK1rxglh9NW7n1IoqlQg0Z9hRG+3i4aKaUfO1UNpzD3z0e8aMT+
         QqJg==
X-Gm-Message-State: AODbwcC5aRAmtx95YCxlY5QHY3R9iKzEz1etQaAbMjL0SbOGzEtuS6Z5
	41iN+NckBkO7M32SwehzLpcshowauA==
X-Received: by 10.157.33.58 with SMTP id i55mr4576553otb.119.1495640333287;
 Wed, 24 May 2017 08:38:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.49.79 with HTTP; Wed, 24 May 2017 08:38:52 -0700 (PDT)
In-Reply-To: <20170523182403.18393.2597@bigbox.local>
References: <20170523182403.18393.2597@bigbox.local>
From: Mustafa Hasan <strukt93@gmail.com>
Date: Wed, 24 May 2017 18:38:52 +0300
Message-ID: <CANv6brP1WUfzgeJNTy+KeH1+ckb2-aFUrX-M2Vq3BhSE7dyC-Q@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for strukt93@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a113d17a4c7073e055046e6c0"

--001a113d17a4c7073e055046e6c0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Tue, May 23, 2017 at 9:24 PM, <kurt@seifried.org> wrote:

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


--

--001a113d17a4c7073e055046e6c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br></div><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">On Tue, May 23, 2017 at 9:24 PM,  <span dir=3D"ltr">&lt;<=
a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation=
 email sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=
=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to =
accept the MITRE CVE Terms of Use (assuming you filled out the CVE form and=
 want one, we can&#39;t use the data until you accept the MITRE CVE Terms o=
f Use).<br>
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
</blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><img alt=3D""><=
/div></div>
</div>

--001a113d17a4c7073e055046e6c0--
