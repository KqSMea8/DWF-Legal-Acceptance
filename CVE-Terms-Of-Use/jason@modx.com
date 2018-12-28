Delivered-To: kurt@seifried.org
Received: by 10.176.6.162 with SMTP id g31csp133284uag;
        Tue, 9 May 2017 20:02:32 -0700 (PDT)
X-Received: by 10.36.82.68 with SMTP id d65mr3447255itb.56.1494385352226;
        Tue, 09 May 2017 20:02:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1494385352; cv=none;
        d=google.com; s=arc-20160816;
        b=y/Wnr7koAksxam8ucHddlTo00dD3WFBcO0Pdmt2DBix1tWyLF254w14kOwN7nIrIyI
         CpTrZ2ZCZsUhoEjAoOMXE4fXLwq+g0AuPskwjIK8V3KOHGC+8jN+nbtX1Tr72NMykUu0
         3j2UqAgg/H3TS+JXyKeyLVHIP3FrnfBkD0ljziue/YvyY+jXUWOc7rnUUz+v/E0KGDQf
         e2vfykaLRjXtVLGFO+QMkaM4zhcoAPJeGiUrnJswzMLkviuI5bqdlPSu2XiI1ikNOV5g
         Rf+MReL3RL5reekYwErG9jyGv2/VXRd9et6XtV8Gxo7ihRw0XdvuihSksD04admmEVNs
         SC9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:references:subject:to:mime-version:user-agent:from:date
         :message-id:dkim-signature:arc-authentication-results;
        bh=kqrUCKozVNPtHc7EPXeWdY0423tSCRvE2QvBwhJ/b6Q=;
        b=aMrs/+5hLuCdn194/vyCnGhTB+3elmX1D/VeR3mo4iB4JaqEWoefx78nII6g8/zY1K
         ba/krYX4MAKRcjWcViZNnyjolcE4VJlR4Idbhd3l3P1kkXSSNBXBKbBT1uD/Pwd2tQfu
         o6AnfGPg2BiIl4yyAlxC0IKr2faWpmiHN23hOZdNsipqQgcbjPYAdqBWrpDZfDo2TNTA
         L91iGCQrseYZbMi/VYtDJncEPEwuD0yGQSC8g8bSdAYPNsCFUhCI9ZKxF83NRthh+X0s
         vl144RLLuBVa2SsPzwzzTQSSnDkn65fHrkspoin2WMKsy0+7+NOOTDYgPi+nWPpk6pBN
         B4Sw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass (test mode) header.i=@modx.com;
       spf=pass (google.com: domain of jason@modx.com designates 2607:f8b0:4001:c0b::229 as permitted sender) smtp.mailfrom=jason@modx.com
Return-Path: <jason@modx.com>
Received: from mail-it0-x229.google.com (mail-it0-x229.google.com. [2607:f8b0:4001:c0b::229])
        by mx.google.com with ESMTPS id 135si914645ioe.135.2017.05.09.20.02.31
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 May 2017 20:02:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@modx.com designates 2607:f8b0:4001:c0b::229 as permitted sender) client-ip=2607:f8b0:4001:c0b::229;
Authentication-Results: mx.google.com;
       dkim=pass (test mode) header.i=@modx.com;
       spf=pass (google.com: domain of jason@modx.com designates 2607:f8b0:4001:c0b::229 as permitted sender) smtp.mailfrom=jason@modx.com
Received: by mail-it0-x229.google.com with SMTP id e65so13012313ita.1
        for <kurt@seifried.org>; Tue, 09 May 2017 20:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=modx.com; s=google;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=kqrUCKozVNPtHc7EPXeWdY0423tSCRvE2QvBwhJ/b6Q=;
        b=kh6xuuSLxmndRSBysFh6gTsUUYUYuBa3+3Y+9wzVZUOxh6N+aR5jON/lHvvquT5QIs
         9deQyJ4VnNlGZlyr3ZvECnmtfzGaiRtyvIQnhUboMiaHmW48jWFNmEbpmvtF83G+J/2G
         X1Q4qSXeNh0EwnfsQqkMcBl8ni2bugoQfOfaU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=kqrUCKozVNPtHc7EPXeWdY0423tSCRvE2QvBwhJ/b6Q=;
        b=C0PqC9WqzYKrYLHoFq8zSAjAP1o2SaRa2v2JBJli4Anz7azeOb2HHgKRKOzixbul0k
         3eyizl5IrV1IIDZ2e54icZzdBNmkYasPlXr5wtswckNuvpTBlaIlVZIsTqRDpNp9nWQG
         XzZARd866VWK5IIWjHA/+omgMN7G2NxFEittB5FoYKCKIEx5rwvuB+sVe95ikPT++NFl
         CjrSuOiT4HDxyXV5YH/u4ozvwD2PIex/2mwRICGeyLJgiEol8dvR72RchpO6IuOsjauK
         sRk3wO2ELuTpe8XM3MIGJzPh8UMvIeYzdvbbyFOVO4NbZCotnChISyeGIgsT9JtgFH/P
         V+Kg==
X-Gm-Message-State: AODbwcBO73Uorcv7aM2iU3UsO7yG/ikbrdORcBr36xIdwNDvizs7s9dl
	XMZjYOS1fFLt+h4q
X-Received: by 10.36.7.3 with SMTP id f3mr3363647itf.27.1494385351560;
        Tue, 09 May 2017 20:02:31 -0700 (PDT)
Return-Path: <jason@modx.com>
Received: from shaman.local (184-157-113-78.dyn.centurytel.net. [184.157.113.78])
        by smtp.googlemail.com with ESMTPSA id v130sm1193018itv.19.2017.05.09.20.02.30
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 May 2017 20:02:30 -0700 (PDT)
Message-ID: <591282C4.5070802@modx.com>
Date: Tue, 09 May 2017 21:02:28 -0600
From: Jason Coward <jason@modx.com>
User-Agent: Postbox 5.0.13 (Macintosh/20170501)
MIME-Version: 1.0
To: kurt@seifried.org
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for jason@modx.com
References: <20170510022846.8102.32148@bigbox.local>
In-Reply-To: <20170510022846.8102.32148@bigbox.local>
Content-Type: multipart/alternative;
 boundary="------------060208000505060906050404"

This is a multi-part message in MIME format.
--------------060208000505060906050404
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

I accept.

> kurt@seifried.org <mailto:kurt@seifried.org>
> May 9, 2017 at 8:28 PM
> This is a confirmation email sent from CVE request form at 
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use 
> (assuming you filled out the CVE form and want one, we can't use the 
> data until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you 
> agree to the MITRE CVE Terms of Use and we will add it to the DWF 
> MITRE CVE Terms of Use acceptance data at 
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>
> If you did not submit a CVE request to the DWF you can safely ignore 
> this message, however we may resend it at some point in the future, if 
> you don't want any future emails simply reply with "unsubscribe" or 
> "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address 
> to the block list so we don't spam you with these, please note that 
> this will prevent you from being able to accept the MITRE CVE Terms of 
> Use via the DWF automatically in future (you'll have to manually ask). 
> But again, if you have no idea what a CVE is then you can ignore 
> this/ask to be added to the block list with no problems.
>
> MITRE CVE Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common 
> Vulnerabilities and Exposures (CVEÂ®), you hereby grant to The MITRE 
> Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a 
> perpetual, worldwide, non-exclusive, no-charge, royalty-free, 
> irrevocable copyright license to reproduce, prepare derivative works 
> of, publicly display, publicly perform, sublicense, and distribute 
> such materials and derivative works. Unless required by applicable law 
> or agreed to in writing, you provide such materials on an "AS IS" 
> BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or 
> implied, including, without limitation, any warranties or conditions 
> of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A 
> PARTICULAR PURPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, 
> non-exclusive, no-charge, royalty-free, irrevocable copyright license 
> to reproduce, prepare derivative works of, publicly display, publicly 
> perform, sublicense, and distribute Common Vulnerabilities and 
> Exposures (CVEÂ®). Any copy you make for such purposes is authorized 
> provided that you reproduce MITRE's copyright designation and this 
> license in any such copy.
>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE 
> ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION 
> HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, 
> ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL 
> WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY 
> WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY 
> RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A 
> PARTICULAR PURPOSE.
>
> A copy is available at 
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org 
> manually with your question/concerns/etc.
>

-- 
*Jason Coward*
/Chief Architect @ MODX/
+1.214.306.9691 | opengeek (Skype) | @drumshaman 
<http://twitter.com/drumshaman> | opengeek@github 
<https://github.com/opengeek>

/"Creative Freedom"/

https://modx.com/ <http://modx.com> | @modx <http://twitter.com/modx> | 
modxcms@facebook <https://www.facebook.com/modxcms> | modxcms@github 
<https://github.com/modxcms>


--------------060208000505060906050404
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit

<html><head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="Content-Type">
</head><body style="font-family: Fira Sans OT;" bgcolor="#FFFFFF" 
text="#000000"><div style="font-family: Fira Sans OT;"><span 
style="font-family: Fira Sans OT;">I accept.</span><br><span>

</span><br><blockquote style="border: 0px none;" 
cite="mid:20170510022846.8102.32148@bigbox.local" type="cite"><div 
style="margin:30px 25px 10px 25px;" class="__pbConvHr"><div 
style="width:100%;border-top:2px solid #EDF1F4;padding-top:10px;">   <div
 
style="display:inline-block;white-space:nowrap;vertical-align:middle;width:49%;">
   	<a moz-do-not-send="true" href="mailto:kurt@seifried.org" 
style="color:#485664 
!important;padding-right:6px;font-weight:500;text-decoration:none 
!important;">kurt@seifried.org</a></div>   <div 
style="display:inline-block;white-space:nowrap;vertical-align:middle;width:48%;text-align:
 right;">     <font color="#909AA4"><span style="padding-left:6px">May 
9, 2017 at 8:28 PM</span></font></div>    </div></div><div 
style="color:#909AA4;margin-left:24px;margin-right:24px;" 
__pbrmquotes="true" class="__pbConvBody"><div>This is a confirmation 
email sent from CVE request form at <a class="moz-txt-link-freetext" href="https://iwantacve.org/">https://iwantacve.org/</a> asking you to
 accept the MITRE CVE Terms of Use (assuming you filled out the CVE form
 and want one, we can't use the data until you accept the MITRE CVE 
Terms of Use). <br><br>Simply quote the email and reply with "I accept" 
at the top if you agree to the MITRE CVE Terms of Use and we will add it
 to the DWF MITRE CVE Terms of Use acceptance data at 
<a class="moz-txt-link-freetext" href="https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use">https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br><br>If
 you did not submit a CVE request to the DWF you can safely ignore this 
message, however we may resend it at some point in the future, if you 
don't want any future emails simply reply with "unsubscribe" or "DON'T 
SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to the 
block list so we don't spam you with these, please note that this will 
prevent you from being able to accept the MITRE CVE Terms of Use via the
 DWF automatically in future (you'll have to manually ask). But again, 
if you have no idea what a CVE is then you can ignore this/ask to be 
added to the block list with no problems. <br><br>MITRE CVE Terms of Use<br><br>LICENSE<br><br>Submissions:
 For all materials you submit to the Common Vulnerabilities and 
Exposures (CVEÂ®), you hereby grant to The MITRE Corporation (MITRE) and
 all CVE Numbering Authorities (CNAs) a perpetual, worldwide, 
non-exclusive, no-charge, royalty-free, irrevocable copyright license to
 reproduce, prepare derivative works of, publicly display, publicly 
perform, sublicense, and distribute such materials and derivative works.
 Unless required by applicable law or agreed to in writing, you provide 
such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF 
ANY KIND, either express or implied, including, without limitation, any 
warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
 FITNESS FOR A PARTICULAR PURPOSE.<br><br>CVE Usage: MITRE hereby grants
 you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, 
irrevocable copyright license to reproduce, prepare derivative works of,
 publicly display, publicly perform, sublicense, and distribute Common 
Vulnerabilities and Exposures (CVEÂ®). Any copy you make for such 
purposes is authorized provided that you reproduce MITRE's copyright 
designation and this license in any such copy.<br><br>DISCLAIMERS<br><br>ALL
 DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE 
PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION 
HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, 
ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL 
WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY 
WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY 
RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A 
PARTICULAR PURPOSE.<br><br>A copy is available at 
<a class="moz-txt-link-freetext" href="https://github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md">https://github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md</a><br><br>To
 contact the DWF either hit reply, or email <a class="moz-txt-link-abbreviated" href="mailto:kurt@seifried.org">kurt@seifried.org</a> manually 
with your question/concerns/etc. <br><br></div></div></blockquote><br><div
 class="moz-signature">-- <br><span><div>
<div class="" style="color: rgb(0, 0, 0); font-variant: normal; 
letter-spacing: normal; line-height: normal; orphans: 2; text-align: 
-webkit-auto; text-indent: 0px; text-transform: none; white-space: 
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; 
-webkit-text-stroke-width: 0px; word-wrap: break-word; 
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><div 
class="" style="color: rgb(0, 0, 0); font-variant: normal; 
letter-spacing: normal; line-height: normal; orphans: 2; text-align: 
-webkit-auto; text-indent: 0px; text-transform: none; white-space: 
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; 
-webkit-text-stroke-width: 0px; word-wrap: break-word; 
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><div 
class="" style="color: rgb(0, 0, 0); font-variant: normal; 
letter-spacing: normal; line-height: normal; orphans: 2; text-align: 
-webkit-auto; text-indent: 0px; text-transform: none; white-space: 
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; 
-webkit-text-stroke-width: 0px; word-wrap: break-word; 
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><span
 class="" style="font-size: 15px; "><span class="" style="font-size: 
14px; "><b>Jason Coward</b></span></span><div class="" style="font-size:
 14px; "><span class=""><span class="" style="font-size: 13px; "><i>Chief
 Architect @ MODX</i></span></span></div><div class="" style="font-size:
 13px; "><span style="font-size: 12px; ">+1.<span 
__postbox-detected-content="__postbox-detected-phone" 
class="__postbox-detected-content __postbox-detected-phone" 
style="display: inline; font-size: inherit; padding: 0pt; color: rgb(0, 
0, 0);">214.306.9691</span> | opengeek (Skype) | <a 
href="http://twitter.com/drumshaman" class="">@drumshaman</a> | <a 
href="https://github.com/opengeek" class="">opengeek@github</a></span></div><div
 class="" style="font-size: 13px; "><span style="font-size: 12px; "><br 
class=""></span></div><div class="" style="font-size: 13px; "><span 
class="" style="font-size: 12px; "><i>"Creative Freedom"</i></span></div><div
 class="" style="font-size: 13px; "><span style="font-size: 12px; "><br 
class=""></span></div><div class="" style="font-size: 13px; "><span 
style="font-size: 12px; "><a href="http://modx.com" class="">https://modx.com/</a> | <a
 href="http://twitter.com/modx" class="">@modx</a> | <a 
href="https://www.facebook.com/modxcms" class="">modxcms@facebook</a> | <a
 href="https://github.com/modxcms" class="">modxcms@github</a><br>
  <br>
</span></div></div></div></div>
</div></span></div></div></body></html>

--------------060208000505060906050404--
