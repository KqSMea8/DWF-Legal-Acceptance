Delivered-To: kurt@seifried.org
Received: by 2002:a4f:b47:0:0:0:0:0 with SMTP id 68-v6csp9226999ivl;
        Thu, 17 May 2018 22:07:45 -0700 (PDT)
X-Received: by 2002:a19:c212:: with SMTP id l18-v6mr19373680lfc.55.1526620065601;
        Thu, 17 May 2018 22:07:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1526620065; cv=none;
        d=google.com; s=arc-20160816;
        b=Lus7ztHXGOwTzzDUQNzYiWihKU+3mxo92SZCNCZVIWa8outuN0Apafn93pb1fihj47
         Rb53btcHB/kiqALspOk0O/d8JKg2VG5wEOdp4RX+GqIy7k3BJCPZ+Qzs8CJQoEpj8QBQ
         5RpVCjy40z8wasft24CHXYZ4COqYpGikR1BbZGTuK+wJmoEjc/QkUITnMuQNtKRop0r2
         TbBkpYJild+YudXedpmw1qS/8qanoH5ejn5TZVT5K7DIty93aQl5nB6ytBJAzhW8+z8g
         1kc5CJP649hhpN++kOTg7HpITFi+jSo4Nw7Aw7FfJtX1aURdYbdUUQblLsDHJMaiN7w+
         YJ6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=APKKXH56psFj1QsxBvu4gkzQ66dwaKA2JfmYVFdkl5g=;
        b=TmM/Eb30oluyZsxLh7C9m3OnxjWDU7jNlpChhxx5Yob6jF9sIf9GDb+77X1A/gWeDP
         E+24LaJbUFClX/AJ5Tj7qEhVTolc+DJANDVk6824d00bw4W+t0Zkb2AMURkqFahRhm91
         njPkOpo3I4jKe22zgXsUu7z8heoSrJ032M/GEJmsiThOBs6kwVVeZMaCDC5JyBJo6SwJ
         e7M7lI32ossGCt30E9WPIOctuqVLeBjGLLTRjRLkgumME5mBCTPoL8qvySw8THA8cawJ
         /Ixw9V1+31yXBPRFfs86KVlp/KC9KnuPbGId7YiIHmtbqFoZn8sI0ciybmW7bzI8cyCH
         MEVA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jz/JJma2;
       spf=pass (google.com: domain of siva.infosec@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=siva.infosec@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <siva.infosec@gmail.com>
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id q26-v6sor1832605lfc.34.2018.05.17.22.07.44
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 17 May 2018 22:07:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of siva.infosec@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jz/JJma2;
       spf=pass (google.com: domain of siva.infosec@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=siva.infosec@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=APKKXH56psFj1QsxBvu4gkzQ66dwaKA2JfmYVFdkl5g=;
        b=jz/JJma2gR2vwHDEovyf8y1gJhCKzfKRzfp5W1LU27E/8xYqNdNFP864z0rIgCqx4w
         gPX/CVtjz0N8ZbKZ8jIg3Z4Jo7wtc0OuxbCoFDCLZFwoHQ9bZW2tq87a8s07bVx9y6yh
         3cujXe19HUmAlU4w7FczyG8w2ClICUsXb1DiSYiduAU5VeGmZuxEme2oeCqaOY5po8gH
         hWMdNXqaUpy3DXR5NawTWjjeYzdAHC5SgJv+khdFnnxehOyyQGJvVHltDs27gQDOshFB
         bc5tXZaUZaPcTivBMw2+hqKxZwTLdUG3//gL6AJj4I3vIhfzB2w4rvHwioTKrQ26ijLp
         dgVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=APKKXH56psFj1QsxBvu4gkzQ66dwaKA2JfmYVFdkl5g=;
        b=Ny/E/8XAnX6Kda0fdigQ8b6uCyrwD0Ns7SCjnueQQl6WjrtL3DjrEqHZJ76dL39yD3
         VpLtfbCDy2Z2zdMSL+qsEwkAGKzsEcrmtUQuIJpG1CIGF3IOYglNwSBcJpsT2mLnUuCv
         39Jlz/a1sIJ4S/VltL2qb7wQK29HQsu5CQY31JI7Yr3BFHPgi85llVeW11xVReROcLqX
         +yZznHauUsXS1c8bPNq6OkIdeO4wYeAlXjxl2+gdEQhd64obB0Ldxcd2prBKp3XSGyU2
         HuOPGd6OD8zryc3ItKPFf3JER6xZURA4SYdsuCbJ7cWQmpoLq3GCalm0uwx/cNiOC0yw
         6KhA==
X-Gm-Message-State: ALKqPwdVd2/cph7D70Zr3xgkwVGDvAZX77ZXVHb8yVkMh90mnNg+ED+8
	21NrDL9yOmW/WPbwZUayfgD5QfEBIPF5sNeDF9rtHfmo
X-Google-Smtp-Source: AB8JxZqNrSHLDQIwei6VDitHWbtn3yFgO1t9XQ6Vizux2PXn+26mtRiPMabq2AVClQfBKc3UY7B91A/iGn6piLrorSk=
X-Received: by 2002:a19:385c:: with SMTP id d28-v6mr20571788lfj.11.1526620064193;
 Thu, 17 May 2018 22:07:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.46.42.129 with HTTP; Thu, 17 May 2018 22:07:43 -0700 (PDT)
In-Reply-To: <20180517165528.91066.82775@slab.local>
References: <20180517165528.91066.82775@slab.local>
From: Siva T <siva.infosec@gmail.com>
Date: Fri, 18 May 2018 10:37:43 +0530
Message-ID: <CACdV6W-GcTUhgMnN02vWRvKbJMU5EwAWb46k3W7dKzzLPumZdg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for siva.infosec@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000a225cd056c73ee12"

--000000000000a225cd056c73ee12
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

 I accept

On Thu, May 17, 2018 at 10:25 PM, <kurt@seifried.org> wrote:

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
> This data cannot be removed from the Internet, or from our git repo. If
> you are concerned about your personal information (in the form of your
> email address and any attached information you include like your name)
> please do not submit it, setup an email address and use that. I cannot
> comply with GDPR requests to remove your information due to the nature of
> git, and my inability to confirm if you are a european or not, so if you
> don't want it in there, don't reply with "I accept".
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

--000000000000a225cd056c73ee12
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">

<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:1=
2.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:nor=
mal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;=
text-transform:none;white-space:normal;word-spacing:0px;background-color:rg=
b(255,255,255);text-decoration-style:initial;text-decoration-color:initial;=
float:none;display:inline">I accept</span>

<br><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, May 1=
7, 2018 at 10:25 PM,  <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried=
.org" target=3D"_blank">kurt@seifried.org</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">This is a confirmation email sent from CVE request f=
orm at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_bla=
nk">https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of =
Use (assuming you filled out the CVE form and want one, we can&#39;t use th=
e data until you accept the MITRE CVE Terms of Use). <br>
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
e accepted and so on. <br>
<br>
This data cannot be removed from the Internet, or from our git repo. If you=
 are concerned about your personal information (in the form of your email a=
ddress and any attached information you include like your name) please do n=
ot submit it, setup an email address and use that. I cannot comply with GDP=
R requests to remove your information due to the nature of git, and my inab=
ility to confirm if you are a european or not, so if you don&#39;t want it =
in there, don&#39;t reply with &quot;I accept&quot;. <br>
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
rget=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>=
Legal-Acceptance/blob/master/<wbr>Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc. <br=
>
<br>
</blockquote></div><br></div></div>

--000000000000a225cd056c73ee12--
