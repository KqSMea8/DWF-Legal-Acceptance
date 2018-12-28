Delivered-To: kurt@seifried.org
Received: by 10.79.79.71 with SMTP id d68csp8356108ivb;
        Wed, 27 Dec 2017 17:34:45 -0800 (PST)
X-Google-Smtp-Source: ACJfBoshkZQeFDmfoWb7wl+rw5DKftf2YP0qzC6q1L6ZgHh9gp6cm0C1CrWsweTlg+1f6KOIGVx8
X-Received: by 10.99.50.3 with SMTP id y3mr7340821pgy.268.1514424885270;
        Wed, 27 Dec 2017 17:34:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1514424885; cv=none;
        d=google.com; s=arc-20160816;
        b=xt57FuimOsSBsen1kDKK4vm4GdoqJsAZp0xUch+ymlT5vyyukSVvkzpwt4WUvlcKnX
         B7sPRKHbt8r8QmeKbFtJSri3TNyLOQfyGpmkAfsCC2b03Ncej5orS8K9avew4dQLqRmM
         7gILcu07elOekijLa+K7nC8sDSvbWxoYzd8pDmcImWWi2gqnOoph1QClDjC0KAfNjK9l
         L+zjwv0Oy3Qt9U28L15YT8qIj2iaNwnNa/OQ0IYt9LT/oOqr8eTkngod/bpgkKfA0hOM
         OEGVLP00saiw9IRDd5iTLV7aB7IRq5F90P0byVF/CNML5CJ68pB4AXW27pQmnLM4tfon
         bMsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=bxsHxS9oRloD8ZN7zHMWvOMg1tNE8F3Jjq6yYXjdZrM=;
        b=zE4YjcG5olVMT7Qtl1jTgOYLrD4wvbtii5tU/inS1V8flifYfmxXA/yU18Z7qjKbMU
         r+lQVR/krYAsFgq3BgiUrl0gYUBtRSl6Evw9CEzg1L+NXF/JUoJ2HaVYHmTylvAX8VMc
         eU5U/TRF5GDnqBGPItKoqJAv4l4twTNuQ5rs+8DZ1zSa6f1tYllEWPvcPILY19YFjJkL
         2Z7MhT3V44zFloFHnPTYSfZoggnNfY83Z1nsad6e/YspCtmbrc+gXRRjgvT3ifBiHKic
         7dAMIbc4xWnxayEJq6BkZLjyKtlm995VB6U/bUTe79uruJ+Air24THbwrJPxKkX6kdlF
         HzDA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@icloud.com header.s=04042017 header.b=M/E7uOBX;
       spf=pass (google.com: domain of l2dy@icloud.com designates 17.142.194.252 as permitted sender) smtp.mailfrom=l2dy@icloud.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=icloud.com
Return-Path: <l2dy@icloud.com>
Received: from pv33p00im-asmtp003.me.com (pv33p00im-asmtp003.me.com. [17.142.194.252])
        by mx.google.com with ESMTPS id c14si941515pgu.369.2017.12.27.17.34.44
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Dec 2017 17:34:45 -0800 (PST)
Received-SPF: pass (google.com: domain of l2dy@icloud.com designates 17.142.194.252 as permitted sender) client-ip=17.142.194.252;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@icloud.com header.s=04042017 header.b=M/E7uOBX;
       spf=pass (google.com: domain of l2dy@icloud.com designates 17.142.194.252 as permitted sender) smtp.mailfrom=l2dy@icloud.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=icloud.com
Received: from process-dkim-sign-daemon.pv33p00im-asmtp003.me.com by
 pv33p00im-asmtp003.me.com
 (Oracle Communications Messaging Server 8.0.1.2.20170607 64bit (built Jun  7
 2017)) id <0P1N00F00C61WF00@pv33p00im-asmtp003.me.com> for kurt@seifried.org;
 Thu, 28 Dec 2017 01:34:11 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;	s=04042017;
 t=1514424851;	bh=bxsHxS9oRloD8ZN7zHMWvOMg1tNE8F3Jjq6yYXjdZrM=;
	h=Date:From:To:Subject:Message-id:MIME-version:Content-type;
	b=M/E7uOBXGwnaPVKCcPa6KnCFSfEr1h19njO7xyC74G4A/TA8grtXNm+jSnOiG65wP
 UeXZP07Fh4Ew5uc0WRn330ru36wYSLlFQN6lUVoHzLl5hhbMYzDhZWYJpukJbDZgN3
 CQvpiZdCQtyihFpMVQQK3S32t+DC5emaTyWIi0XNqwQ4mUZekz2zHeLUEig694xnGp
 zxDJv/92XcEQKN+nX4coiO3HG9N7yj30MeVPbqxi3n0f35QNwrGdpidtem/EadeFtv
 LrU57MCYTqSHt0BHfbH6PgI5YMXSsTKwn6l3MGHuJlx347TNucRZyT5TsGccNOwn9r
 I0kchIaUIejfA==
Received: from icloud.com ([127.0.0.1]) by pv33p00im-asmtp003.me.com
 (Oracle Communications Messaging Server 8.0.1.2.20170607 64bit (built Jun  7
 2017)) with ESMTPSA id <0P1N00BSMDOTEP20@pv33p00im-asmtp003.me.com> for
 kurt@seifried.org; Thu, 28 Dec 2017 01:34:10 +0000 (GMT)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-12-28_01:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1011 suspectscore=73 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1707230000 definitions=main-1712280020
Date: Thu, 28 Dec 2017 01:34:04 +0000
From: Zero King <l2dy@icloud.com>
To: kurt@seifried.org
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 l2dy@icloud.com
Message-id: <20171228013404.bdmqjhbnkwvqumpn@icloud.com>
References: <20171227193439.3645.32518@slab.local>
MIME-version: 1.0
Content-type: text/plain; charset=utf-8; format=flowed
Content-disposition: inline
In-reply-to: <20171227193439.3645.32518@slab.local>
User-Agent: NeoMutt/20171215

I accept.

On Wed, Dec 27, 2017 at 12:34:39PM -0700, kurt@seifried.org wrote:
>This is a confirmation email sent from CVE request form at https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled out the CVE form and want one, we can't use the data until you accept the MITRE CVE Terms of Use).
>
>Simply quote the email and reply with "I accept" at the top if you agree to the MITRE CVE Terms of Use and we will add a copy of the email to the DWF MITRE CVE Terms of Use acceptance data at https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>
>The reason we use a complete copy of the email is that it provides an artifact showing that the email address accepted the Terms of Use, when they were accepted and so on.
>
>If you did not submit a CVE request to the DWF you can safely ignore this message, however we may resend it at some point in the future, if you don't want any future emails simply reply with "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so we don't spam you with these, please note that this will prevent you from being able to accept the MITRE CVE Terms of Use via the DWF automatically in future (you'll have to manually ask). But again, if you have no idea what a CVE is then you can ignore this/ask to be added to the block list with no problems.
>
>MITRE CVE Terms of Use
>
>LICENSE
>
>Submissions: For all materials you submit to the Common Vulnerabilities and Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute such materials and derivative works. Unless required by applicable law or agreed to in writing, you provide such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, without limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
>
>CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute Common Vulnerabilities and Exposures (CVE??). Any copy you make for such purposes is authorized provided that you reproduce MITRE's copyright designation and this license in any such copy.
>
>DISCLAIMERS
>
>ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>
>A copy is available at https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md
>
>To contact the DWF either hit reply, or email kurt@seifried.org manually with your question/concerns/etc.
>
