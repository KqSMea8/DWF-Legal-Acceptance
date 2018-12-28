Delivered-To: kurt@seifried.org
Received: by 10.79.153.144 with SMTP id a16csp2581065ivh;
        Thu, 8 Feb 2018 08:49:03 -0800 (PST)
X-Google-Smtp-Source: AH8x225oxBtG6argTKJysQM3GVkOqDDUffhqnrT4Z2yuhvH39D0cySLhlddJJEWoUqD2lh/qjx+o
X-Received: by 10.223.136.176 with SMTP id f45mr1385206wrf.75.1518108543642;
        Thu, 08 Feb 2018 08:49:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518108543; cv=none;
        d=google.com; s=arc-20160816;
        b=BKy9OqWeA+roHV2g+P2RcwnqwDrbZHQAp/PZRjynoJyzyj5c9Sewjyjm+2FTA/828q
         EHDTvWSjlYFJE4v0G539Kp5L/NNUeLJDtbjEWZJn+e6nwNHXrIdzdWaIYTE2ngHRaYKe
         Va7fUTcOilZITpk3V4DLqL6poM9s0QbHqFeLd/Zj4rqBJmBHyTwtDlGNJw8TR3vkkzyF
         MHPabeKH+6OpSxAEaY8U1FxwjrbKM30I5BbmqTZ7Ef6R4eyHaU+CI/EKRDHebQUC353X
         3phEGNSvwc3wDZYJ6iVD+ov2qZfawMAnCJfgGxw5qHTM8Y+Tp4JzeuULkWOxCihFKaiy
         SkGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:to:from:dkim-signature
         :arc-authentication-results;
        bh=SUWpgk/DNFXIt2gQSOvDohjiZPEQXzGkJFxn0tfHyeM=;
        b=TC7/onmJPtoIbz4FtzzvvfsofBbBSQOtrQy3C2JZaBW4OCcpuaErbl0VCcl/nsD3Nm
         PpTc1olQyvsqzAAAYFaPb+mq9DHaWFd0ef01BjddjqEUmDPQsbjicpCLKnYWw7qW4A+Y
         wGA9ziNkVDUQRttN5m7KfetK0VFAcu2D1K/SICjMr5h+dRzF/hIO9981sBEqtoK/2KBc
         sLwQrdWraj1lPb5TYWQQnBp7Ae6bbTgUDOTrIwuh3MU9uSE3L+l9rGJFrA7+tzlcGmxX
         v9HIkrrV7tn2o2f0G+A9UEJzJvZ0TRUlF+Nu+C5YJmTKAzwIXwB6iNCe5mkcLxPksagf
         t/YQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@excellium-services.com header.s=20072017 header.b=VhpxOpd2;
       spf=pass (google.com: domain of jmbourbon@excellium-services.com designates 217.31.73.201 as permitted sender) smtp.mailfrom=jmbourbon@excellium-services.com
Return-Path: <jmbourbon@excellium-services.com>
Received: from mx1.managed.lu (MX1.MANAGED.LU. [217.31.73.201])
        by mx.google.com with ESMTPS id d1si249810wrb.217.2018.02.08.08.49.03
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Feb 2018 08:49:03 -0800 (PST)
Received-SPF: pass (google.com: domain of jmbourbon@excellium-services.com designates 217.31.73.201 as permitted sender) client-ip=217.31.73.201;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@excellium-services.com header.s=20072017 header.b=VhpxOpd2;
       spf=pass (google.com: domain of jmbourbon@excellium-services.com designates 217.31.73.201 as permitted sender) smtp.mailfrom=jmbourbon@excellium-services.com
Received: from mx1.managed.lu (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id CC607B806F
	for <kurt@seifried.org>; Thu,  8 Feb 2018 17:49:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=excellium-services.com; s=20072017; t=1518108542; x=1518972542;
	bh=SUWpgk/DNFXIt2gQSOvDohjiZPEQXzGkJFxn0tfHyeM=; h=From:To:Date;
	b=VhpxOpd2RkndGIIjO0g2cBrSe2xFGg40rbayqMSPCK5urhGzw5Lv3gmFK7LX4ETUX
	 RU+UYHEj/ItZ1vDS19JKRk/MgtkgKdStWERFsB/0E9CCUcg+lveb35CxWQehzxAUi5
	 8Efc/gMsQlnb6S2T6o4byTcm9EBt69ap162mXvto=
Received: from mx1.managed.lu (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id BED6EB806E
	for <kurt@seifried.org>; Thu,  8 Feb 2018 17:49:02 +0100 (CET)
Received: from XLM-EXCH01.xlmgroup.managed.lu (unknown [172.17.195.11])
	by mx1.managed.lu (Postfix) with ESMTPS
	for <kurt@seifried.org>; Thu,  8 Feb 2018 17:49:02 +0100 (CET)
Received: from XLM-EXCH01.xlmgroup.managed.lu (172.17.195.11) by
 XLM-EXCH01.xlmgroup.managed.lu (172.17.195.11) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
 15.1.845.34; Thu, 8 Feb 2018 17:49:02 +0100
Received: from XLM-EXCH01.xlmgroup.managed.lu ([fe80::b82b:5481:c108:eb92]) by
 XLM-EXCH01.xlmgroup.managed.lu ([fe80::b82b:5481:c108:eb92%14]) with mapi id
 15.01.0845.034; Thu, 8 Feb 2018 17:49:02 +0100
From: Jean-Marie BOURBON <jmbourbon@excellium-services.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: RE: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 jmbourbon@excellium-services.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 jmbourbon@excellium-services.com
Thread-Index: AQHToPMY17ASlXmMQU27r1WDE9haI6Oat2yw
Date: Thu, 8 Feb 2018 16:49:02 +0000
Message-ID: <a7dbcbed13ea4af1b90ea52c9440847c@excellium-services.com>
References: <20180208154002.12562.58470@slab.local>
In-Reply-To: <20180208154002.12562.58470@slab.local>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [172.17.180.164]
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-TM-AS-GCONF: 00

I accept (already obtained CVE-2018-6758)

-----Original Message-----
From: kurt@seifried.org [mailto:kurt@seifried.org] 
Sent: jeudi 8 f=E9vrier 2018 16:40
To: Jean-Marie BOURBON <jmbourbon@excellium-services.com>
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for jmbourbon=
@excellium-services.com

This is a confirmation email sent from CVE request form at https://iwanta=
cve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you fi=
lled out the CVE form and want one, we can't use the data until you accep=
t the MITRE CVE Terms of Use). 

Simply quote the email and reply with "I accept" at the top if you agree =
to the MITRE CVE Terms of Use and we will add a copy of the email to the =
DWF MITRE CVE Terms of Use acceptance data at https://github.com/distribu=
tedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an art=
ifact showing that the email address accepted the Terms of Use, when they=
 were accepted and so on. 

If you did not submit a CVE request to the DWF you can safely ignore this=
 message, however we may resend it at some point in the future, if you do=
n't want any future emails simply reply with "unsubscribe" or "DON'T SEND=
 ME THIS EMAIL EVER AGAIN" and I'll add your email address to the block l=
ist so we don't spam you with these, please note that this will prevent y=
ou from being able to accept the MITRE CVE Terms of Use via the DWF autom=
atically in future (you'll have to manually ask). But again, if you have =
no idea what a CVE is then you can ignore this/ask to be added to the blo=
ck list with no problems. 

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities a=
nd Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE) a=
nd all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclu=
sive, no-charge, royalty-free, irrevocable copyright license to reproduce=
, prepare derivative works of, publicly display, publicly perform, sublic=
ense, and distribute such materials and derivative works. Unless required=
 by applicable law or agreed to in writing, you provide such materials on=
 an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either e=
xpress or implied, including, without limitation, any warranties or condi=
tions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTI=
CULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,=
 no-charge, royalty-free, irrevocable copyright license to reproduce, pre=
pare derivative works of, publicly display, publicly perform, sublicense,=
 and distribute Common Vulnerabilities and Exposures (CVE??). Any copy yo=
u make for such purposes is authorized provided that you reproduce MITRE'=
s copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE=
 PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SH=
E REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOAR=
D OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, =
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE US=
E OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED =
WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at https://github.com/distributedweaknessfiling/DWF-L=
egal-Acceptance/blob/master/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually =
with your question/concerns/etc. 

This email is confidential and may contain legally privileged information=
. If you are not the intended recipient, you should not copy, distribute,=
 disclose or use the information it contains, please e-mail the sender im=
mediately and delete this message from your system. Note: e-mails are sus=
ceptible to corruption, interception and unauthorised amendment; we do no=
t accept liability for any such changes, or for their consequences. You s=
hould be aware that we may monitor your e-mails and their content. Excell=
ium Services SA.

