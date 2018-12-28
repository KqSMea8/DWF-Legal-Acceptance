Delivered-To: kurt@seifried.org
Received: by 10.79.79.71 with SMTP id d68csp2056223ivb;
        Sat, 18 Nov 2017 12:56:46 -0800 (PST)
X-Google-Smtp-Source: AGs4zMbe0SLkJ3F08TTpkQsWgYbxqjpVtvJ3ySRDTnyF3W+SigVIsWWmkTF0MXG18MbPKmfE2kPK
X-Received: by 10.223.178.26 with SMTP id u26mr3140664wra.239.1511038606780;
        Sat, 18 Nov 2017 12:56:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1511038606; cv=none;
        d=google.com; s=arc-20160816;
        b=CO6hGTa43zwyOCb0bQ5s4WDWRsZ7gZ8KjV2Y6fjX+zFLpCy8/LGTJYKW3ALRfpraBQ
         Q5kbQIMHlJJA05fwhRdWZzCHLZfU/SVN228C7tce3Qp5fZfK9IMvOWJRoU5y7wCfesyA
         sf8SP+sA7zXMGtWp1dbCyGkGPozHWYLLl8PBGdGtSbM8JHOIPrDMuzxc/kw/FRRuz1Jz
         y8DLCn3yDpQnx+RdEtgSyqigmvm0AoeYxlB6mPBtqTCfNMDr8MDRkymyuHfR20KQnhc5
         lsuZnqw0U4kswW2yaMeWxG/OThs6qMO3H0rQnjTcE9UF4zgzwTee6PANJ0jCNMZSfPik
         4FiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:to:from:date:arc-authentication-results;
        bh=6NyFcrOGut0rOk3W2Y/2bxHpSrqcg3ylz5/CPIsDJ8s=;
        b=VNZpMHLB/yfK8DBZaq7/AFUoEaaMbzVz7jVqrUelFGbUWWMG9bRYztqzHvn2dLISCL
         iCQhw7Sxo27JouIzdeQ5Lz2EDIDOI57WMPfvclgvCadoF1D3SyWEIRTQDd5WR0ZPfLTI
         H/CdRYjZiUfZpqljXJBbmUFWfb52Iqyb6AutLLGF9ycGK0ZebB/zE+rAVA11Aq82tMni
         JevIfd9+lwNn7gq9HONg9udxwR9kfVmiISt7WM1TwBi0NuLeGXEpT5ZaNfp7fVevE03h
         1R8Oe3qlzLqwp2YEs5NooJ54SFQhMcimDqYBzF5d4W6/daIFxM2z3sUkhAnn2uODDAkf
         2kjw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of riley@mailo.com designates 213.182.54.6 as permitted sender) smtp.mailfrom=riley@mailo.com
Return-Path: <riley@mailo.com>
Received: from relay-1.mailobj.net (relay-1.mailobj.net. [213.182.54.6])
        by mx.google.com with ESMTPS id b9si5172333wrh.491.2017.11.18.12.56.46
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Nov 2017 12:56:46 -0800 (PST)
Received-SPF: pass (google.com: domain of riley@mailo.com designates 213.182.54.6 as permitted sender) client-ip=213.182.54.6;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of riley@mailo.com designates 213.182.54.6 as permitted sender) smtp.mailfrom=riley@mailo.com
Received: from v-2c (unknown [192.168.90.162])
	by relay-1.mailobj.net (Postfix) with SMTP id C6D9D1416
	for <kurt@seifried.org>; Sat, 18 Nov 2017 21:56:45 +0100 (CET)
Received: by mail-2.net-c.com [213.182.54.29] with ESMTP
	Sat, 18 Nov 2017 21:56:45 +0100 (CET)
X-EA-Auth: VnpIU87h0tX+QCXu20xgoCdfJpg2TzsA0fUXch6ArzE4slcUs/Jmk8n1t725lZZLBwm1vO2D8QzIxn2eEBrhi8GsQKfxdxLn
Date: Sun, 19 Nov 2017 07:56:40 +1100
From: Riley Baird <riley@mailo.com>
To: kurt@seifried.org
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 riley@mailo.com
Message-Id: <20171119075640.4a3582cb5d41daba8aca7e89@mailo.com>
In-Reply-To: <20171118163951.64559.14652@slab.local>
References: <20171118163951.64559.14652@slab.local>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

I accept

On Sat, 18 Nov 2017 09:39:51 -0700
kurt@seifried.org wrote:

> This is a confirmation email sent from CVE request form at https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled out the CVE form and want one, we can't use the data until you accept the MITRE CVE Terms of Use). 
> 
> Simply quote the email and reply with "I accept" at the top if you agree to the MITRE CVE Terms of Use and we will add a copy of the email to the DWF MITRE CVE Terms of Use acceptance data at https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
> 
> The reason we use a complete copy of the email is that it provides an artifact showing that the email address accepted the Terms of Use, when they were accepted and so on. 
> 
> If you did not submit a CVE request to the DWF you can safely ignore this message, however we may resend it at some point in the future, if you don't want any future emails simply reply with "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so we don't spam you with these, please note that this will prevent you from being able to accept the MITRE CVE Terms of Use via the DWF automatically in future (you'll have to manually ask). But again, if you have no idea what a CVE is then you can ignore this/ask to be added to the block list with no problems. 
> 
> MITRE CVE Terms of Use
> 
> LICENSE
> 
> Submissions: For all materials you submit to the Common Vulnerabilities and Exposures (CVE__), you hereby grant to The MITRE Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute such materials and derivative works. Unless required by applicable law or agreed to in writing, you provide such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, without limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
> 
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute Common Vulnerabilities and Exposures (CVE__). Any copy you make for such purposes is authorized provided that you reproduce MITRE's copyright designation and this license in any such copy.
> 
> DISCLAIMERS
> 
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
> 
> A copy is available at https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md
> 
> To contact the DWF either hit reply, or email kurt@seifried.org manually with your question/concerns/etc. 
> 

