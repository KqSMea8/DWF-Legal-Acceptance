Delivered-To: kurt@seifried.org
Received: by 10.176.3.232 with SMTP id 95csp2344571uau;
        Sun, 9 Jul 2017 06:13:42 -0700 (PDT)
X-Received: by 10.223.170.7 with SMTP id p7mr4682480wrd.79.1499606022881;
        Sun, 09 Jul 2017 06:13:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1499606022; cv=none;
        d=google.com; s=arc-20160816;
        b=fZ10a13yCLcw/2mTZry9qHUqBdQ/QhZesVNhQ0fXE5K1x72jTNChkKs6QGVbuTrGPn
         bWB79ns9jCBp1toMQV7arm3CuWVr4tDgbqZBrRPwfvPvhO3SGqk+sWtjDwtxc9RL4mVG
         6rpFakis0kzJsX3OCa2ob2HM/0+ewy2GmKXtSXM0FzuW/mcWgTLVb+m3QD5aUh/gc/84
         +OYDANLxDC6qxIsXqEINbzUoBiPVkpn0M1yaH+pX3d/KLaOSw/GQ5FuCKESnyF162QC5
         8yI+meANv5xGhQto6qkutIeLpxuDAs2qBZRH1yDDgiC1MDAOoVEp3XFGg15P/UVoprBw
         B8jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:to:from:arc-authentication-results;
        bh=q7BWUkObA3TJJpC0SQPfPDs0YWqrvAllR4f5O0DA3ac=;
        b=BNY9uUORA+dNL+a4ptJiyDZPWzg4uZ7oOSaFb8pB+2ildeqAJinr/Oq7blfCT4E5xa
         YkbFsN/wBcqA4bMjFlWc5VzFfO+z36A/PR0l1NN2h/Ud/RQfjaFTo7kE8J7qKS7vlUFi
         xveNa+Oz8EqicVScOqH+U6NovA7zCBRjI3r+4VBmqnNJwySrHkP8889eqmspCkcGX1OH
         3Hu5hmmlp33iGvXEkcrgYTatNb8qcbAgnYYJ53HjdNoAOoQvpyslDSKsBwiNvgPWhqff
         BSb38+BFwPcGz9uYByah3J82E+APJQ5ERVMUwjpm82R3W1zksdozl/cgfZlBLOjcyvJI
         udEg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mrothbart@nettitude.com designates 193.36.8.220 as permitted sender) smtp.mailfrom=mrothbart@nettitude.com
Return-Path: <mrothbart@nettitude.com>
Received: from smtp.nettitude.com (smtp.nettitude.com. [193.36.8.220])
        by mx.google.com with ESMTPS id v17si5911738wra.112.2017.07.09.06.13.42
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Jul 2017 06:13:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of mrothbart@nettitude.com designates 193.36.8.220 as permitted sender) client-ip=193.36.8.220;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of mrothbart@nettitude.com designates 193.36.8.220 as permitted sender) smtp.mailfrom=mrothbart@nettitude.com
X-IronPort-AV: E=Sophos;i="5.40,334,1496098800"; 
   d="scan'208";a="1038485"
Received: from unknown (HELO poseidon.nettitude.com) ([10.0.0.99])
  by smtp.nettitude.com with ESMTP/TLS/AES256-SHA256; 09 Jul 2017 13:59:27 +0100
Received: from poseidon.nettitude.com (10.0.0.99) by poseidon.nettitude.com
 (10.0.0.99) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.544.27; Sun, 9 Jul
 2017 14:13:41 +0100
Received: from poseidon.nettitude.com ([::1]) by poseidon.nettitude.com
 ([::1]) with mapi id 15.01.0544.030; Sun, 9 Jul 2017 14:13:41 +0100
From: Menachem Rothbart <mrothbart@nettitude.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: RE: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 mrothbart@nettitude.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 mrothbart@nettitude.com
Thread-Index: AQHS+GKyapqrQAO4X0GepwqMHq92EqJLeYcg
Date: Sun, 9 Jul 2017 13:13:41 +0000
Message-ID: <1901c481b2224094a570c6c23a7cd4d0@nettitude.com>
References: <20170709032302.2470.8944@shiny-2.local>
In-Reply-To: <20170709032302.2470.8944@shiny-2.local>
Accept-Language: en-US, en-GB
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.11.35]
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

I accept.

-----Original Message-----
From: kurt@seifried.org [mailto:kurt@seifried.org] =

Sent: Saturday, July 8, 2017 11:23 PM
To: Menachem Rothbart <mrothbart@nettitude.com>
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for mrothbart@n=
ettitude.com

This is a confirmation email sent from CVE request form at https://iwantacv=
e.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can't use the data until you accept the =
MITRE CVE Terms of Use). =


Simply quote the email and reply with "I accept" at the top if you agree to=
 the MITRE CVE Terms of Use and we will add a copy of the email to the DWF =
MITRE CVE Terms of Use acceptance data at https://github.com/distributedwea=
knessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on. =


If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don't =
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME TH=
IS EMAIL EVER AGAIN" and I'll add your email address to the block list so w=
e don't spam you with these, please note that this will prevent you from be=
ing able to accept the MITRE CVE Terms of Use via the DWF automatically in =
future (you'll have to manually ask). But again, if you have no idea what a=
 CVE is then you can ignore this/ask to be added to the block list with no =
problems. =


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
th your question/concerns/etc. =


______________________________________________________________________
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.

Nettitude employ a secure email policy for sending emails to customers. Sho=
uld your email service support ESMTP, you will likely have received this em=
ail over TLS. We also utilise a backup secure service via Cisco Registered =
Envelope Service. For more information visit https://res.cisco.com/websafe/=
about

This footnote also confirms that this email message has been swept by a con=
tent checking tool for the presence of computer viruses.

Nettitude Limited is a Company registered in England
Registered Address
Nettitude Limited, 1 Jephson Court, Tancred Close, Leamington Spa, Warwicks=
hire, CV31 3RZ
Company Registration Number: 4705154
VAT Number: 184 5171 96
www.nettitude.com
______________________________________________________________________

