Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp136428uaa;
        Fri, 7 Apr 2017 00:10:07 -0700 (PDT)
X-Received: by 10.200.34.113 with SMTP id p46mr37322879qtp.38.1491549007502;
        Fri, 07 Apr 2017 00:10:07 -0700 (PDT)
Return-Path: <amaris@redhat.com>
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by mx.google.com with ESMTPS id l45si4060898qtf.37.2017.04.07.00.10.07
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Apr 2017 00:10:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of amaris@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of amaris@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=amaris@redhat.com
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 90D9B7E9F5
	for <kurt@seifried.org>; Fri,  7 Apr 2017 07:10:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 90D9B7E9F5
Authentication-Results: ext-mx02.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx02.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=amaris@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 90D9B7E9F5
Received: from dhcp-10-40-1-189.brq.redhat.com (dhcp-10-40-1-189.brq.redhat.com [10.40.1.189])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 13A11857A6
	for <kurt@seifried.org>; Fri,  7 Apr 2017 07:10:05 +0000 (UTC)
Message-ID: <1491549003.3011.1.camel@redhat.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 amaris@redhat.com
From: Adam Maris <amaris@redhat.com>
To: kurt@seifried.org
Date: Fri, 07 Apr 2017 09:10:03 +0200
In-Reply-To: <20170406201842.4090.79083@shiny-2.local>
References: <20170406201842.4090.79083@shiny-2.local>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Fri, 07 Apr 2017 07:10:06 +0000 (UTC)

I accept

On Thu, 2017-04-06 at 14:18 -0600, kurt@seifried.org wrote:
> This is a confirmation email sent from CVE request form at https://iw
> antacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the
> data until you accept the MITRE CVE Terms of Use). 
> 
> Simply quote the email and reply with "I accept" at the top if you
> agree to the MITRE CVE Terms of Use and we will add it to the DWF
> MITRE CVE Terms of Use acceptance data at https://github.com/distribu
> tedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
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
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-
> exclusive, no-charge, royalty-free, irrevocable copyright license to
> reproduce, prepare derivative works of, publicly display, publicly
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
> A copy is available at https://github.com/distributedweaknessfiling/D
> WF-Database/blob/master/TermsOfUse.md
> 
> To contact the DWF either hit reply, or email kurt@seifried.org
> manually with your question/concerns/etc. 
> 
-- 
Adam Mariš, Red Hat Product Security
1CCD 3446 0529 81E3 86AF  2D4C 4869 76E7 BEF0 6BC2 
