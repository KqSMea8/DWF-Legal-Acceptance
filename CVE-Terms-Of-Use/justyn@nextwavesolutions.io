Delivered-To: kurt@seifried.org
Received: by 2002:a4f:ca81:0:0:0:0:0 with SMTP id n1-v6csp2193052ivl;
        Thu, 26 Apr 2018 07:34:48 -0700 (PDT)
X-Received: by 10.55.33.160 with SMTP id f32mr35198188qki.153.1524753288403;
        Thu, 26 Apr 2018 07:34:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1524753288; cv=none;
        d=google.com; s=arc-20160816;
        b=P6Q+yglVNg3znHai6k8OUc5oiCsNuswGfTVScNvfxejO/kQrKGuqhJzkbv6ZgiJGNb
         nmEfbghR1mbgjrEkAR4ocLiqUP5a8WMSi14DjPX7QIj0aEYKelDzyGqponh6sZprgO03
         wBUFTCOPLVdjAbnr+17rCOXwJwGtsqiF01ZlMxuHzM6CF8RDyRSyXEkJLoe1GqMn08xm
         z1VBQVQwPdWH8ddMyO3ryJfAnD728NAzHpkIqcQhP2pOskZf3KFm1GzLy52yLpHY8T06
         PnzOzWEvevrSZUsxTsDlg/Np0v5mKs5B0teXiOy6sDb8ING5sWGOy6dcNzDDAlX8iKHm
         +40g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:to:subject:from:date
         :dkim-signature:arc-authentication-results;
        bh=7VBN20OlSVplE8P+Y2yMblwIWxTMk6h3vf3aQh9Er0E=;
        b=qFbsdyqVitOy7IuHhFTPKJp8EkRfXXuSe+vzp2tLkcsac5S5HNUQupUEQzz8ZYfIDy
         405qLZzVv/wJ8lJcRrywlpUDLZ5+gpF87Hg1B3ZkY8NIFjQP5Ls+Qf2jKbvuEQyCOIWc
         cZrzo5FysNjuZBimzo5FDR1CIjy73Yr/OgduSerc0dVWOHRbkIw2phKa8FZPsxAXgWRU
         AGhVCdn4NbpX80opYq8XsMdX/MvTxLC4yM4FfY0rdUBW7Geca+HJJcF/buhTCdLwyoSo
         /jik7eHXuqGt8UxusbYaiKGbICIRsw7bdIN+kM7oKeWI5O+V260Z/PAiipNUBJDBrbvx
         CW8w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aF1pHUmF;
       spf=pass (google.com: domain of justyntemme@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=justyntemme@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <justyntemme@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id i55-v6sor14480998qta.0.2018.04.26.07.34.48
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 26 Apr 2018 07:34:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of justyntemme@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aF1pHUmF;
       spf=pass (google.com: domain of justyntemme@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=justyntemme@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:subject:to:message-id:in-reply-to:references:mime-version;
        bh=7VBN20OlSVplE8P+Y2yMblwIWxTMk6h3vf3aQh9Er0E=;
        b=aF1pHUmFV0+/TJJ2bIB9HwhCXM3BqAW2RWsTEOAdQaNmuOzvEXngjt34siVvUt/huc
         9ZJCUq5ZSuvpclM7/MJNRQGgc1aklzbB2Y9X6Jb2SQn4oqr+wKrXV7HKpO4ZDwbUtgyB
         xRe2PTz9XDCbFZCuVtmnDMI6N/CU/KEHoe3lSr2HNXvYzXI4Coxbtn/IA/5vuxbzh205
         dtFw00C3vNG4bnFq2PmvU5OYa0TeZBEU9rTJywj47EfdBcDnlm6jVUH/77k7gnuNnOpm
         yEXTb/laoc4aqR9q3I27eY47lof8Xhl06Uo8YRxS3+/kK2tfpM8RpAgAtWt+zLMLT7QF
         j0OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:subject:to:message-id:in-reply-to
         :references:mime-version;
        bh=7VBN20OlSVplE8P+Y2yMblwIWxTMk6h3vf3aQh9Er0E=;
        b=QNaOn9AofIT4rWeJjLgf4W4WgiXYX3BvGzELxHMtdL9Jyscv42yrF+x5u01wzrPzaj
         ML58RS69LDHN2BabBBuAWHxZSdbcSkNb7ktFF5f804sDu710hCI0ZX8DZablyFE/vT1h
         qz5opUJcQ3MRIZ3vOY+sdp28P+6FGyRYwUxm6krSoHaqJwadcuoVepS99NSNRcDvf2wE
         nCm/OwIsI34FPwsfha+f89ZKww3vU83U+DECJpNwnzn7gkVpDt8SkQb1S9+j6JRsX3mR
         zvNa5F3Q/b/pQCP0sP5BgriJjSdT38hpg9sEYiZRr5nD9GpYeMS3ZdjGozVpMzspPQUN
         auxw==
X-Gm-Message-State: ALQs6tAyDMYs6xQoDbaNroWZMecTNVYBw/+8N47wEZIl5zMqIkji/9mG
	0utJXsS4E8v0fXz+K7D1MNg7
X-Google-Smtp-Source: AB8JxZpxC5sqShXrvflmOsUYO0ojNq0CLIYJOu9ZgSxZN9nKzQ/X8NMtFL5h8eVuWaAlAnuBfNRmuA==
X-Received: by 2002:ac8:387d:: with SMTP id r58-v6mr6745091qtb.138.1524753287770;
        Thu, 26 Apr 2018 07:34:47 -0700 (PDT)
Return-Path: <justyntemme@gmail.com>
Received: from [10.0.0.143] (wsip-72-200-247-142.fv.ks.cox.net. [72.200.247.142])
        by smtp.gmail.com with ESMTPSA id m8sm1056011qkm.61.2018.04.26.07.34.46
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 26 Apr 2018 07:34:47 -0700 (PDT)
Date: Thu, 26 Apr 2018 09:34:45 -0500
From: Justyn temme <justyntemme@gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 justyn@nextwavesolutions.io
To: kurt@seifried.org
Message-Id: <1524753285.2.12@smtp.gmail.com>
In-Reply-To: <20180426143355.43285.86443@slab.local>
References: <20180426143355.43285.86443@slab.local>
X-Mailer: geary/0.12.1
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-RJcS3eZ0LQWeK1B2Ns63"

--=-RJcS3eZ0LQWeK1B2Ns63
Content-Type: text/plain; charset=us-ascii; format=flowed

I accept

On Thu, Apr 26, 2018 at 9:33 AM, kurt@seifried.org wrote:
> This is a confirmation email sent from CVE request form at 
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of 
> Use (assuming you filled out the CVE form and want one, we can't use 
> the data until you accept the MITRE CVE Terms of Use).
> 
> Simply quote the email and reply with "I accept" at the top if you 
> agree to the MITRE CVE Terms of Use and we will add a copy of the 
> email to the DWF MITRE CVE Terms of Use acceptance data at 
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
> 
> The reason we use a complete copy of the email is that it provides an 
> artifact showing that the email address accepted the Terms of Use, 
> when they were accepted and so on.
> 
> This data cannot be removed from the Internet, or from our git repo. 
> If you are concerned about your personal information (in the form of 
> your email address and any attached information you include like your 
> name) please do not submit it, setup an email address and use that. I 
> cannot comply with GDPR requests to remove your information due to 
> the nature of git, and my inability to confirm if you are a european 
> or not, so if you don't want it in there, don't reply with "I accept".
> 
> If you did not submit a CVE request to the DWF you can safely ignore 
> this message, however we may resend it at some point in the future, 
> if you don't want any future emails simply reply with "unsubscribe" 
> or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email 
> address to the block list so we don't spam you with these, please 
> note that this will prevent you from being able to accept the MITRE 
> CVE Terms of Use via the DWF automatically in future (you'll have to 
> manually ask). But again, if you have no idea what a CVE is then you 
> can ignore this/ask to be added to the block list with no problems.
> 
> MITRE CVE Terms of Use
> 
> LICENSE
> 
> Submissions: For all materials you submit to the Common 
> Vulnerabilities and Exposures (CVE), you hereby grant to The MITRE 
> Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a 
> perpetual, worldwide, non-exclusive, no-charge, royalty-free, 
> irrevocable copyright license to reproduce, prepare derivative works 
> of, publicly display, publicly perform, sublicense, and distribute 
> such materials and derivative works. Unless required by applicable 
> law or agreed to in writing, you provide such materials on an "AS IS" 
> BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express 
> or implied, including, without limitation, any warranties or 
> conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS 
> FOR A PARTICULAR PURPOSE.
> 
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, 
> non-exclusive, no-charge, royalty-free, irrevocable copyright license 
> to reproduce, prepare derivative works of, publicly display, publicly 
> perform, sublicense, and distribute Common Vulnerabilities and 
> Exposures (CVE). Any copy you make for such purposes is authorized 
> provided that you reproduce MITRE's copyright designation and this 
> license in any such copy.
> 
> DISCLAIMERS
> 
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE 
> ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE 
> ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE 
> CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, 
> DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT 
> LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL 
> NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY 
> OR FITNESS FOR A PARTICULAR PURPOSE.
> 
> A copy is available at 
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md
> 
> To contact the DWF either hit reply, or email kurt@seifried.org 
> manually with your question/concerns/etc.
> 

--=-RJcS3eZ0LQWeK1B2Ns63
Content-Type: text/html; charset=us-ascii

<div id="geary-body" dir="auto"><div>I accept</div></div><div id="geary-quote" dir="auto"><br>On Thu, Apr 26, 2018 at 9:33 AM, kurt@seifried.org wrote:<br><blockquote type="cite"><div class="plaintext" style="white-space: pre-wrap;">This is a confirmation email sent from CVE request form at <a href="https://iwantacve.org/">https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assuming you filled out the CVE form and want one, we can't use the data until you accept the MITRE CVE Terms of Use). 

Simply quote the email and reply with "I accept" at the top if you agree to the MITRE CVE Terms of Use and we will add a copy of the email to the DWF MITRE CVE Terms of Use acceptance data at <a href="https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use">https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a>

The reason we use a complete copy of the email is that it provides an artifact showing that the email address accepted the Terms of Use, when they were accepted and so on. 

This data cannot be removed from the Internet, or from our git repo. If you are concerned about your personal information (in the form of your email address and any attached information you include like your name) please do not submit it, setup an email address and use that. I cannot comply with GDPR requests to remove your information due to the nature of git, and my inability to confirm if you are a european or not, so if you don't want it in there, don't reply with "I accept". 

If you did not submit a CVE request to the DWF you can safely ignore this message, however we may resend it at some point in the future, if you don't want any future emails simply reply with "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so we don't spam you with these, please note that this will prevent you from being able to accept the MITRE CVE Terms of Use via the DWF automatically in future (you'll have to manually ask). But again, if you have no idea what a CVE is then you can ignore this/ask to be added to the block list with no problems. 

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and Exposures (CVE), you hereby grant to The MITRE Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute such materials and derivative works. Unless required by applicable law or agreed to in writing, you provide such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, without limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute Common Vulnerabilities and Exposures (CVE). Any copy you make for such purposes is authorized provided that you reproduce MITRE's copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at <a href="https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md">https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md</a>

To contact the DWF either hit reply, or email <a href="mailto:kurt@seifried.org">kurt@seifried.org</a> manually with your question/concerns/etc. 

</div></blockquote></div>
--=-RJcS3eZ0LQWeK1B2Ns63--

