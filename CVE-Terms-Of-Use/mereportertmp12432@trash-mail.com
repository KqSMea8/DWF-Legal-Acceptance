Delivered-To: kurt@seifried.org
Received: by 10.157.1.148 with SMTP id e20csp313871ote;
        Wed, 13 Sep 2017 22:39:52 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCOj/xAK84UB+6HRLoTL4B2b1yF4H0wLkmYkS0qSlH50XC18WoH7aIIiSDipe5tn+LYJGDd
X-Received: by 10.28.135.5 with SMTP id j5mr862631wmd.21.1505367592626;
        Wed, 13 Sep 2017 22:39:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505367592; cv=none;
        d=google.com; s=arc-20160816;
        b=vWGDklBIuZbrIQCC5sS0TRugbyV9Wmw2KuhEHPZ5Y+4OgFcUsVJru1mp/i0jqRexXj
         E0UQS2JWfEbdCmD4a+HG6jXHnuwdWXDeN24FMQZlK0a74WViyOaEEaY1iaXUiIpsne+e
         H6Fl/r24FmdixD85+OFZ9SQEC9Nv4U84tkB3U9AM076breF5r6qbJCvTHA3uHnGv9Fv6
         nQ/s82ZX0NlmzwEJQ9tu95UL0D/K7w5GAdt3Rnv/TjCTZq89+8F1Zqz0PvunAHM8p6bn
         QSQ3fmYF7e+xXXndsn3lQkSggXdCvt9R8CNkmKf7Jo+hlSZWnmY4rjhMM3PkftKI0hWy
         siTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:mime-version:date:reply-to:from:subject:to
         :arc-authentication-results;
        bh=Sf4tcigumKTB7k75S7KQNo4kwBSyqbUTupcmNXxGXPg=;
        b=RkYTaapQPcqaq+6Z0R1rg18/lIQFy03YxbzH+tirdsYuam568DY35sfliiUml8l3II
         3gRXQ7h1Ml7hDd3H/DwM4S2PuxbmHHO73ZAbGQ+1DWK4i9BO/e9T0R5UNLeDrzkSfxPR
         fZZXiwGDRxGki2aPubPyckX+E8kJJFogLkvrI67LwCpAlooQH43usVzbmyLRTnAKBbxd
         yYHxuZh2nk+TksEH9E8pSiPgQ0Fz46HPexGriINw+K+BLHvqUQ6ZMKKQ2hpf2tEQxR92
         Ya1HnQMEQDG2MJpXQ9bH1kWfKcux/+A2bhp6t3OQuaIGp7Pd/Sm85DrHG6L8mlPAu3EC
         B4Mw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of www-data@astra4649.startdedicated.de designates 62.138.6.202 as permitted sender) smtp.mailfrom=www-data@astra4649.startdedicated.de
Return-Path: <www-data@astra4649.startdedicated.de>
Received: from astra4649.startdedicated.de (astra4649.startdedicated.de. [62.138.6.202])
        by mx.google.com with ESMTP id e9si559329wmd.35.2017.09.13.22.39.52
        for <kurt@seifried.org>;
        Wed, 13 Sep 2017 22:39:52 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of www-data@astra4649.startdedicated.de designates 62.138.6.202 as permitted sender) client-ip=62.138.6.202;
Authentication-Results: mx.google.com;
       spf=pass (google.com: best guess record for domain of www-data@astra4649.startdedicated.de designates 62.138.6.202 as permitted sender) smtp.mailfrom=www-data@astra4649.startdedicated.de
Received: by astra4649.startdedicated.de (Postfix, from userid 33)
	id 76F2F321C46; Thu, 14 Sep 2017 07:39:53 +0200 (CEST)
To: kurt@seifried.org
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for mereportertmp12432@trash-mail.com
X-PHP-Originating-Script: 0:Sendmail.php
X-Originating-IP: 95.91.249.122
From: mereportertmp12432@trash-mail.com
Reply-To: mereportertmp12432@trash-mail.com
Date: Thu, 14 Sep 2017 07:39:53 +0200
Content-Type: multipart/alternative;
 boundary="=_c873d71b5d7bcc2b59bb6220fdca5ca6"
MIME-Version: 1.0
Message-Id: <20170914053953.76F2F321C46@astra4649.startdedicated.de>

--=_c873d71b5d7bcc2b59bb6220fdca5ca6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept.btw1, decided to call the bug "Sleeping Pill"btw2, your link is=
 broken  https://github.com/distributedweaknessfiling/DWF-Database/blob/=
master/TermsOfUse.mdbest regards,some guy on the netGesendet von&nbsp;ku=
rt@seifried.org&nbsp;&lt;kurt@seifried.org&gt;&nbsp;am&nbsp;13.09.2017 -=
 22:38 Uhr:This is a confirmation email sent from CVE request form at ht=
tps://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use (as=
suming you filled out the CVE form and want one, we can't use the data u=
ntil you accept the MITRE CVE Terms of Use). =0D=0A=0D=0ASimply quote th=
e email and reply with "I accept" at the top if you agree to the MITRE C=
VE Terms of Use and we will add a copy of the email to the DWF MITRE CVE=
 Terms of Use acceptance data at https://github.com/distributedweaknessf=
iling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use=0D=0A=0D=0AThe reaso=
n we use a complete copy of the email is that it provides an artifact sh=
owing that the email address accepted the Terms of Use, when they were a=
ccepted and so on. =0D=0A=0D=0AIf you did not submit a CVE request to th=
e DWF you can safely ignore this message, however we may resend it at so=
me point in the future, if you don't want any future emails simply reply=
 with "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll ad=
d your email address to the block list so we don't spam you with these,=
 please note that this will prevent you from being able to accept the MI=
TRE CVE Terms of Use via the DWF automatically in future (you'll have to=
 manually ask). But again, if you have no idea what a CVE is then you ca=
n ignore this/ask to be added to the block list with no problems. =0D=0A=
=0D=0AMITRE CVE Terms of Use=0D=0A=0D=0ALICENSE=0D=0A=0D=0ASubmissions:=
 For all materials you submit to the Common Vulnerabilities and Exposure=
s (CVE), you hereby grant to The MITRE Corporation (MITRE) and all CVE N=
umbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-ch=
arge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, an=
d distribute such materials and derivative works. Unless required by app=
licable law or agreed to in writing, you provide such materials on an "A=
S IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either expres=
s or implied, including, without limitation, any warranties or condition=
s of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICUL=
AR PURPOSE.=0D=0A=0D=0ACVE Usage: MITRE hereby grants you a perpetual, w=
orldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright=
 license to reproduce, prepare derivative works of, publicly display, pu=
blicly perform, sublicense, and distribute Common Vulnerabilities and Ex=
posures (CVE). Any copy you make for such purposes is authorized provide=
d that you reproduce MITRE's copyright designation and this license in a=
ny such copy.=0D=0A=0D=0ADISCLAIMERS=0D=0A=0D=0AALL DOCUMENTS AND THE IN=
FORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS"=
 BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPO=
NSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICE=
RS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED,=
 INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATI=
ON THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MER=
CHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.=0D=0A=0D=0AA copy is a=
vailable at https://github.com/distributedweaknessfiling/DWF-Database/bl=
ob/master/TermsOfUse.md=0D=0A=0D=0ATo contact the DWF either hit reply,=
 or email kurt@seifried.org manually with your question/concerns/etc.=
 =0D=0A=0D=0A

--=_c873d71b5d7bcc2b59bb6220fdca5ca6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept.<br>btw1, decided to call the bug "Sleeping Pill"<br>btw2, your=
 link is broken  https://github.com/distributedweaknessfiling/DWF-Databa=
se/blob/master/TermsOfUse.md<br><br>best regards,<br>some guy on the net=
<br><br><br>Gesendet von&nbsp;<b>kurt@seifried.org&nbsp;&lt;kurt@seifrie=
d.org&gt;</b>&nbsp;am&nbsp;13.09.2017 - 22:38 Uhr:<br>This is a confirma=
tion email sent from CVE request form at https://iwantacve.org/ asking y=
ou to accept the MITRE CVE Terms of Use (assuming you filled out the CVE=
 form and want one, we can't use the data until you accept the MITRE CVE=
 Terms of Use). <br>=0D=0A<br>=0D=0ASimply quote the email and reply wit=
h "I accept" at the top if you agree to the MITRE CVE Terms of Use and w=
e will add a copy of the email to the DWF MITRE CVE Terms of Use accepta=
nce data at https://github.com/distributedweaknessfiling/DWF-Legal-Accep=
tance/tree/master/Terms-Of-Use<br>=0D=0A<br>=0D=0AThe reason we use a co=
mplete copy of the email is that it provides an artifact showing that th=
e email address accepted the Terms of Use, when they were accepted and s=
o on. <br>=0D=0A<br>=0D=0AIf you did not submit a CVE request to the DWF=
 you can safely ignore this message, however we may resend it at some po=
int in the future, if you don't want any future emails simply reply with=
 "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add you=
r email address to the block list so we don't spam you with these, pleas=
e note that this will prevent you from being able to accept the MITRE CV=
E Terms of Use via the DWF automatically in future (you'll have to manua=
lly ask). But again, if you have no idea what a CVE is then you can igno=
re this/ask to be added to the block list with no problems. <br>=0D=0A<b=
r>=0D=0AMITRE CVE Terms of Use<br>=0D=0A<br>=0D=0ALICENSE<br>=0D=0A<br>=
=0D=0ASubmissions: For all materials you submit to the Common Vulnerabil=
ities and Exposures (CVE), you hereby grant to The MITRE Corporation (MI=
TRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, no=
n-exclusive, no-charge, royalty-free, irrevocable copyright license to r=
eproduce, prepare derivative works of, publicly display, publicly perfor=
m, sublicense, and distribute such materials and derivative works. Unles=
s required by applicable law or agreed to in writing, you provide such m=
aterials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KI=
ND, either express or implied, including, without limitation, any warran=
ties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNE=
SS FOR A PARTICULAR PURPOSE.<br>=0D=0A<br>=0D=0ACVE Usage: MITRE hereby=
 grants you a perpetual, worldwide, non-exclusive, no-charge, royalty-fr=
ee, irrevocable copyright license to reproduce, prepare derivative works=
 of, publicly display, publicly perform, sublicense, and distribute Comm=
on Vulnerabilities and Exposures (CVE). Any copy you make for such purpo=
ses is authorized provided that you reproduce MITRE's copyright designat=
ion and this license in any such copy.<br>=0D=0A<br>=0D=0ADISCLAIMERS<br=
>=0D=0A<br>=0D=0AALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PRO=
VIDED BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE=
 ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE C=
ORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISC=
LAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO AN=
Y WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY=
 RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PA=
RTICULAR PURPOSE.<br>=0D=0A<br>=0D=0AA copy is available at https://gith=
ub.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md<=
br>=0D=0A<br>=0D=0ATo contact the DWF either hit reply, or email kurt@se=
ifried.org manually with your question/concerns/etc. <br>=0D=0A<br>=0D=
=0A

--=_c873d71b5d7bcc2b59bb6220fdca5ca6--
