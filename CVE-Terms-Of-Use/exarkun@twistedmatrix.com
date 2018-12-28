Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp841568uaa;
        Thu, 6 Apr 2017 12:58:13 -0700 (PDT)
X-Received: by 10.200.49.162 with SMTP id h31mr40871797qte.50.1491508693348;
        Thu, 06 Apr 2017 12:58:13 -0700 (PDT)
Return-Path: <bounce+c8aaba.9f5a2-kurt=seifried.org@twistedmatrix.com>
Received: from mail-s89.mailgun.info (mail-s89.mailgun.info. [184.173.153.217])
        by mx.google.com with ESMTPS id e193si2294385qka.218.2017.04.06.12.58.13
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 12:58:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+c8aaba.9f5a2-kurt=seifried.org@twistedmatrix.com designates 184.173.153.217 as permitted sender) client-ip=184.173.153.217;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@twistedmatrix.com;
       spf=pass (google.com: domain of bounce+c8aaba.9f5a2-kurt=seifried.org@twistedmatrix.com designates 184.173.153.217 as permitted sender) smtp.mailfrom=bounce+c8aaba.9f5a2-kurt=seifried.org@twistedmatrix.com
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=twistedmatrix.com; q=dns/txt;
 s=smtp; t=1491508693; h=Content-Type: To: Subject: Message-ID: Date:
 From: References: In-Reply-To: MIME-Version: Sender;
 bh=aSazFzQIfBfl1BEg/oT7uZQBouciVyVTkcWEQ7nVvnA=; b=tYjVjGna9xSamkDKvqsLOVFLR7G0E8Lflk8lKRa3yU756AClQsMaeevuAMAB7L52a96/vUEG
 kCR/GxMljYABNViuZnrd2sBw0UAqK4FFc4k2FW+Ink2tSEkcephQVcoWLDfnSIECWSsm+H5V
 lJmO9SsH9qRM4t7/Ie8pivNHBrQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=twistedmatrix.com; s=smtp;
 q=dns; h=Sender: MIME-Version: In-Reply-To: References: From: Date:
 Message-ID: Subject: To: Content-Type;
 b=VruFGTpidytQiauKSmk0fvgAU9IMcbRbplm2NDVXrZ/miJ+52qkOjd2aImOvZw1bTwQDE5
 he7+3kGvdMY4w8uqcMp/b4U8/Bozo766eSNgbYVIpoeMquFhyM0aUXMjBY4bgKXIXrocyxoF
 lbatwAJQNKUQRXmOIanSYvhZSzu5E=
Sender: exarkun@twistedmatrix.com
X-Mailgun-Sending-Ip: 184.173.153.217
X-Mailgun-Sid: WyJhNGIwMiIsICJrdXJ0QHNlaWZyaWVkLm9yZyIsICI5ZjVhMiJd
Received: from dornkirk.twistedmatrix.com (dornkirk.twistedmatrix.com [66.35.39.66])
 by mxa.mailgun.org with ESMTP id 58e69dd4.7f657864caf0-smtp-in-n01;
 Thu, 06 Apr 2017 19:58:12 -0000 (UTC)
Received: from mail-oi0-f47.google.com ([209.85.218.47])
	by dornkirk.twistedmatrix.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.86_2)
	(envelope-from <exarkun@twistedmatrix.com>)
	id 1cwDXn-0003Fm-JO
	for kurt@seifried.org; Thu, 06 Apr 2017 13:58:11 -0600
Received: by mail-oi0-f47.google.com with SMTP id r203so64130360oib.3
        for <kurt@seifried.org>; Thu, 06 Apr 2017 12:58:11 -0700 (PDT)
X-Gm-Message-State: AFeK/H04QlFxW8899oetIg9yYhG8x644l+P0xwdJ4LnBjMAgIwGn6AazRRuRFmFbPOPDvTWgh1MrPx8Z5kKBlA==
X-Received: by 10.202.172.215 with SMTP id v206mr19171607oie.216.1491508691074;
 Thu, 06 Apr 2017 12:58:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.231.137 with HTTP; Thu, 6 Apr 2017 12:58:10 -0700 (PDT)
In-Reply-To: <20170406195614.4090.61768@shiny-2.local>
References: <20170406195614.4090.61768@shiny-2.local>
From: Jean-Paul Calderone <exarkun@twistedmatrix.com>
Date: Thu, 6 Apr 2017 15:58:10 -0400
X-Gmail-Original-Message-ID: <CAEeXt4NfCFmpmQbuEmCk1h6G8TGe9RVOrXBVQtgn-5t7ZAh8qw@mail.gmail.com>
Message-ID: <CAEeXt4NfCFmpmQbuEmCk1h6G8TGe9RVOrXBVQtgn-5t7ZAh8qw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for exarkun@twistedmatrix.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=001a113cef04b61436054c84ed97

--001a113cef04b61436054c84ed97
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept.

On Thu, Apr 6, 2017 at 3:56 PM, <kurt@seifried.org> wrote:

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

--001a113cef04b61436054c84ed97
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept.</div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Thu, Apr 6, 2017 at 3:56 PM,  <span dir=3D"ltr">&lt;<a =
href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation e=
mail sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=
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
</blockquote></div><br></div>

--001a113cef04b61436054c84ed97--
