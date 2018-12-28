Delivered-To: kurt@seifried.org
Received: by 10.157.8.51 with SMTP id 48csp729104oty;
        Sun, 20 Aug 2017 02:38:28 -0700 (PDT)
X-Received: by 10.28.62.134 with SMTP id l128mr3853410wma.87.1503221908229;
        Sun, 20 Aug 2017 02:38:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1503221908; cv=none;
        d=google.com; s=arc-20160816;
        b=khv/v1SpSApdYRyR6sLPxb44uN+rpEm+6iFjqHaML9rkHOkCzTnlU2P6sqicfZnq6X
         d+ouRaSDRgWvZM/CtWqkKnFozHuKsghtN0JT3L+GnItoLtjfZmVfK4FahRdA8f3Rcf+v
         PAOD6uGGfJdcWorwQ4t2yXr3G4Tvu34ykegWASuKYFceRXxp87Lz+H28gd8YELfLGOzo
         MliExS6cSr1sQ630AeR0Plo+lhif0etrmO3GXlU9Rfwuwvykfr6jLpHzSYz4gxrbTtF9
         aGHur7nrUssrRvdoCT7PJUGUb26SE6uf+iMYB6GfMHFX7Y/+XZoedVeNrQ2IL0MCuuzm
         aAWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :arc-authentication-results;
        bh=imbu4PbSPQ/te/CqZQIUCZCp9qpQCnt2ghlFnI41bDg=;
        b=nuF7Or+ACTNN1XX1mNOxtElT0EDhTEFLhp1PSVX0PswRcNel2KyB8qe5+lu/NdSylA
         1ogbTyx1pugo3PKTxDDky8/nYKxGZ+G6GX0lWPY4OW64PU5z4CzZmd8E+4WV8uMDjIi+
         OOVvM/2feG6cOvs/VRbi+pYDE5XR2fwCuYKCgnM90bF2u0XYa81Djcszajm2rek6SPrU
         061PUheaOT7w0JdpRpRIagx41BmwQ5aM4OySk4QPiHCHSvUW5uOnePNGk8zrWNT2Dw6Y
         xg6fAQXJTCh3/c/gN5UFrcbo3rTfylS8htLBDryfLxm56HoIO4qd8Zi5UJ28ANQW+jEK
         6H+Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of pilou@gmx.com designates 212.227.17.20 as permitted sender) smtp.mailfrom=pilou@gmx.com
Return-Path: <pilou@gmx.com>
Received: from mout.gmx.net (mout.gmx.net. [212.227.17.20])
        by mx.google.com with ESMTPS id a15si7439513wrf.360.2017.08.20.02.38.27
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Aug 2017 02:38:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of pilou@gmx.com designates 212.227.17.20 as permitted sender) client-ip=212.227.17.20;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of pilou@gmx.com designates 212.227.17.20 as permitted sender) smtp.mailfrom=pilou@gmx.com
Received: from [192.168.1.129] ([90.91.248.115]) by mail.gmx.com (mrgmx102
 [212.227.17.174]) with ESMTPSA (Nemesis) id 0M1zFf-1dPu801gTb-00tydy for
 <kurt@seifried.org>; Sun, 20 Aug 2017 11:38:27 +0200
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 pilou@gmx.com
To: kurt@seifried.org
References: <20170819025524.56150.74986@shiny-2.local>
From: Pilou <pilou@gmx.com>
Message-ID: <e2bb4274-ba82-95dc-da8a-d452dcb29306@gmx.com>
Date: Sun, 20 Aug 2017 11:38:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170819025524.56150.74986@shiny-2.local>
Content-Type: text/plain; charset=utf-8
Content-Language: fr
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K0:InXzAEAUZKlxYq1xr3bd7bNPUR8oAnJjhjJjs2qQ0lj/K6Ul/RW
 3wcRaD0xowv22STk6bj7hNrVST7YRRVGAwLOd4ZNJrDcsZOsOtYSPWgihNXtLefJmE5ILPN
 uoS9MZaYuF4CIosWU3tC0779WZuVlTWjFhOeegneghe4NYKJHyc6KXOtfBp658WRmenJ5Gk
 nu+wYP4/Zcfk5z0ZCg4IA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:nDgE///PgEw=:uwXyM9qDiaBnDzhc+0BWLZ
 afW0Mu9ecE+ZgohrNiK+BczXwNTVLEHX+rD/vRsTr4go7xuHL56YPQ1PmiLQifM01vioOaxVQ
 54+j/3AyGhJFy3AN8CSkZZu18rWdI5DCqHmbPfjKBVqxFuVkkuRTZIGJH7Z7Jim4libiM7n97
 ukk/iTU75W3No39+fU4kG1R1Rn8Lydk7BCzRGQQgB37fqkT+1HM6hoKqNPXZ+9eSzFIqDMRwW
 IVZN53+pJ+xYbEtcYPQGeigMRPXjpG+xvDOBLI/kHR7vKTm+0ZIlC2XM+h0DqQFe04KW38LXh
 DC6SrHGYJ+tkCzyLJOmllTnpwQdEjX9Uhqcx0DrIyjhr1S113IT3NwjBhDAWHTnTLAvIcrKSD
 hu54H2zzKONDRqzD3SvRq1crf76TwyAjcL6dhRyK5CsDOjcsGscWEVozKduRl3ZtAYYDJ0B56
 WRuYhGX6LIrK+iCypF4yA9VYbDMawOeVRj379U/aZk3SEN3dzPOgqED4S91POGnnd+IKlSTED
 3T6mrDyH6tRMtnKuEPlnA2nbMyRGq357fLjF6hZmImZ7Myms3OQfAeDy/v3KlBw2x0qJ+SPg0
 Gi+NrLGHpU69e1ADqFRDSZ8UDPonhjp+/V/6R5h/Tj5tH5ljxRz2C03bEn6WvIQUsw1Z9bxF7
 AKft/ooy33XGJrpB6EZaS1UZEYwTtslWD2aLmUCaEOTzLrm0+eisTB0SvVDoYudg9lrRPPmvA
 Z33MR0kUWzk40zkcNFDx59qgX4iEEzuaL1hLwBGghyHZCJ/2swhISAf25YIzCsJBcpiLqChV7
 ZwlgjC08LY6rGATWXw6PZ98/CyqVwBuBNQh/0sUbxr3Ncmdw1s=

I accept

Le 19/08/2017 à 04:55, kurt@seifried.org a écrit :
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
> A copy is available at https://github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md
> 
> To contact the DWF either hit reply, or email kurt@seifried.org manually with your question/concerns/etc. 
>
