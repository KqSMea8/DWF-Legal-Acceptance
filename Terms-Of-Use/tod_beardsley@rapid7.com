Delivered-To: kurt@seifried.org
Received: by 2002:a9d:3a09:0:0:0:0:0 with SMTP id j9csp3761191otc;
        Fri, 30 Nov 2018 06:02:17 -0800 (PST)
X-Received: by 2002:a2e:9957:: with SMTP id r23-v6mr3851647ljj.98.1543586537834;
        Fri, 30 Nov 2018 06:02:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1543586537; cv=none;
        d=google.com; s=arc-20160816;
        b=f+6cw/3DtfHltpTFEsyzFllAZHqpAg1NJ3Tzbl8FN/p9rqcBmI2GhWR9jDpgL51BGe
         MHdDFeY/5ut1dV3/oUVuLh7luEgUWo4UB+jqlFdunkEkWNVKmeulixm7QxapVwr1XoNV
         stCXEesLf4LcdstRAz+czvxijuzx5F8OJICUarPKzC3s2mVxPp9pbWPDzRA6yXn4RNl5
         LoXHs8gtdfYfv65Zs8UgHQCzPJFF3Pz47dUje0HPo4b+V9Kn7zBaQj3HcXnu/DDVFJL5
         MuHSsj0I9dK4efAlPBW2BvJUkVbmngvQuwu5U6sep4HYirz3uFzi5lPQjjB4qq56Jc1z
         NiFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=iZsGy2p+JJSe2C7rmxxeoc19vxYio/QlSca0pkyqEnc=;
        b=pW5Bx9XrN8rrh7ljg936Hsa/j6YqO3BUOUaWXoqqpIC85TN5r+pLWfAyhigA3MCtVI
         os2UgfG2bJVdnnw5uXaVWGkQNhT7pkzcUqL10wN3YUF7/5cy4pcR4CVQ8i22vXMNlWNM
         E7LtTLU5KVZwjt7kbyYENG+MQpfa7+A0+psDKQ+/Y/2QJgUuX+xejMez0D04X6SpVgQG
         PzJAiYd8S3+wOhvYLDpOQLrJoY0GJfipfiJuoJtc3/W4hLOfpBfGscJ94djChTGRwJbw
         SEgzloQAm09q6CBmnCZIKruAA6Ldt4hb0wQu1uYBgX6MFu8tZ1pt0nlmd2bvAOTlTlkF
         U+oQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rapid7.com header.s=google header.b=nMOjX5Ts;
       spf=pass (google.com: domain of tod_beardsley@rapid7.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=tod_beardsley@rapid7.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rapid7.com
Return-Path: <tod_beardsley@rapid7.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id h39-v6sor3673455lji.32.2018.11.30.06.02.17
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 30 Nov 2018 06:02:17 -0800 (PST)
Received-SPF: pass (google.com: domain of tod_beardsley@rapid7.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@rapid7.com header.s=google header.b=nMOjX5Ts;
       spf=pass (google.com: domain of tod_beardsley@rapid7.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=tod_beardsley@rapid7.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rapid7.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rapid7.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=iZsGy2p+JJSe2C7rmxxeoc19vxYio/QlSca0pkyqEnc=;
        b=nMOjX5Ts+5P2bq9kQlkc2qW42v9VIGP5iWi92jE0N5a3/PtyxI3dRusQt34AZ/DGJA
         upiBAzsZdoSZh+HzKVm550xxvLxwMgx13rat0bSUT+CxYisNUR5tsPhnwc2ym8+RIRBc
         Yx9tdBsuLEfWLzMolb5RAoqmPFxKarRf2y2wMEFiwdUOkecAFn0qjZMgV2q7wjdgDQ6a
         3o8UKRcMsyLZr8GHFKcg+Modf457L6AK0zN/rBmrWXs30Uvp2CqsTv8a0kTA9L8WqlTf
         Tw806blutOZJowCBegx5+uYh6CnHBvYIKI3ihb63zGRVEsFPa5cBD+82tGxEh30nZxG5
         9ugQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=iZsGy2p+JJSe2C7rmxxeoc19vxYio/QlSca0pkyqEnc=;
        b=j/n5LDdwMoo47Kt2bNy6tMyDE8xqH99VV4gYP46WkYwNp7i4h773V5ao1ofKzy7O7E
         UmBszvflJEfJREAoXOLaQ0tQ4BSWD4sJKVIgu6xgO2yndvMecx6fNhxKW2/l22B0sCyg
         UC4c/axPCi5FOP8r4RMmuC8xf4ou8KY1TBmAUjs5jEgoE5plRjLRxct386KHxa1zQIJG
         eMGvtemUxZTCYs9iDrexoL9vc0TlF444GAKyVs9fjyEf85bqsz1UHajiEqf7lt7II+Xh
         UkB1P7aRD6ooWtq8k4xKYmAcrcPTHYoLQjvjvsXlGMnAWYAji34UCsrkmJqJ/pA5QX+p
         H6Qg==
X-Gm-Message-State: AA+aEWZSYqcfzNurj/NzCjFJMyXCZEqMt+oMbF1pN4MHmQj/WfIFvRUq
	0z7UE3qot1jsV5C32r5QQ/12Cxz9JRZUFarxoLL5HPHGlzbx+hOUo5pRKuqTHu9btCmsMqGa/Mz
	vg3ZfjxfuqRr3Ri8/DyNy3Q==
X-Google-Smtp-Source: AFSGD/XfRp+l4Ct23nNR61+qpciinz9J3ifQqUpxyuTphE3Evgpfn28sFLMO0Qvvj7uoUYKkuw3BEiZnS17ArQDLilQ=
X-Received: by 2002:a2e:6c04:: with SMTP id h4-v6mr3840031ljc.92.1543586536288;
 Fri, 30 Nov 2018 06:02:16 -0800 (PST)
MIME-Version: 1.0
References: <20181130001352.2883.17080@bigbox.local>
In-Reply-To: <20181130001352.2883.17080@bigbox.local>
From: Tod Beardsley <tod_beardsley@rapid7.com>
Date: Fri, 30 Nov 2018 08:02:04 -0600
Message-ID: <CANg3ZPTR3fMD=PicKKa+Y_wYpu2agO-tQSrcqhUK_uaYQAhgSg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for tod_beardsley@rapid7.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000002d2458057be23f68"

--0000000000002d2458057be23f68
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept.

On Thu, Nov 29, 2018 at 18:13 <kurt@seifried.org> wrote:

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

--0000000000002d2458057be23f68
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">I accept.=C2=A0</div></div><div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr">On Thu, Nov 29, 2018 at 18:13 &lt;<a href=3D"ma=
ilto:kurt@seifried.org">kurt@seifried.org</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">This is a confirmation email sent from CVE request fo=
rm at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blan=
k">https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of U=
se (assuming you filled out the CVE form and want one, we can&#39;t use the=
 data until you accept the MITRE CVE Terms of Use). <br>
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
--0000000000002d2458057be23f68--
