Delivered-To: kurt@seifried.org
Received: by 2002:a9d:3a09:0:0:0:0:0 with SMTP id j9csp9940673otc;
        Wed, 5 Dec 2018 11:19:33 -0800 (PST)
X-Received: by 2002:a5d:6684:: with SMTP id l4mr25051939wru.154.1544037573620;
        Wed, 05 Dec 2018 11:19:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1544037573; cv=none;
        d=google.com; s=arc-20160816;
        b=ql73UUi0USUfyVBX5xdGd5FExFXGQQDycoyZLy8WHt6X0gUPpBlSNrsE5n29ZfbQYV
         g3i3j8O8whLCKTPvXYxMo4FxpSTUoug1wZNgf6c6Q1KJcnI9NgrlHbURb/mG6dDssT1P
         CSwCYlt5rqoY02yQqlsj8guC+xrNUCu3gcbWrQxfR7Z8D0KfSV2Io+dR1Af89sDRanjn
         VYnP/VPbmGuvOktkDINJuBXAm9rJp1eqoI2aZldsR9v7xYTwEkRODi5Vvk9ERehQg+3I
         RI46FoYBCoW188Ohj93dKApjE42BT4fLnVnYGAvb9MSeF3HWHiKbAYFyukDcJ6geHBPE
         f9Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:to:references:date:subject:mime-version
         :content-transfer-encoding:from:dkim-signature;
        bh=XUxGFkbylIikdAgXceDrpVkp2eih/PZBCRsAp7J7t3c=;
        b=fcMYg+epm/4GrbPtHoTKu16iuc1Ck0+lw8aBLY2b09uC1QARinorJ0uaufQlFNt1LC
         mKOWb7rsLnZm1iOfJNQFMInAiQVWJQg0lRVptFdINEMT4Wr4GgNH6+rAgcF0qbMlXZd/
         ZVjZnGydlYGdZ4Mywv8utAZAvJWuWnwONVpMmj38neOKj4egJHX0d8fXFPX4M3gmgcLi
         m7M4FYTSOyZeNEZGc/V6oi7ua+A+G+myZiRQhWNZ4hePaJ/0VDqKoQ7cJZg3OL5s5vy+
         F5TeaC5gpzTTUh4wScpp2X2YDjKNf0+PR7CntcmdIDr/n+/Q9BJu5LY8T6ePwwARlC3O
         udXg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=veuHKiUP;
       spf=pass (google.com: domain of nicolas.richeton@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=nicolas.richeton@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nicolas.richeton@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id t129sor9800075wmb.0.2018.12.05.11.19.33
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 05 Dec 2018 11:19:33 -0800 (PST)
Received-SPF: pass (google.com: domain of nicolas.richeton@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=veuHKiUP;
       spf=pass (google.com: domain of nicolas.richeton@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=nicolas.richeton@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=XUxGFkbylIikdAgXceDrpVkp2eih/PZBCRsAp7J7t3c=;
        b=veuHKiUPeXYEyKxRRYwHjtcQDR6EwHBYnG9YM1aoW+JktdEWBxUE2o5iVcy18N6quy
         NwAWdodPSxxtUEswHSegmPb+UwAhszbltE76NXHtGS16aTuEVPuAy5rd5YlaTiRey6nG
         LcU3a1axcmH/hdGm0PUIhmkLLyPSMkL07RZn1nHK2Rujye/eWkYwpKfnd3RSw++RYeTc
         pZKG+LHNlY0K6IQV+IguUAhyXOKBKZgCyHGb1hryGuLeXbO27fCYmnqWvUYYr/yUpSfR
         6nQh3sYebSIndFxLX50gm/5L/vdzFPw6dQycdavZW3K56JtwhyyGg/UbhHF5czkQ24Z1
         NMxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=XUxGFkbylIikdAgXceDrpVkp2eih/PZBCRsAp7J7t3c=;
        b=LNTZ+dqUEg/EEOio+B5Hj6+8WEYastJFplRoMifOEK1Esp36KyYwXJ/rbobvCmyv7s
         y59TTXAsTnRRdIZwq/3QgYj7rEjCjuY95oJxggZN+p5JAG9y1rUl0wqWyH2fmSo9A25P
         rqY+RkjVTT4Crlpwn3FFosRiNNDfwFlpDh3GByDWkINFAlVq8Aa6ruCN4ZWOLupzCmS3
         G4AVlOhAvnyYdWZ9E+IYaQtr3eCewoQxdm/c3XozkysDeZMlWlb+8hfWqa1iCjZ3c9De
         q8SDJPLz/9LxbEkOYAoX1QDcV0zeeiBX7DOMW6YjnpzW5JXCh8Lri7JAuTqITAl2Nshs
         JnVw==
X-Gm-Message-State: AA+aEWZmT7+s335zR41BEL2AyOrABAcg23t77hLX+sdZCDRSb2sHjiWG
	uFqOmNgNqxZxRpuo6kkFJA1Rxn6B
X-Google-Smtp-Source: AFSGD/WUAgXbheUlDeDtOEHzN4AcgAfDKdhuQpNNYgSwvxRHz9rOWo3KPLHDXlwVN41j454NiN6lJA==
X-Received: by 2002:a1c:9803:: with SMTP id a3mr17687510wme.69.1544037572949;
        Wed, 05 Dec 2018 11:19:32 -0800 (PST)
Return-Path: <nicolas.richeton@gmail.com>
Received: from [192.168.0.212] (mic92-3-81-56-67-208.fbx.proxad.net. [81.56.67.208])
        by smtp.gmail.com with ESMTPSA id n82sm13702517wma.42.2018.12.05.11.19.32
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Dec 2018 11:19:32 -0800 (PST)
From: Nicolas Richeton <nicolas.richeton@gmail.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.1 \(3445.101.1\))
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 nicolas.richeton@gmail.com
Date: Wed, 5 Dec 2018 20:19:31 +0100
References: <20181029185122.13656.92625@bigbox.local>
To: kurt@seifried.org
In-Reply-To: <20181029185122.13656.92625@bigbox.local>
Message-Id: <5079E7DB-AEF6-4169-9370-7D89150D0C6F@gmail.com>
X-Mailer: Apple Mail (2.3445.101.1)

I accept

> Le 29 oct. 2018 =C3=A0 19:51, kurt@seifried.org a =C3=A9crit :
>=20
> This is a confirmation email sent from CVE request form at =
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use =
(assuming you filled out the CVE form and want one, we can't use the =
data until you accept the MITRE CVE Terms of Use).=20
>=20
> Simply quote the email and reply with "I accept" at the top if you =
agree to the MITRE CVE Terms of Use and we will add a copy of the email =
to the DWF MITRE CVE Terms of Use acceptance data at =
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/mas=
ter/Terms-Of-Use
>=20
> The reason we use a complete copy of the email is that it provides an =
artifact showing that the email address accepted the Terms of Use, when =
they were accepted and so on.=20
>=20
> If you did not submit a CVE request to the DWF you can safely ignore =
this message, however we may resend it at some point in the future, if =
you don't want any future emails simply reply with "unsubscribe" or =
"DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to =
the block list so we don't spam you with these, please note that this =
will prevent you from being able to accept the MITRE CVE Terms of Use =
via the DWF automatically in future (you'll have to manually ask). But =
again, if you have no idea what a CVE is then you can ignore this/ask to =
be added to the block list with no problems.=20
>=20
> MITRE CVE Terms of Use
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
> A copy is available at =
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/mas=
ter/Terms-Of-Use.md
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org =
manually with your question/concerns/etc.=20
>=20

