Delivered-To: kurt@seifried.org
Received: by 2002:a9d:3a09:0:0:0:0:0 with SMTP id j9csp1602983otc;
        Tue, 27 Nov 2018 08:05:00 -0800 (PST)
X-Google-Smtp-Source: AJdET5exyHbPqGBOVwNvSVQxg6Ly//v96/WYzhUFeWs9xJCVhen+xiDntlnI1VtXctcfuxkBLtGV
X-Received: by 2002:a62:509b:: with SMTP id g27mr33670777pfj.48.1543334699944;
        Tue, 27 Nov 2018 08:04:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1543334699; cv=none;
        d=google.com; s=arc-20160816;
        b=Du30CpeYpoK9lTYo4qJKNZWO9EDQVM2Dyu2EfvoE/DtQWYVKX4q9huqyuRQ2Ma9uhq
         Ydj5fDPwcHsEwGjCgEcQyMIIy8mudEmfc+NiQpHNcq5VlFJtIWMP/iuB67/c4fXyildZ
         h90wdtT+Ga17To4GCe4+/T4LnSvOP2EL28Vvfad2Z9UvtEIHqgL4aT0mBSIDoSmyZv/5
         zgMwzGHhv2GCKmZwvnYxXyhAKgka+3OK+2Y3FVr041BA3QeiIZQHZcbrnv8E7gjGgaQ+
         RGr7uluJJ6YnY7ZDX9Biks+sXudvpR6C7C0KT2KfgPFWghoDTjzjBuJaJd7y8vXCYz7w
         Y/UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=importance:mime-version:subject:references:in-reply-to:message-id
         :to:reply-to:from:date;
        bh=NM62Dd4q6bzhCWPGOhxLe+pfQd5oZA3aRshl0wkzIdY=;
        b=R0Uj6DFoqK2ngcwQ/YfuHs2ZGlS7Xlx8SsfaKVYGY9xY16wvDszPk8eInvyW3MymQD
         9F/9NeLjCc3mT5pXlVTr5gYPtZM84PEGT5HGeqz1Y36YPIHwdZM1LlVl8poL9CNK5yp0
         ZEQuE1rugMp/Q6NcfYZm80FS9YrAzLv7G6fxLdvtgRd3nEOTSx+pahTtjxqQrtNKraXX
         mS2JCUPVhjPuC7BuDniw1NGrBLXRBuo373CvdVxPtjC8Q0FG26E1bhHLBrVHOzkFPVl+
         o6ShWXtKTuQ0l4jqDtc/Z/yBAs21khOjTEItUm4ELubAoYUnpC0kjwhr6KdcP+YvZ7WY
         rXKw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=fail (google.com: domain of jordy@simplyhacker.com does not designate 68.65.122.27 as permitted sender) smtp.mailfrom=jordy@simplyhacker.com
Return-Path: <jordy@simplyhacker.com>
Received: from MTA-07-4.privateemail.com (mta-07-4.privateemail.com. [68.65.122.27])
        by mx.google.com with ESMTPS id c22si4260900pgb.254.2018.11.27.08.04.59
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Nov 2018 08:04:59 -0800 (PST)
Received-SPF: fail (google.com: domain of jordy@simplyhacker.com does not designate 68.65.122.27 as permitted sender) client-ip=68.65.122.27;
Authentication-Results: mx.google.com;
       spf=fail (google.com: domain of jordy@simplyhacker.com does not designate 68.65.122.27 as permitted sender) smtp.mailfrom=jordy@simplyhacker.com
Received: from MTA-07.privateemail.com (localhost [127.0.0.1])
	by MTA-07.privateemail.com (Postfix) with ESMTP id 1F18760047
	for <kurt@seifried.org>; Tue, 27 Nov 2018 11:04:59 -0500 (EST)
Received: from APP-05 (unknown [10.20.147.155])
	by MTA-07.privateemail.com (Postfix) with ESMTPA id 086C66004E
	for <kurt@seifried.org>; Tue, 27 Nov 2018 16:04:59 +0000 (UTC)
Date: Tue, 27 Nov 2018 11:04:59 -0500 (EST)
From: Jordy <jordy@simplyhacker.com>
Reply-To: Jordy <jordy@simplyhacker.com>
To: kurt@seifried.org
Message-ID: <1193196576.85712.1543334699020@privateemail.com>
In-Reply-To: <20181127154151.36526.68035@bigbox.local>
References: <20181127154151.36526.68035@bigbox.local>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 jordy@simplyhacker.com
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_85711_688519119.1543334699011"
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.1-Rev36
X-Originating-Client: open-xchange-appsuite
X-Virus-Scanned: ClamAV using ClamSMTP

------=_Part_85711_688519119.1543334699011
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

>=20
>     On November 27, 2018 at 10:41 AM kurt@seifried.org wrote:
>=20
>     This is a confirmation email sent from CVE request form at https://iw=
antacve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you =
filled out the CVE form and want one, we can't use the data until you accep=
t the MITRE CVE Terms of Use).
>=20
>     Simply quote the email and reply with "I accept" at the top if you ag=
ree to the MITRE CVE Terms of Use and we will add a copy of the email to th=
e DWF MITRE CVE Terms of Use acceptance data at https://github.com/distribu=
tedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>=20
>     The reason we use a complete copy of the email is that it provides an=
 artifact showing that the email address accepted the Terms of Use, when th=
ey were accepted and so on.
>=20
>     If you did not submit a CVE request to the DWF you can safely ignore =
this message, however we may resend it at some point in the future, if you =
don't want any future emails simply reply with "unsubscribe" or "DON'T SEND=
 ME THIS EMAIL EVER AGAIN" and I'll add your email address to the block lis=
t so we don't spam you with these, please note that this will prevent you f=
rom being able to accept the MITRE CVE Terms of Use via the DWF automatical=
ly in future (you'll have to manually ask). But again, if you have no idea =
what a CVE is then you can ignore this/ask to be added to the block list wi=
th no problems.
>=20
>     MITRE CVE Terms of Use
>=20
>     LICENSE
>=20
>     Submissions: For all materials you submit to the Common Vulnerabiliti=
es and Exposures (CVE=C3=82=C2=AE), you hereby grant to The MITRE Corporati=
on (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide,=
 non-exclusive, no-charge, royalty-free, irrevocable copyright license to r=
eproduce, prepare derivative works of, publicly display, publicly perform, =
sublicense, and distribute such materials and derivative works. Unless requ=
ired by applicable law or agreed to in writing, you provide such materials =
on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either e=
xpress or implied, including, without limitation, any warranties or conditi=
ons of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULA=
R PURPOSE.
>=20
>     CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclus=
ive, no-charge, royalty-free, irrevocable copyright license to reproduce, p=
repare derivative works of, publicly display, publicly perform, sublicense,=
 and distribute Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE). Any=
 copy you make for such purposes is authorized provided that you reproduce =
MITRE's copyright designation and this license in any such copy.
>=20
>     DISCLAIMERS
>=20
>     ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE=
 ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/=
SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOAR=
D OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EX=
PRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF=
 THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRAN=
TIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>=20
>     A copy is available at https://github.com/distributedweaknessfiling/D=
WF-Legal-Acceptance/blob/master/Terms-Of-Use.md
>=20
>     To contact the DWF either hit reply, or email kurt@seifried.org manua=
lly with your question/concerns/etc.
>=20

------=_Part_85711_688519119.1543334699011
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html><head>
    <meta charset=3D"UTF-8">
</head><body><p>I accept<br></p><blockquote><p>On November 27, 2018 at 10:4=
1 AM kurt@seifried.org wrote:</p><p>This is a confirmation email sent from =
CVE request form at <a href=3D"https://iwantacve.org/">https://iwantacve.or=
g/</a> asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can&#39;t use the data until you accept =
the MITRE CVE Terms of Use).</p><p>Simply quote the email and reply with &#=
34;I accept&#34; at the top if you agree to the MITRE CVE Terms of Use and =
we will add a copy of the email to the DWF MITRE CVE Terms of Use acceptanc=
e data at <a href=3D"https://github.com/distributedweaknessfiling/DWF-Legal=
-Acceptance/tree/master/Terms-Of-Use">https://github.com/distributedweaknes=
sfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br></p><p>The rea=
son we use a complete copy of the email is that it provides an artifact sho=
wing that the email address accepted the Terms of Use, when they were accep=
ted and so on.</p><p>If you did not submit a CVE request to the DWF you can=
 safely ignore this message, however we may resend it at some point in the =
future, if you don&#39;t want any future emails simply reply with &#34;unsu=
bscribe&#34; or &#34;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&#34; and I&#39=
;ll add your email address to the block list so we don&#39;t spam you with =
these, please note that this will prevent you from being able to accept the=
 MITRE CVE Terms of Use via the DWF automatically in future (you&#39;ll hav=
e to manually ask). But again, if you have no idea what a CVE is then you c=
an ignore this/ask to be added to the block list with no problems.</p><p>MI=
TRE CVE Terms of Use</p><p>LICENSE</p><p>Submissions: For all materials you=
 submit to the Common Vulnerabilities and Exposures (CVE&#194;=C2=AE), you =
hereby grant to The MITRE Corporation (MITRE) and all CVE Numbering Authori=
ties (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free,=
 irrevocable copyright license to reproduce, prepare derivative works of, p=
ublicly display, publicly perform, sublicense, and distribute such material=
s and derivative works. Unless required by applicable law or agreed to in w=
riting, you provide such materials on an &#34;AS IS&#34; BASIS, WITHOUT WAR=
RANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, wi=
thout limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, =
MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</p><p>CVE Usage: MITR=
E hereby grants you a perpetual, worldwide, non-exclusive, no-charge, royal=
ty-free, irrevocable copyright license to reproduce, prepare derivative wor=
ks of, publicly display, publicly perform, sublicense, and distribute Commo=
n Vulnerabilities and Exposures (CVE&#194;=C2=AE). Any copy you make for su=
ch purposes is authorized provided that you reproduce MITRE&#39;s copyright=
 designation and this license in any such copy.</p><p>DISCLAIMERS</p><p>ALL=
 DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROV=
IDED ON AN &#34;AS IS&#34; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/S=
HE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD=
 OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXP=
RESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF =
THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANT=
IES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.</p><p>A copy is=
 available at <a href=3D"https://github.com/distributedweaknessfiling/DWF-L=
egal-Acceptance/blob/master/Terms-Of-Use.md">https://github.com/distributed=
weaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md</a><br></p>=
<p>To contact the DWF either hit reply, or email kurt@seifried.org manually=
 with your question/concerns/etc.</p></blockquote></body></html>
=20
------=_Part_85711_688519119.1543334699011--
