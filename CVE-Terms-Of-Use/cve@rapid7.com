Delivered-To: kurt@seifried.org
Received: by 2002:a9d:3475:0:0:0:0:0 with SMTP id v108csp6940546otb;
        Thu, 27 Dec 2018 05:35:41 -0800 (PST)
X-Received: by 2002:a19:cbcc:: with SMTP id b195mr12644296lfg.117.1545917741101;
        Thu, 27 Dec 2018 05:35:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1545917741; cv=none;
        d=google.com; s=arc-20160816;
        b=SEY1neN9H/8hYB28K24v7DM+jm411wRSuAQDsNQUPXaPglcduz480CCTaascxIl/wq
         tlXqMHdFdIS+KZ8O5Pcyv2ug2cQpZpiX3vHownPsXE+e16a7FJw0fWNuaKkm2TliEhWn
         OTx4Vc7HYGMgpgHSeYYBQUtuHFqKCdWV0nARFR/Lb201oPXSbEqxcw3CbtYlif4CE2I5
         pltpo8JHqBENNK9luv0AqKjgb/Ju3gS6WHJ1AvjJZf7iagd3YEMxmT5ZCvKI+h7zd6n1
         waqe7Puc2T1OyEJmWu/mjyjE4+jA51UUMrHWTqrmfv4+U+pO+rpKmgg52skWK9QE5kYO
         +CAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QD3p3bN6wVEYMylYxP52yoSCLxnLc357laWfMfGZAo8=;
        b=sTGr4TZ7CYqhJVb2RaMZis3g2c4axfkDB1VEdWELhuRkvOkfXwes4u9Li2BuUqeAbR
         WOTwgyFYwcbwBNP+xkxHzwMO8aHO+X6ICg3iLI2ExHQVKHX9CLdBz1D8/GOeAmmaElHH
         YcNqbyRNhiOP3lGWoFjLl6hmqLfsZWImOcUSsZ8EB4L7ovMRfWlTMGtftZ3Az2Wl9WC8
         DESNUDxOfjSTaCam4H9cxdDcwXEST7a6H/QkOHo4z/KAzBIrfkGhIUAxCqkyxBFcqSwx
         XxqmdVyj8wgYvj9UvOYgCXV3DtV5F48m26xUJIuI1mLgqheuz/7YsO49KbkeQ9hhEY3q
         FL8w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rapid7.com header.s=google header.b=jaLzIyJl;
       spf=pass (google.com: domain of tod_beardsley@rapid7.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=tod_beardsley@rapid7.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rapid7.com
Return-Path: <tod_beardsley@rapid7.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id x25sor9803858lfe.65.2018.12.27.05.35.40
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 27 Dec 2018 05:35:41 -0800 (PST)
Received-SPF: pass (google.com: domain of tod_beardsley@rapid7.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@rapid7.com header.s=google header.b=jaLzIyJl;
       spf=pass (google.com: domain of tod_beardsley@rapid7.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=tod_beardsley@rapid7.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rapid7.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rapid7.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QD3p3bN6wVEYMylYxP52yoSCLxnLc357laWfMfGZAo8=;
        b=jaLzIyJlh23qJsJGR9bbwBErF0smuk5YsuAVyvgu+4Jpar2zCSTG0lPp51V5m1E8cq
         27v28TDK3g36iLLAqKpWwdfREpdFQbKqfaFKZB7ysFTdPBYS4o2xPQ/slnHRF5uHaJeQ
         0UHCkp0rbOmjGKbwVHT5VeJVJHx4drTLUYva8JMQFpIsBeAiBJv1T1JDQNbgCNv+krXX
         XZp7/sIs5LhQ+DZvxlHXMR34n92oS4fLVCpBADNBT35tKAPyqg6LINmdJavmI4YEnScI
         TNoUZuvceFnH9X6IMQgP5E3w5a6irT5wPcRCMWUZV5HE1jKcztl3Vl8+niuuGIklgs1D
         brPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QD3p3bN6wVEYMylYxP52yoSCLxnLc357laWfMfGZAo8=;
        b=LxGwAco/UorUz7IkDKCcere75mXNehp657UF5FzA3tQA1ZdLq92DZr0jv+5Oc7XzGV
         MMf9mODpZauUR309W6Ud9HddkcLZyGoCQ9+PiAIqzGJvLNGI49nq7wS62trkLGTy8cn6
         TBvoI4nln8kiDpch6L36Ms4lcvU1c1SczFASl8NrrYLnQQD/OimRTPQ6AjtNGXAxXXfS
         Ay47xecUkSHTa1ugpr7xsnTVY+7LyY36Xqnp/9mE+MRPPzhO+H1Au0OWCpo/5qR0hQhr
         Huggp2jN+ACeTFJU1JKPfCYa0fmqDr1MQhrtch1gGX7KMQVmcVCCKcroQ0ysYsjVxWTB
         qO3Q==
X-Gm-Message-State: AA+aEWZPqPTKGAbi6zb/gMavUwxd9CRvedvi0zdXnZHmPLd975b2VZ+c
	Cp8xdpRA777hx4hzwRzPUYf/ePtE6HPliHgGoE/Hl1yz6r2rPklLIbC6W1izcRMSWgKOc0bWR4i
	VRaEJIDkGzVB2dB+DpbwcIg==
X-Google-Smtp-Source: AFSGD/W0h7tfh6Fr6k30ZPKSdMSwXQ71TfDtB5ctlDaURYL1Dp+lmIhOOXi2BdpK5Nycb+SpsfxQ9wyejecCHCrMkbc=
X-Received: by 2002:a19:cd50:: with SMTP id d77mr11560303lfg.125.1545917739513;
 Thu, 27 Dec 2018 05:35:39 -0800 (PST)
MIME-Version: 1.0
References: <20181227020721.21410.92599@bigbox.local>
In-Reply-To: <20181227020721.21410.92599@bigbox.local>
From: Tod Beardsley <tod_beardsley@rapid7.com>
Date: Thu, 27 Dec 2018 07:35:28 -0600
Message-ID: <CANg3ZPSJkSACUff4Tp3mdF7cnzkk32UbDcJ2hXYH2CFjaoiM1A@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for cve@rapid7.com
To: kurt@seifried.org
Cc: cve@rapid7.com
Content-Type: multipart/alternative; boundary="000000000000b765c5057e010524"

--000000000000b765c5057e010524
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept.

On Wed, Dec 26, 2018 at 20:07 <kurt@seifried.org> wrote:

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
> --
"Tod Beardsley"
Director of Research
+1-512-438-9165 | https://keybase.io/todb

--=20
NOTICE OF CONFIDENTIALITY: At Rapid7, the privacy of our customers,=20
partners, and employees is paramount. If you received this email in error,=
=20
please notify the sender and delete it from your inbox right away. Learn=20
how Rapid7 handles privacy at=C2=A0rapid7.com/privacy-policy=20
<https://www.rapid7.com/privacy-policy/>. To opt-out of Rapid7 marketing=20
emails, please=C2=A0click here=20
<https://information.rapid7.com/manage-subscription.html>=C2=A0or email=C2=
=A0
privacy@rapid7.com <mailto:mailto:privacy@rapid7.com>.

--000000000000b765c5057e010524
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">I accept.</div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr">On Wed, Dec 26, 2018 at 20:07 &lt;<a href=3D"mailto:kurt@seifrie=
d.org">kurt@seifried.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">This is a confirmation email sent from CVE request form at <a href=3D"=
https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwanta=
cve.org/</a> asking you to accept the MITRE CVE Terms of Use (assuming you =
filled out the CVE form and want one, we can&#39;t use the data until you a=
ccept the MITRE CVE Terms of Use). <br>
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
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>



<div dir=3D"ltr">
<div dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#ff=
ffff;font-family:Calibri,Arial,Helvetica,sans-serif">
<div style=3D"font-family:Tahoma;font-size:13px">
<div style=3D"font-family:Tahoma;font-size:13px">
<div style=3D"font-family:Tahoma;font-size:13px">
<div style=3D"font-family:Tahoma;font-size:13px">
<div style=3D"font-family:Tahoma;font-size:13px"><font face=3D"Courier New"=
><span style=3D"color:rgb(33,33,33);font-size:13.3333px">&quot;Tod Beardsle=
y&quot;</span><br style=3D"color:rgb(33,33,33);font-size:13.3333px">
<span style=3D"color:rgb(33,33,33);font-size:13.3333px">Director of Researc=
h</span><br style=3D"color:rgb(33,33,33);font-size:13.3333px">
<span style=3D"color:rgb(33,33,33);font-size:13.3333px">+1-512-438-9165 |=
=C2=A0</span><a href=3D"https://keybase.io/todb" style=3D"font-size:13.3333=
px" target=3D"_blank">https://keybase.io/todb</a><span></span><br>
</font></div>
</div>
</div>
</div>
</div>
</div>
</div>
</div></div></div>

<br>
<span style=3D"color:rgb(17,17,17);font-family:jaf-bernina-sans,tahoma,gene=
va,sans-serif;font-size:16px;background-color:rgb(255,255,255)">NOTICE OF C=
ONFIDENTIALITY: At Rapid7, the privacy of our customers, partners, and empl=
oyees is paramount. If you received this email in error, please notify the =
sender and delete it from your inbox right away. Learn how Rapid7 handles p=
rivacy at=C2=A0</span><a href=3D"https://www.rapid7.com/privacy-policy/" st=
yle=3D"color:rgb(0,103,179);font-family:jaf-bernina-sans,tahoma,geneva,sans=
-serif;font-size:16px;background-color:rgb(255,255,255)" target=3D"_blank">=
rapid7.com/privacy-policy</a><span style=3D"color:rgb(17,17,17);font-family=
:jaf-bernina-sans,tahoma,geneva,sans-serif;font-size:16px;background-color:=
rgb(255,255,255)">. To opt-out of Rapid7 marketing emails, please=C2=A0</sp=
an><a href=3D"https://information.rapid7.com/manage-subscription.html" styl=
e=3D"color:rgb(0,103,179);font-family:jaf-bernina-sans,tahoma,geneva,sans-s=
erif;font-size:16px;background-color:rgb(255,255,255)" target=3D"_blank">cl=
ick here</a><span style=3D"color:rgb(17,17,17);font-family:jaf-bernina-sans=
,tahoma,geneva,sans-serif;font-size:16px;background-color:rgb(255,255,255)"=
>=C2=A0or email=C2=A0</span><a href=3D"mailto:mailto:privacy@rapid7.com" st=
yle=3D"color:rgb(0,103,179);font-family:jaf-bernina-sans,tahoma,geneva,sans=
-serif;font-size:16px;background-color:rgb(255,255,255)" target=3D"_blank">=
privacy@rapid7.com</a><span style=3D"color:rgb(17,17,17);font-family:jaf-be=
rnina-sans,tahoma,geneva,sans-serif;font-size:16px;background-color:rgb(255=
,255,255)">.</span>
--000000000000b765c5057e010524--
