Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp620241vkh;
        Thu, 29 Sep 2016 18:24:30 -0700 (PDT)
X-Received: by 10.36.233.196 with SMTP id f187mr1643586ith.109.1475198670948;
        Thu, 29 Sep 2016 18:24:30 -0700 (PDT)
Return-Path: <larry0@me.com>
Received: from st11p05im-asmtp001.me.com (st11p05im-asmtp001.me.com. [17.172.109.149])
        by mx.google.com with ESMTPS id i14si1485963iti.28.2016.09.29.18.24.30
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 18:24:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of larry0@me.com designates 17.172.109.149 as permitted sender) client-ip=17.172.109.149;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@me.com;
       spf=pass (google.com: domain of larry0@me.com designates 17.172.109.149 as permitted sender) smtp.mailfrom=larry0@me.com;
       dmarc=pass (p=NONE dis=NONE) header.from=me.com
Received: from process-dkim-sign-daemon.st11p05im-asmtp001.me.com by
 st11p05im-asmtp001.me.com
 (Oracle Communications Messaging Server 7.0.5.38.0 64bit (built Feb 26 2016))
 id <0OEA01700M3WFG00@st11p05im-asmtp001.me.com> for kurt@seifried.org; Fri,
 30 Sep 2016 01:24:30 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1475198670; bh=8XFn9Edj3VrXa+oGGinWfqNp9+8HDxmCHNx12UWR0n4=;
	h=Content-type:MIME-version:Subject:From:Date:Message-id:To;
	b=g+fs/hajWoY2AKNs/Baj8D3ufwzBMl9KFg2bHJQzKmNXBlj6cis30O5cygON7I+B2
 VufmiKsCBGpNKr8jAiFnrljVHVMy52mRMP6C/mPsFMOqrZIab18mzKTvarfriK0slK
 OrFkqiTIkY8gX9/CovsXUnhLEqr4/ctWsiFayysTJM7e4GFgl3Zb7xMMVlj+IRLwbx
 wncYXvrNsFF9aBdNQccBPYc4fiBS9lcikOtYmpTfi1HEQ/q/jV4E4dEyL8CG/oV6ck
 I244SPxFd5hVJx3V+KhRebcfMlg6ymD46uNV5tphtgKVSyjCjuuiaPjnmmvtQ77I4n
 yz7yo7IFcMS6Q==
Received: from [192.168.0.132]
 (c-73-182-153-224.hsd1.nh.comcast.net [73.182.153.224])
 by st11p05im-asmtp001.me.com
 (Oracle Communications Messaging Server 7.0.5.38.0 64bit (built Feb 26 2016))
 with ESMTPSA id <0OEA00YODMKTYF50@st11p05im-asmtp001.me.com> for
 kurt@seifried.org; Fri, 30 Sep 2016 01:24:30 +0000 (GMT)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2016-09-29_16:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=1 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1603290000 definitions=main-1609300023
Content-type: text/plain; charset=utf-8
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
From: "Larry W. Cashdollar" <larry0@me.com>
In-reply-to:
 <CABqVa38mR=6ojMYijdDCJdZLFW3185KbJycq2D+=i17T1=dExg@mail.gmail.com>
Date: Thu, 29 Sep 2016 21:24:30 -0400
Content-transfer-encoding: quoted-printable
Message-id: <DB6668D6-3DB0-40AB-B391-19A89BBBE3A0@me.com>
References: <CABqVa38mR=6ojMYijdDCJdZLFW3185KbJycq2D+=i17T1=dExg@mail.gmail.com>
To: Kurt Seifried <kurt@seifried.org>
X-Mailer: Apple Mail (2.3124)

I accept.

> On Sep 29, 2016, at 8:34 PM, Kurt Seifried <kurt@seifried.org> wrote:
>=20
> Hi, I need to confirm that you have accepted the MITRE Terms of Use =
for CVE, available at:
>=20
> =
https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Term=
sOfUse.md
>=20
> and quoted below, please reply with "I accept" and I'll be able to =
process your CVE request. Thanks!
>=20
> Terms of Use
>=20
> LICENSE
>=20
> Submissions: For all materials you submit to the Common =
Vulnerabilities and Exposures (CVE=C2=AE), you hereby grant to The MITRE =
Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a =
perpetual, worldwide, non-exclusive, no-charge, royalty-free, =
irrevocable copyright license to reproduce, prepare derivative works of, =
publicly display, publicly perform, sublicense, and distribute such =
materials and derivative works. Unless required by applicable law or =
agreed to in writing, you provide such materials on an "AS IS" BASIS, =
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, =
including, without limitation, any warranties or conditions of TITLE, =
NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, =
non-exclusive, no-charge, royalty-free, irrevocable copyright license to =
reproduce, prepare derivative works of, publicly display, publicly =
perform, sublicense, and distribute Common Vulnerabilities and Exposures =
(CVE=C2=AE). Any copy you make for such purposes is authorized provided =
that you reproduce MITRE's copyright designation and this license in any =
such copy.
>=20
> DISCLAIMERS
>=20
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE =
ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION =
HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, =
ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL =
WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY =
WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY =
RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A =
PARTICULAR PURPOSE.
>=20
> --=20
> Kurt Seifried
> kurt@seifried.org

