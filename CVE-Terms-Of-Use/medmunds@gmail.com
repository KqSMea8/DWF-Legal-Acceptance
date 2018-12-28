Delivered-To: kurt@seifried.org
Received: by 10.79.201.12 with SMTP id n12csp3935531ivk;
        Tue, 13 Feb 2018 09:38:14 -0800 (PST)
X-Received: by 10.36.155.197 with SMTP id o188mr1453302itd.114.1518543494613;
        Tue, 13 Feb 2018 09:38:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518543494; cv=none;
        d=google.com; s=arc-20160816;
        b=Bz0xvMebj4BuJPjDX04dh9WunYOWdx+YOputmjVBAljWCeypfylclfmasbc5QwKkZE
         cXAAwA0JQ9XXrb+Gz+k3MOAu2a9uVS1IrRmVdD4eB69WUJJCIalzbhcQnGi/24sna51K
         zPrq+3R8o+fkqKK9a4hYn6Rt8UKZi0/RMnVl/+OXSSsQtdbvBL+fJaXePEWqaIzgvwGL
         UV8ogpAuI/UD+rt7nHst27aJOwOi94eVXnkmG09VjJZaWAFBNyKcmknpHbFBKMqnJ83z
         2CBKIyId9BWdlbtpmP4oTIdG7UJf5gWcBbDTjHE4Uve+MEdVsWcVUjAVU/xM2Gbi34eX
         3fkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=o97kQU/FCW1AefiXE8NmmYM+abH0SDOeAwRtN6kbEYA=;
        b=ZZMFgwcA+oa8LKG/h6KgQo/HP0ySWZb0teMhaBjj6+XKHE09BACmznpF6RH2qvfdWt
         l/umoV2ZGkPehuIu4i457DVWtp0ZUaVAJ1QTdCKqA710qCFwbEabZHiLM80yzyCEZtnJ
         ZO24f361UH72eev3M0tvMyOjz1p5TuOGx2dtL5ZHaOOqBAZeKgf7Xm8tHY+loxJfnrJv
         vl321oRlGg2nPafZQppUVjbUL8OtEz5M6qCQxF4eYivRLajDpuUdne+5w+quaJjJOsma
         Luo9GzxF0FylqrAbZ81iZHZrgWRloXVLuMx0Znqe66+Cr3KrQ61zOUMTgdyBmJ3lCNsA
         CR7w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zfo/s6fO;
       spf=pass (google.com: domain of medmunds@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=medmunds@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <medmunds@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id s188sor1347910ios.208.2018.02.13.09.38.13
        for <kurt@seifried.org>
        (Google Transport Security);
        Tue, 13 Feb 2018 09:38:14 -0800 (PST)
Received-SPF: pass (google.com: domain of medmunds@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zfo/s6fO;
       spf=pass (google.com: domain of medmunds@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=medmunds@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=o97kQU/FCW1AefiXE8NmmYM+abH0SDOeAwRtN6kbEYA=;
        b=Zfo/s6fObuvjhQ76D0KnzoxJuzlK2bcbiJZLBRNFydPY2R0lPa7SL0her1tlv0q7lO
         xGKIzsrBYeOqUMsOvjrB+cgu0jm0ZpNQnDAmjmX+SWWr5F0HpTMv9FKWQHfUAcPNKnuM
         qlyO5YsDXRV37NspcNYb+mVcPZBQZDYx7tq1fnHjC4tLbkfFY7p2qZ50c/X0OgPIPInB
         ybIrkM5PUaHUwMdApeBV1U9ku6oXfmMmntKDFF2AlSEDeJuehybg20QlB+8BNnklnctb
         tGjyE4joMR2iqNOu/5kUQAQXNiLvQNc4OVPcd+C7QwHhKX4RKTE+gC3VKrhl/l7qVIWl
         uheg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=o97kQU/FCW1AefiXE8NmmYM+abH0SDOeAwRtN6kbEYA=;
        b=JlMsSnnWX8BGpK2XRpSmFbFA7CagvweXmMZc9yOpnOXFfrEvoo6cJs36AkDnBWLrrE
         jErmj9O4yhT0w4aMIm4W2W0KE/28eZCVIzJehQkP/2AH9Tyo8CML8BaOGl78nnGioXSr
         tQCDRKiEJvXnYekZWkf77HQMxunqKjGBDL95Fjo4narTc3NZdhMv/VyN+/I1TYwu63m2
         ybQ+vY6UKCn5DNvF2fz5SaLCS9imFAyrVNoFbE1TKPSvFXJjHPl0s9eTsRRylnBThy+t
         4cyqBpf48Jw/ECqLBFQHrz71NAjE16DWkbu29VcZ+KqEbkL9zh7C+vQTXwGGYE1egxBn
         Niew==
X-Gm-Message-State: APf1xPAoJ8ofPezNJTOsLRupCRMIjKhxPZz7TUGN8vtRZ9MDy0+QQibx
	gAokR3E0o+sJ6/Eynth1mQW4OEWj7vRPu1MPCpVS6pTt
X-Google-Smtp-Source: AH8x226eR7COkMZ4KqQltmrSSiCMkGNhUMAWUqRVvB0MIm+AXCOfI3tNYDDx++4uH3v2ulpyVp2BG11OhglCnh1BtpE=
X-Received: by 10.107.144.11 with SMTP id s11mr2222822iod.79.1518543493018;
 Tue, 13 Feb 2018 09:38:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.79.11.71 with HTTP; Tue, 13 Feb 2018 09:38:12 -0800 (PST)
In-Reply-To: <20180213154727.60567.58497@slab.local>
References: <20180213154727.60567.58497@slab.local>
From: Mike Edmunds <medmunds@gmail.com>
Date: Tue, 13 Feb 2018 09:38:12 -0800
Message-ID: <CAEPk3RKpuwyWZ5+Gf=BCA_QwXbUNeu81krbhJ3y2nTRxUE9yMA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for medmunds@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="94eb2c0561607a3b9a05651b75b7"

--94eb2c0561607a3b9a05651b75b7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept.

On Tue, Feb 13, 2018 at 7:47 AM, <kurt@seifried.org> wrote:

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

--94eb2c0561607a3b9a05651b75b7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept.<div><br></div><div><div class=3D"gmail_extra"><d=
iv class=3D"gmail_quote">On Tue, Feb 13, 2018 at 7:47 AM,  <span dir=3D"ltr=
">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.=
org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-=
left-color:rgb(204,204,204);padding-left:1ex">This is a confirmation email =
sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"nor=
eferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to accept =
the MITRE CVE Terms of Use (assuming you filled out the CVE form and want o=
ne, we can&#39;t use the data until you accept the MITRE CVE Terms of Use).=
<br>
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
</blockquote></div></div></div><div class=3D"gmail_extra"><br></div></div>

--94eb2c0561607a3b9a05651b75b7--
