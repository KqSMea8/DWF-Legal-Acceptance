Delivered-To: kurt@seifried.org
Received: by 10.79.79.71 with SMTP id d68csp8100996ivb;
        Wed, 27 Dec 2017 12:08:56 -0800 (PST)
X-Google-Smtp-Source: ACJfBouTvuEPgpS5cg/2wMChz2o7sjE4/uH6HT4lrrMiZDWX6a+V7tHQNEoQobs428+wUBXAm1sL
X-Received: by 10.237.47.228 with SMTP id m91mr40778233qtd.205.1514405336310;
        Wed, 27 Dec 2017 12:08:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1514405336; cv=none;
        d=google.com; s=arc-20160816;
        b=oyGMJ6nZFSCs+Jg4fust19gyB2sODVzKB+F+sulWv56EdMn7O3nMfChu8SuGW1vnaP
         1Z15uX7nSkHdo5inU2e3qiFNDOWubo4TYnpGQRHF5TDfn5sYy0sT7MKVDWb1y4WxYfXW
         prrV3yd3r1MQXkwqY108XKuizdOtB5tRxj7OF/yjocxms8GqCQeTMnLddmCVvL/1/d8o
         l5UtJgR/vSs2AfJ5FifH28Gp0gME7TNiGXd363tnSamZKLkPo4R/F8DSyyV0ukWIVAJp
         WvNE9p583cWxlp8cdifK9V19jVp98m0Dthyc2+O5YY0tU4vgLnnbQ5AVmyBc24s4VqlR
         Bc6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:to:from:arc-authentication-results;
        bh=LDEemm2XVb5zC3WoyZ+E72kPa1j/t8MYAh9hNTDXacM=;
        b=BkqyoWUFSn/lBiQAwyoqJGiApDK66R+8yhBIfd1GJjxDIWEJH8Fvz6nCEL1bjzASPf
         oO9BIMeYJtdd7N7z4Z62SSaOc+54x3sd2hnJHWNI8QpsLiCnW8VSLGISQDu9K8fEYqnM
         DruGfwo46crQG9kLOysTrWj3FX9eJ5FqJ5DJ8GGukQqSerYMbO4w4hnNrPxi7zbyKcN/
         9njH9c6iEn1DYHbd9SfnlmBI+TnaVag2g0stgUj9U9Y19Dj2bB7eIopbE1VsW2L5HDaf
         oQf1g3n9w0G3q1RCMyr9SA0S79uoGs8sOrNIam3UTeDXapOT/4BlMNvC+gNi5UwLaq+o
         RXSg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of psirt@lenovo.com designates 216.82.243.204 as permitted sender) smtp.mailfrom=psirt@lenovo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=lenovo.com
Return-Path: <psirt@lenovo.com>
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com. [216.82.243.204])
        by mx.google.com with ESMTPS id t63si3512074qkd.472.2017.12.27.12.08.56
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Dec 2017 12:08:56 -0800 (PST)
Received-SPF: pass (google.com: domain of psirt@lenovo.com designates 216.82.243.204 as permitted sender) client-ip=216.82.243.204;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of psirt@lenovo.com designates 216.82.243.204 as permitted sender) smtp.mailfrom=psirt@lenovo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=lenovo.com
Return-Path: <psirt@lenovo.com>
Received: from [216.82.242.41] (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256 bits))
	by server-12.bemta-8.messagelabs.com id 82/4A-01246-8DDF34A5; Wed, 27 Dec 2017 20:08:56 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrLIsWRWlGSWpSXmKPExsWSLvdKR/f6X+c
  og1cLVS2aN65lcWD0ePBaJ4AxijUzLym/IoE1Y8WTdtaCPzoVky6+Y2tg/K7axcjFISTwhFHi
  wZ1FrBDOZEaJCY3LmLoYOTnYBFQlNm2YwAxiiwhoS0x/fZwNxBYWCJXYtO4HO0Q8TGLCkptME
  LaRxP6Ds8DqWYB6V//sBovzCjhJvP5/DMwWAqqZMn8hWA2ngLHEmm9tYHFGATGJ76fWgNnMAu
  ISt57MB7MlBAQkluw5zwxhi0q8fPwP6FAOIFtB4vUWRYhyPYkbU6ewQdjaEssWvmaGWCsocXL
  mE5YJjMKzkEydhaRlFpKWWUhaFjCyrGLUKE4tKkst0jU21ksqykzPKMlNzMzRNTSw0MtNLS5O
  TE/NSUwq1kvOz93ECAz+egYGxh2Mv45EH2KU5GBSEuV98d45SogvKT+lMiOxOCO+qDQntfgQo
  wwHh5IEryYwmoQEi1LTUyvSMnOAcQiTluDgURLh3fcHKM1bXJCYW5yZDpE6xWjJ8Wzm6wZmjn
  nHvzUxcxz6faiVWYglLz8vVUqc9wpIgwBIQ0ZpHtw4WKq4xCgrJczLyMDAIMRTkFqUm1mCKv+
  KUZyDUUmY9wPIFJ7MvBK4ra+ADmICOuhfiBPIQSWJCCmpBka2D0u9rBpUX37xsH+9eYrh+vvv
  vvDU/JDXP1G6Kkf2yX+p469DN68T/sT4sWxNws9Xr8JXKB7XbDHfbLb61tQZOj/Eb8xZafPt8
  PzgOfr9xWo2zleDk5MuZuhN0pIK52EM2S/VMjMtaMZBhk/PrD8nuz+c9kMhd74P0z/7X/tyb/
  BY3d7wxTFJiaU4I9FQi7moOBEAx62kJxADAAA=
X-Env-Sender: psirt@lenovo.com
X-Msg-Ref: server-5.tower-218.messagelabs.com!1514405331!31140514!1
X-Originating-IP: [103.30.234.44]
X-StarScan-Received:
X-StarScan-Version: 9.4.45; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 31971 invoked from network); 27 Dec 2017 20:08:54 -0000
Received: from unknown (HELO mapsmtp02.lenovo.com) (103.30.234.44)
  by server-5.tower-218.messagelabs.com with DHE-RSA-AES256-GCM-SHA384 encrypted SMTP; 27 Dec 2017 20:08:54 -0000
Received: from USMAILCH01.lenovo.com (unknown [10.62.32.5]) by mapsmtp02.lenovo.com with smtp
	(TLS: TLSv1/SSLv3,256bits,ECDHE-RSA-AES256-SHA)
	 id 47b3_cb7f_54e16995_e1eb_4dbf_baa7_c903e145aade;
	Thu, 28 Dec 2017 04:08:50 +0800
Received: from USMAILMBX02.lenovo.com ([10.62.32.2]) by USMAILCH01.lenovo.com
 ([::1]) with mapi id 14.03.0248.002; Wed, 27 Dec 2017 12:07:53 -0800
From: Lenovo PSIRT <psirt@lenovo.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: RE: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 psirt@lenovo.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 psirt@lenovo.com
Thread-Index: AQHTf0nqFQBsL7WoHESBTBWRI5/kEaNXniOg
Date: Wed, 27 Dec 2017 20:07:51 +0000
Message-ID: <2B9B21C272BA494FA7C2A8502E1B45AE445963EF@USMAILMBX02>
References: <20171227193537.3645.95259@slab.local>
In-Reply-To: <20171227193537.3645.95259@slab.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.38.104.67]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0

I accept.

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

A copy is available at https://github.com/distributedweaknessfiling/DWF-Leg=
al-Acceptance/blob/master/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually wi=
th your question/concerns/etc.

Regards,=20


Beverly Finch
Lenovo PSIRT
Product Security Office

psirt@lenovo.com
=A0

Lenovo.com=A0
Twitter=A0|=A0Facebook=A0|=A0Instagram=A0|=A0Blogs=A0|=A0Forums







-----Original Message-----
From: kurt@seifried.org [mailto:kurt@seifried.org]=20
Sent: Wednesday, December 27, 2017 2:36 PM
To: Lenovo PSIRT
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for psirt@lenov=
o.com

This is a confirmation email sent from CVE request form at https://iwantacv=
e.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can't use the data until you accept the =
MITRE CVE Terms of Use).=20

Simply quote the email and reply with "I accept" at the top if you agree to=
 the MITRE CVE Terms of Use and we will add a copy of the email to the DWF =
MITRE CVE Terms of Use acceptance data at https://github.com/distributedwea=
knessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.=20

If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don't =
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME TH=
IS EMAIL EVER AGAIN" and I'll add your email address to the block list so w=
e don't spam you with these, please note that this will prevent you from be=
ing able to accept the MITRE CVE Terms of Use via the DWF automatically in =
future (you'll have to manually ask). But again, if you have no idea what a=
 CVE is then you can ignore this/ask to be added to the block list with no =
problems.=20

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

A copy is available at https://github.com/distributedweaknessfiling/DWF-Leg=
al-Acceptance/blob/master/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually wi=
th your question/concerns/etc.=20

