Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp692553otd;
        Wed, 18 Jul 2018 09:26:19 -0700 (PDT)
X-Google-Smtp-Source: AAOMgpfB3DLVtAhU1+vT9rbk8hf98ReScZlOpQY24EFy9aDpGmJYxmsMUn0vxt6hoOvGROUWCxmj
X-Received: by 2002:a17:902:ab95:: with SMTP id f21-v6mr6430024plr.264.1531931179082;
        Wed, 18 Jul 2018 09:26:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1531931179; cv=none;
        d=google.com; s=arc-20160816;
        b=Ag+Mcwlx14FImzqvlJFc2RcjQMh5gzMA5nVdwN8qyhTNajFfeYBFZcmSzFWpd6b2H8
         /sYjNqzyFi4ApYR+/iKLodw/qEF3oAgVTMdqzFubANi0qqK74cuhIoe151G3uwSBdXb1
         erJCWwt4vpATeYyp1TXpIW96tbWKZZqDq1zZdh2tFcUHh9wJfw3EWohgB0gIm20un+c6
         PceER7hX3qHQCZqDZewCczQCDIc+AgSQUeVPfZAVyZn9QQbjYQ3XWWbORPtBLqiA0WZo
         Deq12d32nKjQnuXZNRwYSxsXPhZ3y5QcQA3KM63504laBRVfQyO0DXAR0rTMWtZ0DLo7
         vF6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:references:message-id:subject:date:mime-version
         :content-transfer-encoding:from:dkim-signature
         :arc-authentication-results;
        bh=SMDjcUOqt/FA7YQlR4qHb5Zanv7pzOwuYf8jIn1rGXg=;
        b=KE+/pcedYo+7X1iDH4XL3iFnVCGOFr9z7LroAvwrNrcJU4IMtb7PTT3VJ2RLENAT5U
         whwXfr4dWyrR7VmunsqU6hQxhutQCMDeaQSDPqJK/3TPv067KpeswTXZ1lCeyHrwg1uY
         kSPrJUDT3+rFdCUpHHAaRhhh98FIE8S9PJRxp4XVeB0TfVXCn8RF3RBIQ2lK+WOyuP3m
         ZZKbq7XFxwHMzanjsudhH/Sy9gV29vfQ3jvB4WJBMMH8kQ0CSMWbVXCkkTMDMEDqWn8X
         RZm/wkAdR+LsIyUclC/hFD6kOmG9b2gQw7iAMRA6BrNCeYdjrYYswa1HqwjCC4P0c4r1
         4dKg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@icloud.com header.s=04042017 header.b=liLDcLm4;
       spf=pass (google.com: domain of paulcher@icloud.com designates 17.133.189.44 as permitted sender) smtp.mailfrom=paulcher@icloud.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=icloud.com
Return-Path: <paulcher@icloud.com>
Received: from pv35p22im-ztdg05141101.me.com (pv35p22im-ztdg05141101.me.com. [17.133.189.44])
        by mx.google.com with ESMTPS id 1-v6si3705691plq.91.2018.07.18.09.26.18
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Jul 2018 09:26:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of paulcher@icloud.com designates 17.133.189.44 as permitted sender) client-ip=17.133.189.44;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@icloud.com header.s=04042017 header.b=liLDcLm4;
       spf=pass (google.com: domain of paulcher@icloud.com designates 17.133.189.44 as permitted sender) smtp.mailfrom=paulcher@icloud.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=icloud.com
Received: from process-dkim-sign-daemon.pv35p22im-ztdg05141101.me.com by
 pv35p22im-ztdg05141101.me.com
 (Oracle Communications Messaging Server 8.0.1.2.20170607 64bit (built Jun  7
 2017)) id <0PC200O00LJK6A00@pv35p22im-ztdg05141101.me.com> for
 kurt@seifried.org; Wed, 18 Jul 2018 16:26:17 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;	s=04042017;
 t=1531931177;	bh=SMDjcUOqt/FA7YQlR4qHb5Zanv7pzOwuYf8jIn1rGXg=;
	h=From:Content-type:MIME-version:Date:Subject:Message-id:To;
	b=liLDcLm4qjSzAYfyP3O2iz5s7Lpzy0sjeLg8c05+wtp6NjoUJgbHRts7TN//pferO
 0WwLBZPcp3MXgZ6OzUID13M+Mg3l3rS7HbhFnS4PGoaGZ5KVqNod04bkCnB/+tkk58
 FR2RPEo4f6p34a7aYMxq6hdkFGG8KR3fvCEA2ILyeqgnqg3/0va2yfzStVw7sNLPlg
 62yOZye1NZX6O2RH1tFlCM6S37i7BEgVoVEpsu0WmfZSJ30O7HzvXDDEuFaO2PeCNq
 dwolTsDm4F0aBSjZm5SraEnhLR38PU/EeMs7GYBnYXgOHIyIjkLMY0m0T9JWGoCjrS
 /YKzw1DTFblnA==
Received: from icloud.com ([127.0.0.1]) by pv35p22im-ztdg05141101.me.com
 (Oracle Communications Messaging Server 8.0.1.2.20170607 64bit (built Jun  7
 2017)) with ESMTPSA id <0PC2001HCLNOUD40@pv35p22im-ztdg05141101.me.com> for
 kurt@seifried.org; Wed, 18 Jul 2018 16:26:16 +0000 (GMT)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2018-07-18_04:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1011 suspectscore=12 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1707230000 definitions=main-1807180182
From: Paul Ch <paulcher@icloud.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
MIME-version: 1.0 (1.0)
Date: Wed, 18 Jul 2018 18:26:12 +0200
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 paulcher@icloud.com
Message-id: <7657D0F7-76D1-455D-BEC9-A0E7241A3B79@icloud.com>
References: <20180718161532.5378.993@shiny-2.local>
In-reply-to: <20180718161532.5378.993@shiny-2.local>
To: kurt@seifried.org
X-Mailer: iPhone Mail (15F79)

I agree

Sent from my iPhone

> On 18 Jul 2018, at 18:15, kurt@seifried.org wrote:
>=20
> This is a confirmation email sent from CVE request form at https://iwantac=
ve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can't use the data until you accept the M=
ITRE CVE Terms of Use).=20
>=20
> Simply quote the email and reply with "I accept" at the top if you agree t=
o the MITRE CVE Terms of Use and we will add a copy of the email to the DWF M=
ITRE CVE Terms of Use acceptance data at https://github.com/distributedweakn=
essfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>=20
> The reason we use a complete copy of the email is that it provides an arti=
fact showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.=20
>=20
> If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don't w=
ant any future emails simply reply with "unsubscribe" or "DON'T SEND ME THIS=
 EMAIL EVER AGAIN" and I'll add your email address to the block list so we d=
on't spam you with these, please note that this will prevent you from being a=
ble to accept the MITRE CVE Terms of Use via the DWF automatically in future=
 (you'll have to manually ask). But again, if you have no idea what a CVE is=
 then you can ignore this/ask to be added to the block list with no problems=
.=20
>=20
> MITRE CVE Terms of Use
>=20
> LICENSE
>=20
> Submissions: For all materials you submit to the Common Vulnerabilities an=
d Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) a=
nd all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusiv=
e, no-charge, royalty-free, irrevocable copyright license to reproduce, prep=
are derivative works of, publicly display, publicly perform, sublicense, and=
 distribute such materials and derivative works. Unless required by applicab=
le law or agreed to in writing, you provide such materials on an "AS IS" BAS=
IS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied,=
 including, without limitation, any warranties or conditions of TITLE, NON-I=
NFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare d=
erivative works of, publicly display, publicly perform, sublicense, and dist=
ribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you make f=
or such purposes is authorized provided that you reproduce MITRE's copyright=
 designation and this license in any such copy.
>=20
> DISCLAIMERS
>=20
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REP=
RESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRU=
STEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR I=
MPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORM=
ATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERC=
HANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>=20
> A copy is available at https://github.com/distributedweaknessfiling/DWF-Le=
gal-Acceptance/blob/master/Terms-Of-Use.md
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org manually w=
ith your question/concerns/etc.=20
>=20
