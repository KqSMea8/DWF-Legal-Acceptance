Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp863852uaa;
        Thu, 6 Apr 2017 14:09:17 -0700 (PDT)
X-Received: by 10.31.186.66 with SMTP id k63mr14441067vkf.158.1491512957200;
        Thu, 06 Apr 2017 14:09:17 -0700 (PDT)
Return-Path: <mattd@bugfuzz.com>
Received: from mail-vk0-x22c.google.com (mail-vk0-x22c.google.com. [2607:f8b0:400c:c05::22c])
        by mx.google.com with ESMTPS id k129si1071598vkf.49.2017.04.06.14.09.17
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 14:09:17 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:400c:c05::22c is neither permitted nor denied by best guess record for domain of mattd@bugfuzz.com) client-ip=2607:f8b0:400c:c05::22c;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@bugfuzz-com.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400c:c05::22c is neither permitted nor denied by best guess record for domain of mattd@bugfuzz.com) smtp.mailfrom=mattd@bugfuzz.com
Received: by mail-vk0-x22c.google.com with SMTP id z204so55545134vkd.1
        for <kurt@seifried.org>; Thu, 06 Apr 2017 14:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bugfuzz-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=lw7eCHo8xqcnq7XH0B8SeYJrfJCyUwUbx96v3IjIEiI=;
        b=YFBXK7VFUZLoKdPlxZEKk9V9mZasnYHBz8KdXe+KrziLQ5RZCib1tyxEejlAzfPgSJ
         RtXBOKD0pR80hHqSOcDJGQwq2IAhI9jdPfpz6DsHEfPkrkaQOevocELkEGI2h9JrJLSd
         0/PQfT1UMigO4ZcUHSurBJ4HgBUFdwUbCgKzkg66NgRtoke7lxJRnS/i9KKeJLXk2YED
         rWID/KzfXeyVOjym6QqHBanK9tnWc404Xvh/2z3kZZTTRntRzCfUezcTR6feOzbhbO1k
         HbhSDdCHysqmIheTkrpAf4H/wnWUxyhEFV1wPSPlpP5tXDTmSMd1cbsL6fEIHM1E1TGw
         b02A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=lw7eCHo8xqcnq7XH0B8SeYJrfJCyUwUbx96v3IjIEiI=;
        b=tUYT4isq/isH+6Wj9BoMjri+WvAEgPFpjGgX1H2I3thm2E4pFap2Z7eYDtjUFtZi72
         wTHQeUC41vswqybzmnpR7731J6Kv4k2EOwecNCRSHS/dtKGC6ul/gIc4Pf2UHMPWrRRH
         j87xKQok33dQyHzEb40bUMFkYbPvPcnNB8D9K2IaFkbrFOwPmSFgtVbRzi0RXz2IsLQc
         fhIn3HDI2qBPOnNbGJGcDGcTyfGozZ1IiTCmGP7/QowcRTKzK7gQ2czJFvt4iX+LiR1q
         +vn6NCoIMHIJdoejACB/sc+vX81SRXu+7TkDzUAQA9KHBwccUDd9rPxI2Gu+f94g6Jrp
         eHOw==
X-Gm-Message-State: AFeK/H17rUuQdwSTEFEAmjCuVPMBFiB1vc+gmMhb42JoHex2VKOkXBPVyqPebU/fSzaFJFL985W1C3v7maWaFg==
X-Received: by 10.176.93.42 with SMTP id u42mr17993406uaf.105.1491512956613;
 Thu, 06 Apr 2017 14:09:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.80.101 with HTTP; Thu, 6 Apr 2017 14:09:16 -0700 (PDT)
Received: by 10.176.80.101 with HTTP; Thu, 6 Apr 2017 14:09:16 -0700 (PDT)
In-Reply-To: <20170406195653.4090.77666@shiny-2.local>
References: <20170406195653.4090.77666@shiny-2.local>
From: Matthew Daley <mattd@bugfuzz.com>
Date: Fri, 7 Apr 2017 09:09:16 +1200
Message-ID: <CAD3Cand=-Bb6WvicmfwHMv8DWuOJmoVgjNm8SGBUUC34XUsheQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for mattd@bugfuzz.com
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=94eb2c181442f5a1f6054c85eb97

--94eb2c181442f5a1f6054c85eb97
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept.

On 7 Apr. 2017 07:57, <kurt@seifried.org> wrote:

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

--94eb2c181442f5a1f6054c85eb97
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I accept.</div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On 7 Apr. 2017 07:57,  &lt;<a href=3D"mailto:kurt@seifried=
.org">kurt@seifried.org</a>&gt; wrote:<br type=3D"attribution"><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">This is a confirmation email sent from CVE request form =
at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">=
https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use =
(assuming you filled out the CVE form and want one, we can&#39;t use the da=
ta until you accept the MITRE CVE Terms of Use).<br>
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
</blockquote></div></div>

--94eb2c181442f5a1f6054c85eb97--
