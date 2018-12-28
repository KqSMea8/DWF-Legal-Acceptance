Delivered-To: kurt@seifried.org
Received: by 2002:a4f:b47:0:0:0:0:0 with SMTP id 68-v6csp8191ivl;
        Mon, 4 Jun 2018 12:06:50 -0700 (PDT)
X-Google-Smtp-Source: ADUXVKIs/MWM339jIOS8j13slyObvOD2TFjvD/FB3e6swS9bSJAFx8czCzbp8e0gZE7xERc/fnX5
X-Received: by 2002:a0c:e791:: with SMTP id x17-v6mr2494878qvn.114.1528139210004;
        Mon, 04 Jun 2018 12:06:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1528139209; cv=none;
        d=google.com; s=arc-20160816;
        b=zfqNwoVQZuWAV/PAccgj8rlVX/h4jAs0gzKUNSlJGgMOfPoCeiQ3DOxh4GXpW8LUAO
         L0BixAaqGWfi62RI781CSKHDMZzCy2kBKVHNkaM/Q72OFo775RMgsQ8U/+Hx2sGYjFEE
         Mch9zCNzrFCB4hDSlL/fQVh6ZVIt0+XAe9XgXy6dqBZ5trw6EOknc0VUPHzsBXmdNK+Y
         hvYe8U6ta5rSQsUtKvWUCvgHRBwVW/HHbkrbO9MJ9iyriSwur36Vl6cBlX2hVPf3Veww
         5az7yU7Hc5/5wDRMcNxRzXUThmjqI3J934c8opgobUUhW2EuvN402z3wb/kNr9RI1YQ7
         QzfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:date:message-id:references:in-reply-to:subject:to:from
         :dkim-signature:arc-authentication-results;
        bh=o6DuL3C4fW8YlpyhJjqd2aDAMMkTwsfYeqjCgEnc0SE=;
        b=mvxYSNhng5YQyT8BBzrPLtVjQA3S+1Ic6Z9Lixt8uAlhymkwGf9fLLSpbEAzQYzlzY
         J73ebu613U6/pJnMFY7BvoJ0k671Jd8W+nCdR1iEOjuGOeCflRDYlnslk+oWw9Eo/edV
         ykQy5kV2Xq89D9ACSMksyUq6E4AwGnWxTlKZqCrluxwUX658wYOTSGstn26u/vQvPvWC
         0DvmLOqbpFBjlRcFQfxH76bJXAvXJu5SZQT7LXRqo7CpDh84puBXoPkCrSws71rpQMcT
         hFAPE6DaYyau0sUzw3Mnqu1JcP3xldqwUSHfWhnLzbu+TbzJO/Ulr1O1/kobCmI2ZtSM
         1tOA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@sensu.io header.s=strong1 header.b=tGDdUykO;
       spf=pass (google.com: domain of engineering@sensu.io designates 54.173.229.38 as permitted sender) smtp.mailfrom=engineering@sensu.io
Return-Path: <engineering@sensu.io>
Received: from mail2.helpscout.net (mail2.helpscout.net. [54.173.229.38])
        by mx.google.com with ESMTPS id f5-v6si3802819qve.92.2018.06.04.12.06.49
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jun 2018 12:06:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of engineering@sensu.io designates 54.173.229.38 as permitted sender) client-ip=54.173.229.38;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@sensu.io header.s=strong1 header.b=tGDdUykO;
       spf=pass (google.com: domain of engineering@sensu.io designates 54.173.229.38 as permitted sender) smtp.mailfrom=engineering@sensu.io
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=strong1; d=sensu.io;
 h=From:To:Subject:In-Reply-To:References:Message-Id:Date:Content-Type:
 MIME-Version; i=engineering@sensu.io;
 bh=o6DuL3C4fW8YlpyhJjqd2aDAMMkTwsfYeqjCgEnc0SE=;
 b=tGDdUykOW4jiQnAYpSgMA8q5CGHKKocD4wwg40RKmdc9JUOTLVT1ZlzHq22DcbFpij4gTtE0rMGa
   qss6BZdDwoBJo0Una3ZHxk0Tan2RYJqJ1/srEpjChpns38bZwVKXKOE2u97m0cs8oRUWuN0bUrEF
   12CZhXPxyEy2tEVVLVs=
Received: from secure.helpscout.net (10.0.201.125) by mail2.helpscout.net id h2m6si2fg4g4 for <kurt@seifried.org>; Mon, 4 Jun 2018 19:06:49 +0000 (envelope-from <engineering@sensu.io>)
From: Engineering <engineering@sensu.io>
To: kurt@seifried.org
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for engineering@sensu.io
X-Hs-Format: 2
X-Msg-Context: HS-1-113686-594602096-1628885653
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@helpscout.net
In-Reply-To: <20180604190358.3808.86581@shiny-2.local>
References: <20180604190358.3808.86581@shiny-2.local>
Message-Id: <reply-62593-594602096-1628885653-1528139209-1760317392@helpscout.net>
X-Msg-Timestamp: 2018-06-04T19:06:49+00:00
Date: Mon, 04 Jun 2018 19:06:49 +0000
Content-Type: multipart/alternative;
 boundary="=_6d443d2f46ac481fcef5c12a310754eb"
MIME-Version: 1.0

--=_6d443d2f46ac481fcef5c12a310754eb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

-- Please reply above this line --=0A=0A=0AI accept.=0A--=0AJustin Kolbe=
rg=0Aengineering@sensu.io=0A=0A=0A=0A> On Mon, Jun 4, 2018 at 12:04 PM P=
DT,  &lt;kurt@seifried.org&gt; wrote:=0A> =0A> This is a confirmation em=
ail sent from CVE request form at=0A> https://iwantacve.org/ [1] asking=
 you to accept the MITRE CVE Terms of=0A> Use (assuming you filled out t=
he CVE form and want one, we can't use=0A> the data until you accept the=
 MITRE CVE Terms of Use).=0A> =0A> Simply quote the email and reply with=
 "I accept" at the top if you=0A> agree to the MITRE CVE Terms of Use an=
d we will add a copy of the=0A> email to the DWF MITRE CVE Terms of Use=
 acceptance data at=0A> https://github.com/distributedweaknessfiling/DWF=
-Legal-Acceptance/tree/master/Terms-Of-Use=0A> [2]=0A> =0A> The reason w=
e use a complete copy of the email is that it provides an=0A> artifact s=
howing that the email address accepted the Terms of Use,=0A> when they w=
ere accepted and so on.=0A> =0A> If you did not submit a CVE request to=
 the DWF you can safely ignore=0A> this message, however we may resend i=
t at some point in the future, if=0A> you don't want any future emails s=
imply reply with "unsubscribe" or=0A> "DON'T SEND ME THIS EMAIL EVER AGA=
IN" and I'll add your email address=0A> to the block list so we don't sp=
am you with these, please note that=0A> this will prevent you from being=
 able to accept the MITRE CVE Terms of=0A> Use via the DWF automatically=
 in future (you'll have to manually ask).=0A> But again, if you have no=
 idea what a CVE is then you can ignore=0A> this/ask to be added to the=
 block list with no problems.=0A> =0A> MITRE CVE Terms of Use=0A> =0A> L=
ICENSE=0A> =0A> Submissions: For all materials you submit to the Common=
=0A> Vulnerabilities and Exposures (CVE=C3=82=C2=AE), you hereby grant t=
o The MITRE=0A> Corporation (MITRE) and all CVE Numbering Authorities (C=
NAs) a=0A> perpetual, worldwide, non-exclusive, no-charge, royalty-free,=
=0A> irrevocable copyright license to reproduce, prepare derivative work=
s=0A> of, publicly display, publicly perform, sublicense, and distribute=
=0A> such materials and derivative works. Unless required by applicable=
 law=0A> or agreed to in writing, you provide such materials on an "AS I=
S"=0A> BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either expre=
ss or=0A> implied, including, without limitation, any warranties or cond=
itions=0A> of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A=
=0A> PARTICULAR PURPOSE.=0A> =0A> CVE Usage: MITRE hereby grants you a p=
erpetual, worldwide,=0A> non-exclusive, no-charge, royalty-free, irrevoc=
able copyright license=0A> to reproduce, prepare derivative works of, pu=
blicly display, publicly=0A> perform, sublicense, and distribute Common=
 Vulnerabilities and=0A> Exposures (CVE=C3=82=C2=AE). Any copy you make=
 for such purposes is authorized=0A> provided that you reproduce MITRE's=
 copyright designation and this=0A> license in any such copy.=0A> =0A> D=
ISCLAIMERS=0A> =0A> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN=
 PROVIDED BY MITRE=0A> ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBU=
TOR, THE ORGANIZATION=0A> HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY),=
 THE MITRE CORPORATION,=0A> ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND=
 EMPLOYEES, DISCLAIM ALL=0A> WARRANTIES, EXPRESS OR IMPLIED, INCLUDING B=
UT NOT LIMITED TO ANY=0A> WARRANTY THAT THE USE OF THE INFORMATION THERE=
IN WILL NOT INFRINGE ANY=0A> RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHAN=
TABILITY OR FITNESS FOR A=0A> PARTICULAR PURPOSE.=0A> =0A> A copy is ava=
ilable at=0A> https://github.com/distributedweaknessfiling/DWF-Legal-Acc=
eptance/blob/master/Terms-Of-Use.md=0A> [3]=0A> =0A> To contact the DWF=
 either hit reply, or email kurt@seifried.org [4]=0A> manually with your=
 question/concerns/etc.=0A> =0A> Links:=0A> ------=0A> [1] https://iwant=
acve.org/=0A> [2]=0A> https://github.com/distributedweaknessfiling/DWF-L=
egal-Acceptance/tree/master/Terms-Of-Use=0A> [3]=0A> https://github.com/=
distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.=
md=0A> [4] mailto:kurt@seifried.org=0A> =0A> =0A> =0A> =0A

--=_6d443d2f46ac481fcef5c12a310754eb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html lang=3D"en">=0A<head>=0A=09<meta content=3D"text/html; charset=3Du=
tf-8" http-equiv=3D"Content-Type">=0A</head>=0A<body bgcolor=3D"#ffffff"=
>=0A=09<div id=3D"hsReplyAbove" class=3D"hsReplyAbove">=0A=09=09<div cla=
ss=3D"kickstarter-compatible" style=3D"font-family:sans-serif;">=0A=09=
=09=09=0A=09=09=09=09=09=09=09=09=09=09=09=09I accept.<br>=0A=09=09=09=
=09=09<br>--<br>Justin Kolberg<br>engineering@sensu.io<br>=0A=09=09=09=
=09=09=09=09=09=09=09=09=09=09</div>=0A=09=09=09=09<span height=3D"0" st=
yle=3D"font-size: 0px; height:0px; line-height: 0px; color:#ffffff;">{#H=
S:594602096-10369#}</span>=0A=09=09=09=09<img src=3D"http://secure.helps=
cout.net/notification/convo/read/594602096/1628885653/" alt=3D""/>=09=09=
<br>=0A=09</div>=0A=0A=09=09<div class=3D"gmail_quote" style=3D"font-fam=
ily:sans-serif;">=0A=09=09=09=09=09=09=09=0A=09=09=09=09=09=09=09On Mon,=
 Jun 4, 2018 at 12:04 PM PDT,  &lt;kurt@seifried.org&gt; wrote:=0A<block=
quote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 .8ex; b=
order-left:1px solid #cccccc; padding-left: 1ex;">=0A=09<div style=3D"fo=
nt-family:sans-serif;">        =09=0A  This is a confirmation email sent=
 from CVE request form at <a href=3D"https://iwantacve.org/" target=3D"_=
blank">https://iwantacve.org/</a> asking you to accept the MITRE CVE Ter=
ms of Use (assuming you filled out the CVE form and want one, we can't u=
se the data until you accept the MITRE CVE Terms of Use). <br>=0A<br>=0A=
Simply quote the email and reply with "I accept" at the top if you agree=
 to the MITRE CVE Terms of Use and we will add a copy of the email to th=
e DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://githu=
b.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-O=
f-Use" target=3D"_blank">https://github.com/distributedweaknessfiling/DW=
F-Legal-Acceptance/tree/master/Terms-Of-Use</a><br>=0A<br>=0AThe reason=
 we use a complete copy of the email is that it provides an artifact sho=
wing that the email address accepted the Terms of Use, when they were ac=
cepted and so on. <br>=0A<br>=0AIf you did not submit a CVE request to t=
he DWF you can safely ignore this message, however we may resend it at s=
ome point in the future, if you don't want any future emails simply repl=
y with "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll a=
dd your email address to the block list so we don't spam you with these,=
 please note that this will prevent you from being able to accept the MI=
TRE CVE Terms of Use via the DWF automatically in future (you'll have to=
 manually ask). But again, if you have no idea what a CVE is then you ca=
n ignore this/ask to be added to the block list with no problems. <br>=
=0A<br>=0AMITRE CVE Terms of Use<br>=0A<br>=0ALICENSE<br>=0A<br>=0ASubmi=
ssions: For all materials you submit to the Common Vulnerabilities and E=
xposures (CVE=C3=82=C2=AE), you hereby grant to The MITRE Corporation (M=
ITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, n=
on-exclusive, no-charge, royalty-free, irrevocable copyright license to=
 reproduce, prepare derivative works of, publicly display, publicly perf=
orm, sublicense, and distribute such materials and derivative works. Unl=
ess required by applicable law or agreed to in writing, you provide such=
 materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY=
 KIND, either express or implied, including, without limitation, any war=
ranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FI=
TNESS FOR A PARTICULAR PURPOSE.<br>=0A<br>=0ACVE Usage: MITRE hereby gra=
nts you a perpetual, worldwide, non-exclusive, no-charge, royalty-free,=
 irrevocable copyright license to reproduce, prepare derivative works of=
, publicly display, publicly perform, sublicense, and distribute Common=
 Vulnerabilities and Exposures (CVE=C3=82=C2=AE). Any copy you make for=
 such purposes is authorized provided that you reproduce MITRE's copyrig=
ht designation and this license in any such copy.<br>=0A<br>=0ADISCLAIME=
RS<br>=0A<br>=0AALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROV=
IDED BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE=
 ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE C=
ORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISC=
LAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO AN=
Y WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY=
 RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PA=
RTICULAR PURPOSE.<br>=0A<br>=0AA copy is available at <a href=3D"https:/=
/github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/T=
erms-Of-Use.md" target=3D"_blank">https://github.com/distributedweakness=
filing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md</a><br>=0A<br>=
=0ATo contact the DWF either hit reply, or email <a href=3D"mailto:kurt@=
seifried.org">kurt@seifried.org</a> manually with your question/concerns=
/etc.<br><br>=0A  <br><br>=0A=09</div>=0A</blockquote>=0A=0A=09</div>=0A=
=09</body>=0A</html>=0A

--=_6d443d2f46ac481fcef5c12a310754eb--
