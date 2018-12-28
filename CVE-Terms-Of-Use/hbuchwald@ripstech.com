Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp1173089uaa;
        Mon, 10 Apr 2017 01:35:17 -0700 (PDT)
X-Received: by 10.28.128.68 with SMTP id b65mr6068344wmd.140.1491813317439;
        Mon, 10 Apr 2017 01:35:17 -0700 (PDT)
Return-Path: <hbuchwald@ripstech.com>
Received: from mail-wr0-x229.google.com (mail-wr0-x229.google.com. [2a00:1450:400c:c0c::229])
        by mx.google.com with ESMTPS id w6si11205046wmf.145.2017.04.10.01.35.17
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Apr 2017 01:35:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of hbuchwald@ripstech.com designates 2a00:1450:400c:c0c::229 as permitted sender) client-ip=2a00:1450:400c:c0c::229;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@ripstech-com.20150623.gappssmtp.com;
       spf=pass (google.com: domain of hbuchwald@ripstech.com designates 2a00:1450:400c:c0c::229 as permitted sender) smtp.mailfrom=hbuchwald@ripstech.com
Received: by mail-wr0-x229.google.com with SMTP id c55so70009852wrc.3
        for <kurt@seifried.org>; Mon, 10 Apr 2017 01:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ripstech-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=wHXuIXWdTggMgwoeUjRyqn9J5CbNI6G55C+QISDXX0w=;
        b=Ujg4tbvK4XIbKptUoAqbnvAVsN/wfZx8wmneOnChSW7bkdlXWabw4Z1IPWt/9lJAjM
         pZ/ma0vf1mq4tJabb2GQvv+ohUU7JZVXjjXwelCJntmxBWuLCeHqHiatDCyT5yjdxFac
         WNSqNLwH3fCmcWxKhMEE4E+cSs4ZDX4UE2D+Pb1WCj4alRKF3h5nkVh+hgz9nTWs4HUR
         RUfNJkKkNVAptDjPFDvwtFm6es3ILEiB3SeJnuevROR0QeCX4ia+Lsdc7E30Nh/nkZrZ
         f+ktb24dJEgcdMCaPZI5GnvO2fIJlldv2KweIRVY1KBE8RQYAbcwxeziTUT3H0M/UX9q
         dgww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=wHXuIXWdTggMgwoeUjRyqn9J5CbNI6G55C+QISDXX0w=;
        b=lFullO0E0UqXFdf1U0I101fEJ7ARkeDiA0RRo4f2DkCV3WFQchx/AKgt9I1ukFUbYn
         VzDlJOi3Q6pGxBt98f6gjAbmZXHkHEq0r3RVM+ejmGzv3lTlEcg1VxXkN3jo1L/f55LY
         JpUHSydWclSKWl99kT6t/z99b8HKiNLA0Zj3FGma/DFjZUG9TACyLwr1lv+UcluhOsJG
         olEcxfWDyEcaK7MLUntsWEKDz31BtASZlPr+g+newglY6cbKSk5+4i8gvpvF3hIQlYvk
         XeDwI3p6GehUfQVJ38vq7ISP0zBnmskXMIJaLAVOTM2E310jMimi4z4rzR/T1UOGVtTO
         xbtA==
X-Gm-Message-State: AFeK/H2f71Jy+wMljFZNJP8V8RL5w7+AH8QLejC9jARIzv+mPtbx/mxFHta3ORvHsOAmdQ==
X-Received: by 10.223.160.213 with SMTP id n21mr40345679wrn.51.1491813316758;
        Mon, 10 Apr 2017 01:35:16 -0700 (PDT)
Return-Path: <hbuchwald@ripstech.com>
Received: from [192.168.1.107] (b2b-78-94-135-204.unitymedia.biz. [78.94.135.204])
        by smtp.gmail.com with ESMTPSA id 13sm3266770wml.25.2017.04.10.01.35.15
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Apr 2017 01:35:15 -0700 (PDT)
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 hbuchwald@ripstech.com
To: kurt@seifried.org
References: <20170406195930.4090.84429@shiny-2.local>
From: Hendrik Buchwald <hbuchwald@ripstech.com>
Message-ID: <67a1365f-2454-86e8-3c09-340dc535a071@ripstech.com>
Date: Mon, 10 Apr 2017 10:35:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20170406195930.4090.84429@shiny-2.local>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

I accept

On 06.04.2017 21:59, kurt@seifried.org wrote:
> This is a confirmation email sent from CVE request form at https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled out the CVE form and want one, we can't use the data until you accept the MITRE CVE Terms of Use). 
> 
> Simply quote the email and reply with "I accept" at the top if you agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Terms of Use acceptance data at https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
> 
> If you did not submit a CVE request to the DWF you can safely ignore this message, however we may resend it at some point in the future, if you don't want any future emails simply reply with "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so we don't spam you with these, please note that this will prevent you from being able to accept the MITRE CVE Terms of Use via the DWF automatically in future (you'll have to manually ask). But again, if you have no idea what a CVE is then you can ignore this/ask to be added to the block list with no problems. 
> 
> MITRE CVE Terms of Use
> 
> LICENSE
> 
> Submissions: For all materials you submit to the Common Vulnerabilities and Exposures (CVE®), you hereby grant to The MITRE Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute such materials and derivative works. Unless required by applicable law or agreed to in writing, you provide such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, without limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
> 
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute Common Vulnerabilities and Exposures (CVE®). Any copy you make for such purposes is authorized provided that you reproduce MITRE's copyright designation and this license in any such copy.
> 
> DISCLAIMERS
> 
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
> 
> A copy is available at https://github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md
> 
> To contact the DWF either hit reply, or email kurt@seifried.org manually with your question/concerns/etc. 
> 

-- 
Hendrik Buchwald
RIPS Technologies GmbH
Universitaetsstrasse 142 - 44799 Bochum - Germany
Tel.: +49 234 54478705
