Delivered-To: kurt@seifried.org
Received: by 2002:ac9:1c4b:0:0:0:0:0 with SMTP id x11-v6csp1338282ocg;
        Sat, 6 Oct 2018 01:25:04 -0700 (PDT)
X-Google-Smtp-Source: ACcGV616Li5HN0KMPpx7XgL/YQp4oPYjxU9I35wepPPU5VUuc6Y8B1VHyKlgPDDNM7/2vHKxx2p8
X-Received: by 2002:a63:5308:: with SMTP id h8-v6mr12939491pgb.358.1538814304264;
        Sat, 06 Oct 2018 01:25:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538814304; cv=none;
        d=google.com; s=arc-20160816;
        b=bxBUXth3G9a4Zpz4ob3JXPYZimx7OefyLLW//nFaksSmBLdfzTdt7zNJ3h28YGsIkP
         lyCJOisQuTX8bud67wv/PlmlqfbOADP8LA+RjtOF01NzNAzHUHJCwfWpyVylKkxoxO6A
         JChGstUHMokUJrx5GdzBEoGvFrJLgkwrIi3D5zmkP/LtKk1UpVCXSOD7oYlSyetJYeE5
         N/FOHkWpQ2gEgoH1i//AjjIsHuoCqRsoo2jrMBcHuNkuUx4jpQiVF2xXGB0Jja6Cp7iz
         gLBptvkAj1A9Dc0qdtznUqCQur9xuzJMIWXQJzKl9YoeW5tMl+D9fHTkunJhTaDqzB+f
         191A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:to:date:from:subject:content-transfer-encoding
         :mime-version:user-agent:thread-topic:references:in-reply-to
         :dkim-signature;
        bh=bB7nJrh3QGiZba0BXhnrT7DG+wPS1PwlAG4B1mSFPVc=;
        b=l3v6FGrLbkGeHljVrz2UZSeBv2rmD/gqfTZcc/Z8Au0El027C5Z8338FPQK6nY32Tw
         nMhpahW+tIEplXhNk5wrGW6s1XfD0GtqeKGxdjxKh0faR9pzzLxx5PaOwOtwVmJl2xnp
         UMsjjQXK0R51J3Ec7WMxTmL2C7G4k0JArhKAnFq5XtcOuIeEihY2QT+6zBFJOS71XKOR
         tdRxrl0/kH/EU6x6r5G3HZeJe+yHrynIct4O/3sWJTjO8ldWV1VihaRnZYiVA2feMVZn
         meeM9IP3cLe13AKQq5H4bi8q5ZRvcyS2B58OlTOriDv/v1LA6qisdGTAunkPpBYoOY/5
         HXmw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@icloud.com header.s=04042017 header.b=LULj4zca;
       spf=pass (google.com: domain of aliferopoulos@icloud.com designates 17.58.23.187 as permitted sender) smtp.mailfrom=aliferopoulos@icloud.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=icloud.com
Return-Path: <aliferopoulos@icloud.com>
Received: from mr85p00im-zteg06021601.me.com (mr85p00im-zteg06021601.me.com. [17.58.23.187])
        by mx.google.com with ESMTPS id a7-v6si10828681plz.102.2018.10.06.01.25.03
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 01:25:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of aliferopoulos@icloud.com designates 17.58.23.187 as permitted sender) client-ip=17.58.23.187;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@icloud.com header.s=04042017 header.b=LULj4zca;
       spf=pass (google.com: domain of aliferopoulos@icloud.com designates 17.58.23.187 as permitted sender) smtp.mailfrom=aliferopoulos@icloud.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=icloud.com
Received: from process-dkim-sign-daemon.mr85p00im-zteg06021601.me.com by
 mr85p00im-zteg06021601.me.com
 (Oracle Communications Messaging Server 8.0.2.2.20180531 64bit (built May 31
 2018)) id <0PG600B004ED4400@mr85p00im-zteg06021601.me.com> for
 kurt@seifried.org; Sat, 06 Oct 2018 08:25:03 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;	s=04042017;
 t=1538814303;	bh=bB7nJrh3QGiZba0BXhnrT7DG+wPS1PwlAG4B1mSFPVc=;
	h=MIME-version:Content-type:Subject:From:Date:To:Message-id;
	b=LULj4zca3eGKXxMWl51hDN4DhV02VmTa5G6OZxpdrb6c3RBj6uUeovP6XsS1qPFkn
 b9VF8gbaXxd9nwoQ02QHnCoInA8fZIvIp725xROD2z7dQFNN1IBB/WVHRnxAtPv1xZ
 Wb9XGUjNDGrW51XNovqCvEf4KHm+tiX2I+14HKbEQf8RbeyG+RTf29MzIMJ+C9bQRK
 iXhlWIOdB7yQvbhaAawfecANol27NFiboD/ggp51svmMPCQZQCuA3XY+Lbb99S38zy
 R9l9Pp4ivfaGowUv3+z8tcOml+R+3AYMI+Yy1CfxWPxOLnAfe2khe/H5Oq03kOADpM
 /2Z8F5f4QVpHg==
Received: from icloud.com ([127.0.0.1]) by mr85p00im-zteg06021601.me.com
 (Oracle Communications Messaging Server 8.0.2.2.20180531 64bit (built May 31
 2018)) with ESMTPSA id <0PG600A5Z4PNO830@mr85p00im-zteg06021601.me.com> for
 kurt@seifried.org; Sat, 06 Oct 2018 08:25:03 +0000 (GMT)
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=21
 malwarescore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=987 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1807170000 definitions=main-1810060088
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,,
 definitions=2018-10-06_02:,, signatures=0
In-reply-to: <20181006033409.1475.71827@bigbox.local>
References: <20181006033409.1475.71827@bigbox.local>
X-Referenced-Uid: 3260
Thread-topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 aliferopoulos@icloud.com
User-Agent: Android
X-Is-Generated-Message-Id: true
MIME-version: 1.0
Content-type: multipart/alternative; boundary=----WWIITYD9VI9CC5I2TPC831VD0E7FXF
Content-transfer-encoding: 7bit
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 aliferopoulos@icloud.com
From: Nick Aliferopoulos <aliferopoulos@icloud.com>
Date: Sat, 06 Oct 2018 11:24:58 +0300
To: kurt@seifried.org
Message-id: <681f1083-ada5-45e4-993b-8515add524f2@icloud.com>

------WWIITYD9VI9CC5I2TPC831VD0E7FXF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
 charset=UTF-8

I accept

On Oct 6, 2018, 6:34 AM, at 6:34 AM, kurt@seifried=2Eorg wrote:
>=
This is a confirmation email sent from CVE request form at
>https://iwantac=
ve=2Eorg/ asking you to accept the MITRE CVE Terms of Use
>(assuming you fi=
lled out the CVE form and want one, we can't use the
>data until you accept=
 the MITRE CVE Terms of Use)=2E 
>
>Simply quote the email and reply with "=
I accept" at the top if you
>agree to the MITRE CVE Terms of Use and we wil=
l add a copy of the email
>to the DWF MITRE CVE Terms of Use acceptance dat=
a at
>https://github=2Ecom/distributedweaknessfiling/DWF-Legal-Acceptance/t=
ree/master/Terms-Of-Use
>
>The reason we use a complete copy of the email i=
s that it provides an
>artifact showing that the email address accepted the=
 Terms of Use, when
>they were accepted and so on=2E 
>
>If you did not sub=
mit a CVE request to the DWF you can safely ignore
>this message, however w=
e may resend it at some point in the future, if
>you don't want any future =
emails simply reply with "unsubscribe" or
>"DON'T SEND ME THIS EMAIL EVER A=
GAIN" and I'll add your email address
>to the block list so we don't spam y=
ou with these, please note that
>this will prevent you from being able to a=
ccept the MITRE CVE Terms of
>Use via the DWF automatically in future (you'=
ll have to manually ask)=2E
>But again, if you have no idea what a CVE is t=
hen you can ignore
>this/ask to be added to the block list with no problems=
=2E 
>
>MITRE CVE Terms of Use
>
>LICENSE
>
>Submissions: For all materials=
 you submit to the Common Vulnerabilities
>and Exposures (CVE=EF=BF=BD=EF=
=BF=BD), you hereby grant to The MITRE Corporation
>(MITRE) and all CVE Num=
bering Authorities (CNAs) a perpetual,
>worldwide, non-exclusive, no-charge=
, royalty-free, irrevocable
>copyright license to reproduce, prepare deriva=
tive works of, publicly
>display, publicly perform, sublicense, and distrib=
ute such materials
>and derivative works=2E Unless required by applicable l=
aw or agreed to in
>writing, you provide such materials on an "AS IS" BASIS=
, WITHOUT
>WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied,=

>including, without limitation, any warranties or conditions of TITLE,
>NO=
N-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE=2E
>
>=
CVE Usage: MITRE hereby grants you a perpetual, worldwide,
>non-exclusive, =
no-charge, royalty-free, irrevocable copyright license
>to reproduce, prepa=
re derivative works of, publicly display, publicly
>perform, sublicense, an=
d distribute Common Vulnerabilities and
>Exposures (CVE=EF=BF=BD=EF=BF=BD)=
=2E Any copy you make for such purposes is authorized
>provided that you re=
produce MITRE's copyright designation and this
>license in any such copy=2E=

>
>DISCLAIMERS
>
>ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROV=
IDED BY MITRE
>ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE OR=
GANIZATION
>HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPOR=
ATION,
>ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM AL=
L
>WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY
>WARRAN=
TY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY
>RIGHTS OR=
 ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A
>PARTICULAR PUR=
POSE=2E
>
>A copy is available at
>https://github=2Ecom/distributedweakness=
filing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use=2Emd
>
>To contact the=
 DWF either hit reply, or email kurt@seifried=2Eorg
>manually with your que=
stion/concerns/etc=2E 

------WWIITYD9VI9CC5I2TPC831VD0E7FXF
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"auto">I accept</div>
<div class=3D"gma=
il_quote" >On Oct 6, 2018, at 6:34 AM, <a href=3D"mailto:kurt@seifried=2Eor=
g" target=3D"_blank">kurt@seifried=2Eorg</a> wrote:<blockquote class=3D"gma=
il_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb(=
204, 204, 204); padding-left: 1ex;">
<pre class=3D"blue">This is a confirma=
tion email sent from CVE request form at <a href=3D"https://iwantacve=2Eorg=
">https://iwantacve=2Eorg</a>/ asking you to accept the MITRE CVE Terms of =
Use (assuming you filled out the CVE form and want one, we can't use the da=
ta until you accept the MITRE CVE Terms of Use)=2E <br><br>Simply quote the=
 email and reply with "I accept" at the top if you agree to the MITRE CVE T=
erms of Use and we will add a copy of the email to the DWF MITRE CVE Terms =
of Use acceptance data at <a href=3D"https://github=2Ecom/distributedweakne=
ssfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use">https://github=2Eco=
m/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</=
a><br><br>The reason we use a complete copy of the email is that it provide=
s an artifact showing that the email address accepted the Terms of Use, whe=
n they were accepted and so on=2E <br><br>If you did not submit a CVE reque=
st to the DWF you can safely ignore this message, however we may resend it =
at some point in the future, if you don't want any future emails simply rep=
ly with "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add=
 your email address to the block list so we don't spam you with these, plea=
se note that this will prevent you from being able to accept the MITRE CVE =
Terms of Use via the DWF automatically in future (you'll have to manually a=
sk)=2E But again, if you have no idea what a CVE is then you can ignore thi=
s/ask to be added to the block list with no problems=2E <br><br>MITRE CVE T=
erms of Use<br><br>LICENSE<br><br>Submissions: For all materials you submit=
 to the Common Vulnerabilities and Exposures (CVE=EF=BF=BD=EF=BF=BD), you h=
ereby grant to The MITRE Corporation (MITRE) and all CVE Numbering Authorit=
ies (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, =
irrevocable copyright license to reproduce, prepare derivative works of, pu=
blicly display, publicly perform, sublicense, and distribute such materials=
 and derivative works=2E Unless required by applicable law or agreed to in =
writing, you provide such materials on an "AS IS" BASIS, WITHOUT WARRANTIES=
 OR CONDITIONS OF ANY KIND, either express or implied, including, without l=
imitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHAN=
TABILITY, or FITNESS FOR A PARTICULAR PURPOSE=2E<br><br>CVE Usage: MITRE he=
reby grants you a perpetual, worldwide, non-exclusive, no-charge, royalty-f=
ree, irrevocable copyright license to reproduce, prepare derivative works o=
f, publicly display, publicly perform, sublicense, and distribute Common Vu=
lnerabilities and Exposures (CVE=EF=BF=BD=EF=BF=BD)=2E Any copy you make fo=
r such purposes is authorized provided that you reproduce MITRE's copyright=
 designation and this license in any such copy=2E<br><br>DISCLAIMERS<br><br=
>ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE =
PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE R=
EPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF =
TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS=
 OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE =
INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES =
OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE=2E<br><br>A copy is =
available at <a href=3D"https://github=2Ecom/distributedweaknessfiling/DWF-=
Legal-Acceptance/blob/master/Terms-Of-Use=2Emd">https://github=2Ecom/distri=
butedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use=2Emd</a><=
br><br>To contact the DWF either hit reply, or email kurt@seifried=2Eorg ma=
nually with your question/concerns/etc=2E <br><br></pre></blockquote></div>=
</body></html>
------WWIITYD9VI9CC5I2TPC831VD0E7FXF--

