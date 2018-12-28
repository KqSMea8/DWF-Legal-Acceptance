Delivered-To: kurt@seifried.org
Received: by 10.79.67.129 with SMTP id q123csp2740620iva;
        Wed, 10 Jan 2018 11:31:32 -0800 (PST)
X-Google-Smtp-Source: ACJfBovWHgRY43Cgp6eOG8CUwF9UiE3j7IonhYBwikjpOPzAAMMFmM0rdv4Scg+rRWh+U9mg8dkO
X-Received: by 10.157.52.9 with SMTP id v9mr940648otb.178.1515612692054;
        Wed, 10 Jan 2018 11:31:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1515612692; cv=none;
        d=google.com; s=arc-20160816;
        b=qKSaqG6o520tuKrNhffHuqnEIHspCC7jn80GO1u+61LPxVApE2/ULj48KFsVhtpuAO
         vBBZGXqtkMjZJW22Q2xVQpu5PGSctrFK587UQH1FsETVw5vyZhwsB/4SUn262xYI2zRv
         moh79QW3yFuON7phMBPTy9U8guK5myMZIiNyAF261g+kzPf08Ooun/UZgmAqO9ztOPYX
         DoMwDslc7ADmb8TQPwTzg4Jts9/GmgU4fUHdSdnke/vURyWqw/0r/D+F+ZUz0x407pu6
         QXjmdLpZjHQXdS83xW37lY8SoDhLW7Lf0fSz92tTbKRugVcjX98+2yKH6W356/vpzxhM
         qMLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:mime-version:subject:references:in-reply-to:message-id
         :to:from:date:arc-authentication-results;
        bh=XqZBddUKjNcZ9s7BP85Ox28akKQaPpyaRZoaVBs3CSs=;
        b=OtOlp5qD8lCZdikBJSwHteksJkVlEqrs3ualSwn2gADBDugthJl03OY+EP20nytBl2
         kdq23ia+H6cmShfjNFUv+QYa+tynWCvwyZIaRe73uiLPFkr9UjnINFxM/TvItPmKeBzM
         i7xPj52BuNzJ4Fx2k84+Hu+0sLo8ap8uBAKY7f08TEdLOO1p+HljfDdkaSCoUniGnyWH
         N6a7Y+SPUpMVM2aeN4t8syqFruSffNJub9MkVEeWWhHijnhTlaVSjQzDIbVC/pfPtfjq
         FkVCVvCvG0EH3iu+sDMHnBc2IfzGO1Q0Fm5USe2zOfIft07jg3g6W59ueKghyeqeGn2j
         WODw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 135.84.80.217 is neither permitted nor denied by best guess record for domain of sajeeb.lohani@bulletproof.sh) smtp.mailfrom=Sajeeb.lohani@bulletproof.sh
Return-Path: <Sajeeb.lohani@bulletproof.sh>
Received: from sender-of-o52.zoho.com (sender-of-o52.zoho.com. [135.84.80.217])
        by mx.google.com with ESMTPS id w9si4900827otg.27.2018.01.10.11.31.31
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Jan 2018 11:31:31 -0800 (PST)
Received-SPF: neutral (google.com: 135.84.80.217 is neither permitted nor denied by best guess record for domain of sajeeb.lohani@bulletproof.sh) client-ip=135.84.80.217;
Authentication-Results: mx.google.com;
       spf=neutral (google.com: 135.84.80.217 is neither permitted nor denied by best guess record for domain of sajeeb.lohani@bulletproof.sh) smtp.mailfrom=Sajeeb.lohani@bulletproof.sh
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1515612688797761.5870159054152; Wed, 10 Jan 2018 11:31:28 -0800 (PST)
Date: Thu, 11 Jan 2018 06:31:28 +1100
From: Sajeeb.lohani@bulletproof.sh
To: <kurt@seifried.org>
Message-Id: <160e18e5195.b06c287e85885.2603855470680043155@bulletproof.sh>
In-Reply-To: <20180110191154.72975.63870@slab.local>
References: <20180110191154.72975.63870@slab.local>
Subject: Re:DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 Sajeeb.lohani@bulletproof.sh
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_253996_10739995.1515612688795"
X-Priority: Normal
User-Agent: Zoho Mail
X-Mailer: Zoho Mail

------=_Part_253996_10739995.1515612688795
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I accept 

---- On Thu, 11 Jan 2018 06:11:54 +1100 kurt@seifried.org wrote ----

This is a confirmation email sent from CVE request form at https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled out the CVE form and want one, we can't use the data until you accept the MITRE CVE Terms of Use). 

Simply quote the email and reply with "I accept" at the top if you agree to the MITRE CVE Terms of Use and we will add a copy of the email to the DWF MITRE CVE Terms of Use acceptance data at https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use 

The reason we use a complete copy of the email is that it provides an artifact showing that the email address accepted the Terms of Use, when they were accepted and so on. 

If you did not submit a CVE request to the DWF you can safely ignore this message, however we may resend it at some point in the future, if you don't want any future emails simply reply with "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so we don't spam you with these, please note that this will prevent you from being able to accept the MITRE CVE Terms of Use via the DWF automatically in future (you'll have to manually ask). But again, if you have no idea what a CVE is then you can ignore this/ask to be added to the block list with no problems. 

MITRE CVE Terms of Use 

LICENSE 

Submissions: For all materials you submit to the Common Vulnerabilities and Exposures (CVE ), you hereby grant to The MITRE Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute such materials and derivative works. Unless required by applicable law or agreed to in writing, you provide such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, without limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE. 

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute Common Vulnerabilities and Exposures (CVE ). Any copy you make for such purposes is authorized provided that you reproduce MITRE's copyright designation and this license in any such copy. 

DISCLAIMERS 

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. 

A copy is available at https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md 

To contact the DWF either hit reply, or email kurt@seifried.org manually with your question/concerns/etc. 


------=_Part_253996_10739995.1515612688795
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head>=
<meta content=3D"text/html;charset=3DUTF-8" http-equiv=3D"Content-Type"></h=
ead><body ><div style=3D'font-size:10pt;font-family:Verdana,Arial,Helvetica=
,sans-serif;'>I accept <div id=3D"message"></div><br id=3D"br3"><div id=3D"=
signature"></div><div id=3D"content"><blockquote><br> ---- On Thu, 11 Jan 2=
018 06:11:54 +1100 <b> kurt@seifried.org </b> wrote ----<br><br><div>This i=
s a confirmation email sent from CVE request form at <a href=3D"https://iwa=
ntacve.org/" target=3D"_blank">https://iwantacve.org/</a> asking you to acc=
ept the MITRE CVE Terms of Use (assuming you filled out the CVE form and wa=
nt one, we can't use the data until you accept the MITRE CVE Terms of Use).=
  <br> <br>Simply quote the email and reply with "I accept" at the top if y=
ou agree to the MITRE CVE Terms of Use and we will add a copy of the email =
to the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://git=
hub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of=
-Use" target=3D"_blank">https://github.com/distributedweaknessfiling/DWF-Le=
gal-Acceptance/tree/master/Terms-Of-Use</a> <br> <br>The reason we use a co=
mplete copy of the email is that it provides an artifact showing that the e=
mail address accepted the Terms of Use, when they were accepted and so on. =
 <br> <br>If you did not submit a CVE request to the DWF you can safely ign=
ore this message, however we may resend it at some point in the future, if =
you don't want any future emails simply reply with "unsubscribe" or "DON'T =
SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to the block=
 list so we don't spam you with these, please note that this will prevent y=
ou from being able to accept the MITRE CVE Terms of Use via the DWF automat=
ically in future (you'll have to manually ask). But again, if you have no i=
dea what a CVE is then you can ignore this/ask to be added to the block lis=
t with no problems.  <br> <br>MITRE CVE Terms of Use <br> <br>LICENSE <br> =
<br>Submissions: For all materials you submit to the Common Vulnerabilities=
 and Exposures (CVE  ), you hereby grant to The MITRE Corporation (MITRE) a=
nd all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusi=
ve, no-charge, royalty-free, irrevocable copyright license to reproduce, pr=
epare derivative works of, publicly display, publicly perform, sublicense, =
and distribute such materials and derivative works. Unless required by appl=
icable law or agreed to in writing, you provide such materials on an "AS IS=
" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or im=
plied, including, without limitation, any warranties or conditions of TITLE=
, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE. <=
br> <br>CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-excl=
usive, no-charge, royalty-free, irrevocable copyright license to reproduce,=
 prepare derivative works of, publicly display, publicly perform, sublicens=
e, and distribute Common Vulnerabilities and Exposures (CVE  ). Any copy yo=
u make for such purposes is authorized provided that you reproduce MITRE's =
copyright designation and this license in any such copy. <br> <br>DISCLAIME=
RS <br> <br>ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY=
 MITRE ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATI=
ON HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, IT=
S BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTI=
ES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE =
USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED =
WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. <br> <br=
>A copy is available at <a href=3D"https://github.com/distributedweaknessfi=
ling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" target=3D"_blank">ht=
tps://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master=
/Terms-Of-Use.md</a> <br> <br>To contact the DWF either hit reply, or email=
 <a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</=
a> manually with your question/concerns/etc.  <br> <br></div></blockquote><=
/div></div><br></body></html>
------=_Part_253996_10739995.1515612688795--


