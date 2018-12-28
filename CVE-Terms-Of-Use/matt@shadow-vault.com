Delivered-To: kurt@seifried.org
Received: by 2002:a4f:65c4:0:0:0:0:0 with SMTP id z187-v6csp1568490ivb;
        Wed, 20 Jun 2018 21:12:30 -0700 (PDT)
X-Google-Smtp-Source: ADUXVKK+BbzWpi+LttEppFlCNtJKktZFKbQXsd1ZUapBDNiUboHpKL8u7kcjyESBg06Mjk7MVzsb
X-Received: by 2002:a65:5086:: with SMTP id r6-v6mr6964390pgp.375.1529554350605;
        Wed, 20 Jun 2018 21:12:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1529554350; cv=none;
        d=google.com; s=arc-20160816;
        b=Vy1AQipByCTgSQohcnbUCwOH1k5/8sK8yPuRkRvrRE7t6VY9LgkEuSf9Dlt1XBCAkx
         0azCuNn+zocJshx7s3CAVtFDUGk7aUHUVq+KTrpHu/G7IvDNpCIDLcLjPYFWVa+rzYDg
         m6Ch7kLhrnlsNYOSHGThiV65rxm/cEC5++9F/Ptrqc9Ekgx4DGnGaNmmQBoWmaKIaJjg
         hgl9ajZC0pNeGSYzma+bNgxn1/Psjdj+ijqaG8lJP80Kix0nF8ZfkeHOAnVvPii6SBmh
         ja5FGsTuAOKeY2lzBwc6FvINN+k/B1/Lisyd5/fXZp4MYLC1pjHywaxfNrN9B+bn5JIT
         NHtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:to:from
         :dkim-signature:arc-authentication-results;
        bh=16tQiXD09Hil3yAOqGA7GEu/P3ku+HBLr85EWTQMpvA=;
        b=qNq+DM2J7pmxIIqczQFqVM2ItHgoB/bSiwVPPKG74AZlRrmUX+P5Rcv36c/RAsERL5
         u6sfrphVwSx1o0Dhl1m95FcOP5nxcGDxJNAnMIwmk+jB7F/OR7czE5JKjMWsF6as0XbO
         wOsA8TRbVH5M2iOqk6Xabyea9uCs7SChyZ96vrldQl4SYum9itNkGltswtom4V+Up0Jt
         g0FiAn3sp2Upt3e780QWIHEl3AufbJZAOXPTG5V2q/wlQTdlBTfMZV6xcCcHMLbdbjMs
         GRRDOaC3XcXj1vbDoy56V1fj1kMkStEn+82T+2Ino9HmwTDRjQ6Mpn5Pif7xdJIdG9jw
         FdkQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@shadow-vault.com header.s=1518835594.vault header.b=oXbi5rbw;
       spf=pass (google.com: domain of matt@shadow-vault.com designates 34.211.131.202 as permitted sender) smtp.mailfrom=matt@shadow-vault.com
Return-Path: <matt@shadow-vault.com>
Received: from mail.shadow-vault.com (ec2-34-211-131-202.us-west-2.compute.amazonaws.com. [34.211.131.202])
        by mx.google.com with ESMTPS id t76-v6si3213161pgc.393.2018.06.20.21.12.29
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jun 2018 21:12:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of matt@shadow-vault.com designates 34.211.131.202 as permitted sender) client-ip=34.211.131.202;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@shadow-vault.com header.s=1518835594.vault header.b=oXbi5rbw;
       spf=pass (google.com: domain of matt@shadow-vault.com designates 34.211.131.202 as permitted sender) smtp.mailfrom=matt@shadow-vault.com
dkim-signature: v=1; a=rsa-sha256; d=shadow-vault.com; s=1518835594.vault;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:MIME-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:References;
	bh=16tQiXD09Hil3yAOqGA7GEu/P3ku+HBLr85EWTQMpvA=;
	b=oXbi5rbwCEqfoTi6UXg1GLgUEE4xCTZZWyoo7tFi35cSLQjEtl/RxMSiM3OZavEWeiRGbKvl2neBjLY6kyrFpFCDIwXuqwUHurGyqEP/YNUCcD+YHC6ciFrdd3IIqwdcWxUYmvJKzswFf7ySWXumhrAvJ6+urntSgviNPQ4EKq8=
Received: from DESKTOPC8KTDLQ (Unknown [203.49.145.193])
	by mail.shadow-vault.com with ESMTPSA
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256)
	; Thu, 21 Jun 2018 04:12:29 +0000
From: <matt@shadow-vault.com>
To: <kurt@seifried.org>
References: <20180620194543.10662.85246@shiny-2.local>
In-Reply-To: <20180620194543.10662.85246@shiny-2.local>
Subject: RE: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for matt@shadow-vault.com
Date: Thu, 21 Jun 2018 14:12:27 +1000
Message-ID: <000f01d40916$128ce0e0$37a6a2a0$@shadow-vault.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQEhhlbqHmHk1YixGHkiL7ZYQrr0kaXPH1TA
Content-Language: en-au

I accept

-----Original Message-----
From: kurt@seifried.org <kurt@seifried.org> 
Sent: Thursday, 21 June 2018 5:46 AM
To: matt@shadow-vault.com
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
matt@shadow-vault.com

This is a confirmation email sent from CVE request form at
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
(assuming you filled out the CVE form and want one, we can't use the data
until you accept the MITRE CVE Terms of Use). 

Simply quote the email and reply with "I accept" at the top if you agree to
the MITRE CVE Terms of Use and we will add a copy of the email to the DWF
MITRE CVE Terms of Use acceptance data at
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/maste
r/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an
artifact showing that the email address accepted the Terms of Use, when they
were accepted and so on. 

If you did not submit a CVE request to the DWF you can safely ignore this
message, however we may resend it at some point in the future, if you don't
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so
we don't spam you with these, please note that this will prevent you from
being able to accept the MITRE CVE Terms of Use via the DWF automatically in
future (you'll have to manually ask). But again, if you have no idea what a
CVE is then you can ignore this/ask to be added to the block list with no
problems. 

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and
Exposures (CVEB.), you hereby grant to The MITRE Corporation (MITRE) and all
CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce, prepare
derivative works of, publicly display, publicly perform, sublicense, and
distribute such materials and derivative works. Unless required by
applicable law or agreed to in writing, you provide such materials on an "AS
IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
implied, including, without limitation, any warranties or conditions of
TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR
PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce, prepare
derivative works of, publicly display, publicly perform, sublicense, and
distribute Common Vulnerabilities and Exposures (CVEB.). Any copy you make
for such purposes is authorized provided that you reproduce MITRE's
copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF
TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES
OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/maste
r/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc. 



