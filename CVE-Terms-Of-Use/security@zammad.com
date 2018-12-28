Delivered-To: kurt@seifried.org
Received: by 10.79.153.144 with SMTP id a16csp2883390ivh;
        Sun, 4 Feb 2018 16:50:07 -0800 (PST)
X-Google-Smtp-Source: AH8x227ot6Eo71Ywh0MxtwA44N61y+7sBftdt0rK6EF234zQ0RoFCwi2jgcKLI0ytEoXr7WEKDou
X-Received: by 10.80.139.155 with SMTP id m27mr74118666edm.98.1517791807024;
        Sun, 04 Feb 2018 16:50:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1517791806; cv=none;
        d=google.com; s=arc-20160816;
        b=pX7uXP1kt01yVnjLgunPUQ/2GyEmXQg2MQdcHpF2GQt2be7TFvafHcR9jutL7awCl5
         khZMkS8tvkK2ueuHheJsqNbqI3CmHsvBJUmt3w1xqUlZ2KkPTOdfRxSQkM5uQeuPEvMA
         4K5rw7I+nhQL5XQSTjmDiqLkOK7hXNMKKWCvZYsIE82ByqcZ5em2hQS6hT/Q9lUmtl0Q
         2D0atXeqWHpAOk/uuwCjpsSHG3NCOPNtN/YobhFpRvbwThsItsqg9LfOir7zIXmSkT4N
         gfFO2Qlb5fDD48wovgOljXQrH38KKiS2xV1uNYLLZKE9BzYHqnchPlyPJsV9bS0v9Axe
         PACg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:content-transfer-encoding:mime-version:subject
         :references:in-reply-to:message-id:to:from:date
         :arc-authentication-results;
        bh=hqCcXEyG5MH5fAONG3En9K4g81VhlohnMndBi72Gz60=;
        b=lyQSnM9nKTYg/SYYUkNO7D8q9MQTgwl+VkbTH/1QH1dzG5E0JtE+sw++V+vQ/XRPJV
         9sJYpMOr+S/uAWWBcAT8Jfjy+Z4xb672OEg8ugr4OnIgkPexccgZ3rqADq+ico+V4QQ9
         h7POaNftIXHwvfo8DG7155qDWFVxjSX7N/2cCcAUwGoB8sU3z3bGl03+8efJhUhszoBN
         siuGMxsrgX6uCRaYJS3iJD2o4piyINKxUgSi1UaRBaoGRvQeHnT1AmlsZLSSyZiFdqTu
         71lQHFv/YKXt7H5SZoi4KbOQhyung4uYcs/NfNnwjxuxWNHGY3pP+TpK0rgJIkkNsPxV
         RECg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of support@zammad.com designates 217.111.80.179 as permitted sender) smtp.mailfrom=support@zammad.com
Return-Path: <support@zammad.com>
Received: from mx1.zammad.com (mx1.zammad.com. [217.111.80.179])
        by mx.google.com with ESMTPS id l1si5806853edi.193.2018.02.04.16.50.06
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Feb 2018 16:50:06 -0800 (PST)
Received-SPF: pass (google.com: domain of support@zammad.com designates 217.111.80.179 as permitted sender) client-ip=217.111.80.179;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of support@zammad.com designates 217.111.80.179 as permitted sender) smtp.mailfrom=support@zammad.com
Received: from apn4729.dc.zammad.com (apn4729.dc.zammad.com [213.202.225.24])
	by mx1.zammad.com (Postfix) with ESMTP id EE27020C5AA1
	for <kurt@seifried.org>; Mon,  5 Feb 2018 01:50:05 +0100 (CET)
Received: by apn4729.dc.zammad.com (Postfix, from userid 1001)
	id BC87CBC0945; Mon,  5 Feb 2018 01:50:05 +0100 (CET)
Date: Mon, 05 Feb 2018 01:50:05 +0100
From: Martin Edenhofer via Zammad Helpdesk <support@zammad.com>
To: kurt@seifried.org
Message-ID: <20180205004956.13852.477428@support.zammad.com>
In-Reply-To: <20180202231015.27402.62406@slab.local>
References: <20180202231015.27402.62406@slab.local>
 <20180202231015.27402.62406@slab.local>
Subject: RE: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 security@zammad.com [Ticket#1013611]
Mime-Version: 1.0
Content-Type: multipart/mixed;
 boundary="--==_mimepart_5a77aa3db5345_3b0e42f258414431";
 charset=UTF-8
Content-Transfer-Encoding: 7bit
Organization: Zammad GmbH
X-Powered-By: Zammad - Helpdesk/Support (https://zammad.org/)
X-Mailer: Zammad Mail Service


----==_mimepart_5a77aa3db5345_3b0e42f258414431
Content-Type: multipart/alternative;
 boundary="--==_mimepart_5a77aa3db4ae2_3b0e42f258414294";
 charset=UTF-8
Content-Transfer-Encoding: 7bit


----==_mimepart_5a77aa3db4ae2_3b0e42f258414294
Content-Type: text/plain;
 charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

Martin Edenhofer

--
Zammad GmbH // Marienstra=C3=9Fe 11 // 10117 Berlin // Germany

P: +49 (0) 30 55 57 160-0
F: +49 (0) 30 55 57 160-99

W:=C2=A0[1] https://zammad.com

Location: Berlin - HRB 163946 B Amtsgericht Berlin-Charlottenburg
Managing Director: Martin Edenhofer

> This is a confirmation email sent from CVE request form at [2] https://=
iwantacve.org/ asking you to accept the MITRE CVE Terms of Use (assuming =
you filled out the CVE form and want one, we can't use the data until you=
 accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agre=
e to the MITRE CVE Terms of Use and we will add a copy of the email to th=
e DWF MITRE CVE Terms of Use acceptance data at [3] https://github.com/di=
stributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>
> The reason we use a complete copy of the email is that it provides an a=
rtifact showing that the email address accepted the Terms of Use, when th=
ey were accepted and so on.
>
> If you did not submit a CVE request to the DWF you can safely ignore th=
is message, however we may resend it at some point in the future, if you =
don't want any future emails simply reply with "unsubscribe" or "DON'T SE=
ND ME THIS EMAIL EVER AGAIN" and I'll add your email address to the block=
 list so we don't spam you with these, please note that this will prevent=
 you from being able to accept the MITRE CVE Terms of Use via the DWF aut=
omatically in future (you'll have to manually ask). But again, if you hav=
e no idea what a CVE is then you can ignore this/ask to be added to the b=
lock list with no problems.
>
> MITRE CVE Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities=
 and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MI=
TRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non=
-exclusive, no-charge, royalty-free, irrevocable copyright license to rep=
roduce, prepare derivative works of, publicly display, publicly perform, =
sublicense, and distribute such materials and derivative works. Unless re=
quired by applicable law or agreed to in writing, you provide such materi=
als on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, ei=
ther express or implied, including, without limitation, any warranties or=
 conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A=
 PARTICULAR PURPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusiv=
e, no-charge, royalty-free, irrevocable copyright license to reproduce, p=
repare derivative works of, publicly display, publicly perform, sublicens=
e, and distribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any c=
opy you make for such purposes is authorized provided that you reproduce =
MITRE's copyright designation and this license in any such copy.
>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE A=
RE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/=
SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BO=
ARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE =
USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIE=
D WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>
> A copy is available at [4] https://github.com/distributedweaknessfiling=
/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manuall=
y with your question/concerns/etc.

[1] https://zammad.com/
[2] https://iwantacve.org/
[3] https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tre=
e/master/Terms-Of-Use
[4] https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blo=
b/master/Terms-Of-Use.md=

----==_mimepart_5a77aa3db4ae2_3b0e42f258414294
Content-Type: multipart/related;
 boundary="--==_mimepart_5a77aa3db4bdc_3b0e42f25841435c";
 charset=UTF-8
Content-Transfer-Encoding: 7bit


----==_mimepart_5a77aa3db4bdc_3b0e42f25841435c
Content-Type: text/html;
 charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8"/>
    <meta http-equiv=3D"X-UA-Compatible" content=3D"IE=3Dedge"/>
    <style type=3D"text/css">
      body {
        font-family:'Helvetica Neue', Helvetica, Arial, Geneva, sans-seri=
f; font-size: 12px;;
      }
      img {
        outline: none;
        text-decoration: none;
        -ms-interpolation-mode: bicubic;
      }
      a img {
        border: none;
      }
      table td {
        border-collapse: collapse;
      }
      table {
        border-collapse: collapse;
        mso-table-lspace: 0pt;
        mso-table-rspace: 0pt;
        border: none;
        table-layout: auto;
        display: block;
        width: 100%;
        overflow: auto;
        word-break: keep-all;
      }
      table,
      pre,
      blockquote {
        margin: 0 0 16px;
      }
      td, th {
        padding: 7px 12px;
        border: 1px solid hsl(0,0%,87%);
      }
      th {
        font-weight: bold;
        text-align: center;
      }
      tbody tr:nth-child(even) {
        background: hsl(0,0%,97%);
      }
      col {
        width: auto;
      }
      p {
        margin: 0;
      }
      code {
        border: none;
        background: hsl(0,0%,97%);
        white-space: pre-wrap;
      }
      blockquote {
        padding: 8px 12px;
        border-left: 5px solid #eee;
      }
      pre {
        padding: 12px 15px;
        font-size: 13px;
        line-height: 1.45;
        background: hsl(0,0%,97%);
        white-space: pre-wrap;
        border-radius: 3px;
        border: none;
        overflow: auto;
      }
    </style>
  </head>
  <body style=3D"font-family:'Helvetica Neue', Helvetica, Arial, Geneva, =
sans-serif; font-size: 12px;"><div><div>I accept</div></div><div>
<br>Martin Edenhofer<br><br><div>--</div>
<div>Zammad GmbH // Marienstra=C3=9Fe 11 // 10117 Berlin // Germany</div>=

<div><br></div>
<div>
<div>P: +49 (0) 30 55 57 160-0</div>
<div>F: +49 (0) 30 55 57 160-99</div>
</div>
<div><div><div>W:=C2=A0<a href=3D"https://zammad.com/" rel=3D"nofollow no=
referrer noopener" target=3D"_blank">https://zammad.com</a>
</div></div></div>
<div><br></div>
<div>Location: Berlin - HRB 163946 B Amtsgericht Berlin-Charlottenburg</d=
iv>
<div>Managing Director: Martin Edenhofer</div>
</div><div><br></div><div><blockquote type=3D"cite" style=3D"border-left:=
 2px solid blue; margin: 0 0 16px; padding: 8px 12px 8px 12px;"><div><div=
><div><div><div>
<div>
<div>This is a confirmation email sent from CVE request form at <a href=3D=
"https://iwantacve.org/" rel=3D"nofollow noreferrer noopener" target=3D"_=
blank">https://iwantacve.org/</a> asking you to accept the MITRE CVE Term=
s of Use (assuming you filled out the CVE form and want one, we can't use=
 the data until you accept the MITRE CVE Terms of Use).</div>
<div><br></div>
<div>Simply quote the email and reply with "I accept" at the top if you a=
gree to the MITRE CVE Terms of Use and we will add a copy of the email to=
 the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://git=
hub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-=
Of-Use" rel=3D"nofollow noreferrer noopener" target=3D"_blank">https://gi=
thub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms=
-Of-Use</a>
</div>
<div><br></div>
<div>The reason we use a complete copy of the email is that it provides a=
n artifact showing that the email address accepted the Terms of Use, when=
 they were accepted and so on.</div>
<div><br></div>
<div>If you did not submit a CVE request to the DWF you can safely ignore=
 this message, however we may resend it at some point in the future, if y=
ou don't want any future emails simply reply with "unsubscribe" or "DON'T=
 SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to the bl=
ock list so we don't spam you with these, please note that this will prev=
ent you from being able to accept the MITRE CVE Terms of Use via the DWF =
automatically in future (you'll have to manually ask). But again, if you =
have no idea what a CVE is then you can ignore this/ask to be added to th=
e block list with no problems.</div>
<div><br></div>
<div>MITRE CVE Terms of Use</div>
<div><br></div>
<div>LICENSE</div>
<div><br></div>
<div>Submissions: For all materials you submit to the Common Vulnerabilit=
ies and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation =
(MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, =
non-exclusive, no-charge, royalty-free, irrevocable copyright license to =
reproduce, prepare derivative works of, publicly display, publicly perfor=
m, sublicense, and distribute such materials and derivative works. Unless=
 required by applicable law or agreed to in writing, you provide such mat=
erials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,=
 either express or implied, including, without limitation, any warranties=
 or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FO=
R A PARTICULAR PURPOSE.</div>
<div><br></div>
<div>CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclu=
sive, no-charge, royalty-free, irrevocable copyright license to reproduce=
, prepare derivative works of, publicly display, publicly perform, sublic=
ense, and distribute Common Vulnerabilities and Exposures (CVE=C2=AE). An=
y copy you make for such purposes is authorized provided that you reprodu=
ce MITRE's copyright designation and this license in any such copy.</div>=

<div><br></div>
<div>DISCLAIMERS</div>
<div><br></div>
<div>ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITR=
E ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION =
HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS=
 BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANT=
IES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT T=
HE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMP=
LIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.</=
div>
<div><br></div>
<div>A copy is available at <a href=3D"https://github.com/distributedweak=
nessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"nofol=
low noreferrer noopener" target=3D"_blank">https://github.com/distributed=
weaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md</a>
</div>
<div><br></div>
<div>To contact the DWF either hit reply, or email kurt@seifried.org manu=
ally with your question/concerns/etc.</div>
</div>
          </div></div></div></div></div></blockquote></div><div><br></div=
><br><br></body>
</html>

----==_mimepart_5a77aa3db4bdc_3b0e42f25841435c--

----==_mimepart_5a77aa3db4ae2_3b0e42f258414294--

----==_mimepart_5a77aa3db5345_3b0e42f258414431--
