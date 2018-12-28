Delivered-To: kurt@seifried.org
Received: by 10.79.153.144 with SMTP id a16csp2345934ivh;
        Thu, 25 Jan 2018 11:08:58 -0800 (PST)
X-Google-Smtp-Source: AH8x226iw+7SjrwaQPLIhNpB0LBbOjF4fHdY9EQ6vUTpAc7yVTnuSdc8QhX0DkJv5qUs7PmRFerb
X-Received: by 10.28.154.141 with SMTP id c135mr9439867wme.82.1516907338259;
        Thu, 25 Jan 2018 11:08:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1516907338; cv=none;
        d=google.com; s=arc-20160816;
        b=Js2KpCsf6GLRPm00JUcScScufyOdcN3F8phhPTndngV2xG7RiZOgaQ7kHo1gwUh3a+
         US4GN6sA5SG9i6d8ov9SUMWmMeWx4dWTlNiqpWwvmka+ZZ/LBpJxxK0d8m8XdCuaXUED
         zfE3lgrQMMPTwvHxTdLhQlydmQrFSM0AS48cXUvWBjri0jiyBYI06vU8u7XLRpt5Q2bl
         9Ohcg46kHN8Zov5M2ofWhdkpJ1yoU1zQT40INHhkH5609yDvqwM3vO+WHKogCHv8a2Hp
         0jjK6gR0O4xucsjAf2Mi3b3ELakKsHm5D+7naVa2pFI3AGGwrGsyA38no/g8rJZpvDVm
         efyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:to:subject
         :arc-authentication-results;
        bh=rmUo5OeSF3pIwG5ihLwM6rb3dMFtn7c2ecXimAPF5k4=;
        b=LDoWL11tVrkROt5Hhte4HOZ14qnGJOpaPB/8xuSK/Z7adzeNv+Ito/3mRDEiGjk2pg
         N/KzUlJfcZptKi6sWBxkJcHfJV06NRpsoB/QWwnMPdJom4YD1tl0kO8l930dvsI7AWH4
         i1BGeeRdprClQZODudR/DA76/43FdVlgWtOQdmy2L0OZFkTg83onNoR6weKHdGu6xLo4
         6aABa1v0FlZdgg9Oh6pb0o9DH50R00/QFApFaBW89xkxb6irAqZELYOaYVb8VFi70w2w
         IO2B1WfzFuxB6drvF47m10mrpjd5H72dRvaQwrSCtjOHb1D9z9TeXWsl+npOoejI4N8k
         Ofow==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of cvereq+adv20181@moritz-naumann.com) smtp.mailfrom=cvereq+adv20181@moritz-naumann.com
Return-Path: <cvereq+adv20181@moritz-naumann.com>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by mx.google.com with ESMTPS id o2si1275673wmg.208.2018.01.25.11.08.57
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jan 2018 11:08:58 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of cvereq+adv20181@moritz-naumann.com) client-ip=212.227.126.130;
Authentication-Results: mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of cvereq+adv20181@moritz-naumann.com) smtp.mailfrom=cvereq+adv20181@moritz-naumann.com
Received: from [127.0.0.1] ([109.236.90.209]) by mrelayeu.kundenserver.de
 (mreue004 [212.227.15.167]) with ESMTPSA (Nemesis) id
 0LjODj-1fCjzy2F5j-00dWZO for <kurt@seifried.org>; Thu, 25 Jan 2018 20:08:57
 +0100
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 cvereq+adv20181@moritz-naumann.com
To: kurt@seifried.org
References: <20180125170433.4519.11772@slab.local>
From: cvereq+adv20181@moritz-naumann.com
Message-ID: <95376aae-1435-ef8b-8388-8dc8d0bc566a@moritz-naumann.com>
Date: Thu, 25 Jan 2018 19:08:00 +0000
MIME-Version: 1.0
In-Reply-To: <20180125170433.4519.11772@slab.local>
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K0:Xx/v9Ww4Ukt2vzwSsH6Sv90nG7Gk4kpBWu/Soaaz4ilpRFL5YB0
 mdD0z7WFN1raCoOW2RVxUB1qujSJZjt0YywjtCDKyg2AnHj4GtC7JoYWaVoTPci9DqhYEiX
 OnucwYsFaaxtlWFd7zgKR1u7lV6aSoFAbHGW4h8OxyjWXAXNfrs/nkhjIXo2zPm2V063WFA
 7WOSrCbkH4tKDHGRa1JaA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:HCTZ8/60IRg=:rMz4g51YSmYpcotDEvhHw8
 83Y3M+XplAAWgI2TZ7WimdsSaIwaWmryP4na+1xoy2CcCfE/f64yq44thQZh72zMM/L+1Atvl
 qzxVV11ctCDUPGL1P65QB4I7eEPDl2Z+MiTwXiG+CdOLoUBjBEPRMLF4snJEZfQfAC+WHE1xy
 5VtH/GDUVlL/yPj7bC/jRlMGNqe0oGwnwcTEvETvTjCYsND+Ycnm5vOA1R1g/a1XfoCvc6QmO
 5kOyNW/OimegKYsIEV0Ohwjyzpq8dxC0Y+J5VyqMx5+owMGJNpBTW/+kE9ET8lLm5gZbTcaQJ
 /X8UpLwx/NIFVN9wP1HOKOKsGCssJHu5EhUemRmbJDLE0sCrroY7FOwSesT0iz0ergF0A+19X
 SKgXXfjKKb0UtvO6GJ5mDguvxwKs30u9vsPjD3OEAU+LizOLp3skuMF+OZJ6VAK2gF0KGnKMl
 y5/C/1JFFSdYQwiqKg7Hx8/MSd7HLUc3WFw22qktTqeH3SgRg1qLz8f/c2+sH9uhj+XThbO/f
 GV2c7B5SavFI99B4A0Sx0mpDt49hRtTi4drhCC1soxa4Yb+WoKYzIUO1/G1e7dsOIX5FDzefq
 E/BqYS9IRppkW4hQxn8FDUIDiJ063cgTssVxgY8hMsBmqvOtsFHCNE/R8re8jyvQIVCQQ6af4
 eRjb9Ac62cHDxXeHHkqfkq8ZYqbxSB58B/e4npizTyDqejjCfu33ebdvlkv9DhOcPf9UnD067
 GPJsBdXP4pOcz5cCw7BoCWgoyMXdP5zy9drsLMZuGB5JsEcixeGT5VBaQc0=

Hi Kurt + team,

I accept.

And I did so before, namely when I submitted the web form. Surely one of
these confirmations is then superfluous?

Thanks,

Moritz



kurt@seifried.org:
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
> Submissions: For all materials you submit to the Common Vulnerabilities and Exposures (CVEÂ®), you hereby grant to The MITRE Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute such materials and derivative works. Unless required by applicable law or agreed to in writing, you provide such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, without limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
> 
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute Common Vulnerabilities and Exposures (CVEÂ®). Any copy you make for such purposes is authorized provided that you reproduce MITRE's copyright designation and this license in any such copy.
> 
> DISCLAIMERS
> 
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
> 
> A copy is available at https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md
> 
> To contact the DWF either hit reply, or email kurt@seifried.org manually with your question/concerns/etc. 
> 

