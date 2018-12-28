Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp2604288otd;
        Thu, 2 Aug 2018 14:02:48 -0700 (PDT)
X-Google-Smtp-Source: AAOMgpeSikQGQITiJfvSPiEqQSPqU84WXzySynIrtWv9eQDgzmPsfeyYqZv32976zdfSKd5z2I2C
X-Received: by 2002:a17:902:d70d:: with SMTP id w13-v6mr894765ply.229.1533243768239;
        Thu, 02 Aug 2018 14:02:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1533243768; cv=none;
        d=google.com; s=arc-20160816;
        b=o711Rxpib1D5NuAwZ2Vod4MAqveI7+kgwcLxrY2nsVE0QC8yMVCc0mUlyvuO9w11Ey
         b/+IEaiIjc5crBk/KO6vFkJyCfDotdDah3dc/i+h/VMbGhCoWdf7/OCxluGjFpxEjskY
         kZUHafwWG5pPDyzGJiHTeOn7Aty/kOtlapQ7OLLy+ziI2P/BFgbbr/HM5KB1VHMglQoe
         tuIdpllTETgsNZ6hwlncgYVdK+qkz6IE1U4+W0pFcOEvxl7WNKj5iOKwwddj9OH8BmuB
         DkkMOKAOU15brLJFeUVbXiIZJeL0IA9gdQa5IY8AkbboC8amUx3UvKWZvBbXWoF2TWmW
         BHIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:dkim-signature
         :arc-authentication-results;
        bh=+jT2VOGoCWBHa49HL43pAZ8juyWUR1zlyduPUX8Vyss=;
        b=OIPgSDFy1AbE+yHMw4MZm12MNG8EOmbBOsH02MUCKepwqmfPOrFpHR7ITKZ+m/U5nG
         GMVUFWhWRg1sSMl2DMdOG5fLHSUtiSO12PQtG+A3DniVTK3i8KA+QPgdxvAKfH99gTsw
         Nudh/oflhdPeJnSvWCTfYzLUyUrp6dBXM4OqzePfnEEMkesjfgEga8fabuunu8AN19vi
         Bw0P8ILBxPczMLyf/hKc7o3Sdevbu0nVRESlr9FsBTls6+TGU0rzEaabrzPp820oqTRT
         616hdYgC59COlp42st9KF1UPvrnC6U856xauaX7dYN0oPAkygVtUtG31c95qHyrYETtT
         owmg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@yahoo.ca header.s=s2048 header.b=E9wvImrA;
       spf=pass (google.com: domain of m.overmeyer@yahoo.ca designates 98.137.64.204 as permitted sender) smtp.mailfrom=m.overmeyer@yahoo.ca;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.ca
Return-Path: <m.overmeyer@yahoo.ca>
Received: from sonic303-23.consmr.mail.gq1.yahoo.com (sonic303-23.consmr.mail.gq1.yahoo.com. [98.137.64.204])
        by mx.google.com with ESMTPS id f23-v6si2156710plj.494.2018.08.02.14.02.48
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Aug 2018 14:02:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.overmeyer@yahoo.ca designates 98.137.64.204 as permitted sender) client-ip=98.137.64.204;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@yahoo.ca header.s=s2048 header.b=E9wvImrA;
       spf=pass (google.com: domain of m.overmeyer@yahoo.ca designates 98.137.64.204 as permitted sender) smtp.mailfrom=m.overmeyer@yahoo.ca;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.ca; s=s2048; t=1533243767; bh=+jT2VOGoCWBHa49HL43pAZ8juyWUR1zlyduPUX8Vyss=; h=Subject:To:References:From:Date:In-Reply-To:From:Subject; b=E9wvImrAjLnxpkfhkbbbWIocXFRtkyumZQUVI0efJkmAIqbif4lNQRdAAbxBXejuktnVTOwW4v56gEUELOmS5rmkpc9UC31y0jMU1RUysYzvuY8BR5nCD9oy2q7kGCsLDXPU99//g6Y9h9tfa5KaCy2BYqGcvh9I4SNwmI9PEgKEmWcXCSIWU/Y3bA7/WPjFkbKxLc4qN/SgfhNrbPRbcByZDbXRun9J+EE4g+maxFOZJM54Axp7wjcMGxS3XmngV4CG7ZayycVTm3IHeX7iVQKgDtknHaYHaUGHLL82fgkMNpwIX4wnyqRR5GwEBteCi5Gt7MHLw9PX+yWiaCRBTQ==
X-YMail-OSG: PdnZaPMVM1khL7HNaEwu8m70c10NKB9zJT4dncg8FFxIi0.PpIkVG6wwmSAweTj
 XS9ghJfaBHKQ.zDhfM_qjizX4TWnUtmDxGfrjxyEWsSbNsglaTQzka9KaoueXpQ8T94H8nFrwYv5
 Bo3eZl6FQ543.uOH67vqHLSteXz7u4l1jJpMpGb3gZe5KSeaVTCxA_z2CD4TEknfaf2ankSNGXMC
 c773yg6dCjcAj5Am7.d0TXgW3aMO2w_cN.lGsiI5x6FjUuwY2zhi94Ju6mFR2j_nRufAAZmaLp61
 zuidhxa7CYHGP0MBFg9dPCNtI2K07MofCzSfowosW02924JwtLi9UJuXrtacRbgvM5q84TzhgztY
 7wL3_d6qON4Y1VroPYltZuaY9A.1iJdJxoi.k8SbWlzee9HfTIj6PkzmjDPHJmZeMQhEBk5iSbE2
 w3ySc1Mv4fVoWxjbJEh3lFGJupkokWfNH_9b2tV45J_PBO8OKZtOwryHiWhrAllkWq2MphSHsp3j
 1apbIZFy8PUWPuYbtw_2ggEo.aiANvh3DHNMxro2HiEfIz9KcaoTdThzPvq_GB11B9Lwq8DSHuZc
 w5i1kFV7RsTrpoaFphWSJG_O0Js.y0d2Lput_PPdJ_urXIitQmiHfBbxNDLnEufSiRJvkDC9jHhj
 H3O2cAnkzTXrR68nHWzRFpAvfrhzKeyAw1FkjGcQsYWrVo8pOcwkUydpx8nw3fwP9ngvarLlCG9K
 22ytAPdInRS8PUjU6XuoA.H9_fKPv9I9bJq2Ij0n_UQBXLSILvMT8S_p0s35Za5nY8fIVKkYuLxp
 TCYxfvxYqr1HXZgFFIcUHHE8cz8mZikVHVa93HuJb3qZg7XjFTxD0x6gDp4DQjJxeoIu6dbS.Bvg
 CjBhfOAlPfjAuy8ocF2_JQJomxZizWQ5kkH7OGg9eDWGUCpqYz8_Bd2xyow4UKiIrYO47KOx7YgY
 .X73vaeumuO4HqEXO8iQXC0yeqe0._CDktT2hPO8iTWbCPHJOgNZikZnmd4FEI29wzvWP5GLcD7k
 AzEgliFyVsevIg.nufFByii1UP7dstF2guRr.qZ1j5cSa0EVnQYbhC6krS2qSG0VCwHTLIgvrocX
 Z52jGcMKi4Bg2QAAJjEtjB9sQlA--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic303.consmr.mail.gq1.yahoo.com with HTTP; Thu, 2 Aug 2018 21:02:47 +0000
Received: from 23-233-53-177.cpe.pppoe.ca (EHLO [192.168.0.111]) ([23.233.53.177])
          by smtp401.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 7262cf52e02ec9b8c1cc14e07aa661e8;
          Thu, 02 Aug 2018 21:02:47 +0000 (UTC)
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 cvereports@movermeyer.com
To: kurt@seifried.org, cvereports@movermeyer.com
References: <20180802205512.25315.27656@shiny-2.local>
From: Michael Overmeyer <m.overmeyer@yahoo.ca>
Message-ID: <f54bc11c-5f43-7317-d2e9-cda3e990522f@yahoo.ca>
Date: Thu, 2 Aug 2018 17:02:44 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20180802205512.25315.27656@shiny-2.local>
Content-Type: multipart/alternative;
 boundary="------------9E6BA68011F194201881A6AC"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9E6BA68011F194201881A6AC
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

"I accept"


On 2018-08-02 16:55, kurt@seifried.org wrote:
> This is a confirmation email sent from CVE request form athttps://iwantacve.org/  asking you to accept the MITRE CVE Terms of Use (assuming you filled out the CVE form and want one, we can't use the data until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree to the MITRE CVE Terms of Use and we will add a copy of the email to the DWF MITRE CVE Terms of Use acceptance data athttps://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
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
> A copy is available athttps://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or emailkurt@seifried.org  manually with your question/concerns/etc.
>


--------------9E6BA68011F194201881A6AC
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <pre wrap="">"I accept"</pre>
    <br>
    <div class="moz-cite-prefix">On 2018-08-02 16:55, <a class="moz-txt-link-abbreviated" href="mailto:kurt@seifried.org">kurt@seifried.org</a>
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20180802205512.25315.27656@shiny-2.local">
      <div class="moz-text-plain" wrap="true" graphical-quote="true"
        style="font-family: -moz-fixed; font-size: 14px;"
        lang="x-western">
        <pre wrap="">This is a confirmation email sent from CVE request form at <a class="moz-txt-link-freetext" href="https://iwantacve.org/" moz-do-not-send="true">https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assuming you filled out the CVE form and want one, we can't use the data until you accept the MITRE CVE Terms of Use). 

Simply quote the email and reply with "I accept" at the top if you agree to the MITRE CVE Terms of Use and we will add a copy of the email to the DWF MITRE CVE Terms of Use acceptance data at <a class="moz-txt-link-freetext" href="https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" moz-do-not-send="true">https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a>

The reason we use a complete copy of the email is that it provides an artifact showing that the email address accepted the Terms of Use, when they were accepted and so on. 

If you did not submit a CVE request to the DWF you can safely ignore this message, however we may resend it at some point in the future, if you don't want any future emails simply reply with "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so we don't spam you with these, please note that this will prevent you from being able to accept the MITRE CVE Terms of Use via the DWF automatically in future (you'll have to manually ask). But again, if you have no idea what a CVE is then you can ignore this/ask to be added to the block list with no problems. 

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and Exposures (CVEÂ®), you hereby grant to The MITRE Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute such materials and derivative works. Unless required by applicable law or agreed to in writing, you provide such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, without limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute Common Vulnerabilities and Exposures (CVEÂ®). Any copy you make for such purposes is authorized provided that you reproduce MITRE's copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at <a class="moz-txt-link-freetext" href="https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" moz-do-not-send="true">https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md</a>

To contact the DWF either hit reply, or email <a class="moz-txt-link-abbreviated" href="mailto:kurt@seifried.org" moz-do-not-send="true">kurt@seifried.org</a> manually with your question/concerns/etc. 

</pre>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------9E6BA68011F194201881A6AC--
