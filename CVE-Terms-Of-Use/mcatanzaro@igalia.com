Delivered-To: kurt@seifried.org
Received: by 10.176.6.230 with SMTP id g93csp690740uag;
        Thu, 22 Jun 2017 20:48:54 -0700 (PDT)
X-Received: by 10.28.23.138 with SMTP id 132mr3745319wmx.114.1498189734198;
        Thu, 22 Jun 2017 20:48:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1498189734; cv=none;
        d=google.com; s=arc-20160816;
        b=dRDOhNPJX1NoGaFS9JhGsodQe5JaTNAcd+TdOPuFAn4OAKVh4nIldgkr0zUpGu6hP+
         Heyi2I0KvIO6wIpvObux5WEJV+x7aBD8N4w1+tpxv4J6y7LXr22Tgw7w+4UQm5eXEOcx
         Or4Cg1V6otFtEU7cqEWdraBeyfzI5wyOcusYsaDd8K3LVXMOd9EhrINeXQU+AlibLjx+
         mbR0/K97JtOcjrMEP/6T9aPdC2Kcw/Uh4yIwlw85/jTyougxp2heWfofkpXJA9oSgoFF
         Ufg5f5TYv5rYH/8g3Cd93Mt3kouN4mrPy7Z6YtZykiuRGuEjwRLemOVdqIYxtRHsBC/r
         8UQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:to:subject:from:date
         :dkim-signature:arc-authentication-results;
        bh=PMx4695XlvVDvFkfz1ZjwkKfN8WVS4nXqsYfnBI7sgw=;
        b=Yj0fRrHBrzxtGeUPLXnXZngtKCUVMRIEe8lCCa8hUzCq5mUObwuhdNpYT7C5NFhcNS
         ExJOoFvrBeeEflMqZwrMehDQTFGK1sG5EMw0Bcvv2KIzBMjWP1b3DiLxkYDIbZCmxu5K
         TNQYOxuYHN4XAC2PcyjOznzE572o5gdnN/yPxXPpWxtWzXSSMa4Q1UMM/zA/WOxzfBAL
         tMr20NSVKOxJIPBnaZkBdTIddWBlgEJcSm0Hma5w/QXut5tSni2g3iI10ZvhRb16ao5F
         2lKYHHWlYKEwVrCDgb1MT9P5ykTj9/sXWghImISrv/9xBSU+3yd4pZbhg8lNq5rTAv9P
         kdlA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@igalia.com header.b=qNQHMFes;
       spf=pass (google.com: domain of mcatanzaro@igalia.com designates 91.117.99.155 as permitted sender) smtp.mailfrom=mcatanzaro@igalia.com
Return-Path: <mcatanzaro@igalia.com>
Received: from fanzine.igalia.com (fanzine.igalia.com. [91.117.99.155])
        by mx.google.com with ESMTPS id y5si3490223wra.307.2017.06.22.20.48.53
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Jun 2017 20:48:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of mcatanzaro@igalia.com designates 91.117.99.155 as permitted sender) client-ip=91.117.99.155;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@igalia.com header.b=qNQHMFes;
       spf=pass (google.com: domain of mcatanzaro@igalia.com designates 91.117.99.155 as permitted sender) smtp.mailfrom=mcatanzaro@igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-Id:To:Subject:From:Date; bh=PMx4695XlvVDvFkfz1ZjwkKfN8WVS4nXqsYfnBI7sgw=;
	b=qNQHMFesrV3vG6QNL9Qt9pkpjo6B4uw7fMtwsmcChYcswhlMu3GhLYhpNyXnIO2XqhyEBTEIXW52klH96+eVqR0cZIw8QDRxUFTDOLiQpS9kWNjcvS7U+b2zGU7pUgWmT90ob27sK2zKsjjZdD3ZU8U1c2RYYNVY99pEfnDpgK9snOMFL9i01PM6oHus6Fku5capBHBrQORzI7k0Op6cuIxGOScNQLpUZwG297fJtt02t++X1hgBOqsmcQ8d24dyiULSfP/ML+jrqvIUdTvdbjsHnqg2z+kDwrM1uTKPzIJcvCRz78H00CeTiGucTlYb/FFRfQlpdB2njwoi4HaHOQ==;
Received: from ip-147-240-239-173.midwest.us.northamericancoax.com ([173.239.240.147] helo=[10.36.1.6])
	by fanzine.igalia.com with esmtpsa 
	(Cipher TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim)
	id 1dOFaP-0001dw-LT
	for <kurt@seifried.org>; Fri, 23 Jun 2017 05:48:53 +0200
Date: Thu, 22 Jun 2017 22:47:49 -0500
From: Michael Catanzaro <mcatanzaro@igalia.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 mcatanzaro@igalia.com
To: kurt@seifried.org
Message-Id: <1498189669.5972.1@mail.igalia.com>
In-Reply-To: <20170620014603.46686.73284@bigbox.local>
References: <20170620014603.46686.73284@bigbox.local>
X-Mailer: geary/0.11.3
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed

I accept

On Mon, Jun 19, 2017 at 8:46 PM, kurt@seifried.org wrote:
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
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md
> 
> To contact the DWF either hit reply, or email kurt@seifried.org 
> manually with your question/concerns/etc.
> 
> 

