Delivered-To: kurt@seifried.org
Received: by 10.79.79.71 with SMTP id d68csp1821785ivb;
        Thu, 23 Nov 2017 23:40:38 -0800 (PST)
X-Google-Smtp-Source: AGs4zMa8SdhTwhQpG8SXXBhI/8aeb6KxhVrwp/WZ4/9T/obTy6cYGawstdE8DHDHBSyoMl6Ptq0B
X-Received: by 10.101.83.143 with SMTP id x15mr27272763pgq.150.1511509238107;
        Thu, 23 Nov 2017 23:40:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1511509238; cv=none;
        d=google.com; s=arc-20160816;
        b=LqQo8qgMYIVeRDGGVPz7LKmbaJp7vkSb38F8IATZGiQ6bY/RhSUjzAVLiBrFeo/t0C
         ZjEiNkwEEhHIjUPdfWnhnRLU90xUGz646Azn4ahuNenbdHP+34LCzkj0PuPUOwNt2Vj1
         bHnP2CBOezHVVYJKenDFcjnKj6wQvLpFDg7jyOcj3Slh+zOcNOfuoqThTi2xI+TtBqk3
         G/LJzyVl7Cb4+5nNrxvZgscP+pd5IwpEtpfABuqC5Hi4LXKQhR/1SmjoCAGMHWJThTAm
         TywrlSDjGkpgd3Oec04Z6Q/x3gJ1kuA5nBk8p0OB40vZovYH4uIkqakB1HZzVZUX6RNJ
         2q6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:arc-authentication-results;
        bh=AJJR9P1UP8/FtzAKj/XXEHTG1F/Q0PzvYnMGsC32ROw=;
        b=Ai/xPJTWnbUrX0QGLS+QKUZjX+/WI4FU1iPwrh8Es9vWNdbeddxbzZyoP6jBHBGwkX
         5Jd6T9Nv9/AC0gzxrB1imwGeNoYDVc0/6E7M7X3dK1n/bBz4C0JM7ZWM6ZF/ltE5pmXo
         mq/XvEty9u1mr+Wj+0L15pngVesMEHx4GYE6Q8pPDZ68Rd66YqNa5PwCEZs9tacKjsEI
         KONwuVvvedJCkIgofx19xm7B2HlB0qNsbKr2n+FtO8KbvpLUnGXL8hcBojM0Rqso3m6L
         53fMTwim1KI/ztAz/O0z6gvWMpIovY5aIRx07OMY4qMI6CKiZ6FMRn1FQ0Tfo4Gg6kwH
         5wzg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of zhouzhen@nsfocus.com designates 211.151.49.206 as permitted sender) smtp.mailfrom=zhouzhen@nsfocus.com
Return-Path: <zhouzhen@nsfocus.com>
Received: from nsfocus.com ([211.151.49.206])
        by mx.google.com with SMTP id az8si17352804plb.54.2017.11.23.23.40.36
        for <kurt@seifried.org>;
        Thu, 23 Nov 2017 23:40:37 -0800 (PST)
Received-SPF: pass (google.com: domain of zhouzhen@nsfocus.com designates 211.151.49.206 as permitted sender) client-ip=211.151.49.206;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of zhouzhen@nsfocus.com designates 211.151.49.206 as permitted sender) smtp.mailfrom=zhouzhen@nsfocus.com
Received: (qmail 31835 invoked from network); 24 Nov 2017 07:40:29 -0000
Received: from unknown (HELO ?192.168.7.15?) (211.151.49.206)
  by nsfocus.com with SMTP; 24 Nov 2017 07:40:29 -0000
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 zhouzhen@nsfocus.com
To: kurt@seifried.org
References: <20171123152703.7013.44466@slab.local>
From: =?UTF-8?B?5ZGo5oyv?= <zhouzhen@nsfocus.com>
Message-ID: <5589d253-2201-73a5-7513-356061e75a1d@nsfocus.com>
Date: Fri, 24 Nov 2017 15:40:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <20171123152703.7013.44466@slab.local>
Content-Type: multipart/alternative;
 boundary="------------01E03D32B07F9AAAF4202D33"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------01E03D32B07F9AAAF4202D33
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

I accept


在 2017年11月23日 23:27, kurt@seifried.org 写道:
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
>
>
>

-- 

周 振 绿盟科技
地址：北京市海淀区北洼路4号益泰大厦三层
邮编：100089
电话：(010) 68438880-8565
传真：(010) 68437328
手机：15910603656
邮箱：zhouzhen@nsfocus.com
网站：http://www.nsfocus.com


--------------01E03D32B07F9AAAF4202D33
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font face="文泉驿等宽微米黑">I accept</font><br>
    </p>
    <br>
    <div class="moz-cite-prefix">在 2017年11月23日 23:27, <a class="moz-txt-link-abbreviated" href="mailto:kurt@seifried.org">kurt@seifried.org</a>
      写道:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20171123152703.7013.44466@slab.local">
      <pre wrap="">This is a confirmation email sent from CVE request form at <a class="moz-txt-link-freetext" href="https://iwantacve.org/">https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assuming you filled out the CVE form and want one, we can't use the data until you accept the MITRE CVE Terms of Use). 

Simply quote the email and reply with "I accept" at the top if you agree to the MITRE CVE Terms of Use and we will add a copy of the email to the DWF MITRE CVE Terms of Use acceptance data at <a class="moz-txt-link-freetext" href="https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use">https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a>

The reason we use a complete copy of the email is that it provides an artifact showing that the email address accepted the Terms of Use, when they were accepted and so on. 

If you did not submit a CVE request to the DWF you can safely ignore this message, however we may resend it at some point in the future, if you don't want any future emails simply reply with "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so we don't spam you with these, please note that this will prevent you from being able to accept the MITRE CVE Terms of Use via the DWF automatically in future (you'll have to manually ask). But again, if you have no idea what a CVE is then you can ignore this/ask to be added to the block list with no problems. 

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and Exposures (CVEÂ®), you hereby grant to The MITRE Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute such materials and derivative works. Unless required by applicable law or agreed to in writing, you provide such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, without limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute Common Vulnerabilities and Exposures (CVEÂ®). Any copy you make for such purposes is authorized provided that you reproduce MITRE's copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at <a class="moz-txt-link-freetext" href="https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md">https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md</a>

To contact the DWF either hit reply, or email <a class="moz-txt-link-abbreviated" href="mailto:kurt@seifried.org">kurt@seifried.org</a> manually with your question/concerns/etc. 




</pre>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 

周 振 绿盟科技
地址：北京市海淀区北洼路4号益泰大厦三层
邮编：100089
电话：(010) 68438880-8565
传真：(010) 68437328
手机：15910603656
邮箱：<a class="moz-txt-link-abbreviated" href="mailto:zhouzhen@nsfocus.com">zhouzhen@nsfocus.com</a>
网站：<a class="moz-txt-link-freetext" href="http://www.nsfocus.com">http://www.nsfocus.com</a></pre>
  </body>
</html>

--------------01E03D32B07F9AAAF4202D33--
