Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2356:0:0:0:0:0 with SMTP id k22csp4219306otd;
        Tue, 6 Nov 2018 08:55:54 -0800 (PST)
X-Received: by 2002:a24:f44a:: with SMTP id u10-v6mr2783561iti.53.1541523354504;
        Tue, 06 Nov 2018 08:55:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541523354; cv=none;
        d=google.com; s=arc-20160816;
        b=ppRXpg4565+vPi2wBFI901VM5Uf2OvRFGpVhwmhUWERcBREz5m7CRtkeZaYwzDnecs
         gRqlK7/feQZTJ0BkEs9lBudhjk/eWjzxp+CbFBvKEDKrFJLP/JC72ChwyW1IjytjQHaa
         SRXRSWbQ/qTBSuJyTV7TUNfNLWgKvDmxBLJRv/lf+ZVbAsvK2AQXWBIkh3kAb6RHwI8L
         zkxW1X05wSqa0wsO7yyrTcNQZU0CeUgED7gtiDf1PjwEVlhNBWbUaQIr1SaSuf4zqIaf
         estlUu4gbSdka6Db2NsCMvKRbsOuya6yeg/WCSAsjmcV+N/UXX+k9+f9OXkWabrxLJVb
         SoAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=iqVoFGG4ReiaMtXMkM1knLBnSFs2fB3ASWjHjuaTFRY=;
        b=dKvajCsgsqY3RaX3LSmbvN86QsNVK6ZpT0F5xGbnHZhRPFm+8Ndq7zcXBvz7Ex6/9K
         M/fdsdBomlfDaSWPgf0A+xxa9+iMx2LRic44Q+BcfKHSdTQzc8ys8qXSf+D46nE8yPSu
         tFsgh+Q0F4XMH3v2RjNjOgxtVgE5Lr/G9v78wMnQRE9U/5JrBdr9XnMa/wGMm+El6NP8
         Ui5lwFl1aQpswXYVCcqX90qmeB6DC90AqoAtIgCm4Ov4G+Tln5BrXHdw5tVcurwtTzaj
         JK2c3oUiXBerljp49ZWo9aW+an+XoUQacUUxy5pziFCKQlXouInWo+g25rzb7LE7b6IY
         FjBA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KAUaHrTT;
       spf=pass (google.com: domain of zacharymillerconsulting@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=zacharymillerconsulting@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zacharymillerconsulting@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id q4-v6sor20387616iog.129.2018.11.06.08.55.54
        for <kurt@seifried.org>
        (Google Transport Security);
        Tue, 06 Nov 2018 08:55:54 -0800 (PST)
Received-SPF: pass (google.com: domain of zacharymillerconsulting@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KAUaHrTT;
       spf=pass (google.com: domain of zacharymillerconsulting@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=zacharymillerconsulting@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=iqVoFGG4ReiaMtXMkM1knLBnSFs2fB3ASWjHjuaTFRY=;
        b=KAUaHrTTrde8EuCrZJdN12WrEql95EqMirdRIpRNIstMqt/usNfyP5bfF3bPMXnjwp
         Bx6yKFPfqe9btnw0XQkvbbC1LsH8qcatsnyfXl06D2tFFwTYdZQo4V4X5MNTAITIhMQY
         xJZ7d+k7heoB+B/iYiSwOuRwk7jNiZfkGH+u/u6IKe03ayauRvqYGccGzlS4w5xv/+BS
         K7DzYN4AZ3EuhKyTd6Wc7AoVELYZqV9K2+t5LqGmGIx5VOxaGfulfxJmBiq0QS0c19WD
         EWUVQIlSwp/MImzgZarCPCpTFENiqQ+bSwt8rIUYDLM830bzEc/S14ByssKJVC/aIln9
         gUag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=iqVoFGG4ReiaMtXMkM1knLBnSFs2fB3ASWjHjuaTFRY=;
        b=ruXSjVfThse30+5gIYxvJssIM+BzWxe/XI329MIuZN8I+VbY9frmvml50Q66CsQkqL
         +IkapBey1wSbXFckBy+LsrkISxPi0E56AiisP9qtrkYieR44DCdZDrKgtAIrnJGdwzaP
         rygWM3YSOOu947k3cOpUuMKXp8ziv8qLL6ozMprKdBwYv+vKq/sDdpcqKIdAj22VJmp8
         90ymrpiQcBKkdUXc+CYlXYzV84Q5eTIuXD3BSjYPlzXsWOL7NXZzt1OZKXjnb6uglYql
         jd8pdl0N9GaVPJqqdv//6Ae3TjPclhwqBq/aMSICzm+V9zvz89NDt1olTUlXYFcafC+7
         mWJw==
X-Gm-Message-State: AGRZ1gKAetHIFHgLBLFHvyHqNC0Cf/ViwPMnNmXlzf3tFNSSFJmaxAYm
	aAQyO8pZzR/PZ1O+WpCccxFcBkXAk0PVJKl+JPUUflRT
X-Google-Smtp-Source: AJdET5fHi8LRTfwqcg1H5ViB1G7Ij0CmmzgdW1d6K0+LLPbTQEIhM99kqEnxscGdg/8wlRBizyjKI6yaJpXU5zZu8lI=
X-Received: by 2002:a5e:a805:: with SMTP id c5-v6mr23354365ioa.283.1541523353572;
 Tue, 06 Nov 2018 08:55:53 -0800 (PST)
MIME-Version: 1.0
References: <20181106164218.7670.71298@bigbox.local>
In-Reply-To: <20181106164218.7670.71298@bigbox.local>
From: Zach Miller <zacharymillerconsulting@gmail.com>
Date: Tue, 6 Nov 2018 08:55:41 -0800
Message-ID: <CACrinTenR3Ht5T4fQYUQF9d0hnCN_n3T-9p72CYPOJ6b=Oe73g@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for zacharymillerconsulting@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000e71bfe057a01df30"

--000000000000e71bfe057a01df30
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept
"This is a confirmation email sent from CVE request form at
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
(assuming you filled out the CVE form and want one, we can't use the data
until you accept the MITRE CVE Terms of Use).

Simply quote the email and reply with "I accept" at the top if you agree to
the MITRE CVE Terms of Use and we will add a copy of the email to the DWF
MITRE CVE Terms of Use acceptance data at
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/mast=
er/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an
artifact showing that the email address accepted the Terms of Use, when
they were accepted and so on.

If you did not submit a CVE request to the DWF you can safely ignore this
message, however we may resend it at some point in the future, if you don't
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so
we don't spam you with these, please note that this will prevent you from
being able to accept the MITRE CVE Terms of Use via the DWF automatically
in future (you'll have to manually ask). But again, if you have no idea
what a CVE is then you can ignore this/ask to be added to the block list
with no problems.

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and
Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) an=
d all
CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute such materials and derivative works. Unless
required by applicable law or agreed to in writing, you provide such
materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied, including, without limitation, any
warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
FITNESS FOR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=AE)=
. Any
copy you make for such purposes is authorized provided that you reproduce
MITRE's copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF
TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES
OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/mast=
er/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc."

On Tue, Nov 6, 2018 at 8:42 AM <kurt@seifried.org> wrote:

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

--000000000000e71bfe057a01df30
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<div>&quot;This is a confirmation email sent from =
CVE request form at=C2=A0<a href=3D"https://iwantacve.org/" rel=3D"noreferr=
er" target=3D"_blank">https://iwantacve.org/</a>=C2=A0asking you to accept =
the MITRE CVE Terms of Use (assuming you filled out the CVE form and want o=
ne, we can&#39;t use the data until you accept the MITRE CVE Terms of Use).=
=C2=A0</div><br>Simply quote the email and reply with &quot;I accept&quot; =
at the top if you agree to the MITRE CVE Terms of Use and we will add a cop=
y of the email to the DWF MITRE CVE Terms of Use acceptance data at=C2=A0<a=
 href=3D"https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/=
tree/master/Terms-Of-Use" rel=3D"noreferrer" target=3D"_blank">https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use</a><br><br>The reason we use a complete copy of the email is that it pr=
ovides an artifact showing that the email address accepted the Terms of Use=
, when they were accepted and so on.=C2=A0<br><br>If you did not submit a C=
VE request to the DWF you can safely ignore this message, however we may re=
send it at some point in the future, if you don&#39;t want any future email=
s simply reply with &quot;unsubscribe&quot; or &quot;DON&#39;T SEND ME THIS=
 EMAIL EVER AGAIN&quot; and I&#39;ll add your email address to the block li=
st so we don&#39;t spam you with these, please note that this will prevent =
you from being able to accept the MITRE CVE Terms of Use via the DWF automa=
tically in future (you&#39;ll have to manually ask). But again, if you have=
 no idea what a CVE is then you can ignore this/ask to be added to the bloc=
k list with no problems.=C2=A0<br><br>MITRE CVE Terms of Use<br><br>LICENSE=
<br><br>Submissions: For all materials you submit to the Common Vulnerabili=
ties and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (=
MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non=
-exclusive, no-charge, royalty-free, irrevocable copyright license to repro=
duce, prepare derivative works of, publicly display, publicly perform, subl=
icense, and distribute such materials and derivative works. Unless required=
 by applicable law or agreed to in writing, you provide such materials on a=
n &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, ei=
ther express or implied, including, without limitation, any warranties or c=
onditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PAR=
TICULAR PURPOSE.<br><br>CVE Usage: MITRE hereby grants you a perpetual, wor=
ldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright licen=
se to reproduce, prepare derivative works of, publicly display, publicly pe=
rform, sublicense, and distribute Common Vulnerabilities and Exposures (CVE=
=C2=AE). Any copy you make for such purposes is authorized provided that yo=
u reproduce MITRE&#39;s copyright designation and this license in any such =
copy.<br><br>DISCLAIMERS<br><br>ALL DOCUMENTS AND THE INFORMATION CONTAINED=
 THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND T=
HE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF A=
NY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EM=
PLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIM=
ITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRI=
NGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR =
A PARTICULAR PURPOSE.<br><br>A copy is available at=C2=A0<a href=3D"https:/=
/github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Term=
s-Of-Use.md" rel=3D"noreferrer" target=3D"_blank">https://github.com/distri=
butedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md</a><br=
><br>To contact the DWF either hit reply, or email=C2=A0<a href=3D"mailto:k=
urt@seifried.org" target=3D"_blank">kurt@seifried.org</a>=C2=A0manually wit=
h your question/concerns/etc.&quot;</div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr">On Tue, Nov 6, 2018 at 8:42 AM &lt;<a href=3D"mailto:kurt@sei=
fried.org">kurt@seifried.org</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">This is a confirmation email sent from CVE request form at <a href=
=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iw=
antacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assuming =
you filled out the CVE form and want one, we can&#39;t use the data until y=
ou accept the MITRE CVE Terms of Use). <br>
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
</blockquote></div>

--000000000000e71bfe057a01df30--
