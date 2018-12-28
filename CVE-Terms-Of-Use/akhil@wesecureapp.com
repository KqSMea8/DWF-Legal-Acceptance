Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp176944uaa;
        Fri, 7 Apr 2017 02:39:20 -0700 (PDT)
X-Received: by 10.176.67.164 with SMTP id l33mr17070622ual.53.1491557960723;
        Fri, 07 Apr 2017 02:39:20 -0700 (PDT)
Return-Path: <akhil@wesecureapp.com>
Received: from mail-vk0-x22d.google.com (mail-vk0-x22d.google.com. [2607:f8b0:400c:c05::22d])
        by mx.google.com with ESMTPS id w17si2092197uaa.76.2017.04.07.02.39.20
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Apr 2017 02:39:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of akhil@wesecureapp.com designates 2607:f8b0:400c:c05::22d as permitted sender) client-ip=2607:f8b0:400c:c05::22d;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@wesecureapp-com.20150623.gappssmtp.com;
       spf=pass (google.com: domain of akhil@wesecureapp.com designates 2607:f8b0:400c:c05::22d as permitted sender) smtp.mailfrom=akhil@wesecureapp.com
Received: by mail-vk0-x22d.google.com with SMTP id d188so68304146vka.0
        for <kurt@seifried.org>; Fri, 07 Apr 2017 02:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wesecureapp-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=gtn3vObN/eMmiWeYEs3uaoLRAYe5UVjwdP+LJLBSLDc=;
        b=RDItSzmq3jkC9/6CYJbw1VW/rLZQgHdsRM86nZHg03KvRuQrRa1WM/7SfU6hZ9i20k
         gKHfjRIJKpwBzVBqPp7sj58cz72w8L4iKD6KowOyi9NJDZX65Nu+HlrcayF8+uxuBRB7
         ZURQzUR46xANbDC4S0GUdvv4HIePJaJUEuPefsYfv592Q6uEBbJT/FwHukQ8HWSOZbaW
         e5ClveoZFng1Hq8dqgKpiI7Batn05zejLzOWEW1ELEx4RNrLkJjMzlcSch54yg+unj+b
         PyuI1iKO4dNdMOqtKTnDHELDoRE5YAi/1B7JzfbscRQs/jbFG//LkmjD59CxeZwOhru/
         sTbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=gtn3vObN/eMmiWeYEs3uaoLRAYe5UVjwdP+LJLBSLDc=;
        b=H/bLjI8HXUCyto48rSQXX4h4CaybmX2aU1NfRubBfMvSPl7bcWdOOMscXoGMlSy3oV
         vCBcGWMZVxm6rGTJymwGhK2kncPYCVd5yANnFC/wX/TQvM69liYbVcPza6Eesusn47Ps
         FNCjnKGG3XGYdewb3+gFoHrEPjKCqRnTwYe765pgW4LJb3dOZwiOgeFi3/IDFPC5czbY
         LMR5TBUXb4pdL7Nt/iDmP9rAPkmEbK6TzDqVpGW/+Tb7bUnj/FZfpg3QOpdEueSzWGxa
         4SZR7S2dTwzfhksWDwnUzPVLtM029pE//SdVdozDe1dFaaCuRY6v9eNodELHBApM7oQd
         McTA==
X-Gm-Message-State: AFeK/H18EACzFaJxvGI2d2SHYKkWonga40kK/iM5EnyebeZgN+Qbml0zlkJK5uqGtqjAA79g0Zklzw0AOPbKuQ==
X-Received: by 10.176.9.129 with SMTP id x1mr16804889uag.96.1491557959968;
 Fri, 07 Apr 2017 02:39:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.83.8 with HTTP; Fri, 7 Apr 2017 02:39:19 -0700 (PDT)
In-Reply-To: <20170406194208.4075.92961@shiny-2.local>
References: <20170406194208.4075.92961@shiny-2.local>
From: Akhil Renikunta <akhil@wesecureapp.com>
Date: Fri, 7 Apr 2017 15:09:19 +0530
Message-ID: <CADsNZ2DdiasF7E9DpnTe5=Pcy_rMMam35rBGr0scP0bmVffFrQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for akhil@wesecureapp.com
To: kurt@seifried.org
Content-Type: multipart/related; boundary=f403043c4d305dffa1054c9066e0

--f403043c4d305dffa1054c9066e0
Content-Type: multipart/alternative; boundary=f403043c4d305dff9e054c9066df

--f403043c4d305dff9e054c9066df
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I ACCEPT

On Fri, Apr 7, 2017 at 1:12 AM, <kurt@seifried.org> wrote:

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


--=20

*Thanks & Regards,*

*[image: b]*

*Akhil Reni*

akhil@wesecureapp.com

*+91 9000268627*

www.wesecureapp.com

This e-mail message may contain confidential or legally privileged
information and is intended only for the use of the intended recipient(s).
Any unauthorized disclosure, dissemination, distribution, copying or the
taking of any action in reliance on the information herein is prohibited.
E-mails are not secure and cannot be guaranteed to be error free as they
can be intercepted, amended, or contain viruses. Anyone who communicates
with us by e-mail is deemed to have accepted these risks. WeSecureApp is
not responsible for errors or omissions in this message and denies any
responsibility for any damage arising from the use of e-mail. Any opinion
and other statement contained in this message and any attachment are solely
those of the author and do not necessarily represent those of the company.

--f403043c4d305dff9e054c9066df
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I ACCEPT</div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On Fri, Apr 7, 2017 at 1:12 AM,  <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation emai=
l sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"n=
oreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to accep=
t the MITRE CVE Terms of Use (assuming you filled out the CVE form and want=
 one, we can&#39;t use the data until you accept the MITRE CVE Terms of Use=
).<br>
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
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><p=
 style=3D"font-size:12.8px"><b><span style=3D"font-size:10.5pt;color:rgb(33=
,33,33)">Thanks &amp; Regards,</span></b><span style=3D"font-size:10.5pt"><=
u></u><u></u></span></p><p style=3D"margin-bottom:7.5pt;font-size:12.8px;li=
ne-height:12pt"><b><span style=3D"font-size:10.5pt;font-family:Helvetica,sa=
ns-serif;color:rgb(33,33,33)"><img width=3D"139" height=3D"44" src=3D"cid:i=
mage001.png@01D24000.1484C970" alt=3D"b"></span></b><span style=3D"font-siz=
e:12pt"><u></u><u></u></span></p><p style=3D"line-height:12pt"><font color=
=3D"#212121" face=3D"Helvetica, sans-serif"><span style=3D"font-size:13.333=
3px"><b>Akhil Reni</b></span></font></p><p style=3D"font-size:12.8px;line-h=
eight:12pt"><span style=3D"font-size:10.5pt;font-family:Helvetica,sans-seri=
f;color:rgb(33,33,33)"><a href=3D"mailto:akhil@wesecureapp.com" style=3D"co=
lor:rgb(17,85,204)" target=3D"_blank"><span style=3D"font-size:10pt;color:r=
gb(44,166,122)">akhil@wesecureapp.com</span></a></span><span style=3D"font-=
size:12pt"><u></u><u></u></span></p><p style=3D"font-size:12.8px;line-heigh=
t:12pt"><b><span style=3D"font-size:10pt;font-family:Helvetica,sans-serif;c=
olor:rgb(33,33,33)">+91 9000268627</span></b></p><p style=3D"font-size:12.8=
px;line-height:12pt"><span style=3D"font-size:10.5pt;font-family:Helvetica,=
sans-serif;color:rgb(31,73,125)"><span style=3D"color:rgb(44,166,122);font-=
size:10pt"><a href=3D"https://www.wesecureapp.com/" style=3D"color:rgb(17,8=
5,204)" target=3D"_blank">www.wesecureapp.com</a></span></span><span style=
=3D"color:black;font-family:Helvetica,sans-serif;font-size:9pt">=C2=A0</spa=
n></p><p style=3D"font-size:12.8px"><span style=3D"font-size:7pt;font-famil=
y:Helvetica,sans-serif;color:rgb(33,33,33)">This e-mail message may contain=
 confidential or legally privileged information and is intended only for th=
e use of the intended recipient(s). Any unauthorized disclosure, disseminat=
ion, distribution, copying or the taking of any action in reliance on the i=
nformation herein is prohibited. E-mails are not secure and cannot be guara=
nteed to be error free as they can be intercepted, amended, or contain viru=
ses. Anyone who communicates with us by e-mail is deemed to have accepted t=
hese risks. WeSecureApp is not responsible for errors or omissions in this =
message and denies any responsibility for any damage arising from the use o=
f e-mail. Any opinion and other statement contained in this message and any=
 attachment are solely those of the author and do not necessarily represent=
 those of the company.</span></p></div></div>
</div>

--f403043c4d305dff9e054c9066df--
--f403043c4d305dffa1054c9066e0
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <image001.png@01D24000.1484C970>
X-Attachment-Id: f8f42af421300ce2_0.0.1

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
--f403043c4d305dffa1054c9066e0--
