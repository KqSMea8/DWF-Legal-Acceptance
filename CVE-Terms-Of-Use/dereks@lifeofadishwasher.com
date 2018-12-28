Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp846443uaa;
        Thu, 6 Apr 2017 13:11:33 -0700 (PDT)
X-Received: by 10.233.216.68 with SMTP id u65mr33526645qkf.37.1491509493776;
        Thu, 06 Apr 2017 13:11:33 -0700 (PDT)
Return-Path: <dereks@lifeofadishwasher.com>
Received: from mail-qt0-x243.google.com (mail-qt0-x243.google.com. [2607:f8b0:400d:c0d::243])
        by mx.google.com with ESMTPS id f128si2337192qkd.78.2017.04.06.13.11.33
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 13:11:33 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:400d:c0d::243 is neither permitted nor denied by best guess record for domain of dereks@lifeofadishwasher.com) client-ip=2607:f8b0:400d:c0d::243;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@lifeofadishwasher.com;
       spf=neutral (google.com: 2607:f8b0:400d:c0d::243 is neither permitted nor denied by best guess record for domain of dereks@lifeofadishwasher.com) smtp.mailfrom=dereks@lifeofadishwasher.com
Received: by mail-qt0-x243.google.com with SMTP id n37so7200622qtb.3
        for <kurt@seifried.org>; Thu, 06 Apr 2017 13:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lifeofadishwasher.com; s=google;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VgEdhtcIsLX2/WBDuN4KkJFDudN9MI5ZBMlgSI8OkBI=;
        b=h8HX+dGV/fUIIvQJuLhuW3wV03nbkaLSTOXeI8+NC185HiFIewpFL7ct4QsfMUhHWG
         bGSKsdQGv50aT4T3gh6PILf2aulGGO/E0cAmf+WR5PhKQRk0oCWPwlZ4KigdzwdTVzkB
         5NSvj8hvcwdGiU0q+AjzRmttprxpWvun9Qexs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VgEdhtcIsLX2/WBDuN4KkJFDudN9MI5ZBMlgSI8OkBI=;
        b=pRVcOhyLbEZ7WTPH7q7JxT+6bs9j5Rivu1MuJ7mjXqEoKGvYtz1f+ozbg9By26UoSG
         DgFuRWbH/8k8qh0Q4YIAJ7kciQK+JNs8K55o7L5BWLw82ei/SL/BOPBMr0EiUt4IWpci
         w0aiIQWeBG/G9wJSw+2JFQvKu5T+eAXSA4yFGoSVFv2naSZXcx/IcFINdr2cepvcqazB
         36TtveBK7+mGyURQCwKbybb0rX4NgaBSJEvHshKo0z1+xtiFjnSoMT3scAKT55nZcH0X
         d5iSfstYAiQEeOVLM0HHxpRQ20QHTmsr93vq2p5LIwHlHyvYb13oLiYcNXIgjIFgWe8n
         okkQ==
X-Gm-Message-State: AFeK/H3dmdGvkVgfFWQLslD+OTc+Dn1s0XyBwlmdJqE/HxVBW5eWH5ONSZOO+K1UqJf+fg==
X-Received: by 10.237.43.69 with SMTP id p63mr35699738qtd.68.1491509493085;
        Thu, 06 Apr 2017 13:11:33 -0700 (PDT)
Return-Path: <dereks@lifeofadishwasher.com>
Received: from lifeofadishwasher.com (c-24-131-227-67.hsd1.pa.comcast.net. [24.131.227.67])
        by smtp.gmail.com with ESMTPSA id g15sm1627237qte.58.2017.04.06.13.11.31
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 13:11:32 -0700 (PDT)
Received: by lifeofadishwasher.com (sSMTP sendmail emulation); Thu, 06 Apr 2017 16:11:31 -0400
Date: Thu, 6 Apr 2017 16:11:31 -0400
From: Derek Schrock <dereks@lifeofadishwasher.com>
To: kurt@seifried.org
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 dereks@lifeofadishwasher.com
Message-ID: <20170406201131.GA85146@ircbsd.lifeofadishwasher.com>
References: <20170406201015.4090.70687@shiny-2.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170406201015.4090.70687@shiny-2.local>
User-Agent: Mutt/1.8.0 (2017-02-23)

I accept
On Thu, Apr 06, 2017 at 04:10:15PM EDT, kurt@seifried.org wrote:
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
> Submissions: For all materials you submit to the Common Vulnerabilities and Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute such materials and derivative works. Unless required by applicable law or agreed to in writing, you provide such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, without limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
> 
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute Common Vulnerabilities and Exposures (CVE??). Any copy you make for such purposes is authorized provided that you reproduce MITRE's copyright designation and this license in any such copy.
> 
> DISCLAIMERS
> 
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
> 
> A copy is available at https://github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md
> 
> To contact the DWF either hit reply, or email kurt@seifried.org manually with your question/concerns/etc. 
> 
