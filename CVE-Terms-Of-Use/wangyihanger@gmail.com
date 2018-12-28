Delivered-To: kurt@seifried.org
Received: by 10.176.3.133 with SMTP id 5csp1036235uau;
        Wed, 19 Jul 2017 11:32:24 -0700 (PDT)
X-Received: by 10.129.153.144 with SMTP id q138mr915701ywg.236.1500489144885;
        Wed, 19 Jul 2017 11:32:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1500489144; cv=none;
        d=google.com; s=arc-20160816;
        b=eeEO53RcvJgCnvTF0lr22iGnE9Xof9pSUBXc+X5Wu8MdhvRsvDz2tuvVQqpe6PM9OJ
         pJ3bURYXUeDqBZSmpKW9vE2hiOE3Fczq3L8rzEnPMBHS79n8SGcMl6hsHjVxEweWVqcB
         WmNSqKmyezgZS4wPYJFR1EWrQLa9WZMXRKtJvAUJLVpj6o4mzLiWQ12wc7yuKfj6oA4u
         H56YNabwRrELE/xv5deJoRSCHV31GUZZsY8mDswajkZJbcOUnkRaeUKeRLoqjcjPk575
         zAefSb5ILWNJ0dPOowOVlGd3MmLD6wq1iw21L/7heN8I93hgf7MMv6CExzxdcxg96zLH
         AVbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=MxDAM4IMm4RfXhRw1l9XlrEC/4eXOzGeitloed4/hmY=;
        b=y7zY7pInwQaLWY/0zEoZmIA8HkCfXE97bTDdbvQIntZuF4dOx6T4Z7KWaqoBp8q4MH
         RvY08FEVBm8Z6pUJOn5gjy/GoitoPdDJR6QTEIzlBFRYfxeZEwXSgyLWfbganO42ppCM
         nYs0gP7lP0QLc2JeJ12JGQjsZXWGYWUNLZsm+Uvqxgyxpi7d3pV/ySe9srjtNVI8/8tr
         jZU6TcGOnxt+blpk/8mHir+mK7D8iRtJm80kTRDKEBaz2uumrdwjw1OLr/fmrm1z4GSm
         IDCNjWFepWcHxZVb5xlvFxrEps6g0FpRYrRBQ257RsKJEb/pqHxb021HwwLQupmi9waD
         cOnw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.b=qAzcxMzo;
       spf=pass (google.com: domain of wangyihanger@gmail.com designates 2607:f8b0:4002:c05::22a as permitted sender) smtp.mailfrom=wangyihanger@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <wangyihanger@gmail.com>
Received: from mail-yw0-x22a.google.com (mail-yw0-x22a.google.com. [2607:f8b0:4002:c05::22a])
        by mx.google.com with ESMTPS id u81si149056yba.76.2017.07.19.11.32.24
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Jul 2017 11:32:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of wangyihanger@gmail.com designates 2607:f8b0:4002:c05::22a as permitted sender) client-ip=2607:f8b0:4002:c05::22a;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.b=qAzcxMzo;
       spf=pass (google.com: domain of wangyihanger@gmail.com designates 2607:f8b0:4002:c05::22a as permitted sender) smtp.mailfrom=wangyihanger@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x22a.google.com with SMTP id x125so4135546ywa.0
        for <kurt@seifried.org>; Wed, 19 Jul 2017 11:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=MxDAM4IMm4RfXhRw1l9XlrEC/4eXOzGeitloed4/hmY=;
        b=qAzcxMzoBAfrogDS7TcuXzcCHtCbMqBcFsMclObTy6kUihkWZTh/woMPPwiw0ucoKj
         Sms055X60F+JOd4ePt7QUXbofRwD25NY9jpdL5oRbO98Yo9T1x/E7VM8n8QC5UJY1PGI
         lnlPAdiwYT032ABUcNYzUjIDBpzBvlxJN+ATeAypnVx8DitY5ZkxmEt5v9f62darYQ0i
         yznbLJ3BFtdMG9sei7zzRZURCgbjmKYvncpxU2SWIxtGrjlW5EP/bj6p+XidHKvLRIEe
         WBHe1RMJ8QHXGuIInjOUsXxN3U5VNWvvy5EWdYruCnsZCc99ClHW189EyX/gBuuDwP9q
         6vTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=MxDAM4IMm4RfXhRw1l9XlrEC/4eXOzGeitloed4/hmY=;
        b=MHe7xIZ4FAjLd2omgvzwmBeZU1FfiuYZt6HtOeHM4w63Q7Qf2UnxhYa08Rveaa5MGy
         Mrb97RomNxd1a8hIBKa1AmA1BkLlW0CGffllq98YvaPRWfI9LJiHGaScrIFjtfY7rGZp
         TfpoDNybAGTbssBd/wdos9iKgbje7xHZ7SU9K4FTxvizDQn8l1zNkitGn12oS2oOaJDc
         iAFr+w7b6O8I5kyZh7EHr9GSGyc9Zhp5266l5kVYwPtQVevnNwpQoYmBGJ+SnhiBtjy6
         Gr0RgZe1d2JEABfnJ4mFtOvKMwHDPahsQ9qp9H8VK8NMERDK6VZtUQatFnMZw8HR8miO
         i4/Q==
X-Gm-Message-State: AIVw110hdZv99QmRwTkwSiLBiZ73Ip/PhcVb8kuKI92CQexHOWi5ps9W
	S4ECw0Ai9ze2qGmWdIAlp4plh1JYxd+qAuc=
X-Received: by 10.129.199.76 with SMTP id i12mr878952ywl.175.1500489144195;
 Wed, 19 Jul 2017 11:32:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.197.74 with HTTP; Wed, 19 Jul 2017 11:32:23 -0700 (PDT)
In-Reply-To: <20170719175656.5944.14142@bigbox.local>
References: <20170719175656.5944.14142@bigbox.local>
From: =?UTF-8?B?546L5LiA6Iiq?= <wangyihanger@gmail.com>
Date: Thu, 20 Jul 2017 02:32:23 +0800
Message-ID: <CAOwY=QM_oYKhp7AZ8+FAoCtRyXa=1VKhzSMnZf2WRVhqJrYxpw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for wangyihanger@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="089e082200146de0fd0554afda37"

--089e082200146de0fd0554afda37
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept, thank you very much, :D
This is a confirmation email sent from CVE request form at
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
(assuming you filled out the CVE form and want one, we can't use the data
until you accept the MITRE CVE Terms of Use).

Simply quote the email and reply with "I accept" at the top if you agree to
the MITRE CVE Terms of Use and we will add a copy of the email to the DWF
MITRE CVE Terms of Use acceptance data at https://github.com/
distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use

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

A copy is available at https://github.com/distributedweaknessfiling/DWF-
Database/blob/master/TermsOfUse.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc.

2017-07-20 1:56 GMT+08:00 <kurt@seifried.org>:

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
> Database/blob/master/TermsOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--089e082200146de0fd0554afda37
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept, thank you very much, :D<div><span style=3D"font-=
size:14px">This is a confirmation email sent from CVE request form at=C2=A0=
</span><a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_bla=
nk" style=3D"font-size:14px">https://iwantacve.org/</a><span style=3D"font-=
size:14px">=C2=A0asking you to accept the MITRE CVE Terms of Use (assuming =
you filled out the CVE form and want one, we can&#39;t use the data until y=
ou accept the MITRE CVE Terms of Use).</span><br style=3D"font-size:14px"><=
br style=3D"font-size:14px"><span style=3D"font-size:14px">Simply quote the=
 email and reply with &quot;I accept&quot; at the top if you agree to the M=
ITRE CVE Terms of Use and we will add a copy of the email to the DWF MITRE =
CVE Terms of Use acceptance data at=C2=A0</span><a href=3D"https://github.c=
om/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use"=
 rel=3D"noreferrer" target=3D"_blank" style=3D"font-size:14px">https://gith=
ub.com/<wbr>distributedweaknessfiling/DWF-<wbr>Legal-Acceptance/tree/master=
/<wbr>Terms-Of-Use</a><br style=3D"font-size:14px"><br style=3D"font-size:1=
4px"><span style=3D"font-size:14px">The reason we use a complete copy of th=
e email is that it provides an artifact showing that the email address acce=
pted the Terms of Use, when they were accepted and so on.</span><br style=
=3D"font-size:14px"><br style=3D"font-size:14px"><span style=3D"font-size:1=
4px">If you did not submit a CVE request to the DWF you can safely ignore t=
his message, however we may resend it at some point in the future, if you d=
on&#39;t want any future emails simply reply with &quot;unsubscribe&quot; o=
r &quot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your=
 email address to the block list so we don&#39;t spam you with these, pleas=
e note that this will prevent you from being able to accept the MITRE CVE T=
erms of Use via the DWF automatically in future (you&#39;ll have to manuall=
y ask). But again, if you have no idea what a CVE is then you can ignore th=
is/ask to be added to the block list with no problems.</span><br style=3D"f=
ont-size:14px"><br style=3D"font-size:14px"><span style=3D"font-size:14px">=
MITRE CVE Terms of Use</span><br style=3D"font-size:14px"><br style=3D"font=
-size:14px"><span style=3D"font-size:14px">LICENSE</span><br style=3D"font-=
size:14px"><br style=3D"font-size:14px"><span style=3D"font-size:14px">Subm=
issions: For all materials you submit to the Common Vulnerabilities and Exp=
osures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) and a=
ll CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, =
no-charge, royalty-free, irrevocable copyright license to reproduce, prepar=
e derivative works of, publicly display, publicly perform, sublicense, and =
distribute such materials and derivative works. Unless required by applicab=
le law or agreed to in writing, you provide such materials on an &quot;AS I=
S&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express=
 or implied, including, without limitation, any warranties or conditions of=
 TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURP=
OSE.</span><br style=3D"font-size:14px"><br style=3D"font-size:14px"><span =
style=3D"font-size:14px">CVE Usage: MITRE hereby grants you a perpetual, wo=
rldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright lice=
nse to reproduce, prepare derivative works of, publicly display, publicly p=
erform, sublicense, and distribute Common Vulnerabilities and Exposures (CV=
E=C2=AE). Any copy you make for such purposes is authorized provided that y=
ou reproduce MITRE&#39;s copyright designation and this license in any such=
 copy.</span><br style=3D"font-size:14px"><br style=3D"font-size:14px"><spa=
n style=3D"font-size:14px">DISCLAIMERS</span><br style=3D"font-size:14px"><=
br style=3D"font-size:14px"><span style=3D"font-size:14px">ALL DOCUMENTS AN=
D THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &q=
uot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESEN=
TS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEE=
S, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMP=
LIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMA=
TION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERC=
HANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.</span><br style=3D"font-si=
ze:14px"><br style=3D"font-size:14px"><span style=3D"font-size:14px">A copy=
 is available at=C2=A0</span><a href=3D"https://github.com/distributedweakn=
essfiling/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" target=
=3D"_blank" style=3D"font-size:14px">https://github.com/<wbr>distributedwea=
knessfiling/DWF-<wbr>Database/blob/master/<wbr>TermsOfUse.md</a><br style=
=3D"font-size:14px"><br style=3D"font-size:14px"><span style=3D"font-size:1=
4px">To contact the DWF either hit reply, or email=C2=A0</span><a href=3D"m=
ailto:kurt@seifried.org" style=3D"font-size:14px">kurt@seifried.org</a><spa=
n style=3D"font-size:14px">=C2=A0manually with your question/concerns/etc.<=
/span><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_qu=
ote">2017-07-20 1:56 GMT+08:00  <span dir=3D"ltr">&lt;<a href=3D"mailto:kur=
t@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</span>:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">This is a confirmation email sent from CVE reque=
st form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"=
_blank">https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms=
 of Use (assuming you filled out the CVE form and want one, we can&#39;t us=
e the data until you accept the MITRE CVE Terms of Use).<br>
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
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" target=3D"_b=
lank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/b=
lob/master/<wbr>TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br></div>

--089e082200146de0fd0554afda37--
