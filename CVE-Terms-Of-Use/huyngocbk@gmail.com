Delivered-To: kurt@seifried.org
Received: by 10.176.65.42 with SMTP id j39csp754146uad;
        Thu, 20 Apr 2017 08:54:20 -0700 (PDT)
X-Received: by 10.202.227.145 with SMTP id a139mr4327957oih.201.1492703660745;
        Thu, 20 Apr 2017 08:54:20 -0700 (PDT)
Return-Path: <huyngocbk@gmail.com>
Received: from mail-io0-x232.google.com (mail-io0-x232.google.com. [2607:f8b0:4001:c06::232])
        by mx.google.com with ESMTPS id o130si3560307oif.295.2017.04.20.08.54.20
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Apr 2017 08:54:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of huyngocbk@gmail.com designates 2607:f8b0:4001:c06::232 as permitted sender) client-ip=2607:f8b0:4001:c06::232;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of huyngocbk@gmail.com designates 2607:f8b0:4001:c06::232 as permitted sender) smtp.mailfrom=huyngocbk@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x232.google.com with SMTP id a103so76550957ioj.1
        for <kurt@seifried.org>; Thu, 20 Apr 2017 08:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=/xW1/i3zeLbCu68hIgn1R9+PTi4re1O5GblbtAtxXHY=;
        b=Dosl5R/eQTH6lAwKXaY2wO8eitPMo89WIiKU1zOSDA9fkm2p1kB/ENVd3kbT/sgEE7
         b1WrRiGNuWT8AINpjNo23bkmzZ5w/EcqfFEZlVxI0BqExyZeCNsqP/Ogoa4T6QH0euYT
         cuKgHrYH4IxnRDgmGXIbwpg4D9dlHIthOasDV/16Vo8ScWYeJ3PA00Jqc+F4qgd6zMfQ
         w3oI02RJiOn8t3Wvi0ECOfOPtGCKjMGHr1QT9aJZIJ239SLKXT4QlAkDfVaT9mOKzaO0
         gJCtpb+W3Syk7dFA3k6P4zn6+RQk294YzFowD9AsahiG0nftTk06a6MxeBpRCpJCoeAH
         Q1eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=/xW1/i3zeLbCu68hIgn1R9+PTi4re1O5GblbtAtxXHY=;
        b=o0zWroV0qLLEG6U/S18OY9jwfkW9fpeOywKK1eBMj3+hyEAl0K276UeMluInA5NWI8
         ng3dKe7pwshyyuFWUr1MnLRGmul0BJrNn748r9vQMz97sonBRsiROMLnfn86OwrAgJUM
         0D9qhXoxzkbvBAyWII7Wg1Yi7Vyao2cofa/K7ee4ifaA1SCVxRpX7McetVGI9aadxSK4
         DCP+7cAY3jo4409md7zChw3OC3XcWqv00yHkvUvNB/0zWHDW0HjVjwmyUzG11LtJCB5J
         r9NrXI7jV0N1cYdYHBw7R5pY+JRCRcIrc4UTBwSNTmgdbjfY4j+iOXbecTz9/6956kgR
         DR9A==
X-Gm-Message-State: AN3rC/43fuygsAq1AefIe6O/pySa0s9CdIuE91DE0PjhG+ZMpL+ip9+T
	yypnlAaAqWTdBi9FIYI/8hTUKHOZNg==
X-Received: by 10.36.101.210 with SMTP id u201mr4565795itb.118.1492703645175;
 Thu, 20 Apr 2017 08:54:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.6.106 with HTTP; Thu, 20 Apr 2017 08:54:04 -0700 (PDT)
In-Reply-To: <20170420154442.58112.16758@bigbox.local>
References: <20170420154442.58112.16758@bigbox.local>
From: DAU Huy Ngoc <huyngocbk@gmail.com>
Date: Thu, 20 Apr 2017 17:54:04 +0200
Message-ID: <CAKniM0QjBnUa+DgU0jvQov3aWY0Vat7420srqcsdzuH+DwDmew@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for huyngocbk@gmail.com
To: "kurt@seifried.org" <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a114606f886be84054d9b26bf

--001a114606f886be84054d9b26bf
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Thursday, April 20, 2017, <kurt@seifried.org> wrote:

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
> To contact the DWF either hit reply, or email kurt@seifried.org
> <javascript:;> manually with your question/concerns/etc.
>
>

--=20
DAU Huy Ngoc

Tel : 06 26 89 23 61

--001a114606f886be84054d9b26bf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept<br><br>On Thursday, April 20, 2017,  &lt;<a href=3D"mailto:kurt@se=
ifried.org">kurt@seifried.org</a>&gt; wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">This is a confirmation email sent from CVE request form at <a href=3D"h=
ttps://iwantacve.org/" target=3D"_blank">https://iwantacve.org/</a> asking =
you to accept the MITRE CVE Terms of Use (assuming you filled out the CVE f=
orm and want one, we can&#39;t use the data until you accept the MITRE CVE =
Terms of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE C=
VE Terms of Use acceptance data at <a href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" target=3D"_b=
lank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>Legal-Acce=
ptance/tree/master/<wbr>Terms-Of-Use</a><br>
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
ing/DWF-Database/blob/master/TermsOfUse.md" target=3D"_blank">https://githu=
b.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/blob/master/<wbr>Ter=
msOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"javascript:;" oncl=
ick=3D"_e(event, &#39;cvml&#39;, &#39;kurt@seifried.org&#39;)">kurt@seifrie=
d.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote><br><br>-- <br>DAU Huy Ngoc<br><br>Tel : 06 26 89 23 61<br>

--001a114606f886be84054d9b26bf--
