Delivered-To: kurt@seifried.org
Received: by 2002:a4f:b47:0:0:0:0:0 with SMTP id 68-v6csp84580ivl;
        Mon, 21 May 2018 02:49:12 -0700 (PDT)
X-Google-Smtp-Source: AB8JxZoh4ebZAhcFB6LeD9SwvB94KQKqakcYnKieR1ulRec5jne+bMwcFyVAYC0/W2ugiBccl9ew
X-Received: by 2002:a1c:d546:: with SMTP id m67-v6mr11270637wmg.117.1526896152409;
        Mon, 21 May 2018 02:49:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1526896152; cv=none;
        d=google.com; s=arc-20160816;
        b=fhzENOZew87nIBayBs3tkqjjSDvpubURStHJwf+8Z4DBQYcFDUV++cpEr+99ixjG/B
         zD04AHj4TAJw1iHobOz7hDZfErBnDkxcKb2q/qmh4F8tv2NP2D7DJ08hhgbyT2W3UNuo
         eIvi+BkCjBe4TTJoDqw+hoFk9rouqe/HcCNul/bcmWcTSs1xTUVTk+NRm2UuJQOkvNDh
         v5PwNqQaPq3JCYcCBvXbdtMzzuJxDj5i5vcpy3fIZO9FoYc8fxKbn+yefKSvIvDrtNoN
         w7jfuFzzGVmFvC70BV2begDqNgKKtzG8rI9gWtuaL5DDDu/9dyVhxqrzwvQFhHxz2EYV
         tsZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:message-id:importance
         :references:sensitivity:date:to:from:in-reply-to:subject
         :arc-authentication-results;
        bh=n24A/ExPvWhO1+gquX/mo1nK1Xg0xDZMrQf3leRNrFA=;
        b=aSvGC4B9WJqOSCn1HX4j8+2Y6/mnGC6ORftKmhKdWn41OBegui5paFnY/a2fU88r/M
         o7/aaGYzjNxDjezNVJjAoX1Bqfx2ggDCGHO5gbU+9/CquAKgO4C9I29h3612+xOz6JCc
         kB6LJ1mg6P958whS8maE8CqzX2q16kVK624RIUYcPVTRI+OYGc6hLh97scQb2ylZzzuR
         fkE1NC2dMBz5f244l58/78roMKPlA/nEJR2e4MJbVxlhSAI8FhkuTcj1VxeyOdNyDSla
         hhUi/Qt4UEyQyNm71vayshSrbtpEAf49CFA79mtaUzm4ND6JFHz6d1D1JImxwgzeimAJ
         UNBw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of i.partridge@uk.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=i.partridge@uk.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Return-Path: <i.partridge@uk.ibm.com>
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by mx.google.com with ESMTPS id v189-v6si9561267wma.96.2018.05.21.02.49.11
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 May 2018 02:49:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of i.partridge@uk.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of i.partridge@uk.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=i.partridge@uk.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id w4L9j4cr023368
	for <kurt@seifried.org>; Mon, 21 May 2018 05:49:10 -0400
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com [192.155.248.72])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2j3sg0efup-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <kurt@seifried.org>; Mon, 21 May 2018 05:49:10 -0400
Received: from localhost
	by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
	for <kurt@seifried.org> from <i.partridge@uk.ibm.com>;
	Mon, 21 May 2018 09:49:10 -0000
Received: from us1a3-smtp08.a3.dal06.isc4sb.com (10.146.103.57)
	by smtp.notes.na.collabserv.com (10.106.227.158) with smtp.notes.na.collabserv.com ESMTP;
	Mon, 21 May 2018 09:49:07 -0000
Received: from us1a3-mail57.a3.dal09.isc4sb.com ([10.142.3.65])
          by us1a3-smtp08.a3.dal06.isc4sb.com
          with ESMTP id 2018052109490719-292639 ;
          Mon, 21 May 2018 09:49:07 +0000 
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 i.partridge@uk.ibm.com
In-Reply-To: <20180518221348.12486.591@slab.local>
From: "Ian Partridge" <i.partridge@uk.ibm.com>
To: kurt@seifried.org
Date: Mon, 21 May 2018 09:49:07 +0000
Sensitivity: 
References: <20180518221348.12486.591@slab.local>
Importance: Normal
X-Priority: 3 (Normal)
X-Mailer: IBM Verse Build 16007-1287 | IBM Domino Build SCN1809300_20180403T0021_FP2
 April 18, 2018 at 18:02
X-LLNOutbound: False
X-Disclaimed: 29879
X-TNEFEvaluated: 1
x-cbid: 18052109-6059-0000-0000-00000951E6F4
X-IBM-SpamModules-Scores: BY=0.279599; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0;
 SC=0.417846; ST=0; TS=0; UL=0; ISC=; MB=0.001461
X-IBM-SpamModules-Versions: BY=3.00009060; HX=3.00000241; KW=3.00000007;
 PH=3.00000004; SC=3.00000261; SDB=6.01035469; UDB=6.00529629; IPR=6.00814597;
 BA=6.00005973; NDR=6.00000001; ZLA=6.00000005; ZF=6.00000009; ZB=6.00000000;
 ZP=6.00000000; ZH=6.00000000; ZU=6.00000002; MB=3.00021224; XFM=3.00000015;
 UTC=2018-05-21 09:49:09
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2018-05-21 06:55:48 - 6.00008482
x-cbparentid: 18052109-6060-0000-0000-00009040F717
Message-Id: <OF857665C5.DDAA64D7-ON00258294.0035EF75-00258294.0035EF7D@notes.na.collabserv.com>
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: Quoted-printable
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2018-05-21_04:,,
 signatures=0
X-Proofpoint-Spam-Reason: safe

<div class=3D"socmaildefaultfont" dir=3D"ltr" style=3D"font-family:Arial, H=
elvetica, sans-serif;font-size:10.5pt" ><div dir=3D"ltr" >I accept.</div>
<div dir=3D"ltr" ><div class=3D"socmaildefaultfont" dir=3D"ltr" style=3D"fo=
nt-family:Arial, Helvetica, sans-serif;font-size:10.5pt" ><div class=3D"soc=
maildefaultfont" dir=3D"ltr" style=3D"font-family:Arial;font-size:10.5pt" >=
<div class=3D"socmaildefaultfont" dir=3D"ltr" style=3D"font-family:Arial;fo=
nt-size:10.5pt" ><div class=3D"socmaildefaultfont" dir=3D"ltr" style=3D"fon=
t-family:Arial;font-size:10.5pt" ><div class=3D"socmaildefaultfont" dir=3D"=
ltr" style=3D"font-family:Arial;font-size:10.5pt" ><div class=3D"socmaildef=
aultfont" dir=3D"ltr" style=3D"font-family:Arial;font-size:10.5pt" ><div cl=
ass=3D"socmaildefaultfont" dir=3D"ltr" style=3D"font-family:Arial;font-size=
:10.5pt" ><div dir=3D"ltr" ><div>&nbsp;</div>
<div>--</div>
<div>&nbsp;</div>
<table>        <tbody>                <tr>                        <td><img =
alt=3D"IBM Swift" src=3D"https://i.imgur.com/2KAGjVl.png" style=3D"width: 1=
69px; height: 50px;" ></td>                        <td>                    =
    <table>                                <tbody>                         =
               <tr>                                                <td>&nbs=
p; &nbsp;Ian Partridge</td>                                        </tr>   =
                                     <tr>                                  =
              <td>&nbsp; &nbsp;IBM Runtime Technologies, IBM Cloud</td>    =
                                    </tr>                                  =
      <tr>                                                <td>&nbsp; &nbsp;=
i.partridge@uk.ibm.com</td>                                        </tr>   =
                                     <tr>                                  =
              <td>&nbsp; &nbsp;<a href=3D"https://developer.ibm.com/swift">=
developer.ibm.com/swift</a></td>                                        </t=
r>                                </tbody>                        </table> =
                       </td>                </tr>        </tbody></table></=
div></div></div></div></div></div></div></div></div>
<div dir=3D"ltr" >&nbsp;</div>
<div dir=3D"ltr" >&nbsp;</div>
<blockquote data-history-content-modified=3D"1" dir=3D"ltr" style=3D"border=
-left:solid #aaaaaa 2px; margin-left:5px; padding-left:5px; direction:ltr; =
margin-right:0px" >----- Original message -----<br>From: kurt@seifried.org<=
br>To: i.partridge@uk.ibm.com<br>Cc:<br>Subject: DWF/CVE - Acceptance of MI=
TRE Terms of Use for CVE for i.partridge@uk.ibm.com<br>Date: Fri, May 18, 2=
018 11:14 PM<br>&nbsp;
<div><font face=3D"Default Monospace,Courier New,Courier,monospace" size=3D=
"2" >This is a confirmation email sent from CVE request form at <a href=3D"=
https://iwantacve.org/" target=3D"_blank">https://iwantacve.org/</a>&nbsp;a=
sking you to accept the MITRE CVE Terms of Use (assuming you filled out the=
 CVE form and want one, we can't use the data until you accept the MITRE CV=
E Terms of Use).<br><br>Simply quote the email and reply with "I accept" at=
 the top if you agree to the MITRE CVE Terms of Use and we will add a copy =
of the email to the DWF MITRE CVE Terms of Use acceptance data at <a href=
=3D"https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/=
master/Terms-Of-Use" target=3D"_blank">https://github.com/distributedweakne=
ssfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br><br>The reaso=
n we use a complete copy of the email is that it provides an artifact showi=
ng that the email address accepted the Terms of Use, when they were accepte=
d and so on.<br><br>This data cannot be removed from the Internet, or from =
our git repo. If you are concerned about your personal information (in the =
form of your email address and any attached information you include like yo=
ur name) please do not submit it, setup an email address and use that. I ca=
nnot comply with GDPR requests to remove your information due to the nature=
 of git, and my inability to confirm if you are a european or not, so if yo=
u don't want it in there, don't reply with "I accept".<br><br>If you did no=
t submit a CVE request to the DWF you can safely ignore this message, howev=
er we may resend it at some point in the future, if you don't want any futu=
re emails simply reply with "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER=
 AGAIN" and I'll add your email address to the block list so we don't spam =
you with these, please note that this will prevent you from being able to a=
ccept the MITRE CVE Terms of Use via the DWF automatically in future (you'l=
l have to manually ask). But again, if you have no idea what a CVE is then =
you can ignore this/ask to be added to the block list with no problems.<br>=
<br>MITRE CVE Terms of Use<br><br>LICENSE<br><br>Submissions: For all mater=
ials you submit to the Common Vulnerabilities and Exposures (CVE=C3=82=C2=
=AE), you hereby grant to The MITRE Corporation (MITRE) and all CVE Numberi=
ng Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge, roy=
alty-free, irrevocable copyright license to reproduce, prepare derivative w=
orks of, publicly display, publicly perform, sublicense, and distribute suc=
h materials and derivative works. Unless required by applicable law or agre=
ed to in writing, you provide such materials on an "AS IS" BASIS, WITHOUT W=
ARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, =
without limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT=
, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.<br><br>CVE Usage: M=
ITRE hereby grants you a perpetual, worldwide, non-exclusive, no-charge, ro=
yalty-free, irrevocable copyright license to reproduce, prepare derivative =
works of, publicly display, publicly perform, sublicense, and distribute Co=
mmon Vulnerabilities and Exposures (CVE=C3=82=C2=AE). Any copy you make for=
 such purposes is authorized provided that you reproduce MITRE's copyright =
designation and this license in any such copy.<br><br>DISCLAIMERS<br><br>AL=
L DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PRO=
VIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPR=
ESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRU=
STEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR=
 IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INF=
ORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF =
MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.<br><br>A copy is avail=
able at <a href=3D"https://github.com/distributedweaknessfiling/DWF-Legal-A=
cceptance/blob/master/Terms-Of-Use.md" target=3D"_blank">https://github.com=
/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md=
</a><br><br>To contact the DWF either hit reply, or email kurt@seifried.org=
 manually with your question/concerns/etc. </font><br><br>&nbsp;</div></blo=
ckquote>
<div dir=3D"ltr" >&nbsp;</div></div>Unless stated otherwise above:<BR>
IBM United Kingdom Limited - Registered in England and Wales with number 74=
1598. <BR>
Registered office: PO Box 41, North Harbour, Portsmouth, Hampshire PO6 3AU<=
BR>
<BR>

