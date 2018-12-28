Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp138025uaa;
        Fri, 7 Apr 2017 00:16:15 -0700 (PDT)
X-Received: by 10.28.35.151 with SMTP id j145mr26913743wmj.50.1491549375661;
        Fri, 07 Apr 2017 00:16:15 -0700 (PDT)
Return-Path: <advisories@compass-security.com>
Received: from pheidippides.csnc.ch (pheidippides.compass-security.com. [212.254.178.168])
        by mx.google.com with ESMTPS id q78si6837882wmb.122.2017.04.07.00.16.15
        for <kurt@seifried.org>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 07 Apr 2017 00:16:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of advisories@compass-security.com designates 212.254.178.168 as permitted sender) client-ip=212.254.178.168;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@compass-security.com;
       spf=pass (google.com: domain of advisories@compass-security.com designates 212.254.178.168 as permitted sender) smtp.mailfrom=advisories@compass-security.com
Received: from localhost (pheidippides [127.0.0.1])
	by pheidippides.csnc.ch (Postfix) with ESMTP id 7B272A5E54
	for <kurt@seifried.org>; Mon,  3 Apr 2017 19:02:47 +0200 (CEST)
X-Virus-Scanned: amavisd-new at csnc.ch
Received: from pheidippides.csnc.ch ([127.0.0.1])
	by localhost (pheidippides.csnc.ch [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oLSDxErKepI8 for <kurt@seifried.org>;
	Mon,  3 Apr 2017 19:02:41 +0200 (CEST)
Received: from Wapiti.compass-security.com (unknown [212.254.178.164])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pheidippides.csnc.ch (Postfix) with ESMTP id 9D4E6A5E53
	for <kurt@seifried.org>; Mon,  3 Apr 2017 19:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=compass-security.com;
	s=default; t=1491238961;
	bh=kFRLPXWdNxu6qgtqxBhkBxHmrqdnp5KsMKpEJc5Rono=;
	h=From:To:Subject:Date:References:In-Reply-To;
	b=I6KMdmkB15Z6wAdYsZw/S4qKyv0+B1q5ySgj3cLxFW5Q18/8okt3umhSJ8lj5pLBm
	 hsLBLBw2e8R14pD1ry07F/YjnKoQnYR0HSxU5ZXf33jbw+yFw2B6eYt9KaTr5PYnH7
	 e+OMpLzIER6bPiDZASWeraHJKIP9Tcy6qSrfRNB4=
From: Advisories <advisories@compass-security.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: RE: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 advisories@compass-security.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 advisories@compass-security.com
Thread-Index: AQHSrxDU8QBf2U6sfUqRHDR1p/2BC6G5gVYw
Date: Fri, 7 Apr 2017 07:14:45 +0000
Message-ID: <c420fb2c184d427ebbeba76b9b49e188@Wapiti.compass-security.com>
References: <20170406200423.4090.23684@shiny-2.local>
In-Reply-To: <20170406200423.4090.23684@shiny-2.local>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0

I accept

-----Original Message-----
From: kurt@seifried.org [mailto:kurt@seifried.org]
Sent: Donnerstag, 6. April 2017 22:04
To: Advisories
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for advisories@=
compass-security.com

This is a confirmation email sent from CVE request form at https://iwantacv=
e.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can't use the data until you accept the =
MITRE CVE Terms of Use).

Simply quote the email and reply with "I accept" at the top if you agree to=
 the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Terms o=
f Use acceptance data at https://github.com/distributedweaknessfiling/DWF-L=
egal-Acceptance/tree/master/Terms-Of-Use

If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don't =
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME TH=
IS EMAIL EVER AGAIN" and I'll add your email address to the block list so w=
e don't spam you with these, please note that this will prevent you from be=
ing able to accept the MITRE CVE Terms of Use via the DWF automatically in =
future (you'll have to manually ask). But again, if you have no idea what a=
 CVE is then you can ignore this/ask to be added to the block list with no =
problems.

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE) and a=
ll CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, =
no-charge, royalty-free, irrevocable copyright license to reproduce, prepar=
e derivative works of, publicly display, publicly perform, sublicense, and =
distribute such materials and derivative works. Unless required by applicab=
le law or agreed to in writing, you provide such materials on an "AS IS" BA=
SIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implie=
d, including, without limitation, any warranties or conditions of TITLE, NO=
N-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE??). Any copy you make f=
or such purposes is authorized provided that you reproduce MITRE's copyrigh=
t designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE RE=
PRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF T=
RUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS =
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE I=
NFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES O=
F MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at https://github.com/distributedweaknessfiling/DWF-Dat=
abase/blob/master/TermsOfUse.md

To contact the DWF either hit reply, or email kurt@seifried.org manually wi=
th your question/concerns/etc.

