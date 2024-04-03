//Maya ASCII 2022 scene
//Name: quad_template.v001.ma
//Last modified: Wed, Mar 27, 2024 02:48:10 PM
//Codeset: 1252
requires maya "2022";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202110272215-ad32f8f1e6";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "C014AF2F-4DB6-29F2-384F-8E8EA135A56B";
createNode transform -s -n "persp";
	rename -uid "CB453BA2-420A-0C23-E1C3-7FB963FCE90C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 473.61053366805459 278.11869796779393 -25.090337401869956 ;
	setAttr ".r" -type "double3" -27.938352738895869 -987.79999999991878 7.6333312355124402e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8706EF3A-48A4-9294-6B4D-4B947D36AAC1";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 516.1971976422177;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 -1.2325951644078309e-32 2.2204460492503131e-16 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "B26CCAAE-4794-DD49-3C83-47A2A339FCC1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.1073470088224999 1004.5806952977473 0.043082219265524024 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D14A3510-403C-D81C-2ECE-97987F2DEC03";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1004.5806952977473;
	setAttr ".ow" 88.740392746921344;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0 7.7715611723760958e-16 -1.0064058108892695 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "7C785177-4DD1-E80A-BAD4-A481A646DDD5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.1431866408782714 60.759030978303933 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D27A1D19-4A25-3580-D306-EE842229492B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 67.791016227691813;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "0A3CA04C-4495-4E7B-C101-65AFBF3BBB8B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1007.5076424166007 59.892226749311376 -81.520411019225577 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "9D53C41A-4901-F7B7-B0E9-739E6A7B8D77";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1007.5076424166007;
	setAttr ".ow" 106.78280554295782;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 59.892226749311376 -81.520411019225577 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "template_NUL";
	rename -uid "2212BA43-41E1-EE7B-0799-339EDD3B1123";
createNode transform -n "template_CTRL" -p "template_NUL";
	rename -uid "504FD284-448B-C473-563E-4F8232E16C97";
	addAttr -ci true -sn "template_Scale" -ln "template_Scale" -dv 1 -min 0.001 -at "double";
	addAttr -ci true -sn "template_type" -ln "template_type" -nn "Template Type" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".template_Scale";
	setAttr -l on ".template_type" -type "string" "quad_template";
createNode nurbsCurve -n "template_CTRLShape" -p "template_CTRL";
	rename -uid "2C551914-4ED7-9E0A-7D6A-4E888D176E57";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 41.349561095282965 2.5319303820743153e-15 
		-41.349561095283015 3.5806902853139834e-15 3.5806902853139834e-15 -58.477110099124118 
		-41.349561095282965 2.5319303820743153e-15 -41.349561095283015 -58.477110099124168 
		1.4864534522257395e-30 -2.0606714001552764e-14 -41.349561095282965 -2.5319303820743145e-15 
		41.349561095282965 -5.857692112956139e-15 -3.5806902853139849e-15 58.477110099124168 
		41.349561095282965 -2.5319303820743145e-15 41.349561095282965 58.477110099124168 
		8.1253236558662131e-31 -9.6007474304837746e-15 0 0 0 0 0 0 0 0 0;
createNode joint -n "front_hip_L_JNT" -p "template_CTRL";
	rename -uid "8410C431-421E-2920-A8DD-9C8108D12F2C";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 11.290221036252525 58.868833795625903 36.071429505332915 ;
	setAttr ".r" -type "double3" 1.7734546367040026e-29 -1.344252526660397e-14 4.0293116009185872e-15 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -160.91399079684854 0 0 ;
	setAttr ".radi" 1.6;
createNode joint -n "front_knee_L_JNT" -p "front_hip_L_JNT";
	rename -uid "EB5E296D-497A-A0CE-B956-6993EA8718C9";
	setAttr ".t" -type "double3" 0 25.440284291732304 1.7763568394002505e-14 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -3.2635414689351024e-14 -8.0365949913872794e-29 1.2364680696373233e-28 ;
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -33.022409916493665 0 0 ;
	setAttr ".radi" 1.6;
createNode joint -n "front_ankle_L_JNT" -p "front_knee_L_JNT";
	rename -uid "5D3A53E8-480F-E4DB-03C1-E4B3642E6647";
	setAttr ".t" -type "double3" -6.3948846218409017e-14 25.968673517576924 -1.0658141036401503e-13 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -3.9850787290128436e-28 -2.5444437451708131e-14 -4.7583029600153273e-29 ;
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -6.87039029936901 0 0 ;
	setAttr ".radi" 1.6;
createNode joint -n "front_toeExtra_L_JNT" -p "front_ankle_L_JNT";
	rename -uid "D6707FA6-4640-781C-4028-11B15F76586B";
	setAttr ".t" -type "double3" 1.1723955140041653e-13 7.5990790618994826 2.1316282072803006e-14 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 16.887920726575935 0 0 ;
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".rx";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -47.447318649755303 0 0 ;
	setAttr ".radi" 2.5;
createNode joint -n "front_ankle_twist_L_JNT" -p "front_ankle_L_JNT";
	rename -uid "8DAE4CA1-4FC9-5E43-DF6F-1D8BD58B0DB3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.1884913137835156e-07 5.0936239004428785e-07 -1.059653158108631e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 1.5661336003406631e-05 0 0 ;
	setAttr ".radi" 0.2;
createNode joint -n "front_toe_twist_L_JNT" -p "front_ankle_L_JNT";
	rename -uid "54AAADD4-44FE-5D7E-9E3C-21A3E95D8E97";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.9936057773011271e-14 -3.9968028886505635e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.5661336003406628e-05 0 0 ;
	setAttr ".radi" 4;
createNode joint -n "front_knee_twist_L_JNT" -p "front_hip_L_JNT";
	rename -uid "113119E3-4F6B-C16F-5A00-4BBBAC5C322A";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -179.99999732966265 0 0 ;
	setAttr ".radi" 0.2;
createNode joint -n "front_hip_twist_L_JNT" -p "front_hip_L_JNT";
	rename -uid "E1D3D3A6-4D1A-02AB-EDB7-20A2DDA56050";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.1884923973611876e-07 -1.7918996775279084e-06 -1.2172933949727849e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999732966265 0 0 ;
	setAttr ".radi" 4;
createNode joint -n "front_hip_dup_L_JNT" -p "front_hip_L_JNT";
	rename -uid "EAE036D2-4A93-236F-0D04-39848F9B2685";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".r" -type "double3" 1.7734546367040026e-29 -1.344252526660397e-14 4.0293116009185872e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".radi" 0.2;
createNode joint -n "front_knee_dup_L_JNT" -p "front_hip_dup_L_JNT";
	rename -uid "7413854B-4D30-5E10-63BA-12AF2C34EFF7";
	setAttr ".t" -type "double3" 0 25.440284291732304 1.7763568394002505e-14 ;
	setAttr ".r" -type "double3" -3.2635414689351024e-14 -8.0365949913872794e-29 1.2364680696373233e-28 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -33.022409916493665 0 0 ;
	setAttr ".radi" 0.2;
createNode joint -n "front_ankle_dup_L_JNT" -p "front_knee_dup_L_JNT";
	rename -uid "03BAF1A4-4850-2B36-F6DC-30B2B95343F1";
	setAttr ".t" -type "double3" -6.3948846218409017e-14 25.968673517576924 -1.0658141036401503e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -6.87039029936901 0 0 ;
	setAttr ".radi" 0.2;
createNode joint -n "front_hip_R_JNT" -p "template_CTRL";
	rename -uid "6013CF37-415E-25DA-D491-BA8A7CF422AF";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 19.086009203151512 0 0 ;
	setAttr ".radi" 1.6;
createNode joint -n "front_knee_R_JNT" -p "front_hip_R_JNT";
	rename -uid "8EB08FB2-4D73-78FD-4FF6-C9AA22DA96A5";
	setAttr ".t" -type "double3" 5.3290705182007514e-14 -25.440284291732304 4.6185277824406512e-14 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -3.2635414689351024e-14 1.6655940293896214e-27 -1.8596646629251742e-27 ;
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -33.02240991649365 0 0 ;
	setAttr ".radi" 1.6;
createNode joint -n "front_ankle_R_JNT" -p "front_knee_R_JNT";
	rename -uid "98D6D9F2-454E-6FB7-1D21-BD8A62E306DD";
	setAttr ".t" -type "double3" -3.1974423109204508e-14 -25.968673517576924 -4.9737991503207013e-14 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -6.87039029936901 0 0 ;
	setAttr ".radi" 1.6;
createNode joint -n "front_toeExtra_R_JNT" -p "front_ankle_R_JNT";
	rename -uid "8A47D22D-4F29-7AD4-A6D5-A28E1162F6EC";
	setAttr ".t" -type "double3" -2.6645352591003757e-14 -7.5990790618994826 -1.4210854715202004e-14 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 16.887920726575935 0 0 ;
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".rx";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -47.447318649755303 0 0 ;
	setAttr ".radi" 2.5;
createNode joint -n "front_ankle_twist_R_JNT" -p "front_ankle_R_JNT";
	rename -uid "EF10275E-4803-57FC-86E0-5C93ABDD12C2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.1373031220406347e-06 -1.3853797549145952e-06 -1.5715595083065637e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 1.5661335984323301e-05 0 0 ;
	setAttr ".radi" 0.2;
createNode joint -n "front_toe_twist_R_JNT" -p "front_ankle_R_JNT";
	rename -uid "B3C1CCFE-4DC4-ACF1-4180-948C49246F41";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.9539925233402755e-14 -8.8817841970012523e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.5661335981142743e-05 0 0 ;
	setAttr ".radi" 4;
createNode joint -n "front_knee_twist_R_JNT" -p "front_hip_R_JNT";
	rename -uid "E21D33AC-40E0-9E62-74E7-869954EFAB94";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.6185277824406512e-14 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -179.99999732966265 0 0 ;
	setAttr ".radi" 0.2;
createNode joint -n "front_hip_twist_R_JNT" -p "front_hip_R_JNT";
	rename -uid "CE2F9BE7-4492-202D-E7A9-D9BAFF92E5DF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.1373030509863611e-06 -4.1585703925761663e-05 -1.6832653638942929e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999732966265 0 0 ;
	setAttr ".radi" 4;
createNode joint -n "front_hip_dup_R_JNT" -p "front_hip_R_JNT";
	rename -uid "6E88B2FA-44C7-F421-FC06-D49E0F850160";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 5.3290705182007514e-14 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".radi" 0.2;
createNode joint -n "front_knee_dup_R_JNT" -p "front_hip_dup_R_JNT";
	rename -uid "55CFB077-46E9-B249-81AF-5F81F0BA2C02";
	setAttr ".t" -type "double3" -3.0198066269804258e-14 -25.440284291732304 4.6185277824406512e-14 ;
	setAttr ".r" -type "double3" -3.2635414689351024e-14 -1.1094626654828467e-27 1.3217995155574915e-27 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -33.02240991649365 0 0 ;
	setAttr ".radi" 0.2;
createNode joint -n "front_ankle_dup_R_JNT" -p "front_knee_dup_R_JNT";
	rename -uid "FD2BED27-483E-B5DB-70B2-4ABC505D44A0";
	setAttr ".t" -type "double3" 2.3092638912203256e-14 -25.968673517576924 -4.9737991503207013e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -6.87039029936901 0 0 ;
	setAttr ".radi" 0.2;
createNode transform -n "root_NUL" -p "template_CTRL";
	rename -uid "D3F21E09-43D0-104E-28EA-449A504424E6";
	setAttr ".v" no;
createNode transform -n "master_NUL" -p "root_NUL";
	rename -uid "FB983B7E-43CF-5DAB-B8C6-24ADF3DBEFD8";
createNode transform -n "master_CTRL" -p "master_NUL";
	rename -uid "C06FBCFD-4522-34DC-F8F2-41A4A2818ABE";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "master_CTRLShape" -p "master_CTRL";
	rename -uid "36D40B58-450F-2334-9B3F-398EA91D22BB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-63.155432405590361 -6.4344752111051942e-16 12.63898860382251
		-80.541449479882786 -6.7528541957313946e-20 12.789297823417359
		-80.541449479882786 -6.7528541957313946e-20 32.423571621695238
		-112.75802927183585 -6.7528541957313946e-20 1.9739510445387305e-13
		-80.541449479882885 -6.7528541957313946e-20 -32.423571621694876
		-80.541449479882814 -6.7528541957313946e-20 -12.789297823416963
		-63.15525421614381 6.4335389736866342e-16 -12.639802548215966
		-59.463984113270385 1.2618332976691271e-15 -24.789627196770667
		-53.537756918942769 1.8328851325227892e-15 -36.007752902067757
		-45.557450238780746 2.3339477283260009e-15 -45.850962997668567
		-35.776393937049036 2.7427484887104204e-15 -53.881719644459857
		-24.629863560439649 3.0463592482110467e-15 -59.846053278781412
		-12.558433629985002 3.2356091513282543e-15 -63.563805456967181
		-12.55750579802258 -6.7528541957313946e-20 -81.058929054237652
		-32.216579791953144 -6.7528541957313946e-20 -81.058929054237652
		-3.1503142597744299e-17 -6.7528541957313946e-20 -113.48250067593271
		32.216579791953166 -6.7528541957313946e-20 -81.058929054237652
		12.557505798022575 -6.7528541957313946e-20 -81.058929054237652
		12.55843362998497 3.2356091513282555e-15 -63.563805456967181
		24.629863560439695 3.0463592482110467e-15 -59.846053278781397
		35.776393937049072 2.7427484887104204e-15 -53.881719644459892
		45.557450238780731 2.3339477283260048e-15 -45.85096299766861
		53.537756918942783 1.8328851325227908e-15 -36.007752902067764
		59.463984113270328 1.2618332976691361e-15 -24.789627196770788
		63.155254216143796 6.4335389736866864e-16 -12.639802548216093
		80.541449479882758 -6.7528541957313946e-20 -12.789297823416963
		80.541449479882786 -6.7528541957313946e-20 -32.423571621694876
		112.75802927183578 -6.7528541957313946e-20 1.9739510445387305e-13
		80.541449479882715 -6.7528541957313946e-20 32.423571621695238
		80.541449479882715 -6.7528541957313946e-20 12.789297823417359
		63.155432405590403 -6.4344752111051261e-16 12.638988603822348
		59.464429504642638 -1.2619308848572095e-15 24.788891112976287
		53.538081446855998 -1.832979395019995e-15 36.006951505813291
		45.557742972217028 -2.3340414688212041e-15 45.850151346856151
		35.777402576287457 -2.7428871445135974e-15 53.881790340117988
		24.631016896325917 -3.0465082414832492e-15 59.846327050622683
		12.558712634310993 -3.2356091513282527e-15 63.561152304920263
		12.557505798022545 -6.7528541957313946e-20 81.058929054237865
		32.21657979195308 -6.7528541957313946e-20 81.058929054237865
		-3.1503142597744299e-17 -6.7528541957313946e-20 113.48250067593271
		-32.216579791953073 -6.7528541957313946e-20 81.058929054237865
		-12.557505798022545 -6.7528541957313946e-20 81.058929054237865
		-12.558712634310886 -3.2356091513282555e-15 63.561152304920284
		-24.631016896325779 -3.0465082414832492e-15 59.846327050622747
		-35.777402576287329 -2.7428871445136006e-15 53.881790340118066
		-45.55774297221695 -2.3340414688212076e-15 45.850151346856208
		-53.538081446855891 -1.8329793950200029e-15 36.006951505813454
		-59.464429504642609 -1.2619308848572195e-15 24.788891112976426
		-63.155432405590361 -6.4344752111051942e-16 12.63898860382251
		;
createNode transform -n "cog_NUL" -p "master_CTRL";
	rename -uid "324EBC34-4060-2181-7125-D69DA775AC6E";
createNode transform -n "cog_CTRL" -p "cog_NUL";
	rename -uid "5F685096-4F8D-77CF-043F-1DB52B8ADC30";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".s" -type "double3" 53.804142801094798 53.804142801094798 53.804142801094798 ;
createNode nurbsCurve -n "cog_CTRLShape" -p "cog_CTRL";
	rename -uid "53466789-4038-B37E-61D7-7E8EBE3B8AA7";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "mash_NUL" -p "root_NUL";
	rename -uid "A0CE045A-44C5-E8D0-F585-F3811433EF53";
createNode transform -n "DONOTOUCH_NUL" -p "root_NUL";
	rename -uid "E30E4C95-42C5-400D-CFFA-CCAA8D4C7DB2";
createNode transform -n "scale_expose_NUL" -p "DONOTOUCH_NUL";
	rename -uid "477DF794-4E05-7F48-87E1-1FA8A9A474AE";
	setAttr ".s" -type "double3" 53.804142801094798 53.804142801094798 53.804142801094798 ;
createNode transform -n "placeHolder_NUL" -p "DONOTOUCH_NUL";
	rename -uid "6D592FB1-4D55-A33C-9C2B-75B959979B08";
	setAttr ".v" no;
createNode transform -n "template_CTRL_PH" -p "placeHolder_NUL";
	rename -uid "24F0F768-437A-46CB-E07D-31AB7D2842C6";
createNode locator -n "template_CTRL_PHShape" -p "template_CTRL_PH";
	rename -uid "EB79D39D-4134-DF71-488F-E8B2A5BEAA53";
	setAttr -k off ".v";
createNode transform -n "front_hip_L_JNT_PH" -p "template_CTRL_PH";
	rename -uid "5C576A3E-4187-BF97-7CBC-F985A8F2D5B7";
	setAttr ".t" -type "double3" 11.290221036252525 58.868833795625903 36.071429505332915 ;
	setAttr ".r" -type "double3" -160.91399079684854 0 0 ;
createNode locator -n "front_hip_L_JNT_PHShape" -p "front_hip_L_JNT_PH";
	rename -uid "A7EAA352-4489-0C61-7CBE-B19012635F30";
	setAttr -k off ".v";
createNode transform -n "front_knee_L_JNT_PH" -p "front_hip_L_JNT_PH";
	rename -uid "9C3138BC-4C8A-44A2-2C98-09B646854049";
	setAttr ".t" -type "double3" 0 25.440284291732304 1.7763568394002505e-14 ;
	setAttr ".r" -type "double3" -33.022409916493665 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "front_knee_L_JNT_PHShape" -p "front_knee_L_JNT_PH";
	rename -uid "A8BCA56C-4001-9DF9-AC11-E3B32BC4C3ED";
	setAttr -k off ".v";
createNode transform -n "front_ankle_L_JNT_PH" -p "front_knee_L_JNT_PH";
	rename -uid "0CE578AF-477A-25AB-5432-219E45C27625";
	setAttr ".t" -type "double3" -6.3948846218409017e-14 25.968673517576917 -9.9475983006414026e-14 ;
	setAttr ".r" -type "double3" -6.87039029936901 0 0 ;
createNode locator -n "front_ankle_L_JNT_PHShape" -p "front_ankle_L_JNT_PH";
	rename -uid "A284D93B-445C-EB0B-28B1-DBB45654E31E";
	setAttr -k off ".v";
createNode transform -n "front_toeExtra_L_JNT_PH" -p "front_ankle_L_JNT_PH";
	rename -uid "876DBA06-429A-FB8B-FE86-048890BFA401";
	setAttr ".t" -type "double3" 1.1723955140041653e-13 7.5990790618994808 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -30.559397923179368 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999967 ;
createNode locator -n "front_toeExtra_L_JNT_PHShape" -p "front_toeExtra_L_JNT_PH";
	rename -uid "B95866F6-4809-270D-157A-45B07FBFE97D";
	setAttr -k off ".v";
createNode transform -n "front_toe_L_JNT_PH" -p "front_toeExtra_L_JNT_PH";
	rename -uid "096405D1-4425-7B32-61EB-0FBD4234BF06";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "front_toe_L_JNT_PHShape" -p "front_toe_L_JNT_PH";
	rename -uid "1386536E-477D-392C-DC24-A7B4C9EB79F1";
	setAttr -k off ".v";
createNode transform -n "front_toeMid_L_JNT_PH" -p "front_toe_L_JNT_PH";
	rename -uid "43EA3D87-4676-D3E2-4681-AEADC94A7A54";
	setAttr ".t" -type "double3" 1.0658141036401503e-14 4.0207141596733216 -1.5631940186722204e-13 ;
	setAttr ".r" -type "double3" -38.305732591793927 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "front_toeMid_L_JNT_PHShape" -p "front_toeMid_L_JNT_PH";
	rename -uid "4291C510-4A06-1F20-89A0-E59BD8FE8B02";
	setAttr -k off ".v";
createNode transform -n "front_toeTip_L_JNT_PH" -p "front_toeMid_L_JNT_PH";
	rename -uid "0EA4281C-4EF5-0DC5-92D7-4186FB42FD82";
	setAttr ".t" -type "double3" -1.2256862191861728e-13 2.9867496173151196 1.4263590308871699e-13 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode locator -n "front_toeTip_L_JNT_PHShape" -p "front_toeTip_L_JNT_PH";
	rename -uid "1332ADD3-4123-5BED-AD17-0DA506E6E21A";
	setAttr -k off ".v";
createNode transform -n "front_knee_L_LOC_PH" -p "front_toeTip_L_JNT_PH";
	rename -uid "FC1697E0-497E-FC57-28AE-8FB556D62C1E";
	setAttr ".t" -type "double3" 5.1514348342607263e-14 -39.232768640606473 -26.386204206150133 ;
	setAttr ".r" -type "double3" -90.328078472315553 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode locator -n "front_knee_L_LOC_PHShape" -p "front_knee_L_LOC_PH";
	rename -uid "3E4616D6-4D03-9115-B246-B6B8A3D77249";
	setAttr -k off ".v";
createNode transform -n "front_hip_R_JNT_PH" -p "template_CTRL_PH";
	rename -uid "3B03E016-4C24-6AD6-E8E6-09B1D641387F";
	setAttr ".t" -type "double3" -11.290221036252525 58.868833795625903 36.071429505332915 ;
	setAttr ".r" -type "double3" 19.086009203151512 0 0 ;
createNode locator -n "front_hip_R_JNT_PHShape" -p "front_hip_R_JNT_PH";
	rename -uid "90B981CD-4AE0-50B0-18B3-6BA080664198";
	setAttr -k off ".v";
createNode transform -n "front_knee_R_JNT_PH" -p "front_hip_R_JNT_PH";
	rename -uid "06EF4950-482A-B79F-6588-DF8DFBCBAE29";
	setAttr ".t" -type "double3" 5.5067062021407764e-14 -25.440284291732297 4.6185277824406512e-14 ;
	setAttr ".r" -type "double3" -33.02240991649365 0 0 ;
createNode locator -n "front_knee_R_JNT_PHShape" -p "front_knee_R_JNT_PH";
	rename -uid "13E45607-45D1-D751-59E3-B5820DCE4331";
	setAttr -k off ".v";
createNode transform -n "front_ankle_R_JNT_PH" -p "front_knee_R_JNT_PH";
	rename -uid "C1FAA2A4-45FE-1F34-1C5B-8187D6246C0F";
	setAttr ".t" -type "double3" -3.1974423109204508e-14 -25.968673517576924 -4.9737991503207013e-14 ;
	setAttr ".r" -type "double3" -6.87039029936901 0 0 ;
createNode locator -n "front_ankle_R_JNT_PHShape" -p "front_ankle_R_JNT_PH";
	rename -uid "CFCF2013-49E3-DDD1-D4CB-4E85469942FA";
	setAttr -k off ".v";
createNode transform -n "front_toeExtra_R_JNT_PH" -p "front_ankle_R_JNT_PH";
	rename -uid "8B926CD5-4CA0-9D71-1D63-7DAB693325A3";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -7.5990790618994861 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -30.559397923179368 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "front_toeExtra_R_JNT_PHShape" -p "front_toeExtra_R_JNT_PH";
	rename -uid "A4F81BC5-4E71-C889-E394-6CA7A271EF30";
	setAttr -k off ".v";
createNode transform -n "front_toe_R_JNT_PH" -p "front_toeExtra_R_JNT_PH";
	rename -uid "32DD7AE2-4482-AB17-A034-29A626796CA7";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode locator -n "front_toe_R_JNT_PHShape" -p "front_toe_R_JNT_PH";
	rename -uid "0DD34FC5-4905-436F-D99D-C988C95938FE";
	setAttr -k off ".v";
createNode transform -n "front_toeMid_R_JNT_PH" -p "front_toe_R_JNT_PH";
	rename -uid "3330B3B4-470F-741F-E76B-6AB853E44954";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 -4.0207141596733251 1.7408297026122455e-13 ;
	setAttr ".r" -type "double3" -38.305732591793927 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999967 ;
createNode locator -n "front_toeMid_R_JNT_PHShape" -p "front_toeMid_R_JNT_PH";
	rename -uid "5EC84D81-4745-0111-EF9E-AE88916AD689";
	setAttr -k off ".v";
createNode transform -n "front_toeTip_R_JNT_PH" -p "front_toeMid_R_JNT_PH";
	rename -uid "77F946CD-45DC-AA0E-CD90-DF836E182A02";
	setAttr ".t" -type "double3" 6.3948846218409017e-14 -2.9867496173151196 -1.4657719482613629e-13 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "front_toeTip_R_JNT_PHShape" -p "front_toeTip_R_JNT_PH";
	rename -uid "CF4EEFD9-4168-A281-3415-83A445CE87D8";
	setAttr -k off ".v";
createNode transform -n "front_knee_R_LOC_PH" -p "front_toeTip_R_JNT_PH";
	rename -uid "DED18083-4191-971C-C4EF-30A7D27E999E";
	setAttr ".t" -type "double3" -4.6185277824406512e-14 39.232768640606409 26.38620420615019 ;
	setAttr ".r" -type "double3" -90.328078472315596 0 0 ;
createNode locator -n "front_knee_R_LOC_PHShape" -p "front_knee_R_LOC_PH";
	rename -uid "10AD8870-4BC3-58F5-0763-FD98E8AFEA51";
	setAttr -k off ".v";
createNode transform -n "back_hip_L_JNT_PH" -p "template_CTRL_PH";
	rename -uid "1FB9B025-455D-BA60-3AFD-E0A2C65726B7";
	setAttr ".t" -type "double3" 13.716629385103481 58.816699981689453 -40.136348724365234 ;
	setAttr ".r" -type "double3" 142.71148573563585 0 0 ;
createNode locator -n "back_hip_L_JNT_PHShape" -p "back_hip_L_JNT_PH";
	rename -uid "478DA058-4E9E-FBE5-1506-F896D05BECFD";
	setAttr -k off ".v";
createNode transform -n "back_knee_L_JNT_PH" -p "back_hip_L_JNT_PH";
	rename -uid "1109A4DB-476C-348E-BB83-A39F660A4800";
	setAttr ".t" -type "double3" 6.3948846218409017e-14 22.328317553910281 -5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" 65.958596052032519 0 0 ;
createNode locator -n "back_knee_L_JNT_PHShape" -p "back_knee_L_JNT_PH";
	rename -uid "C92DEA19-487E-6885-FC0F-D7988D4B7D1F";
	setAttr -k off ".v";
createNode transform -n "back_ankle_L_JNT_PH" -p "back_knee_L_JNT_PH";
	rename -uid "84BEDA8A-4E27-5C2A-312A-178493E2EDEF";
	setAttr ".t" -type "double3" -1.4033219031261979e-13 27.311028134735579 -7.1054273576010019e-14 ;
	setAttr ".r" -type "double3" -51.684270665204878 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode locator -n "back_ankle_L_JNT_PHShape" -p "back_ankle_L_JNT_PH";
	rename -uid "236C0194-41FD-1D91-903C-B597507DF266";
	setAttr -k off ".v";
createNode transform -n "back_toeExtra_L_JNT_PH" -p "back_ankle_L_JNT_PH";
	rename -uid "5BB7523A-435B-C96A-BBFA-CBA2FF377987";
	setAttr ".t" -type "double3" 6.2172489379008766e-14 15.811635839762197 0 ;
	setAttr ".r" -type "double3" -30.559397923179368 0 0 ;
createNode locator -n "back_toeExtra_L_JNT_PHShape" -p "back_toeExtra_L_JNT_PH";
	rename -uid "9B2460E9-4988-0318-EF7E-45B32A2C604F";
	setAttr -k off ".v";
createNode transform -n "back_toe_L_JNT_PH" -p "back_toeExtra_L_JNT_PH";
	rename -uid "F417BC26-4802-DDB1-5B2E-27BF6B9EDAE1";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 2.2073978648253045 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode locator -n "back_toe_L_JNT_PHShape" -p "back_toe_L_JNT_PH";
	rename -uid "37949314-40E4-4E44-5604-2FACD9324478";
	setAttr -k off ".v";
createNode transform -n "back_toeMid_L_JNT_PH" -p "back_toe_L_JNT_PH";
	rename -uid "DD2A06D1-4F26-C451-70E4-F39062F14CAA";
	setAttr ".t" -type "double3" -3.3750779948604759e-14 4.0207141596735632 -2.2382096176443156e-13 ;
	setAttr ".r" -type "double3" -38.305732591793927 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "back_toeMid_L_JNT_PHShape" -p "back_toeMid_L_JNT_PH";
	rename -uid "8A5A5439-451A-34F2-6CB6-3BB7F4882E3E";
	setAttr -k off ".v";
createNode transform -n "back_toeTip_L_JNT_PH" -p "back_toeMid_L_JNT_PH";
	rename -uid "7BDE0E66-4C9F-F957-6BB4-76BF0D46587D";
	setAttr ".t" -type "double3" -1.9539925233402755e-14 2.9867496173154748 4.343747583845925e-14 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode locator -n "back_toeTip_L_JNT_PHShape" -p "back_toeTip_L_JNT_PH";
	rename -uid "DB8D4C3F-4A39-23E8-7720-A8A5372EC179";
	setAttr -k off ".v";
createNode transform -n "back_knee_L_LOC_PH" -p "back_toeTip_L_JNT_PH";
	rename -uid "57BC2715-4CD7-98A9-29D0-70A1C52478A8";
	setAttr ".t" -type "double3" 3.5527136788005009e-14 21.528416739243283 -32.288349440546526 ;
	setAttr ".r" -type "double3" -90.328078472315525 0 0 ;
createNode locator -n "back_knee_L_LOC_PHShape" -p "back_knee_L_LOC_PH";
	rename -uid "F3ACF72B-41B2-AABA-ED89-5293EA1079A2";
	setAttr -k off ".v";
createNode transform -n "back_hip_R_JNT_PH" -p "template_CTRL_PH";
	rename -uid "44CDAD3A-4FA6-28F4-2437-8DA2795CB22A";
	setAttr ".t" -type "double3" -13.716629385103481 58.816699981689453 -40.136348724365234 ;
	setAttr ".r" -type "double3" -37.288514264364174 0 0 ;
createNode locator -n "back_hip_R_JNT_PHShape" -p "back_hip_R_JNT_PH";
	rename -uid "1179D778-4D1F-6F1D-EEFA-33B5957EF6D1";
	setAttr -k off ".v";
createNode transform -n "back_knee_R_JNT_PH" -p "back_hip_R_JNT_PH";
	rename -uid "0DD74368-45B6-65A8-8C9C-3BB470C28EC9";
	setAttr ".t" -type "double3" 5.5067062021407764e-14 -22.328317553910281 3.1974423109204508e-14 ;
	setAttr ".r" -type "double3" 65.958596052032519 0 0 ;
createNode locator -n "back_knee_R_JNT_PHShape" -p "back_knee_R_JNT_PH";
	rename -uid "E6928E1C-471E-4A62-E8B6-2C84778F0AA1";
	setAttr -k off ".v";
createNode transform -n "back_ankle_R_JNT_PH" -p "back_knee_R_JNT_PH";
	rename -uid "84F64CF8-4ACA-2FB1-52FF-AD9609250056";
	setAttr ".t" -type "double3" -1.0125233984581428e-13 -27.311028134735576 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -51.684270665204878 0 0 ;
createNode locator -n "back_ankle_R_JNT_PHShape" -p "back_ankle_R_JNT_PH";
	rename -uid "BC2FD6B4-4BEC-2271-21F8-BC8F78CF93F6";
	setAttr -k off ".v";
createNode transform -n "back_toeExtra_R_JNT_PH" -p "back_ankle_R_JNT_PH";
	rename -uid "BB8C96FC-4CFF-F8BC-E45D-FCA6EFBDB588";
	setAttr ".t" -type "double3" 7.1054273576010019e-14 -15.811635839762193 -4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" -30.559397923179368 0 0 ;
createNode locator -n "back_toeExtra_R_JNT_PHShape" -p "back_toeExtra_R_JNT_PH";
	rename -uid "D18D6599-47F4-5F4D-5448-DF90B5839008";
	setAttr -k off ".v";
createNode transform -n "back_toe_R_JNT_PH" -p "back_toeExtra_R_JNT_PH";
	rename -uid "D0A8C065-4405-9B98-1822-29AA09113870";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 3.5527136788005009e-15 0 ;
	setAttr ".r" -type "double3" 2.2073978648253956 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode locator -n "back_toe_R_JNT_PHShape" -p "back_toe_R_JNT_PH";
	rename -uid "34055B11-4F62-2191-B228-9595F80274B3";
	setAttr -k off ".v";
createNode transform -n "back_toeMid_R_JNT_PH" -p "back_toe_R_JNT_PH";
	rename -uid "7A88846D-4A73-3F22-64B0-2C9479D0F63E";
	setAttr ".t" -type "double3" -5.5067062021407764e-14 -4.0207141596735489 2.5579538487363607e-13 ;
	setAttr ".r" -type "double3" -38.305732591793927 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999967 ;
createNode locator -n "back_toeMid_R_JNT_PHShape" -p "back_toeMid_R_JNT_PH";
	rename -uid "2ED90C1F-4F86-5442-78EC-89982C9C178A";
	setAttr -k off ".v";
createNode transform -n "back_toeTip_R_JNT_PH" -p "back_toeMid_R_JNT_PH";
	rename -uid "85F658AA-46AD-9612-A314-2BA6E0EC4F7B";
	setAttr ".t" -type "double3" 7.9936057773011271e-14 -2.9867496173154713 -9.8809849191638932e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "back_toeTip_R_JNT_PHShape" -p "back_toeTip_R_JNT_PH";
	rename -uid "F0CAA8E7-45AD-55C9-8D02-DA87F06A0B71";
	setAttr -k off ".v";
createNode transform -n "back_knee_R_LOC_PH" -p "back_toeTip_R_JNT_PH";
	rename -uid "D7C09046-47F5-FBFA-51E1-60A74602B56A";
	setAttr ".t" -type "double3" -6.7501559897209518e-14 -21.528660256033895 32.288645280854638 ;
	setAttr ".r" -type "double3" -90.328078472315568 0 0 ;
createNode locator -n "back_knee_R_LOC_PHShape" -p "back_knee_R_LOC_PH";
	rename -uid "263E19A8-4ACF-0B3D-0D6E-F191A6DEFE0A";
	setAttr -k off ".v";
createNode transform -n "neck_JNT_PH" -p "template_CTRL_PH";
	rename -uid "493EE652-4859-245D-814D-1A8B7D438074";
	setAttr ".t" -type "double3" 0 55 37.153459548950195 ;
	setAttr ".r" -type "double3" -37.715484582192168 0 0 ;
createNode locator -n "neck_JNT_PHShape" -p "neck_JNT_PH";
	rename -uid "D745BAFB-417E-F50E-7D8E-EE891597E7AD";
	setAttr -k off ".v";
createNode transform -n "head_JNT_PH" -p "neck_JNT_PH";
	rename -uid "7A102FE4-4A82-2C4B-4919-3386E42524A7";
	setAttr ".t" -type "double3" 0 2.4868995751603507e-14 27.426735232659425 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode locator -n "head_JNT_PHShape" -p "head_JNT_PH";
	rename -uid "8CFFD098-487F-6978-C493-CFA7D9B77565";
	setAttr -k off ".v";
createNode transform -n "nose_JNT_PH" -p "head_JNT_PH";
	rename -uid "68C346CF-4AE9-2885-F993-F386B0A73F7E";
	setAttr ".t" -type "double3" 0 -14.439029189881627 18.671489590537547 ;
	setAttr ".r" -type "double3" -52.284515417807832 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode locator -n "nose_JNT_PHShape" -p "nose_JNT_PH";
	rename -uid "828F2A99-4F40-5BD6-4055-45A90C052F8B";
	setAttr -k off ".v";
createNode transform -n "head_top_JNT_PH" -p "nose_JNT_PH";
	rename -uid "3D859BD2-47AA-4882-5EBC-D1AF386BF70E";
	setAttr ".t" -type "double3" 0 23.603179605210087 11.746017580539799 ;
createNode locator -n "head_top_JNT_PHShape" -p "head_top_JNT_PH";
	rename -uid "3323041F-4AF1-BA6E-6DE0-3FAE77AF503B";
	setAttr -k off ".v";
createNode transform -n "tail_start_HLD_PH" -p "template_CTRL_PH";
	rename -uid "FAB090A7-489F-6187-5FCE-D58BAF00FD29";
	setAttr ".t" -type "double3" 0 59.892226749311376 -46.380153852462286 ;
createNode locator -n "tail_start_HLD_PHShape" -p "tail_start_HLD_PH";
	rename -uid "DCEB4942-4B30-9735-F1C9-9B883218A770";
	setAttr -k off ".v";
createNode transform -n "tail_end_HLD_PH" -p "tail_start_HLD_PH";
	rename -uid "611A8AF2-4592-B397-7842-7F9CD14F8EEC";
	setAttr ".t" -type "double3" 0 0 -43.168886908052329 ;
createNode locator -n "tail_end_HLD_PHShape" -p "tail_end_HLD_PH";
	rename -uid "83C4A00C-45B7-2602-239B-5FAE78BF6E92";
	setAttr -k off ".v";
createNode transform -n "tail_3Jnt_01_HLD_PH" -p "tail_end_HLD_PH";
	rename -uid "4EAAA341-4283-89EF-9871-F2B1D6B79942";
	setAttr ".t" -type "double3" 0 0 21.584443454026157 ;
createNode locator -n "tail_3Jnt_01_HLD_PHShape" -p "tail_3Jnt_01_HLD_PH";
	rename -uid "18C69C1B-43B0-E325-8CDC-59A38E98C437";
	setAttr -k off ".v";
createNode transform -n "tail_5Jnt_01_HLD_PH" -p "tail_3Jnt_01_HLD_PH";
	rename -uid "9E6FCEDA-4FFF-F447-40DF-7F92139F4D62";
	setAttr ".t" -type "double3" 0 0 10.792221727013086 ;
createNode locator -n "tail_5Jnt_01_HLD_PHShape" -p "tail_5Jnt_01_HLD_PH";
	rename -uid "47808A97-47EC-5588-79C8-93BAD9C190F9";
	setAttr -k off ".v";
createNode transform -n "tail_5Jnt_02_HLD_PH" -p "tail_5Jnt_01_HLD_PH";
	rename -uid "D01D941D-42E2-5CD5-FE6D-62B19F305C67";
	setAttr ".t" -type "double3" 0 0 -10.792221727013086 ;
createNode locator -n "tail_5Jnt_02_HLD_PHShape" -p "tail_5Jnt_02_HLD_PH";
	rename -uid "38412411-4E47-005A-E4E3-3F9BFD3020EF";
	setAttr -k off ".v";
createNode transform -n "tail_5Jnt_03_HLD_PH" -p "tail_5Jnt_02_HLD_PH";
	rename -uid "37F90DB1-40DF-9A71-CE2F-03B76F580DD3";
	setAttr ".t" -type "double3" 0 0 -10.792221727013072 ;
createNode locator -n "tail_5Jnt_03_HLD_PHShape" -p "tail_5Jnt_03_HLD_PH";
	rename -uid "34F38291-45E7-44E2-E309-F9AA0B3DDCF1";
	setAttr -k off ".v";
createNode transform -n "tail_7Jnt_01_HLD_PH" -p "tail_5Jnt_03_HLD_PH";
	rename -uid "B3577EC1-4DF5-8009-B460-38AE0CDFB2C0";
	setAttr ".t" -type "double3" 0 0 25.181850696363853 ;
createNode locator -n "tail_7Jnt_01_HLD_PHShape" -p "tail_7Jnt_01_HLD_PH";
	rename -uid "1AD51697-410A-0D95-30A3-878FFE8CBA9E";
	setAttr -k off ".v";
createNode transform -n "tail_7Jnt_02_HLD_PH" -p "tail_7Jnt_01_HLD_PH";
	rename -uid "EB3C888A-4A72-5810-37C5-73B5C05C0C6A";
	setAttr ".t" -type "double3" 0 0 -7.1948144846753834 ;
createNode locator -n "tail_7Jnt_02_HLD_PHShape" -p "tail_7Jnt_02_HLD_PH";
	rename -uid "6C5E80FD-4400-0942-69CD-2F963720BF54";
	setAttr -k off ".v";
createNode transform -n "tail_7Jnt_03_HLD_PH" -p "tail_7Jnt_02_HLD_PH";
	rename -uid "91FB8180-4E6D-AD6F-C029-FDB0C5D2981E";
	setAttr ".t" -type "double3" 0 0 -7.1948144846753976 ;
createNode locator -n "tail_7Jnt_03_HLD_PHShape" -p "tail_7Jnt_03_HLD_PH";
	rename -uid "EEEE98CD-4B96-FDDD-02C6-41BB802EB74F";
	setAttr -k off ".v";
createNode transform -n "tail_7Jnt_04_HLD_PH" -p "tail_7Jnt_03_HLD_PH";
	rename -uid "ED3739EF-4C95-C260-9AF4-688614EEA109";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 -7.2044107694165263 ;
createNode locator -n "tail_7Jnt_04_HLD_PHShape" -p "tail_7Jnt_04_HLD_PH";
	rename -uid "246AABEF-4DFF-4B93-6412-6DA2CCA9D274";
	setAttr -k off ".v";
createNode transform -n "tail_7Jnt_05_HLD_PH" -p "tail_7Jnt_04_HLD_PH";
	rename -uid "150EB6A1-470A-1EE5-F2D8-1191510C2C39";
	setAttr ".t" -type "double3" 0 0 -7.173230838247008 ;
createNode locator -n "tail_7Jnt_05_HLD_PHShape" -p "tail_7Jnt_05_HLD_PH";
	rename -uid "B73C15AA-4B39-775B-20F7-83B9BB2B0F06";
	setAttr -k off ".v";
createNode transform -n "body_HLD_PH" -p "template_CTRL_PH";
	rename -uid "BF7727B6-499E-A384-08EC-1092C823C520";
	setAttr ".t" -type "double3" 0 55 -18.923857124570635 ;
createNode locator -n "body_HLD_PHShape" -p "body_HLD_PH";
	rename -uid "5E1DE850-4228-B0C8-DDD1-F78C8D82ABB3";
	setAttr -k off ".v";
createNode transform -n "spine_03_HLD_PH" -p "body_HLD_PH";
	rename -uid "00953B3F-4D2E-21AF-88C3-EF95FC87BB39";
	setAttr ".t" -type "double3" 0 0 -18.192914573427412 ;
createNode locator -n "spine_03_HLD_PHShape" -p "spine_03_HLD_PH";
	rename -uid "B55274C6-42CE-B4B4-E5C8-31AB9552F94E";
	setAttr -k off ".v";
createNode transform -n "spin_03_cv_star_LOC_PH" -p "spine_03_HLD_PH";
	rename -uid "CE98C168-4103-4D5F-F4E9-AE8B4064E3FE";
	setAttr ".t" -type "double3" 0 0 9.2791938781738281 ;
createNode locator -n "spin_03_cv_star_LOC_PHShape" -p "spin_03_cv_star_LOC_PH";
	rename -uid "5177D5F4-45D9-1ADD-9F9D-9992EC723178";
	setAttr -k off ".v";
createNode transform -n "spine_02_HLD_PH" -p "spin_03_cv_star_LOC_PH";
	rename -uid "3D05F1B1-44B6-34D3-A162-B09CAD2E9726";
	setAttr ".t" -type "double3" 0 0 27.837577819824219 ;
createNode locator -n "spine_02_HLD_PHShape" -p "spine_02_HLD_PH";
	rename -uid "D39FB309-42A4-B84B-311F-4D913F1BDFF7";
	setAttr -k off ".v";
createNode transform -n "spin_02_cv_star_LOC_PH" -p "spine_02_HLD_PH";
	rename -uid "F30BB816-4D2C-E6AA-4F8E-BD9FFE4DCF4A";
	setAttr ".t" -type "double3" 0 0 9.2791929244995117 ;
createNode locator -n "spin_02_cv_star_LOC_PHShape" -p "spin_02_cv_star_LOC_PH";
	rename -uid "C22E20FF-488B-360A-4367-11A4C1DF590C";
	setAttr -k off ".v";
createNode transform -n "spin_02_cv_end_LOC_PH" -p "spin_02_cv_star_LOC_PH";
	rename -uid "3E2419BE-46A4-516C-6820-6CB511A7E4F6";
	setAttr ".t" -type "double3" 0 0 -18.558385848999023 ;
createNode locator -n "spin_02_cv_end_LOC_PHShape" -p "spin_02_cv_end_LOC_PH";
	rename -uid "2B2C052D-4FBD-2B5D-1E8E-80AFA633B446";
	setAttr -k off ".v";
createNode transform -n "spine_01_HLD_PH" -p "spin_02_cv_end_LOC_PH";
	rename -uid "E1576213-4C49-8280-0F8C-368F8F8D5312";
	setAttr ".t" -type "double3" 0 0 46.432652473449707 ;
createNode locator -n "spine_01_HLD_PHShape" -p "spine_01_HLD_PH";
	rename -uid "97D6BFCB-4B22-8615-167F-9E829EDE7431";
	setAttr -k off ".v";
createNode transform -n "spin_01_cv_end_LOC_PH" -p "spine_01_HLD_PH";
	rename -uid "5ABD3C49-48DF-A493-CEFB-989EE7CC40D8";
	setAttr ".t" -type "double3" 0 0 -9.3158817291259766 ;
createNode locator -n "spin_01_cv_end_LOC_PHShape" -p "spin_01_cv_end_LOC_PH";
	rename -uid "52484975-4C34-8587-21AF-E096401952D8";
	setAttr -k off ".v";
createNode transform -n "front_ctrl_NUL" -p "template_CTRL";
	rename -uid "7EA8F5BD-4D25-0589-0F60-97A0E25955E3";
	setAttr ".v" no;
createNode transform -n "front_hips_L_NUL" -p "front_ctrl_NUL";
	rename -uid "37F4888A-4334-9D06-ACD6-A98BC30AA187";
createNode transform -n "front_hips_L_CTRL" -p "front_hips_L_NUL";
	rename -uid "A59013F2-4A3E-C8E8-0A18-47BA03684B0F";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
createNode nurbsCurve -n "front_hips_L_CTRLShape" -p "front_hips_L_CTRL";
	rename -uid "C6860AD4-4EBD-7BAE-3EA5-078CDF3BB761";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.6397952296871239 5.5546601144956647 -5.5546601144956647
		9.6397952296871239 7.8554756682926525 -4.8100915664772568e-16
		9.6397952296871239 5.5546601144956638 5.5546601144956647
		9.6397952296871239 1.9458584928302739e-15 7.8554756682926525
		9.6397952296871239 -5.5546601144956647 5.5546601144956647
		9.6397952296871239 -7.8554756682926525 7.8688837029868774e-16
		9.6397952296871239 -5.5546601144956638 -5.5546601144956647
		9.6397952296871239 4.6738080372214332e-16 -7.8554756682926525
		9.6397952296871239 5.5546601144956647 -5.5546601144956647
		9.6397952296871239 7.8554756682926525 -4.8100915664772568e-16
		9.6397952296871239 5.5546601144956638 5.5546601144956647
		;
createNode transform -n "front_ankle_L_NUL" -p "front_ctrl_NUL";
	rename -uid "B56717FE-47B8-26A4-FA2E-F294B729D2EA";
createNode transform -n "front_ankle_L_CTRL" -p "front_ankle_L_NUL";
	rename -uid "0AAA4492-4011-17EC-213C-3D8426EBFA58";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
createNode nurbsCurve -n "front_ankle_L_CTRLShape" -p "front_ankle_L_CTRL";
	rename -uid "18F52BAE-45DB-AC65-997F-DC8E93A049B3";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 2.6600962090576168 1.0720178426900013 
		-1.0720178426900009 2.6600962090576168 1.5160621722381453 -9.2832034326991454e-17 
		2.6600962090576168 1.0720178426900011 1.0720178426900009 2.6600962090576168 5.4583361587876036e-16 
		1.5160621722381449 2.6600962090576168 -1.0720178426900011 1.0720178426900009 2.6600962090576168 
		-1.5160621722381451 1.5186498467549182e-16 2.6600962090576168 -1.0720178426900011 
		-1.0720178426900009 2.6600962090576168 2.6049582201323935e-16 -1.5160621722381449 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "front_ball_L_NUL" -p "front_ctrl_NUL";
	rename -uid "84B27AE1-41BF-B7CF-D22E-F6ABD57EBAFE";
createNode transform -n "front_ball_L_CTRL" -p "front_ball_L_NUL";
	rename -uid "74F700F5-47C9-C50B-2406-CCB1CDA10108";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
createNode nurbsCurve -n "front_ball_L_CTRLShape" -p "front_ball_L_CTRL";
	rename -uid "AE1F5024-491E-DB8A-232B-DBBCB405769D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.6600962090576168 1.1509021980223291 -1.1509021980223288
		2.6600962090576168 1.627621497408182 -9.9663072851217641e-17
		2.6600962090576168 1.1509021980223286 1.1509021980223288
		2.6600962090576168 4.5849679118173409e-16 1.6276214974081813
		2.6600962090576168 -1.1509021980223288 1.1509021980223288
		2.6600962090576168 -1.627621497408182 1.6303995857669045e-16
		2.6600962090576168 -1.1509021980223286 -1.1509021980223288
		2.6600962090576168 1.5216243641518392e-16 -1.6276214974081813
		2.6600962090576168 1.1509021980223291 -1.1509021980223288
		2.6600962090576168 1.627621497408182 -9.9663072851217641e-17
		2.6600962090576168 1.1509021980223286 1.1509021980223288
		;
createNode transform -n "front_toe_L_NUL" -p "front_ctrl_NUL";
	rename -uid "38ACDDA9-4BC8-3982-43D3-C8B94B1D89C5";
createNode transform -n "front_toe_L_CTRL" -p "front_toe_L_NUL";
	rename -uid "9D51C32B-4D66-1CC9-1C8F-4AB4554D61CF";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
createNode nurbsCurve -n "front_toe_L_CTRLShape" -p "front_toe_L_CTRL";
	rename -uid "7EFB315C-40AB-A43A-74E5-74BCF4A2A987";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.554544517309449 3.0427713962915393 1.936122957962674
		2.8081850864313953e-15 3.0427732929398723 1.9361210145802845
		-2.5545445173094317 3.0427713962915393 1.9361229579626746
		-2.6473364442895444 2.4900485013387104 2.5024651323122695
		-2.5545445173094317 1.9373256063858781 3.0688073066618671
		2.0982825435364605e-15 1.9373237097375458 3.0688092500442554
		2.554544517309449 1.9373256063858788 3.0688073066618653
		2.6473364442895542 2.4900485013387099 2.5024651323122677
		2.554544517309449 3.0427713962915393 1.936122957962674
		2.8081850864313953e-15 3.0427732929398723 1.9361210145802845
		-2.5545445173094317 3.0427713962915393 1.9361229579626746
		;
createNode transform -n "front_footFront_L_NUL" -p "front_ctrl_NUL";
	rename -uid "B0E3B492-46F7-E4F6-8473-1FA7AFA7F14F";
createNode transform -n "front_footFront_L_CTRL" -p "front_footFront_L_NUL";
	rename -uid "3B19403D-42FF-BCEA-65F9-71B157E524CF";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
createNode nurbsCurve -n "front_footFront_L_CTRLShape" -p "front_footFront_L_CTRL";
	rename -uid "56A1629D-4F2D-424F-9AF6-3981F53E6054";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.1717291236667231 -5.3804846826639406e-16 1.4171120837579607
		3.4599299774429537e-15 -3.5230171616747629e-16 2.7291953514369078
		-3.1717291236667147 -5.3766048778536674e-16 1.4171120837579607
		-3.3394188662818021 -1.2735212830768379e-16 1.3591747561890267e-15
		-3.1717291236667147 2.8279552439282175e-16 -1.4171120837579607
		2.8397179670702375e-15 3.5056699269149904e-16 -1.2140123612173479
		3.1717291236667231 2.8240754391179348e-16 -1.4171120837579607
		3.3394188662818092 1.6955471138205742e-18 6.2858090988222818e-16
		3.1717291236667231 -5.3804846826639406e-16 1.4171120837579607
		3.4599299774429537e-15 -3.5230171616747629e-16 2.7291953514369078
		-3.1717291236667147 -5.3766048778536674e-16 1.4171120837579607
		;
createNode transform -n "front_footBack_L_NUL" -p "front_ctrl_NUL";
	rename -uid "FF57DD23-4859-2E39-77E9-04A8AB6DEB64";
createNode transform -n "front_footBack_L_CTRL" -p "front_footBack_L_NUL";
	rename -uid "D6CD1209-4135-5C5D-B365-FCB4BED56A30";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
createNode nurbsCurve -n "front_footBack_L_CTRLShape" -p "front_footBack_L_CTRL";
	rename -uid "B89633FE-423B-C381-DF31-4DAF9D87BEE4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.1717291236667231 -5.3701480988442699e-16 1.4171120837579632
		3.5378018661751433e-15 -3.5143435442948783e-16 1.2140123612173479
		-3.1717291236667147 -5.3666920300046317e-16 1.4171120837579598
		-3.3394188662818021 -1.2636961938207689e-16 -6.1823771657361597e-16
		-3.1717291236667147 2.8378680917772423e-16 -1.4171120837579632
		2.761846078338048e-15 3.5143435442948734e-16 -2.8771390155294454
		3.1717291236667231 2.8344120229376164e-16 -1.4171120837579598
		3.3394188662818092 2.7379813550841318e-18 2.6059933826448745e-15
		3.1717291236667231 -5.3701480988442699e-16 1.4171120837579632
		3.5378018661751433e-15 -3.5143435442948783e-16 1.2140123612173479
		-3.1717291236667147 -5.3666920300046317e-16 1.4171120837579598
		;
createNode transform -n "front_foot_L_NUL" -p "front_ctrl_NUL";
	rename -uid "35EE0302-4890-A03C-5F73-5790715E8EEB";
createNode transform -n "front_foot_L_CTRL" -p "front_foot_L_NUL";
	rename -uid "091F3243-4DD5-0BA8-A422-F88E4648062C";
	addAttr -ci true -sn "Leg_Attr" -ln "Leg_Attr" -min 0 -max 0 -en "------" -at "enum";
	addAttr -ci true -sn "Follow" -ln "Follow" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "knee_Y_value" -ln "knee_Y_value" -at "double";
	addAttr -ci true -sn "ankle_Y_value" -ln "ankle_Y_value" -at "double";
	addAttr -ci true -sn "ankle_dis_UTL" -ln "ankle_dis_UTL" -at "double";
	addAttr -ci true -sn "knee_dis_UTL" -ln "knee_dis_UTL" -at "double";
	addAttr -ci true -sn "bend_Max" -ln "bend_Max" -dv 180 -min 0 -max 180 -at "double";
	addAttr -ci true -sn "Twist_Hip_Y_Value" -ln "Twist_Hip_Y_Value" -at "double";
	addAttr -ci true -sn "Twist_Hip_Dis_UTL" -ln "Twist_Hip_Dis_UTL" -at "double";
	addAttr -ci true -sn "Bend_Min" -ln "Bend_Min" -max 0 -at "double";
	addAttr -ci true -sn "Bend_Pos_Neg" -ln "Bend_Pos_Neg" -min -1 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -cb on ".Leg_Attr";
	setAttr -k on ".Follow" yes;
	setAttr -k on ".bend_Max" 30;
	setAttr -k on ".Bend_Min" -20;
	setAttr -k on ".Bend_Pos_Neg" -1;
createNode nurbsCurve -n "front_foot_L_CTRLShape" -p "front_foot_L_CTRL";
	rename -uid "3AFC4250-4A29-6669-1701-5EB15D37B1F9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.8191701673427936 0 -4.5484074468737923
		4.1731895924399001e-16 0 -4.5484094241081454
		-4.8191701673427936 0 -4.5484074468737923
		-6.8153358100399926 0 1.5945490547611767
		-4.8191701673427936 0 8.5056015448846374
		-6.826968493132958e-16 0 11.368253216566128
		4.8191701673427936 0 8.5056015448846356
		6.8153358100399926 0 1.5945490547611789
		4.8191701673427936 0 -4.5484074468737923
		4.1731895924399001e-16 0 -4.5484094241081454
		-4.8191701673427936 0 -4.5484074468737923
		;
createNode transform -n "front_knee_L_NUL" -p "front_ctrl_NUL";
	rename -uid "CE4ACAED-4D42-853B-1AA3-3B8722BD86EE";
createNode transform -n "front_knee_L_CTRL" -p "front_knee_L_NUL";
	rename -uid "D0ABCF3C-4260-E69F-1194-D7AADB5FC4B3";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
createNode nurbsCurve -n "front_knee_L_CTRLShape" -p "front_knee_L_CTRL";
	rename -uid "42856679-437A-E4BF-2657-C18F1F1AC0CF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		-2.3647283129367236 -2.3647283129367191 -4.7446046282506247
		2.3647283129367236 -2.3647283129367191 -4.7446046282506247
		2.3647283129367236 2.364728312936724 -4.7446046282506229
		-2.3647283129367236 2.364728312936724 -4.7446046282506229
		-2.3647283129367236 -2.3647283129367191 -4.7446046282506247
		-2.3647281934606007e-10 -7.846173614928866e-17 -0.015148002377173448
		2.3647283129367236 2.364728312936724 -4.7446046282506229
		2.3647283129367236 -2.3647283129367191 -4.7446046282506247
		2.3647281934606007e-10 -7.846173614928866e-17 -0.015148002377173448
		-2.3647283129367236 2.364728312936724 -4.7446046282506229
		;
createNode transform -n "front_hips_R_NUL" -p "front_ctrl_NUL";
	rename -uid "67077E30-441F-71CF-5E78-A191456F281E";
createNode transform -n "front_hips_R_CTRL" -p "front_hips_R_NUL";
	rename -uid "983E3CA7-4DD7-716B-41C1-B597207C1291";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "front_hips_R_CTRLShape" -p "front_hips_R_CTRL";
	rename -uid "B5C90390-4B7F-1CE3-709F-CA85CA4CF188";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-9.6397952296871239 -5.5546601144956638 5.5546601144956655
		-9.6397952296871239 -7.8554756682926525 1.4430274699431769e-15
		-9.6397952296871239 -5.5546601144956647 -5.5546601144956638
		-9.6397952296871239 -2.907876806125725e-15 -7.8554756682926525
		-9.6397952296871239 5.5546601144956638 -5.5546601144956655
		-9.6397952296871239 7.8554756682926525 -1.7489066835941389e-15
		-9.6397952296871239 5.5546601144956647 5.5546601144956638
		-9.6397952296871239 4.9463750957330784e-16 7.8554756682926525
		-9.6397952296871239 -5.5546601144956638 5.5546601144956655
		-9.6397952296871239 -7.8554756682926525 1.4430274699431769e-15
		-9.6397952296871239 -5.5546601144956647 -5.5546601144956638
		;
createNode transform -n "front_ankle_R_NUL" -p "front_ctrl_NUL";
	rename -uid "62F48808-46A0-2625-7B51-96B51F4E0764";
createNode transform -n "front_ankle_R_CTRL" -p "front_ankle_R_NUL";
	rename -uid "9C6E9695-48B5-EFFE-AD6F-C4AEDA16B3B3";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "front_ankle_R_CTRLShape" -p "front_ankle_R_CTRL";
	rename -uid "4B9993E0-438D-4AFC-EA7D-1FB815730050";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.6600962090576168 1.8556294675812257 1.8556294675812246
		-2.6600962090576168 2.6242563597925326 -1.6068935755810044e-16
		-2.6600962090576168 1.8556294675812246 -1.855629467581225
		-2.6600962090576168 -1.894428926305446e-17 -2.6242563597925326
		-2.6600962090576168 -1.8556294675812257 -1.8556294675812246
		-2.6600962090576159 -2.6242563597925335 5.8505160744677074e-17
		-2.6600962090576168 -1.8556294675812253 1.855629467581225
		-2.6600962090576168 1.2990231465058205e-16 2.6242563597925326
		-2.6600962090576168 1.8556294675812257 1.8556294675812246
		-2.6600962090576168 2.6242563597925326 -1.6068935755810044e-16
		-2.6600962090576168 1.8556294675812246 -1.855629467581225
		;
createNode transform -n "front_ball_R_NUL" -p "front_ctrl_NUL";
	rename -uid "12E118A4-442B-5A1D-FDBB-65A90ABFB18A";
createNode transform -n "front_ball_R_CTRL" -p "front_ball_R_NUL";
	rename -uid "CC9B91A0-4C6A-5C78-F070-7986CBDDE344";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "front_ball_R_CTRLShape" -p "front_ball_R_CTRL";
	rename -uid "7B62ACE3-4AE5-3444-CE85-1081A67C1707";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.6600962090576168 1.1509021980223293 1.1509021980223286
		-2.6600962090576168 1.6276214974081813 -9.9663072851217493e-17
		-2.6600962090576168 1.1509021980223282 -1.1509021980223291
		-2.6600962090576168 -9.6077323310838904e-17 -1.6276214974081813
		-2.6600962090576168 -1.1509021980223293 -1.1509021980223286
		-2.6600962090576159 -1.6276214974081826 3.6286187125744828e-17
		-2.6600962090576168 -1.1509021980223286 1.1509021980223291
		-2.6600962090576168 -3.7593866725189279e-18 1.6276214974081813
		-2.6600962090576168 1.1509021980223293 1.1509021980223286
		-2.6600962090576168 1.6276214974081813 -9.9663072851217493e-17
		-2.6600962090576168 1.1509021980223282 -1.1509021980223291
		;
createNode transform -n "front_toe_R_NUL" -p "front_ctrl_NUL";
	rename -uid "AA4F872F-4709-59EA-899B-1CB822064286";
createNode transform -n "front_toe_R_CTRL" -p "front_toe_R_NUL";
	rename -uid "01B77EED-4AC1-356F-E29F-CA92A254E6C0";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "front_toe_R_CTRLShape" -p "front_toe_R_CTRL";
	rename -uid "9D1242B3-459D-A6B3-B110-3F98D7C8D21E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.554544517309449 -3.0427713962915397 -1.9361229579626735
		2.8081850864313953e-15 -3.0427732929398728 -1.9361210145802841
		-2.5545445173094317 -3.0427713962915397 -1.9361229579626742
		-2.6473364442895444 -2.4900485013387108 -2.5024651323122691
		-2.5545445173094317 -1.9373256063858786 -3.0688073066618666
		2.0982825435364605e-15 -1.9373237097375462 -3.068809250044255
		2.554544517309449 -1.9373256063858793 -3.0688073066618649
		2.6473364442895542 -2.4900485013387104 -2.5024651323122673
		2.554544517309449 -3.0427713962915397 -1.9361229579626735
		2.8081850864313953e-15 -3.0427732929398728 -1.9361210145802841
		-2.5545445173094317 -3.0427713962915397 -1.9361229579626742
		;
createNode transform -n "front_footFront_R_NUL" -p "front_ctrl_NUL";
	rename -uid "2076AADE-461C-4A49-1D91-ABACE897D9E7";
createNode transform -n "front_footFront_R_CTRL" -p "front_footFront_R_NUL";
	rename -uid "51A206F5-422B-8D82-5717-3EB85C33E54E";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "front_footFront_R_CTRLShape" -p "front_footFront_R_CTRL";
	rename -uid "7D7A38F3-4814-B965-12CE-F7A2F7789B4E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.1717291236667231 3.6450229052567185e-16 -1.4171120837579607
		3.4599299774429537e-15 1.8071681028971783e-17 -2.7291953514369078
		-3.1717291236667147 3.6411431004464453e-16 -1.4171120837579607
		-3.3394188662818021 1.2735212830768362e-16 -1.3591747561890267e-15
		-3.1717291236667147 -1.0924934665209951e-16 1.4171120837579607
		2.8397179670702375e-15 -2.0189335746248449e-16 1.2140123612173479
		3.1717291236667231 -1.0886136617107125e-16 1.4171120837579607
		3.3394188662818092 -1.6955471138206512e-18 -6.2858090988222818e-16
		3.1717291236667231 3.6450229052567185e-16 -1.4171120837579607
		3.4599299774429537e-15 1.8071681028971783e-17 -2.7291953514369078
		-3.1717291236667147 3.6411431004464453e-16 -1.4171120837579607
		;
createNode transform -n "front_footBack_R_NUL" -p "front_ctrl_NUL";
	rename -uid "545EB86F-4EC4-0F19-1693-A5A699AEC552";
createNode transform -n "front_footBack_R_CTRL" -p "front_footBack_R_NUL";
	rename -uid "90E3F37E-491E-72F6-FD3D-0ABB9D0F6CF8";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "front_footBack_R_CTRLShape" -p "front_footBack_R_CTRL";
	rename -uid "B09AAC40-43F4-CE98-3E75-00BDBBD889A1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.1717291236667231 3.6346863214370443e-16 -1.4171120837579632
		3.5378018661751433e-15 2.0276071920047328e-16 -1.2140123612173479
		-3.1717291236667147 3.6312302525974105e-16 -1.4171120837579598
		-3.3394188662818021 1.2636961938207696e-16 6.1823771657361597e-16
		-3.1717291236667147 -1.1024063143700167e-16 1.4171120837579632
		2.761846078338048e-15 9.135541775228719e-19 2.8771390155294454
		3.1717291236667231 -1.098950245530395e-16 1.4171120837579598
		3.3394188662818092 -2.7379813550844511e-18 -2.6059933826448745e-15
		3.1717291236667231 3.6346863214370443e-16 -1.4171120837579632
		3.5378018661751433e-15 2.0276071920047328e-16 -1.2140123612173479
		-3.1717291236667147 3.6312302525974105e-16 -1.4171120837579598
		;
createNode transform -n "front_foot_R_NUL" -p "front_ctrl_NUL";
	rename -uid "919E9511-4235-64BC-F17B-EA8348437DC4";
createNode transform -n "front_foot_R_CTRL" -p "front_foot_R_NUL";
	rename -uid "2620D215-4321-86CA-C52E-499E7EC77E4E";
	addAttr -ci true -sn "Leg_Attr" -ln "Leg_Attr" -min 0 -max 0 -en "------" -at "enum";
	addAttr -ci true -sn "Follow" -ln "Follow" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "knee_Y_value" -ln "knee_Y_value" -at "double";
	addAttr -ci true -sn "ankle_Y_value" -ln "ankle_Y_value" -at "double";
	addAttr -ci true -sn "ankle_dis_UTL" -ln "ankle_dis_UTL" -at "double";
	addAttr -ci true -sn "knee_dis_UTL" -ln "knee_dis_UTL" -at "double";
	addAttr -ci true -sn "bend_Max" -ln "bend_Max" -min 0 -max 180 -at "double";
	addAttr -ci true -sn "Twist_Hip_Y_Value" -ln "Twist_Hip_Y_Value" -at "double";
	addAttr -ci true -sn "Twist_Hip_Dis_UTL" -ln "Twist_Hip_Dis_UTL" -at "double";
	addAttr -ci true -sn "Bend_Min" -ln "Bend_Min" -max 0 -at "double";
	addAttr -ci true -sn "Bend_Pos_Neg" -ln "Bend_Pos_Neg" -min -1 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on -cb on ".Leg_Attr";
	setAttr -k on ".Follow" yes;
	setAttr -k on ".bend_Max" 30;
	setAttr -k on ".Bend_Min" -20;
	setAttr -k on ".Bend_Pos_Neg" -1;
createNode nurbsCurve -n "front_foot_R_CTRLShape" -p "front_foot_R_CTRL";
	rename -uid "CC96D611-4C47-9090-9787-E4BDD3E84FA1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.8191701673427936 4.4408920985006262e-16 4.5484074468737923
		4.1731895924399021e-16 4.4408920985006262e-16 4.5484094241081454
		-4.8191701673427936 4.4408920985006262e-16 4.5484074468737923
		-6.8153358100399926 0 -1.5945490547611767
		-4.8191701673427936 -8.8817841970012523e-16 -8.5056015448846374
		-6.826968493132958e-16 -1.3322676295501878e-15 -11.368253216566128
		4.8191701673427936 -8.8817841970012523e-16 -8.5056015448846356
		6.8153358100399926 0 -1.5945490547611789
		4.8191701673427936 4.4408920985006262e-16 4.5484074468737923
		4.1731895924399021e-16 4.4408920985006262e-16 4.5484094241081454
		-4.8191701673427936 4.4408920985006262e-16 4.5484074468737923
		;
createNode transform -n "front_knee_R_NUL" -p "front_ctrl_NUL";
	rename -uid "50D88C98-413E-B2AB-31A0-8E9187065346";
createNode transform -n "front_knee_R_CTRL" -p "front_knee_R_NUL";
	rename -uid "02F44DB9-4587-BDE9-5D60-1281B6532331";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "front_knee_R_CTRLShape" -p "front_knee_R_CTRL";
	rename -uid "00A78BB1-4141-4F40-687A-709D374178FA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		-2.3647283129367236 2.3647283129367196 4.7446046282506247
		2.3647283129367236 2.3647283129367196 4.7446046282506247
		2.3647283129367236 -2.3647283129367236 4.7446046282506229
		-2.3647283129367236 -2.3647283129367236 4.7446046282506229
		-2.3647283129367236 2.3647283129367196 4.7446046282506247
		-2.3647281934606007e-10 8.0316831411756861e-17 0.015148002377173448
		2.3647283129367236 -2.3647283129367236 4.7446046282506229
		2.3647283129367236 2.3647283129367196 4.7446046282506247
		2.3647281934606007e-10 8.0316831411756861e-17 0.015148002377173448
		-2.3647283129367236 -2.3647283129367236 4.7446046282506229
		;
createNode transform -n "front_poleVector_L_NUL" -p "front_ctrl_NUL";
	rename -uid "0E44DA78-4344-AA82-95F7-A1B786ED205C";
createNode transform -n "front_poleVector_L_CRV" -p "front_poleVector_L_NUL";
	rename -uid "9785FDD9-4076-1A1B-9883-ADAD51F41AB0";
	setAttr -l on ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
createNode nurbsCurve -n "front_poleVector_L_CRVShape" -p "front_poleVector_L_CRV";
	rename -uid "EA839CB6-4704-356F-227A-23A807BF6E1C";
	setAttr -l on -k off ".v";
	setAttr ".tw" yes;
createNode nurbsCurve -n "front_poleVector_L_CRVShape1Orig" -p "front_poleVector_L_CRV";
	rename -uid "A0805C9C-4A41-60FB-39BC-85AE42D05A58";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 12
		0 0 -12
		

		"gtag" 2
		"cluster1" 1 "cv[0]"
		"cluster2" 1 "cv[1]";
createNode transform -n "front_poleVector_R_NUL" -p "front_ctrl_NUL";
	rename -uid "1E51AF2F-4305-6A9C-03CC-339B8E34D130";
createNode transform -n "front_poleVector_R_CRV" -p "front_poleVector_R_NUL";
	rename -uid "0BE52710-4A20-9B4D-38AA-A1B1DCB996B2";
	setAttr -l on ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
createNode nurbsCurve -n "front_poleVector_R_CRVShape" -p "front_poleVector_R_CRV";
	rename -uid "18A91B3A-484F-4490-F751-4AAE90814378";
	setAttr -l on -k off ".v";
	setAttr ".tw" yes;
createNode nurbsCurve -n "front_poleVector_R_CRVShape1Orig" -p "front_poleVector_R_CRV";
	rename -uid "754FE5DC-4027-D557-D346-D192172928FC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 12
		0 0 -12
		

		"gtag" 2
		"cluster1" 1 "cv[0]"
		"cluster2" 1 "cv[1]";
createNode nurbsCurve -n "front_poleVector_R_CRVShape2Orig" -p "front_poleVector_R_CRV";
	rename -uid "5796CCAC-487E-9306-D7C8-88B43DBEDCFB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster3";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster4";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 12
		0 0 -12
		

		"gtag" 2
		"cluster3" 1 "cv[0]"
		"cluster4" 1 "cv[1]";
createNode transform -n "front_bot_distance_L_LOC" -p "front_ctrl_NUL";
	rename -uid "94B93919-4A85-EC20-8F19-F2BBF4011968";
	setAttr ".t" -type "double3" 9.3738178626969013 9.622781853276031 34.007200976956518 ;
	setAttr ".r" -type "double3" 159.19320898728881 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "front_bot_distance_L_LOCShape" -p "front_bot_distance_L_LOC";
	rename -uid "9C95F04B-44DC-4597-576A-B4AA9BFC3EE6";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 2.7977620220553945e-14 -2.1316282072803006e-14 ;
createNode transform -n "front_bot_distance_R_LOC" -p "front_ctrl_NUL";
	rename -uid "8AEB5D06-4CBE-4893-5E0C-06BB411B9EBA";
	setAttr ".t" -type "double3" -9.3738178626969031 9.622781853276031 34.007200976956469 ;
	setAttr ".r" -type "double3" -20.806791012711148 0 0 ;
createNode locator -n "front_bot_distance_R_LOCShape" -p "front_bot_distance_R_LOC";
	rename -uid "90726B0D-4955-E9C0-A96B-F0B9BB4A573B";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 -4.8849813083506888e-15 0 ;
createNode transform -n "front_top_distance_L_LOC" -p "front_ctrl_NUL";
	rename -uid "39D7452A-45D3-2F85-5B4F-4AA837741841";
	setAttr ".t" -type "double3" 9.373817862696896 58.868833795625903 36.071429505332915 ;
	setAttr ".r" -type "double3" -160.91399079684854 0 0 ;
createNode locator -n "front_top_distance_L_LOCShape" -p "front_top_distance_L_LOC";
	rename -uid "51E42D5F-4160-3F4C-F87D-0F8B34632423";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -7.815970093361102e-14 0 8.8817841970012523e-15 ;
createNode transform -n "front_top_distance_R_LOC" -p "front_ctrl_NUL";
	rename -uid "4BC6BDEF-4857-2889-F3E2-498B5FBD5B06";
	setAttr ".t" -type "double3" -9.373817862696896 58.868833795625903 36.071429505332915 ;
	setAttr ".r" -type "double3" 19.086009203151512 0 0 ;
createNode locator -n "front_top_distance_R_LOCShape" -p "front_top_distance_R_LOC";
	rename -uid "0D3AAB77-4EF0-1D1D-13BF-C38E1F359AF4";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 0 -1.5987211554602254e-14 ;
createNode transform -n "front_clavicle_L_NUL" -p "front_ctrl_NUL";
	rename -uid "46AB58D3-4D6C-A84A-9443-5582E2548568";
createNode transform -n "front_clavicle_L_CTRL" -p "front_clavicle_L_NUL";
	rename -uid "B7EB8C65-464B-2498-06B6-9CA44F91F64B";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
createNode nurbsCurve -n "front_clavicle_L_CTRLShape" -p "front_clavicle_L_CTRL";
	rename -uid "07AB95E1-4094-A857-1FEE-39B2B91D91DA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.9272496676910436 20.689008392184519 -6.4181902051523192
		7.9272229891498647 20.689008392184519 -5.5578706782229695e-16
		7.9272508818641754 20.689008392184519 6.4181902051523201
		8.969804732192955 20.689008392184519 9.0766916340165587
		15.283505509156001 20.689008392184519 6.4181902051523201
		18.072777010850139 20.689008392184519 9.0921840881309398e-16
		15.40492282536848 20.689008392184519 -6.4181902051523192
		8.969804732192955 20.689008392184519 -9.0766916340165587
		7.9272496676910436 20.689008392184519 -6.4181902051523192
		7.9272229891498647 20.689008392184519 -5.5578706782229695e-16
		7.9272508818641754 20.689008392184519 6.4181902051523201
		;
createNode joint -n "front_clavicle_L_JNT" -p "front_clavicle_L_CTRL";
	rename -uid "C834134F-4BBF-0BA6-EAEB-889C46DA2DB2";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode transform -n "front_clavicle_R_NUL" -p "front_ctrl_NUL";
	rename -uid "758B933D-43A5-1970-EF79-08881A9A5574";
createNode transform -n "front_clavicle_R_CTRL" -p "front_clavicle_R_NUL";
	rename -uid "B4CE4D20-4A99-1C2D-BF23-A081D1D4A2E4";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "front_clavicle_R_CTRLShape" -p "front_clavicle_R_CTRL";
	rename -uid "D00A1457-4D4C-55CD-FA23-D49E15651802";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-15.269315873411117 -20.689008392184405 6.418190205152321
		-18.058587375105262 -20.689008392184405 1.3131030189241904e-15
		-15.390733189623599 -20.689008392184405 -6.418190205152321
		-8.9556150964480743 -20.689008392184405 -9.0766916340165587
		-7.9414393034359207 -20.689008392184405 -6.418190205152321
		-7.9414126248947383 -20.689008392184405 -1.5190245771120066e-16
		-7.9414405176090526 -20.689008392184405 6.418190205152321
		-8.9556150964480743 -20.689008392184405 9.0766916340165587
		-15.269315873411117 -20.689008392184405 6.418190205152321
		-18.058587375105262 -20.689008392184405 1.3131030189241904e-15
		-15.390733189623599 -20.689008392184405 -6.418190205152321
		;
createNode joint -n "front_clavicle_R_JNT" -p "front_clavicle_R_CTRL";
	rename -uid "0587D297-4329-1969-4BB9-DC8C15C573DA";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode transform -n "front_con_NUL" -p "template_CTRL";
	rename -uid "24C193B6-4D2C-3DC6-EA0A-CB9997145D74";
createNode transform -n "front_toePoint_L_NUL" -p "front_con_NUL";
	rename -uid "307BAB44-44F8-26D1-7ED6-DC829B7B218A";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".r" -type "double3" 128.63381106410944 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode joint -n "front_toe_L_JNT" -p "front_toePoint_L_NUL";
	rename -uid "DD8567C4-429F-0577-CD0F-AC818A03DAC7";
	setAttr ".t" -type "double3" 2.1643548554189112e-15 3.5527136788005009e-15 -2.3317239633836789e-15 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr ".r" -type "double3" 16.887920726575935 0 0 ;
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -16.887920726575935 0 0 ;
createNode joint -n "front_toeMid_L_JNT" -p "front_toe_L_JNT";
	rename -uid "741A33A9-419C-E44C-E709-1C9C84060719";
	setAttr ".t" -type "double3" 1.0658141036401503e-14 4.0207141596733251 -1.4921397450962104e-13 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -38.30573259179392 0 0 ;
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.6;
createNode joint -n "front_toeTip_L_JNT" -p "front_toeMid_L_JNT";
	rename -uid "AD4945E0-4F8D-4F53-48D0-89B1DB70A337";
	setAttr ".t" -type "double3" -1.1901590823981678e-13 2.9867496173151196 1.4618861676751749e-13 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.6;
createNode pointConstraint -n "front_toe_L_NUL_pointConstraint1" -p "front_toePoint_L_NUL";
	rename -uid "D93D61AF-462A-8742-5D75-FE8FD7785FCE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "front_fingerExtra_L_PMJW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 9.3738178626969049 2.5192875186196542 36.70652882412594 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "front_toe_L_NUL_orientConstraint1" -p "front_toePoint_L_NUL";
	rename -uid "62B138CE-45DA-9E23-0E6D-68813C958653";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "front_fingerExtra_L_PMJW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 128.63381106410944 0 0 ;
	setAttr ".rsrr" -type "double3" 128.63381106410944 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "front_footFront_L_LOC" -p "front_toePoint_L_NUL";
	rename -uid "078DF0A8-482F-ECE6-38A1-35A830EC2C9A";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-15 6.9914635416385735 -2.3466391460199141 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -128.30573259179394 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "front_footFront_L_LOCShape" -p "front_footFront_L_LOC";
	rename -uid "EFD37C4B-48FF-A435-36F6-6E84B8BCBE9C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2.88 2.88 2.88 ;
createNode transform -n "front_footBack_L_LOC" -p "front_toePoint_L_NUL";
	rename -uid "AF2A577B-4D3A-8333-953A-E2988A909445";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-15 1.4984630489336368 1.9923636872522046 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -128.30573259179394 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "front_footBack_L_LOCShape" -p "front_footBack_L_LOC";
	rename -uid "968D1BF2-44A4-9DD0-212A-0F9927BEF683";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2.88 2.88 2.88 ;
createNode transform -n "front_toePoint_R_NUL" -p "front_con_NUL";
	rename -uid "B679F413-4B94-D0EB-F67F-6B86C45C7960";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".r" -type "double3" -51.366188935890534 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode joint -n "front_toe_R_JNT" -p "front_toePoint_R_NUL";
	rename -uid "6F97FE78-4AE0-CF50-ECB9-DF8B5D731B68";
	setAttr ".t" -type "double3" -2.1643548554189112e-15 -3.5527136788005009e-15 2.3317239633836789e-15 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -16.887920726575935 0 0 ;
createNode joint -n "front_toeMid_R_JNT" -p "front_toe_R_JNT";
	rename -uid "4A2E9B62-4ED8-806B-9F61-EEA4B1A61A54";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 -4.0207141596733251 1.7408297026122455e-13 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.6;
createNode joint -n "front_toeTip_R_JNT" -p "front_toeMid_R_JNT";
	rename -uid "22CFFD42-44FE-B4A8-2058-65A3CCB4F58C";
	setAttr ".t" -type "double3" 6.3948846218409017e-14 -2.9867496173151196 -1.4721557306529576e-13 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.6;
createNode pointConstraint -n "front_toe_R_NUL_pointConstraint1" -p "front_toePoint_R_NUL";
	rename -uid "F67E4F61-424B-86DD-F10D-8D96B77CD9E2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "front_fingerExtra_R_PMJW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -9.3738178626969049 2.5192875186196471 36.70652882412589 ;
	setAttr -k on ".w0";
createNode transform -n "front_footFront_R_LOC" -p "front_toePoint_R_NUL";
	rename -uid "1C8C6FF1-481D-6503-2E4A-8EAE030F9557";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-15 -6.9914635416385735 2.3466391460199141 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -128.30573259179394 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "front_footFront_R_LOCShape" -p "front_footFront_R_LOC";
	rename -uid "D28914F8-4B5A-6FBF-5FB0-E9A41C456F62";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2.88 2.88 2.88 ;
createNode transform -n "front_footBack_R_LOC" -p "front_toePoint_R_NUL";
	rename -uid "48E6C5AD-488C-C8D8-4173-46AC7243CF8F";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-15 -1.4984630489336368 -1.9923636872522046 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -128.30573259179394 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "front_footBack_R_LOCShape" -p "front_footBack_R_LOC";
	rename -uid "2659AD93-4AEB-8830-EB05-CABD6E423717";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2.88 2.88 2.88 ;
createNode orientConstraint -n "front_toePoint_R_NUL_orientConstraint1" -p "front_toePoint_R_NUL";
	rename -uid "40C67CCF-4685-FCDD-EBEB-1792F75CA20B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "front_toeExtra_R_JNTW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -51.366188935890513 0 0 ;
	setAttr ".rsrr" -type "double3" -51.36618893589052 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "front_knee_con_L_NUL" -p "front_con_NUL";
	rename -uid "ACB31020-4ABE-1718-D750-B8A822DD3BF9";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "front_knee_L_LOC" -p "front_knee_con_L_NUL";
	rename -uid "48B07051-4E39-A201-FE7E-A0B82C965F69";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -8.9751828521647354 1.4832192343677781 ;
	setAttr -l on ".tx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "front_knee_L_LOCShape" -p "front_knee_L_LOC";
	rename -uid "912E7FDB-430D-9DDB-F22E-F28DD4D39251";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 5 5 5 ;
createNode parentConstraint -n "front_knee_con_L_NUL_parentConstraint1" -p "front_knee_con_L_NUL";
	rename -uid "CC340D4B-433E-9309-B0E8-B8BCA516D6BD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "front_hip_L_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 33.063699184757958 
		24.327579143857633 ;
	setAttr ".tg[0].tor" -type "double3" 160.91399079684854 0 0 ;
	setAttr ".rst" -type "double3" 9.3738178626968942 35.577491983478666 2.2697622776569517 ;
	setAttr -k on ".w0";
createNode transform -n "front_knee_con_R_NUL" -p "front_con_NUL";
	rename -uid "7F7D630B-47A3-259C-0AA0-EDB2DEA1AF46";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "front_knee_R_LOC" -p "front_knee_con_R_NUL";
	rename -uid "5466DD68-4FE1-DD7F-2299-3D805E602700";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 1.7763568394002505e-15 8.9751828521647354 -1.4832192343677781 ;
	setAttr -l on ".tx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "front_knee_R_LOCShape" -p "front_knee_R_LOC";
	rename -uid "19B9E495-43E9-ECEC-206F-50A95D0E9962";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 5 5 5 ;
createNode parentConstraint -n "front_knee_con_R_NUL_parentConstraint1" -p "front_knee_con_R_NUL";
	rename -uid "6DA24C04-4A1F-3AD0-AE59-C1A105F8C307";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "front_hip_R_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-15 -33.063699184757937 
		-24.32757914385763 ;
	setAttr ".tg[0].tor" -type "double3" 160.91399079684848 0 0 ;
	setAttr ".lr" -type "double3" 180 0 0 ;
	setAttr ".rst" -type "double3" -9.3738178626968924 35.577491983478708 2.2697622776569517 ;
	setAttr ".rsrr" -type "double3" 180 0 0 ;
	setAttr -k on ".w0";
createNode joint -n "front_hip_follow_L_JNT" -p "front_con_NUL";
	rename -uid "845AC5BA-4CD5-11ED-A900-A9B1406EFDB7";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -160.91399079684854 0 0 ;
	setAttr ".radi" 0.5;
createNode joint -n "front_foot_follow_L_JNT" -p "front_hip_follow_L_JNT";
	rename -uid "87C75C26-439F-D2AE-8FFA-B6BBA2B0DB45";
	setAttr ".t" -type "double3" 6.2172489379008766e-14 56.353125173047871 -2.8421709430404007e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".radi" 0.5;
createNode pointConstraint -n "front_foot_follow_L_JNT_pointConstraint1" -p "front_foot_follow_L_JNT";
	rename -uid "DE1AEAB5-4732-3FFC-7E11-DAB00BD69704";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "front_toe_L_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.2434497875801753e-14 56.353125173047857 -2.1316282072803006e-14 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "front_hip_follow_L_JNT_aimConstraint1" -p "front_hip_follow_L_JNT";
	rename -uid "D8DAE5C1-470B-BC14-F9D8-C194FAF4CA3F";
	addAttr -dcb 0 -ci true -sn "w0" -ln "front_toe_L_JNTW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" -19.73174589959013 -1.5705073117750919e-15 -9.0303554145662499e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "front_hip_follow_L_JNT_pointConstraint1" -p "front_hip_follow_L_JNT";
	rename -uid "DC5F0759-4363-D848-295A-01A9A112F7F4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "front_hip_L_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "front_hip_follow_R_JNT" -p "front_con_NUL";
	rename -uid "E03C34EB-4827-55E8-725B-B4B582BE5436";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 19.086009203151512 0 0 ;
	setAttr ".radi" 0.5;
createNode joint -n "front_foot_follow_R_JNT" -p "front_hip_follow_R_JNT";
	rename -uid "11135FDA-465E-CA1E-47FA-CE9E28ABDD30";
	setAttr ".t" -type "double3" -8.8817841970012523e-15 -56.353125173047914 -2.1316282072803006e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".radi" 0.5;
createNode pointConstraint -n "front_foot_follow_R_JNT_pointConstraint1" -p "front_foot_follow_R_JNT";
	rename -uid "7F428334-422D-96A8-462B-649064489B5A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "front_toe_R_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1.2434497875801753e-14 -56.353125173047864 -2.8421709430404007e-14 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "front_hip_follow_R_JNT_aimConstraint1" -p "front_hip_follow_R_JNT";
	rename -uid "F1974D04-41C6-B506-1FCA-4DB8CFE70B93";
	addAttr -dcb 0 -ci true -sn "w0" -ln "front_toe_R_JNTW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" -19.73174589959013 -1.5705073117750931e-15 -9.0303554145662578e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "front_hip_follow_R_JNT_pointConstraint1" -p "front_hip_follow_R_JNT";
	rename -uid "8FE75700-444C-9C42-6B3C-4B9EF135E7A3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "front_hip_R_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "spin_ctrl_NUL" -p "template_CTRL";
	rename -uid "24E03BCB-404F-30CC-6E37-9F9EEC8BEDEF";
	setAttr ".v" no;
createNode transform -n "body_NUL" -p "spin_ctrl_NUL";
	rename -uid "D95EC395-460D-1C36-0D13-0FBFC9EA5F21";
createNode transform -n "body_CTRL" -p "body_NUL";
	rename -uid "D3182B8A-4012-8EE5-54D3-0DABA8B1694C";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".ro" 1;
createNode nurbsCurve -n "body_CTRLShape" -p "body_CTRL";
	rename -uid "6007A0F6-4379-1AF0-7C12-3095B819444D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-26.166818937266576 -5.2392920025894671 1.6776783180899932e-16
		-26.116269474676319 -5.3015770090591108 1.6776783180899932e-16
		-26.116269474676319 -13.437610672521535 1.8239596106532461e-15
		-39.466148385499338 -0.0019586634855014505 -3.8432407689215053e-16
		-26.116269474676344 13.433693345550527 -1.1203813295143027e-15
		-26.116269474676319 5.2976596820881072 -5.6831740323288748e-16
		-26.166745099275346 5.2357119572035433 -5.6831740323288748e-16
		-24.637159736126129 10.270345952909391 -1.6253476951472461e-17
		-22.181454755858141 14.918903333588064 1.0878743756113568e-15
		-18.874582066721718 18.997724354275107 -1.8564665645561886e-15
		-14.821516282231634 22.325502457639409 -1.1203813295143027e-15
		-10.202626512911278 24.796997952075138 -1.1203813295143027e-15
		-5.2004776537606459 26.337556935050298 3.5178914056947036e-16
		-5.2000931795418461 26.358483443465992 -7.745148444891289e-15
		-13.346403526968436 26.358483443465992 -7.745148444891289e-15
		0.0034753838545213147 39.794135452502111 -1.8564665645561886e-15
		13.353354294677516 26.358483443465992 -7.745148444891289e-15
		5.2070439472509236 26.358483443465992 -7.745148444891289e-15
		5.2074284214697091 26.337556935050298 3.5178914056947036e-16
		10.209577280620364 24.796997952075138 3.5178914056947036e-16
		14.828467049940711 22.32550245763942 1.8239596106532461e-15
		18.881532834430818 18.997724354275139 1.8239596106532461e-15
		22.188405523567244 14.918903333588069 -3.8429609447241581e-16
		24.644110503835222 10.270345952909443 -1.6253476951472461e-17
		26.173695866984446 5.2357119572035948 -1.1203813295143027e-15
		26.180527446259649 5.2976596820881072 -5.6831740323288748e-16
		26.180527446259653 13.433693345550527 -1.1203813295143027e-15
		39.53040635708259 -0.0019586634855014505 -3.8432407689215053e-16
		26.180527446259635 -13.437610672521535 1.8239596106532461e-15
		26.180527446259635 -5.3015770090591108 1.6776783180899932e-16
		26.173769704975683 -5.2392920025894032 -9.3636002075383123e-16
		24.644295064732912 -10.273958262104083 -2.5925517995980761e-15
		22.188540001167691 -14.922488578661103 -3.8429609447241581e-16
		18.881654137062952 -19.001305350073203 -2.5925517995980761e-15
		14.828885009009744 -22.329449079416904 -2.5925517995980761e-15
		10.210055198963168 -24.801028724388537 -1.1203813295143027e-15
		5.2075440350448376 -26.340374851134349 -1.8564665645561886e-15
		5.2070439472509085 -26.394698074095505 -4.8008075047237327e-15
		13.353354294677471 -26.394698074095505 -4.8008075047237327e-15
		0.0034753838545213147 -39.8303500831314 1.0878743756113568e-15
		-13.3464035269684 -26.394698074095505 -4.8008075047237327e-15
		-5.2000931795418319 -26.394698074095505 -4.8008075047237327e-15
		-5.2005932673357176 -26.340374851134357 -1.8564665645561886e-15
		-10.203104431254044 -24.801028724388548 -1.8564665645561886e-15
		-14.821934241300625 -22.329449079416932 1.8239596106532461e-15
		-18.874703369353814 -19.001305350073231 -1.8564665645561886e-15
		-22.181589233458549 -14.922488578661165 -1.1203813295143027e-15
		-24.637344297023795 -10.273958262104141 -7.5233871199335975e-16
		-26.166818937266576 -5.2392920025894671 1.6776783180899932e-16
		;
createNode transform -n "spine_01_NUL" -p "body_CTRL";
	rename -uid "EDD4B915-4255-FBE1-F24F-5FA3168D3770";
createNode transform -n "spine_01_CTRL" -p "spine_01_NUL";
	rename -uid "8E4699B4-43FA-5CB6-21D8-4BA89406E78E";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".ro" 1;
createNode nurbsCurve -n "spine_01_CTRLShape" -p "spine_01_CTRL";
	rename -uid "0A336876-4F73-A85B-84B2-26A6FB577649";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		19.590290622280612 19.590290622280616 -3.5527136788005009e-15
		1.696433080777728e-15 27.704854688859694 0
		-19.590290622280612 19.590290622280609 -3.5527136788005009e-15
		-27.704854688859704 1.4362245593812075e-15 0
		-19.590290622280612 -19.590290622280612 0
		-2.7752142424008063e-15 -27.704854688859708 0
		19.590290622280612 -19.590290622280609 0
		27.704854688859704 -3.7781012519498971e-15 0
		19.590290622280612 19.590290622280616 -3.5527136788005009e-15
		1.696433080777728e-15 27.704854688859694 0
		-19.590290622280612 19.590290622280609 -3.5527136788005009e-15
		;
createNode transform -n "spine_02_NUL" -p "body_CTRL";
	rename -uid "DAF81B98-44A4-305D-5823-72849060520B";
createNode transform -n "spine_02_CTRL" -p "spine_02_NUL";
	rename -uid "DE7021D7-438A-1F4A-9483-4E9E612B8C82";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".ro" 1;
createNode nurbsCurve -n "spine_02_CTRLShape" -p "spine_02_CTRL";
	rename -uid "62BA53FA-4F8D-74A6-8B36-7D954C0EB3CE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		19.590290622280612 19.590290622280616 0
		1.696433080777728e-15 27.704854688859694 0
		-19.590290622280612 19.590290622280609 0
		-27.704854688859704 1.4362245593812075e-15 0
		-19.590290622280612 -19.590290622280612 0
		-2.7752142424008063e-15 -27.704854688859708 0
		19.590290622280612 -19.590290622280609 0
		27.704854688859704 -3.7781012519498971e-15 0
		19.590290622280612 19.590290622280616 0
		1.696433080777728e-15 27.704854688859694 0
		-19.590290622280612 19.590290622280609 0
		;
createNode transform -n "spine_03_NUL" -p "body_CTRL";
	rename -uid "E5DE061D-41E4-1C10-CA54-72A543DA2ABF";
createNode transform -n "spine_03_CTRL" -p "spine_03_NUL";
	rename -uid "4642384D-41C7-212C-1C74-F1B2286CDBB9";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".ro" 1;
createNode nurbsCurve -n "spine_03_CTRLShape" -p "spine_03_CTRL";
	rename -uid "A93A54F2-46F6-E5CE-E536-66B539E2F996";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		19.590290622280612 19.590290622280616 0
		1.696433080777728e-15 27.704854688859694 0
		-19.590290622280612 19.590290622280609 0
		-27.704854688859704 1.4362245593812075e-15 0
		-19.590290622280612 -19.590290622280612 0
		-2.7752142424008063e-15 -27.704854688859708 0
		19.590290622280612 -19.590290622280609 0
		27.704854688859704 -3.7781012519498971e-15 0
		19.590290622280612 19.590290622280616 0
		1.696433080777728e-15 27.704854688859694 0
		-19.590290622280612 19.590290622280609 0
		;
createNode joint -n "back_hip_L_JNT" -p "template_CTRL";
	rename -uid "C093BBF3-46AB-2A00-CF7B-9CBD69A8EB69";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 13.716629385103481 58.816699981689453 -40.136348724365234 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 142.71148573563585 0 0 ;
	setAttr ".radi" 1.6;
createNode joint -n "back_knee_L_JNT" -p "back_hip_L_JNT";
	rename -uid "91D7CEBD-4F7F-021C-2FF1-5C8FD061ADAD";
	setAttr ".t" -type "double3" 6.2172489379008766e-14 22.328317553910281 -5.3290705182007514e-15 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 65.958596052032519 0 0 ;
	setAttr ".radi" 1.6;
createNode joint -n "back_ankle_L_JNT" -p "back_knee_L_JNT";
	rename -uid "282BA2E5-4A4D-8E12-F7D2-C6AE45128D6B";
	setAttr ".t" -type "double3" -1.3677947663381929e-13 27.311028134735579 -7.1054273576010019e-14 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -51.684270665204878 0 0 ;
	setAttr ".radi" 1.6;
createNode joint -n "back_toeExtra_L_JNT" -p "back_ankle_L_JNT";
	rename -uid "1150E188-409A-7DFB-2020-E580CDE400B2";
	setAttr ".t" -type "double3" 6.3948846218409017e-14 15.811635839762193 3.5527136788005009e-15 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".rx";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -30.559397923179368 0 0 ;
	setAttr ".radi" 2.5;
createNode joint -n "back_ankle_twist_L_JNT" -p "back_ankle_L_JNT";
	rename -uid "36058709-4B75-4E80-EAA3-EAA7D9586F8D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.1884918466905674e-07 5.0936240469923177e-07 -1.0596531865303405e-06 ;
	setAttr ".r" -type "double3" 6.7402158794172431e-22 2.5444437451707585e-14 -5.2498127016238525e-21 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 1.5661336003406631e-05 0 0 ;
	setAttr ".radi" 0.2;
createNode joint -n "back_toe_twist_L_JNT" -p "back_ankle_L_JNT";
	rename -uid "3BF3BF10-4697-9D0D-80B3-3E9744B96423";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.4408920985006262e-14 3.5527136788005009e-15 2.4868995751603507e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.5661336003406628e-05 0 0 ;
	setAttr ".radi" 4;
createNode joint -n "back_knee_twist_L_JNT" -p "back_hip_L_JNT";
	rename -uid "57ED1B44-4793-1CCD-EF17-5CAC14346F82";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.6185277824406512e-14 0 -1.2434497875801753e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -179.99999732966265 0 0 ;
	setAttr ".radi" 0.2;
createNode joint -n "back_hip_twist_L_JNT" -p "back_hip_L_JNT";
	rename -uid "898A10D3-4855-B2FE-4A2A-2ABA4A0B0DFD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.1884917756362938e-07 -1.7918996775279084e-06 -1.2172935548449004e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999732966265 0 0 ;
	setAttr ".radi" 4;
createNode joint -n "back_hip_dup_L_JNT" -p "back_hip_L_JNT";
	rename -uid "86FA4341-4F53-A491-F67F-CF91EE26D690";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 5.3290705182007514e-14 0 -1.2434497875801753e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".radi" 0.2;
createNode joint -n "back_knee_dup_L_JNT" -p "back_hip_dup_L_JNT";
	rename -uid "B6093679-411F-1940-F8A7-7EB5ADDA27E0";
	setAttr ".t" -type "double3" -8.8817841970012523e-15 22.328317553910281 5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" 0 -9.4726120027304754e-28 -4.1099471535607537e-28 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 65.958596052032519 0 0 ;
	setAttr ".radi" 0.2;
createNode joint -n "back_ankle_dup_L_JNT" -p "back_knee_dup_L_JNT";
	rename -uid "9E8285C7-4CB5-A929-8B26-F2B9473D1A48";
	setAttr ".t" -type "double3" -1.3322676295501878e-13 27.311028134735579 -7.1054273576010019e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -51.684270665204878 0 0 ;
	setAttr ".radi" 0.2;
createNode joint -n "back_hip_R_JNT" -p "template_CTRL";
	rename -uid "0389ECD2-455F-B449-94AE-CBAF199E0236";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -37.288514264364174 0 0 ;
	setAttr ".radi" 1.6;
createNode joint -n "back_knee_R_JNT" -p "back_hip_R_JNT";
	rename -uid "1B7497B3-4766-F1D9-F829-33A624162D9E";
	setAttr ".t" -type "double3" 5.3290705182007514e-14 -22.328317553910281 3.1974423109204508e-14 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 -1.8446425834140561e-28 -2.1464259722598032e-28 ;
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 65.958596052032519 0 0 ;
	setAttr ".radi" 1.6;
createNode joint -n "back_ankle_R_JNT" -p "back_knee_R_JNT";
	rename -uid "C841456D-4E08-79EB-D94C-A99F05D801D9";
	setAttr ".t" -type "double3" -9.9475983006414026e-14 -27.311028134735579 -7.1054273576010019e-15 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 2.5444437451708134e-14 5.7171061805472686e-29 ;
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -51.684270665204878 0 0 ;
	setAttr ".radi" 1.6;
createNode joint -n "back_toeExtra_R_JNT" -p "back_ankle_R_JNT";
	rename -uid "C98CB628-48DE-5C15-E5E6-8D8DB336EB88";
	setAttr ".t" -type "double3" 7.2830630415410269e-14 -15.811635839762193 -3.907985046680551e-14 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".rx";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -30.559397923179368 0 0 ;
	setAttr ".radi" 2.5;
createNode joint -n "back_ankle_twist_R_JNT" -p "back_ankle_R_JNT";
	rename -uid "E48665E8-4F0A-9F4C-A311-AA8E1C50471C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.1373030225646517e-06 -1.385379707841139e-06 -1.5715594692267132e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 1.5661335984323301e-05 0 0 ;
	setAttr ".radi" 0.2;
createNode joint -n "back_toe_twist_R_JNT" -p "back_ankle_R_JNT";
	rename -uid "AB6D393E-4401-4740-38E6-2BAB67544AE5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.3290705182007514e-14 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.5661335981142743e-05 0 0 ;
	setAttr ".radi" 4;
createNode joint -n "back_knee_twist_R_JNT" -p "back_hip_R_JNT";
	rename -uid "BB517718-4D98-5F8A-6C0F-CD94242BD7B6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.6185277824406512e-14 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -179.99999732966265 0 0 ;
	setAttr ".radi" 0.2;
createNode joint -n "back_hip_twist_R_JNT" -p "back_hip_R_JNT";
	rename -uid "748449AA-4C0A-AE3C-7E69-B1A6859CDCBC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.1373030509863611e-06 -4.1585703925761663e-05 -1.6832653642495643e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999732966265 0 0 ;
	setAttr ".radi" 4;
createNode joint -n "back_hip_dup_R_JNT" -p "back_hip_R_JNT";
	rename -uid "D2458499-4AA3-15DF-570C-B68EDB8D7B2F";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 5.3290705182007514e-14 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".radi" 0.2;
createNode joint -n "back_knee_dup_R_JNT" -p "back_hip_dup_R_JNT";
	rename -uid "7CD05AB6-4146-B44F-3882-F3847FB8AB4B";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -22.328317553910281 3.1974423109204508e-14 ;
	setAttr ".r" -type "double3" 0 -3.4257647977689606e-28 -1.1752719082675205e-28 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 65.958596052032519 0 0 ;
	setAttr ".radi" 0.2;
createNode joint -n "back_ankle_dup_R_JNT" -p "back_knee_dup_R_JNT";
	rename -uid "0DD877E4-4112-81A5-26F5-D3913F793EAC";
	setAttr ".t" -type "double3" -9.2370555648813024e-14 -27.311028134735579 -7.1054273576010019e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -51.684270665204878 0 0 ;
	setAttr ".radi" 0.2;
createNode transform -n "back_ctrl_NUL" -p "template_CTRL";
	rename -uid "47FC7BDB-4A03-CB28-C740-4199DF696F61";
	setAttr ".v" no;
createNode transform -n "back_hips_L_NUL" -p "back_ctrl_NUL";
	rename -uid "C6AA8F5B-4EE1-9307-4A0F-9DBB4ED701CE";
createNode transform -n "back_hips_L_CTRL" -p "back_hips_L_NUL";
	rename -uid "98F99ECB-442D-20CD-2420-569183209E30";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
createNode nurbsCurve -n "back_hips_L_CTRLShape" -p "back_hips_L_CTRL";
	rename -uid "57D8269B-49C6-9CFD-F1B0-CABF074DDCD2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.6397952296871239 5.5546601144956647 -5.5546601144956647
		9.6397952296871239 7.8554756682926525 -4.8100915664772568e-16
		9.6397952296871239 5.5546601144956638 5.5546601144956647
		9.6397952296871239 1.9458584928302739e-15 7.8554756682926525
		9.6397952296871239 -5.5546601144956647 5.5546601144956647
		9.6397952296871239 -7.8554756682926525 7.8688837029868764e-16
		9.6397952296871239 -5.5546601144956638 -5.5546601144956647
		9.6397952296871239 4.6738080372214332e-16 -7.8554756682926525
		9.6397952296871239 5.5546601144956647 -5.5546601144956647
		9.6397952296871239 7.8554756682926525 -4.8100915664772568e-16
		9.6397952296871239 5.5546601144956638 5.5546601144956647
		;
createNode transform -n "back_ankle_L_NUL" -p "back_ctrl_NUL";
	rename -uid "958A3518-45CC-DE60-4390-2085F1241AF8";
createNode transform -n "back_ankle_L_CTRL" -p "back_ankle_L_NUL";
	rename -uid "1F4162DB-463F-343E-FC2E-728459F96E5B";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
createNode nurbsCurve -n "back_ankle_L_CTRLShape" -p "back_ankle_L_CTRL";
	rename -uid "7DD7EE1C-4061-9607-FB94-4FA3EA0BB146";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 2.6600962090576168 1.0720178426900013 
		-1.0720178426900009 2.6600962090576168 1.5160621722381453 -9.2832034326991454e-17 
		2.6600962090576168 1.0720178426900011 1.0720178426900009 2.6600962090576168 5.4583361587876036e-16 
		1.5160621722381449 2.6600962090576168 -1.0720178426900011 1.0720178426900009 2.6600962090576168 
		-1.5160621722381451 1.5186498467549182e-16 2.6600962090576168 -1.0720178426900011 
		-1.0720178426900009 2.6600962090576168 2.6049582201323935e-16 -1.5160621722381449 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "back_ball_L_NUL" -p "back_ctrl_NUL";
	rename -uid "FB42E2C8-4DF9-5159-758B-8EBD7C1EC6EE";
createNode transform -n "back_ball_L_CTRL" -p "back_ball_L_NUL";
	rename -uid "3055E531-478B-1567-97F4-028D55AB4908";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
createNode nurbsCurve -n "back_ball_L_CTRLShape" -p "back_ball_L_CTRL";
	rename -uid "FDDB28C4-4700-76A9-62CE-83AB7FE6D0FF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.6600962090576168 1.1509021980223291 -1.1509021980223288
		2.6600962090576168 1.627621497408182 -9.9663072851217629e-17
		2.6600962090576168 1.1509021980223286 1.1509021980223288
		2.6600962090576168 4.5849679118173409e-16 1.6276214974081813
		2.6600962090576168 -1.1509021980223288 1.1509021980223288
		2.6600962090576168 -1.627621497408182 1.6303995857669045e-16
		2.6600962090576168 -1.1509021980223286 -1.1509021980223288
		2.6600962090576168 1.5216243641518392e-16 -1.6276214974081813
		2.6600962090576168 1.1509021980223291 -1.1509021980223288
		2.6600962090576168 1.627621497408182 -9.9663072851217629e-17
		2.6600962090576168 1.1509021980223286 1.1509021980223288
		;
createNode transform -n "back_toe_L_NUL" -p "back_ctrl_NUL";
	rename -uid "9471BD0F-4CB2-C232-B4B2-F7BED126360B";
createNode transform -n "back_toe_L_CTRL" -p "back_toe_L_NUL";
	rename -uid "188243F1-49CF-D23E-E6EF-73A8BA200CB7";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
createNode nurbsCurve -n "back_toe_L_CTRLShape" -p "back_toe_L_CTRL";
	rename -uid "4ED9092A-4148-5F1B-0EE8-6CAD57C16658";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.554544517309449 3.0427713962915393 1.9361229579626738
		2.8081850864313953e-15 3.0427732929398723 1.9361210145802845
		-2.5545445173094317 3.0427713962915393 1.9361229579626746
		-2.6473364442895444 2.4900485013387104 2.5024651323122695
		-2.5545445173094317 1.9373256063858779 3.0688073066618666
		2.0982825435364605e-15 1.9373237097375458 3.068809250044255
		2.554544517309449 1.9373256063858788 3.0688073066618653
		2.6473364442895542 2.4900485013387095 2.5024651323122677
		2.554544517309449 3.0427713962915393 1.9361229579626738
		2.8081850864313953e-15 3.0427732929398723 1.9361210145802845
		-2.5545445173094317 3.0427713962915393 1.9361229579626746
		;
createNode transform -n "back_footFront_L_NUL" -p "back_ctrl_NUL";
	rename -uid "E4921AED-4103-53A1-427D-46A0F5E0775A";
createNode transform -n "back_footFront_L_CTRL" -p "back_footFront_L_NUL";
	rename -uid "1AE317CE-4661-D2BB-A92E-8D8292DA5865";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
createNode nurbsCurve -n "back_footFront_L_CTRLShape" -p "back_footFront_L_CTRL";
	rename -uid "DB9B295E-4FB7-8DC1-4EA0-549F9E734FDC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.1717291236667227 -5.3804846826639406e-16 1.4171120837579607
		3.4599299774429537e-15 -3.5230171616747629e-16 2.7291953514369078
		-3.1717291236667142 -5.3766048778536674e-16 1.4171120837579607
		-3.3394188662818021 -1.2735212830768379e-16 1.3591747561890267e-15
		-3.1717291236667142 2.8279552439282175e-16 -1.4171120837579607
		2.8397179670702379e-15 3.5056699269149904e-16 -1.2140123612173479
		3.1717291236667227 2.8240754391179348e-16 -1.4171120837579607
		3.3394188662818087 1.695547113820574e-18 6.2858090988222818e-16
		3.1717291236667227 -5.3804846826639406e-16 1.4171120837579607
		3.4599299774429537e-15 -3.5230171616747629e-16 2.7291953514369078
		-3.1717291236667142 -5.3766048778536674e-16 1.4171120837579607
		;
createNode transform -n "back_footBack_L_NUL" -p "back_ctrl_NUL";
	rename -uid "48B36EB6-4FB6-7359-2E0D-179DFE249F8C";
createNode transform -n "back_footBack_L_CTRL" -p "back_footBack_L_NUL";
	rename -uid "E5D18724-49A5-3E36-8C5B-DC8194ED00F9";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
createNode nurbsCurve -n "back_footBack_L_CTRLShape" -p "back_footBack_L_CTRL";
	rename -uid "9CA445C5-44CE-6B7E-CDB5-8C90B61D3CDD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.1717291236667227 -5.3701480988442699e-16 1.4171120837579632
		3.5378018661751433e-15 -3.5143435442948778e-16 1.2140123612173479
		-3.1717291236667142 -5.3666920300046317e-16 1.4171120837579598
		-3.3394188662818021 -1.2636961938207689e-16 -6.1823771657361597e-16
		-3.1717291236667142 2.8378680917772418e-16 -1.4171120837579632
		2.761846078338048e-15 3.5143435442948739e-16 -2.8771390155294454
		3.1717291236667227 2.8344120229376164e-16 -1.4171120837579598
		3.3394188662818087 2.7379813550841318e-18 2.6059933826448745e-15
		3.1717291236667227 -5.3701480988442699e-16 1.4171120837579632
		3.5378018661751433e-15 -3.5143435442948778e-16 1.2140123612173479
		-3.1717291236667142 -5.3666920300046317e-16 1.4171120837579598
		;
createNode transform -n "back_foot_L_NUL" -p "back_ctrl_NUL";
	rename -uid "C37981AB-46D1-B04F-E687-6EBA472ABD16";
createNode transform -n "back_foot_L_CTRL" -p "back_foot_L_NUL";
	rename -uid "1A55D822-4A21-0A04-C3CF-B0AFCF48E74E";
	addAttr -ci true -sn "Leg_Attr" -ln "Leg_Attr" -min 0 -max 0 -en "------" -at "enum";
	addAttr -ci true -sn "Follow" -ln "Follow" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "knee_Y_value" -ln "knee_Y_value" -at "double";
	addAttr -ci true -sn "ankle_Y_value" -ln "ankle_Y_value" -at "double";
	addAttr -ci true -sn "ankle_dis_UTL" -ln "ankle_dis_UTL" -at "double";
	addAttr -ci true -sn "knee_dis_UTL" -ln "knee_dis_UTL" -at "double";
	addAttr -ci true -sn "bend_Max" -ln "bend_Max" -min 0 -max 180 -at "double";
	addAttr -ci true -sn "Twist_Hip_Y_Value" -ln "Twist_Hip_Y_Value" -at "double";
	addAttr -ci true -sn "Twist_Hip_Dis_UTL" -ln "Twist_Hip_Dis_UTL" -at "double";
	addAttr -ci true -sn "Bend_Min" -ln "Bend_Min" -max 0 -at "double";
	addAttr -ci true -sn "Bend_Pos_Neg" -ln "Bend_Pos_Neg" -min -1 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -cb on ".Leg_Attr";
	setAttr -k on ".Follow" yes;
	setAttr -k on ".bend_Max";
	setAttr -k on ".Bend_Min" -70;
	setAttr -k on ".Bend_Pos_Neg" 1;
createNode nurbsCurve -n "back_foot_L_CTRLShape" -p "back_foot_L_CTRL";
	rename -uid "032E3C43-47CF-ED17-3F37-E5B2694AE8CF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.8191701673427936 0 -4.5484074468737923
		4.1731895924399006e-16 0 -4.5484094241081454
		-4.8191701673427936 0 -4.5484074468737923
		-6.8153358100399926 0 1.5945490547611767
		-4.8191701673427936 0 8.5056015448846374
		-6.826968493132958e-16 0 11.368253216566128
		4.8191701673427936 0 8.5056015448846356
		6.8153358100399926 0 1.5945490547611789
		4.8191701673427936 0 -4.5484074468737923
		4.1731895924399006e-16 0 -4.5484094241081454
		-4.8191701673427936 0 -4.5484074468737923
		;
createNode transform -n "back_hips_R_NUL" -p "back_ctrl_NUL";
	rename -uid "5BA8742E-46BF-57B7-4AD8-FB99AA425FCC";
createNode transform -n "back_hips_R_CTRL" -p "back_hips_R_NUL";
	rename -uid "BC064EBA-4A2D-85A3-E905-EEB4DAB5292E";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "back_hips_R_CTRLShape" -p "back_hips_R_CTRL";
	rename -uid "3335AFE6-41A6-A56C-08E8-619271D4FBB7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-9.6397952296871239 5.5546601144956647 5.5546601144956655
		-9.6397952296871239 7.8554756682926525 1.6615435938949517e-15
		-9.6397952296871239 5.5546601144956638 -5.5546601144956638
		-9.6397952296871257 1.9458584928302739e-15 -7.8554756682926516
		-9.6397952296871239 -5.5546601144956647 -5.5546601144956638
		-9.6397952296871239 -7.8554756682926525 3.9364606694853852e-16
		-9.6397952296871239 -5.5546601144956638 5.5546601144956655
		-9.6397952296871221 4.6738080372214332e-16 7.8554756682926534
		-9.6397952296871239 5.5546601144956647 5.5546601144956655
		-9.6397952296871239 7.8554756682926525 1.6615435938949517e-15
		-9.6397952296871239 5.5546601144956638 -5.5546601144956638
		;
createNode transform -n "back_ankle_R_NUL" -p "back_ctrl_NUL";
	rename -uid "5DBC81F3-4402-0BA0-5852-4CB99DC930D0";
createNode transform -n "back_ankle_R_CTRL" -p "back_ankle_R_NUL";
	rename -uid "E67DDE5F-4658-165F-4AB1-8CA25E3D5EC3";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "back_ankle_R_CTRLShape" -p "back_ankle_R_CTRL";
	rename -uid "1E256F8E-4111-7E9C-97B6-44A6CAF62CD0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.6600962090576163 -1.8556294675812255 1.855629467581225
		2.6600962090576168 -2.6242563597925326 4.8645718834274241e-16
		2.6600962090576172 -1.8556294675812248 -1.8556294675812246
		2.6600962090576172 -3.0243442585314647e-16 -2.6242563597925321
		2.6600962090576172 1.8556294675812255 -1.8556294675812246
		2.6600962090576159 2.6242563597925335 6.289427641311779e-17
		2.6600962090576163 1.8556294675812255 1.855629467581225
		2.6600962090576163 1.9147640046561893e-16 2.624256359792533
		2.6600962090576163 -1.8556294675812255 1.855629467581225
		2.6600962090576168 -2.6242563597925326 4.8645718834274241e-16
		2.6600962090576172 -1.8556294675812248 -1.8556294675812246
		;
createNode transform -n "back_ball_R_NUL" -p "back_ctrl_NUL";
	rename -uid "FBEC28D4-46A2-9702-26C7-C88DD75E8524";
createNode transform -n "back_ball_R_CTRL" -p "back_ball_R_NUL";
	rename -uid "2D5DAB40-478C-D520-9D06-D381216140D2";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "back_ball_R_CTRLShape" -p "back_ball_R_CTRL";
	rename -uid "936D5388-4B83-319A-ADA7-7A8396D42C57";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.6600962090576168 -1.1509021980223291 1.1509021980223291
		2.6600962090576168 -1.6276214974081811 4.2543090363585955e-16
		2.6600962090576168 -1.1509021980223284 -1.1509021980223286
		2.6600962090576168 -1.0324882239159624e-16 -1.6276214974081811
		2.6600962090576168 1.1509021980223291 -1.1509021980223286
		2.6600962090576159 1.6276214974081826 1.6272787220795134e-16
		2.6600962090576168 1.1509021980223288 1.1509021980223291
		2.6600962090576168 2.0308553237495404e-16 1.6276214974081815
		2.6600962090576168 -1.1509021980223291 1.1509021980223291
		2.6600962090576168 -1.6276214974081811 4.2543090363585955e-16
		2.6600962090576168 -1.1509021980223284 -1.1509021980223286
		;
createNode transform -n "back_toe_R_NUL" -p "back_ctrl_NUL";
	rename -uid "C0EB7A1C-4083-3753-A21F-5E941B4E0FE7";
createNode transform -n "back_toe_R_CTRL" -p "back_toe_R_NUL";
	rename -uid "924DE7A7-4876-1311-581F-DE9578211F14";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "back_toe_R_CTRLShape" -p "back_toe_R_CTRL";
	rename -uid "0F202D62-43D4-E79A-27CC-9BBB53D1710B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.5545445173094485 -1.9361229579626749 -3.0427713962915384
		2.5710786461046279e-15 -1.9361210145802854 -3.0427732929398714
		-2.5545445173094321 -1.9361229579626753 -3.0427713962915384
		-2.6473364442895448 -2.50246513231227 -2.4900485013387095
		-2.5545445173094321 -3.0688073066618671 -1.937325606385877
		1.7224618010104118e-15 -3.0688092500442559 -1.9373237097375449
		2.5545445173094485 -3.0688073066618666 -1.9373256063858779
		2.6473364442895537 -2.5024651323122691 -2.4900485013387086
		2.5545445173094485 -1.9361229579626749 -3.0427713962915384
		2.5710786461046279e-15 -1.9361210145802854 -3.0427732929398714
		-2.5545445173094321 -1.9361229579626753 -3.0427713962915384
		;
createNode transform -n "back_footFront_R_NUL" -p "back_ctrl_NUL";
	rename -uid "8F212184-4A5D-2AB9-F177-58A564C3F2BD";
createNode transform -n "back_footFront_R_CTRL" -p "back_footFront_R_NUL";
	rename -uid "BAE76115-42FB-8876-6A8B-E9804D84176F";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "back_footFront_R_CTRLShape" -p "back_footFront_R_CTRL";
	rename -uid "97934AB6-43CB-2575-D62B-B4A743649C13";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.1717291236667227 -5.3804846826639406e-16 -1.4171120837579612
		-3.1256999423044492e-15 -3.5230171616747629e-16 -2.7291953514369078
		3.1717291236667142 -5.3766048778536674e-16 -1.4171120837579603
		3.3394188662818021 -1.2735212830768379e-16 -9.5021389362859746e-16
		3.1717291236667142 2.8279552439282175e-16 1.4171120837579612
		-2.9883916022992524e-15 3.5056699269149904e-16 1.2140123612173479
		-3.1717291236667227 2.8240754391179348e-16 1.4171120837579603
		-3.3394188662818087 1.695547113820574e-18 -1.0375417724426583e-15
		-3.1717291236667227 -5.3804846826639406e-16 -1.4171120837579612
		-3.1256999423044492e-15 -3.5230171616747629e-16 -2.7291953514369078
		3.1717291236667142 -5.3766048778536674e-16 -1.4171120837579603
		;
createNode transform -n "back_footBack_R_NUL" -p "back_ctrl_NUL";
	rename -uid "C1B20BA6-43BF-8AEC-E005-1EBA76539322";
createNode transform -n "back_footBack_R_CTRL" -p "back_footBack_R_NUL";
	rename -uid "EDA3F1FC-447C-AEFF-B592-A2AFA0A0E04F";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "back_footBack_R_CTRLShape" -p "back_footBack_R_CTRL";
	rename -uid "F8681433-458B-128B-1EDA-80971F1C0A7E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.1717291236667227 -5.3701480988442699e-16 -1.4171120837579636
		-3.3891282309461288e-15 -3.5143435442948778e-16 -1.2140123612173479
		3.1717291236667142 -5.3666920300046317e-16 -1.4171120837579594
		3.3394188662818021 -1.2636961938207689e-16 1.0271985791340452e-15
		3.1717291236667142 2.8378680917772418e-16 1.4171120837579636
		-3.1141939869450583e-15 3.5143435442948739e-16 2.8771390155294454
		-3.1717291236667227 2.8344120229376164e-16 1.4171120837579594
		-3.3394188662818087 2.7379813550841318e-18 -3.0149542452053044e-15
		-3.1717291236667227 -5.3701480988442699e-16 -1.4171120837579636
		-3.3891282309461288e-15 -3.5143435442948778e-16 -1.2140123612173479
		3.1717291236667142 -5.3666920300046317e-16 -1.4171120837579594
		;
createNode transform -n "back_foot_R_NUL" -p "back_ctrl_NUL";
	rename -uid "4E701E5B-40AD-8FAA-D3D2-9FBEDFA979CD";
createNode transform -n "back_foot_R_CTRL" -p "back_foot_R_NUL";
	rename -uid "7407634B-4535-9591-F79A-B5B45CE20CAB";
	addAttr -ci true -sn "Leg_Attr" -ln "Leg_Attr" -min 0 -max 0 -en "------" -at "enum";
	addAttr -ci true -sn "Follow" -ln "Follow" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "knee_Y_value" -ln "knee_Y_value" -at "double";
	addAttr -ci true -sn "ankle_Y_value" -ln "ankle_Y_value" -at "double";
	addAttr -ci true -sn "ankle_dis_UTL" -ln "ankle_dis_UTL" -at "double";
	addAttr -ci true -sn "knee_dis_UTL" -ln "knee_dis_UTL" -at "double";
	addAttr -ci true -sn "bend_Max" -ln "bend_Max" -min 0 -max 180 -at "double";
	addAttr -ci true -sn "Twist_Hip_Y_Value" -ln "Twist_Hip_Y_Value" -at "double";
	addAttr -ci true -sn "Twist_Hip_Dis_UTL" -ln "Twist_Hip_Dis_UTL" -at "double";
	addAttr -ci true -sn "Bend_Min" -ln "Bend_Min" -max 0 -at "double";
	addAttr -ci true -sn "Bend_Pos_Neg" -ln "Bend_Pos_Neg" -min -1 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on -cb on ".Leg_Attr";
	setAttr -k on ".Follow" yes;
	setAttr -k on ".bend_Max";
	setAttr -k on ".Bend_Min" -70;
	setAttr -k on ".Bend_Pos_Neg" 1;
createNode nurbsCurve -n "back_foot_R_CTRLShape" -p "back_foot_R_CTRL";
	rename -uid "5D7F0296-4AF1-1483-8BE4-439987E7085A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.8191701673427945 0 4.5484074468737914
		-9.7433846348855971e-16 0 4.5484094241081454
		4.8191701673427927 0 4.5484074468737932
		6.8153358100399926 0 -1.5945490547611758
		4.8191701673427945 0 -8.5056015448846374
		2.0749063406697266e-15 0 -11.368253216566128
		-4.8191701673427927 0 -8.5056015448846356
		-6.8153358100399926 0 -1.5945490547611798
		-4.8191701673427945 0 4.5484074468737914
		-9.7433846348855971e-16 0 4.5484094241081454
		4.8191701673427927 0 4.5484074468737932
		;
createNode transform -n "back_knee_L_NUL" -p "back_ctrl_NUL";
	rename -uid "D7F09CA9-4FE8-C03C-C1AD-E785B04E54F1";
createNode transform -n "back_knee_L_CTRL" -p "back_knee_L_NUL";
	rename -uid "A1F44173-4EC0-999C-6D72-068107CEA336";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
createNode nurbsCurve -n "back_knee_L_CTRLShape" -p "back_knee_L_CTRL";
	rename -uid "34498BE3-45E0-00B5-C38D-F39D50AE754E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		-2.3647283129367236 2.3647283129367196 4.7446046282506247
		2.3647283129367236 2.3647283129367196 4.7446046282506247
		2.3647283129367236 -2.3647283129367236 4.7446046282506229
		-2.3647283129367236 -2.3647283129367236 4.7446046282506229
		-2.3647283129367236 2.3647283129367196 4.7446046282506247
		-2.3647281934606007e-10 8.0316831411756861e-17 0.015148002377173448
		2.3647283129367236 -2.3647283129367236 4.7446046282506229
		2.3647283129367236 2.3647283129367196 4.7446046282506247
		2.3647281934606007e-10 8.0316831411756861e-17 0.015148002377173448
		-2.3647283129367236 -2.3647283129367236 4.7446046282506229
		;
createNode transform -n "back_knee_R_NUL" -p "back_ctrl_NUL";
	rename -uid "3A4ADDB0-4592-D572-E868-3EA55C71A5C1";
createNode transform -n "back_knee_R_CTRL" -p "back_knee_R_NUL";
	rename -uid "5F19F3DA-48C3-8753-B000-B4B4473853F6";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "back_knee_R_CTRLShape" -p "back_knee_R_CTRL";
	rename -uid "8AAF0019-4F7D-FD8E-49B7-12994B4F7745";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		-2.3647283129367236 -2.36472831293672 -4.7446046282506247
		2.3647283129367236 -2.36472831293672 -4.7446046282506247
		2.3647283129367236 2.3647283129367231 -4.7446046282506229
		-2.3647283129367236 2.3647283129367231 -4.7446046282506229
		-2.3647283129367236 -2.36472831293672 -4.7446046282506247
		-2.3647281934606007e-10 -8.2171926674225061e-17 -0.015148002377173448
		2.3647283129367236 2.3647283129367231 -4.7446046282506229
		2.3647283129367236 -2.36472831293672 -4.7446046282506247
		2.3647281934606007e-10 -8.2171926674225061e-17 -0.015148002377173448
		-2.3647283129367236 2.3647283129367231 -4.7446046282506229
		;
createNode transform -n "back_poleVector_L_NUL" -p "back_ctrl_NUL";
	rename -uid "93781565-4B66-A740-C416-64B6A20664AA";
createNode transform -n "back_poleVector_L_CRV" -p "back_poleVector_L_NUL";
	rename -uid "C015A8E2-479C-8A2A-76E7-1686EA36EBE3";
	setAttr -l on ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
createNode nurbsCurve -n "back_poleVector_L_CRVShape" -p "back_poleVector_L_CRV";
	rename -uid "178F0DED-4B7F-709A-7F92-539E89765598";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode nurbsCurve -n "back_poleVector_L_CRVShape1Orig" -p "back_poleVector_L_CRV";
	rename -uid "6D3C9764-4315-69A5-E577-2BB38385B728";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 12
		0 0 -12
		

		"gtag" 2
		"cluster1" 1 "cv[0]"
		"cluster2" 1 "cv[1]";
createNode transform -n "back_poleVector_R_NUL" -p "back_ctrl_NUL";
	rename -uid "972C4BFA-4E6E-23A5-0A68-B192779A05B6";
createNode transform -n "back_poleVector_R_CRV" -p "back_poleVector_R_NUL";
	rename -uid "A83F9D13-43E3-0315-1B2C-8AAD9204A4CE";
	setAttr -l on ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
createNode nurbsCurve -n "back_poleVector_R_CRVShape" -p "back_poleVector_R_CRV";
	rename -uid "CA2CE23A-40F1-35F3-F739-EFB6D2674C3C";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode nurbsCurve -n "back_poleVector_R_CRVShape1Orig" -p "back_poleVector_R_CRV";
	rename -uid "D40C7ADC-4921-9046-1447-268DC25BF154";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 12
		0 0 -12
		

		"gtag" 2
		"cluster1" 1 "cv[0]"
		"cluster2" 1 "cv[1]";
createNode nurbsCurve -n "back_poleVector_R_CRVShape2Orig" -p "back_poleVector_R_CRV";
	rename -uid "0ACC1DD7-4862-CEEE-5F75-FFB9F2350BAC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster3";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster4";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 12
		0 0 -12
		

		"gtag" 2
		"cluster3" 1 "cv[0]"
		"cluster4" 1 "cv[1]";
createNode transform -n "back_bot_distance_L_LOC" -p "back_ctrl_NUL";
	rename -uid "A70D107E-44B5-25B4-F205-DC83F1642A39";
	setAttr ".t" -type "double3" 9.3738178626969013 9.622781853276031 34.007200976956518 ;
	setAttr ".r" -type "double3" 159.19320898728881 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "back_bot_distance_L_LOCShape" -p "back_bot_distance_L_LOC";
	rename -uid "E3E4AE68-459C-2096-5584-FEAACBEC437B";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 8.4376949871511897e-15 0 ;
createNode transform -n "back_bot_distance_R_LOC" -p "back_ctrl_NUL";
	rename -uid "1FBAA441-489F-9161-8179-C991F014D321";
	setAttr ".t" -type "double3" -9.3738178626969031 9.622781853276031 34.007200976956469 ;
	setAttr ".r" -type "double3" -20.806791012711148 0 0 ;
createNode locator -n "back_bot_distance_R_LOCShape" -p "back_bot_distance_R_LOC";
	rename -uid "2DCBEF40-43DD-856C-C698-C3B835820BC9";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 -4.8849813083506888e-15 0 ;
createNode transform -n "back_top_distance_L_LOC" -p "back_ctrl_NUL";
	rename -uid "B2202E59-4ADE-C590-6910-D383DD7D9FC4";
	setAttr ".t" -type "double3" 9.373817862696896 58.868833795625903 36.071429505332915 ;
	setAttr ".r" -type "double3" -160.91399079684854 0 0 ;
createNode locator -n "back_top_distance_L_LOCShape" -p "back_top_distance_L_LOC";
	rename -uid "AD7ED413-4093-4BCF-2FEB-2F9DBBB4E930";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -7.9936057773011271e-14 0 1.7763568394002505e-15 ;
createNode transform -n "back_top_distance_R_LOC" -p "back_ctrl_NUL";
	rename -uid "CB3098DB-41B5-0B54-BF16-AEB4E42F5AE0";
	setAttr ".t" -type "double3" -9.373817862696896 58.868833795625903 36.071429505332915 ;
	setAttr ".r" -type "double3" 19.086009203151512 0 0 ;
createNode locator -n "back_top_distance_R_LOCShape" -p "back_top_distance_R_LOC";
	rename -uid "BD30F2C6-4C99-0799-F515-73A51F8724C9";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 0 -8.8817841970012523e-15 ;
createNode transform -n "back_clavicle_L_NUL" -p "back_ctrl_NUL";
	rename -uid "88B4AD47-4403-E30A-4DD5-ED8B5F2DB70E";
createNode transform -n "back_clavicle_L_CTRL" -p "back_clavicle_L_NUL";
	rename -uid "5710D7E1-41ED-9A49-D0AC-7C9955CA118C";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
createNode nurbsCurve -n "back_clavicle_L_CTRLShape" -p "back_clavicle_L_CTRL";
	rename -uid "FE2DC71F-47BD-10C0-2EE0-479CAEBCEF69";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.9272496676910436 20.689008392184519 -6.4181902051523192
		7.9272229891498647 20.689008392184519 -5.5578706782229695e-16
		7.9272508818641754 20.689008392184519 6.4181902051523201
		8.969804732192955 20.689008392184519 9.0766916340165587
		15.283505509156001 20.689008392184519 6.4181902051523201
		18.072777010850139 20.689008392184519 9.0921840881309398e-16
		15.40492282536848 20.689008392184519 -6.4181902051523192
		8.969804732192955 20.689008392184519 -9.0766916340165587
		7.9272496676910436 20.689008392184519 -6.4181902051523192
		7.9272229891498647 20.689008392184519 -5.5578706782229695e-16
		7.9272508818641754 20.689008392184519 6.4181902051523201
		;
createNode joint -n "back_clavicle_L_JNT" -p "back_clavicle_L_CTRL";
	rename -uid "2D7D49F6-4E18-6247-6081-028FFE2F0E96";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode transform -n "back_clavicle_R_NUL" -p "back_ctrl_NUL";
	rename -uid "F61612EF-4286-DDC8-6BE9-59B1E2372524";
createNode transform -n "back_clavicle_R_CTRL" -p "back_clavicle_R_NUL";
	rename -uid "2FFA89DF-4665-963F-8E17-12B5FA5265CF";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "back_clavicle_R_CTRLShape" -p "back_clavicle_R_CTRL";
	rename -uid "57E4622E-4D99-F83E-9991-3D8B7A140AA1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-15.269315873411117 -20.689008392184405 6.418190205152321
		-18.058587375105262 -20.689008392184405 1.3131030189241904e-15
		-15.390733189623599 -20.689008392184405 -6.418190205152321
		-8.9556150964480743 -20.689008392184405 -9.0766916340165587
		-7.9414393034359207 -20.689008392184405 -6.418190205152321
		-7.9414126248947383 -20.689008392184405 -1.5190245771120066e-16
		-7.9414405176090526 -20.689008392184405 6.418190205152321
		-8.9556150964480743 -20.689008392184405 9.0766916340165587
		-15.269315873411117 -20.689008392184405 6.418190205152321
		-18.058587375105262 -20.689008392184405 1.3131030189241904e-15
		-15.390733189623599 -20.689008392184405 -6.418190205152321
		;
createNode joint -n "back_clavicle_R_JNT" -p "back_clavicle_R_CTRL";
	rename -uid "E050FEEA-4CDE-279C-4454-509A6AC29840";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode transform -n "back_con_NUL" -p "template_CTRL";
	rename -uid "896970E2-4EB1-131F-D196-C39287BF7EE8";
createNode transform -n "back_toePoint_L_NUL" -p "back_con_NUL";
	rename -uid "71C89644-48FA-743C-CECE-6C873E055128";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".r" -type "double3" 128.63381106410944 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode joint -n "back_toe_L_JNT" -p "back_toePoint_L_NUL";
	rename -uid "DB35D218-4FD6-B872-2EE4-5BAC73E6ACFD";
	setAttr ".t" -type "double3" 2.1643548554189112e-15 3.5527136788005009e-15 -2.3317239633836789e-15 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr ".r" -type "double3" 16.887920726575935 0 0 ;
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -16.887920726575935 0 0 ;
createNode joint -n "back_toeMid_L_JNT" -p "back_toe_L_JNT";
	rename -uid "A1D16A1F-4A49-4075-B917-96BFCAE238DE";
	setAttr ".t" -type "double3" -3.1974423109204508e-14 4.0207141596735596 -2.2382096176443156e-13 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -38.30573259179392 0 0 ;
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.6;
createNode joint -n "back_toeTip_L_JNT" -p "back_toeMid_L_JNT";
	rename -uid "7529D6CD-4189-6FE8-BAB9-B982248EC706";
	setAttr ".t" -type "double3" -1.5987211554602254e-14 2.9867496173154784 3.9551695252271202e-14 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.6;
createNode pointConstraint -n "back_toe_L_NUL_pointConstraint1" -p "back_toePoint_L_NUL";
	rename -uid "1F1A8E1D-47A6-0A30-E6A8-06BF93600CAE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "front_fingerExtra_L_PMJW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 9.3738178626969049 2.5192875186196542 36.70652882412594 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "back_toe_L_NUL_orientConstraint1" -p "back_toePoint_L_NUL";
	rename -uid "34C94DB6-4376-718D-D8DB-1B9BD17CAF8C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "front_fingerExtra_L_PMJW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 126.42641319928413 0 0 ;
	setAttr ".rsrr" -type "double3" 128.63381106410944 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "back_footFront_L_LOC" -p "back_toePoint_L_NUL";
	rename -uid "B61A1CA7-4DF8-4C5F-36CC-848A485CEBDD";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-15 6.9914635416385735 -2.3466391460199141 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -128.30573259179394 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "back_footFront_L_LOCShape" -p "back_footFront_L_LOC";
	rename -uid "74B9BB72-413F-D7C4-E4AA-6BBFD2616B27";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2.88 2.88 2.88 ;
createNode transform -n "back_footBack_L_LOC" -p "back_toePoint_L_NUL";
	rename -uid "C2E40F94-4779-F9B9-FFE2-CAB4E0E99EB2";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-15 1.4984630489336368 1.9923636872522046 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -128.30573259179394 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "back_footBack_L_LOCShape" -p "back_footBack_L_LOC";
	rename -uid "58FAD001-42E1-65DD-CE53-859CFD71C73D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2.88 2.88 2.88 ;
createNode transform -n "back_toePoint_R_NUL" -p "back_con_NUL";
	rename -uid "D1CF9E0A-4C81-B63E-9D18-77882F79A2EA";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".r" -type "double3" -51.366188935890534 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode joint -n "back_toe_R_JNT" -p "back_toePoint_R_NUL";
	rename -uid "42FC8296-4D68-B6A0-DB5D-E2BB9FB56CDC";
	setAttr ".t" -type "double3" -2.1643548554189112e-15 -3.5527136788005009e-15 2.3317239633836789e-15 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -16.887920726575935 0 0 ;
createNode joint -n "back_toeMid_R_JNT" -p "back_toe_R_JNT";
	rename -uid "2F95B193-4D08-FCA4-C75D-4FB7E0BE5349";
	setAttr ".t" -type "double3" -5.5067062021407764e-14 -4.0207141596735596 2.5934809855243657e-13 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.6;
createNode joint -n "back_toeTip_R_JNT" -p "back_toeMid_R_JNT";
	rename -uid "B1F4B28D-4422-AF86-842C-859FBFADB007";
	setAttr ".t" -type "double3" 7.638334409421077e-14 -2.9867496173154784 -8.9095397726168812e-15 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.6;
createNode pointConstraint -n "back_toe_R_NUL_pointConstraint1" -p "back_toePoint_R_NUL";
	rename -uid "7FCC4EB6-47E6-8007-F580-EDBF378DDB1B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "front_fingerExtra_R_PMJW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -9.3738178626969049 2.5192875186196471 36.70652882412589 ;
	setAttr -k on ".w0";
createNode transform -n "back_footFront_R_LOC" -p "back_toePoint_R_NUL";
	rename -uid "19F600C3-44D1-4AAF-0E90-C4A18F9CDFCA";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-15 -6.9914635416385735 2.3466391460199141 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -128.30573259179394 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "back_footFront_R_LOCShape" -p "back_footFront_R_LOC";
	rename -uid "E5004A33-4166-7947-1666-DC9BD16C90F4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2.88 2.88 2.88 ;
createNode transform -n "back_footBack_R_LOC" -p "back_toePoint_R_NUL";
	rename -uid "3A15F573-49F1-8421-9D6D-A7BF728BAAEF";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-15 -1.4984630489336368 -1.9923636872522046 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -128.30573259179394 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "back_footBack_R_LOCShape" -p "back_footBack_R_LOC";
	rename -uid "323B4D06-4C9E-3872-4B31-2BBD1124A940";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2.88 2.88 2.88 ;
createNode orientConstraint -n "back_toePoint_R_NUL_orientConstraint1" -p "back_toePoint_R_NUL";
	rename -uid "1C0823A5-4B83-88AE-21AC-EBBB932CD37E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "front_toeExtra_R_JNTW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -53.573586800715908 0 0 ;
	setAttr ".rsrr" -type "double3" -51.36618893589052 0 0 ;
	setAttr -k on ".w0";
createNode joint -n "back_hip_follow_L_JNT" -p "back_con_NUL";
	rename -uid "EDFFE467-4987-8A4D-C8FF-64874A9212C8";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -160.91399079684854 0 0 ;
	setAttr ".radi" 0.5;
createNode joint -n "back_foot_follow_L_JNT" -p "back_hip_follow_L_JNT";
	rename -uid "C5853949-44F1-524A-198E-DE9963CE14C0";
	setAttr ".t" -type "double3" 2.3803181647963356e-13 56.666428238433852 -8.2422957348171622e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".radi" 0.5;
createNode pointConstraint -n "back_foot_follow_L_JNT_pointConstraint1" -p "back_foot_follow_L_JNT";
	rename -uid "33FF1B95-4A74-4955-A2CE-62A7AF00619A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "front_toe_L_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.2434497875801753e-14 56.353125173047857 -2.1316282072803006e-14 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "back_hip_follow_L_JNT_aimConstraint1" -p "back_hip_follow_L_JNT";
	rename -uid "36C9B411-4975-2D04-1091-F08F2FB8854B";
	addAttr -dcb 0 -ci true -sn "w0" -ln "front_toe_L_JNTW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" -19.73174589959013 -1.5705073117750919e-15 -9.0303554145662499e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "back_hip_follow_L_JNT_pointConstraint1" -p "back_hip_follow_L_JNT";
	rename -uid "0E1BC80D-4281-F80C-6475-339D0752A340";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "front_hip_L_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "back_hip_follow_R_JNT" -p "back_con_NUL";
	rename -uid "555491CB-4C92-D4E8-2A16-DD9DEFD5AC95";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 19.086009203151512 0 0 ;
	setAttr ".radi" 0.5;
createNode joint -n "back_foot_follow_R_JNT" -p "back_hip_follow_R_JNT";
	rename -uid "55A3D7FE-4059-9829-1A5D-86AB14BA26F8";
	setAttr ".t" -type "double3" -1.2434497875801753e-13 -56.666428238433802 -8.3133500083931722e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".radi" 0.5;
createNode pointConstraint -n "back_foot_follow_R_JNT_pointConstraint1" -p "back_foot_follow_R_JNT";
	rename -uid "82F87B54-459B-D493-6F8F-849D2F208DCB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "front_toe_R_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1.2434497875801753e-14 -56.353125173047864 -2.8421709430404007e-14 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "back_hip_follow_R_JNT_aimConstraint1" -p "back_hip_follow_R_JNT";
	rename -uid "9E2C252E-4BE4-91EE-F627-709F14FF935A";
	addAttr -dcb 0 -ci true -sn "w0" -ln "front_toe_R_JNTW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" -19.73174589959013 -1.5705073117750931e-15 -9.0303554145662578e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "back_hip_follow_R_JNT_pointConstraint1" -p "back_hip_follow_R_JNT";
	rename -uid "6D8BAF07-42CF-1244-C0A1-C5B58AAAEC1C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "front_hip_R_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "back_knee_con_L_NUL" -p "back_con_NUL";
	rename -uid "1EE2D19D-4D9D-A0EB-BE1B-9C8F9C37A3DC";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "back_knee_L_LOC" -p "back_knee_con_L_NUL";
	rename -uid "9D5D03C3-48B2-7704-8EED-D3A836438CF8";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -8.9751828521647425 -8.3588317839233088 ;
	setAttr -l on ".tx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "back_knee_L_LOCShape" -p "back_knee_L_LOC";
	rename -uid "910297C3-4CCD-0E07-5743-F6A7F61CCEAC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 5 5 5 ;
createNode parentConstraint -n "back_knee_con_L_NUL_parentConstraint1" -p "back_knee_con_L_NUL";
	rename -uid "3C0F65F1-4B19-935E-8E2C-2CB16A3703E2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "back_hip_L_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.9539925233402755e-14 39.988999999999976 
		-23.35199999999999 ;
	setAttr ".tg[0].tor" -type "double3" -142.71148573563585 0 0 ;
	setAttr ".rst" -type "double3" 11.800226211547832 41.148970821143926 2.6688772569283046 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-14 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "back_knee_con_R_NUL" -p "back_con_NUL";
	rename -uid "426217AF-4B44-D6DD-B840-07B0F33D2610";
createNode transform -n "back_knee_R_LOC" -p "back_knee_con_R_NUL";
	rename -uid "706F7C3F-4A4A-E84B-1923-7CB5BB6640F3";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 1.7763568394002505e-15 8.9751828521647425 8.3588317839233088 ;
	setAttr -l on ".tx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "back_knee_R_LOCShape" -p "back_knee_R_LOC";
	rename -uid "DAA079EE-44FC-6323-2964-F49DC3D57E98";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 5 5 5 ;
createNode parentConstraint -n "back_knee_con_R_NUL_parentConstraint1" -p "back_knee_con_R_NUL";
	rename -uid "159AE70A-41E5-101E-899C-53839BFD1CD9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "back_hip_R_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.4868995751603507e-14 -39.988914297531238 
		23.352373466199399 ;
	setAttr ".tg[0].tor" -type "double3" -142.71148573563585 0 0 ;
	setAttr ".lr" -type "double3" 179.99999999999997 0 0 ;
	setAttr ".rst" -type "double3" -11.800226211547876 41.149265262220574 2.6691224637137196 ;
	setAttr ".rsrr" -type "double3" -180.00000000000003 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "body_HLD" -p "template_CTRL";
	rename -uid "B561CBFE-465B-589E-35DC-EC98469DD2AE";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 55 -18.923857124570635 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".ro" 1;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "body_HLDShape" -p "body_HLD";
	rename -uid "DBCD1D7D-4941-FA4B-4710-26A9628A8B8D";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-26.166818937266576 -5.2392920025894671 1.6776783180899932e-16
		-26.116269474676319 -5.3015770090591108 1.6776783180899932e-16
		-26.116269474676319 -13.437610672521535 1.8239596106532461e-15
		-39.466148385499338 -0.0019586634855014505 -3.8432407689215053e-16
		-26.116269474676344 13.433693345550527 -1.1203813295143027e-15
		-26.116269474676319 5.2976596820881072 -5.6831740323288748e-16
		-26.166745099275346 5.2357119572035433 -5.6831740323288748e-16
		-24.637159736126129 10.270345952909391 -1.6253476951472461e-17
		-22.181454755858141 14.918903333588064 1.0878743756113568e-15
		-18.874582066721718 18.997724354275107 -1.8564665645561886e-15
		-14.821516282231634 22.325502457639409 -1.1203813295143027e-15
		-10.202626512911278 24.796997952075138 -1.1203813295143027e-15
		-5.2004776537606459 26.337556935050298 3.5178914056947036e-16
		-5.2000931795418461 26.358483443465992 -7.745148444891289e-15
		-13.346403526968436 26.358483443465992 -7.745148444891289e-15
		0.0034753838545213147 39.794135452502111 -1.8564665645561886e-15
		13.353354294677516 26.358483443465992 -7.745148444891289e-15
		5.2070439472509236 26.358483443465992 -7.745148444891289e-15
		5.2074284214697091 26.337556935050298 3.5178914056947036e-16
		10.209577280620364 24.796997952075138 3.5178914056947036e-16
		14.828467049940711 22.32550245763942 1.8239596106532461e-15
		18.881532834430818 18.997724354275139 1.8239596106532461e-15
		22.188405523567244 14.918903333588069 -3.8429609447241581e-16
		24.644110503835222 10.270345952909443 -1.6253476951472461e-17
		26.173695866984446 5.2357119572035948 -1.1203813295143027e-15
		26.180527446259649 5.2976596820881072 -5.6831740323288748e-16
		26.180527446259653 13.433693345550527 -1.1203813295143027e-15
		39.53040635708259 -0.0019586634855014505 -3.8432407689215053e-16
		26.180527446259635 -13.437610672521535 1.8239596106532461e-15
		26.180527446259635 -5.3015770090591108 1.6776783180899932e-16
		26.173769704975683 -5.2392920025894032 -9.3636002075383123e-16
		24.644295064732912 -10.273958262104083 -2.5925517995980761e-15
		22.188540001167691 -14.922488578661103 -3.8429609447241581e-16
		18.881654137062952 -19.001305350073203 -2.5925517995980761e-15
		14.828885009009744 -22.329449079416904 -2.5925517995980761e-15
		10.210055198963168 -24.801028724388537 -1.1203813295143027e-15
		5.2075440350448376 -26.340374851134349 -1.8564665645561886e-15
		5.2070439472509085 -26.394698074095505 -4.8008075047237327e-15
		13.353354294677471 -26.394698074095505 -4.8008075047237327e-15
		0.0034753838545213147 -39.8303500831314 1.0878743756113568e-15
		-13.3464035269684 -26.394698074095505 -4.8008075047237327e-15
		-5.2000931795418319 -26.394698074095505 -4.8008075047237327e-15
		-5.2005932673357176 -26.340374851134357 -1.8564665645561886e-15
		-10.203104431254044 -24.801028724388548 -1.8564665645561886e-15
		-14.821934241300625 -22.329449079416932 1.8239596106532461e-15
		-18.874703369353814 -19.001305350073231 -1.8564665645561886e-15
		-22.181589233458549 -14.922488578661165 -1.1203813295143027e-15
		-24.637344297023795 -10.273958262104141 -7.5233871199335975e-16
		-26.166818937266576 -5.2392920025894671 1.6776783180899932e-16
		;
createNode transform -n "spine_01_HLD" -p "body_HLD";
	rename -uid "52708166-40EF-9A57-0971-9BAAA1433821";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 0 56.077316673520826 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".ry";
	setAttr ".ro" 1;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spine_01_HLDShape" -p "spine_01_HLD";
	rename -uid "BDA159BC-4D77-7931-C787-0BBED07A6586";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0 0 -3.5527136788005009e-15 
		0 0 0 0 0 -3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode transform -n "spin_01_cv_end_LOC" -p "spine_01_HLD";
	rename -uid "C4C40710-47F3-0021-B072-2F999FD8F443";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 0 -9.3158817291259766 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".drp" yes;
createNode locator -n "spin_01_cv_end_LOCShape" -p "spin_01_cv_end_LOC";
	rename -uid "CFDA7C52-4FAC-DB33-5946-4391DAF22D83";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".los" -type "double3" 6 6 6 ;
createNode transform -n "spin_01_cv_end_CLS" -p "spin_01_cv_end_LOC";
	rename -uid "4D3CB571-4125-B0EA-E3EC-5B898E02D057";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -55 -27.837577819824219 ;
	setAttr ".rp" -type "double3" 0 55 27.837577819824219 ;
	setAttr ".sp" -type "double3" 0 55 27.837577819824219 ;
createNode clusterHandle -n "spin_01_cv_end_CLSShape" -p "spin_01_cv_end_CLS";
	rename -uid "4DDB72C8-4B35-7E38-5141-638B19FB76C8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 55 27.837577819824219 ;
createNode transform -n "spin_01_cv_star_CLS" -p "spine_01_HLD";
	rename -uid "B848A027-4B61-1740-22E5-678723571B26";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -55 -46.469341278076172 ;
	setAttr ".rp" -type "double3" 0 55 46.469341278076172 ;
	setAttr ".sp" -type "double3" 0 55 46.469341278076172 ;
createNode clusterHandle -n "spin_01_cv_star_CLSShape" -p "spin_01_cv_star_CLS";
	rename -uid "A4B9E171-4987-182A-4944-77B3454769A6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 55 46.469341278076172 ;
createNode transform -n "spine_02_HLD" -p "body_HLD";
	rename -uid "AB2C9841-4C64-0DDB-E294-30A37396A977";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 0 18.923857124570635 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".ry";
	setAttr ".ro" 1;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spine_02_HLDShape" -p "spine_02_HLD";
	rename -uid "365331B4-47A7-12A3-CDCE-448F5535A266";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		19.590290622280612 19.590290622280616 0
		1.696433080777728e-15 27.704854688859694 0
		-19.590290622280612 19.590290622280609 0
		-27.704854688859704 1.4362245593812075e-15 0
		-19.590290622280612 -19.590290622280612 0
		-2.7752142424008063e-15 -27.704854688859708 0
		19.590290622280612 -19.590290622280609 0
		27.704854688859704 -3.7781012519498971e-15 0
		19.590290622280612 19.590290622280616 0
		1.696433080777728e-15 27.704854688859694 0
		-19.590290622280612 19.590290622280609 0
		;
createNode transform -n "spin_02_cv_star_LOC" -p "spine_02_HLD";
	rename -uid "50AEA797-4380-36B9-0808-6490564A7F57";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 0 9.2791929244995117 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".drp" yes;
createNode locator -n "spin_02_cv_star_LOCShape" -p "spin_02_cv_star_LOC";
	rename -uid "25C393D9-4E02-7FD7-B851-8F9269FCFB70";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".los" -type "double3" 6 6 6 ;
createNode transform -n "spin_02_cv_star_CLS" -p "spin_02_cv_star_LOC";
	rename -uid "8513C20F-4125-96F2-80B6-828C5D073AF1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -55 -9.2791929244995117 ;
	setAttr ".rp" -type "double3" 0 55 9.2791929244995117 ;
	setAttr ".sp" -type "double3" 0 55 9.2791929244995117 ;
createNode clusterHandle -n "spin_02_cv_star_CLSShape" -p "spin_02_cv_star_CLS";
	rename -uid "847630CD-461D-3D57-D4F5-68B3B155F812";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 55 9.2791929244995117 ;
createNode transform -n "spin_02_cv_end_LOC" -p "spine_02_HLD";
	rename -uid "2C5FCADF-4309-3146-8B98-91BF934881B7";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 0 -9.2791929244995117 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".drp" yes;
createNode locator -n "spin_02_cv_end_LOCShape" -p "spin_02_cv_end_LOC";
	rename -uid "8F180444-40D4-4ED0-8119-289BE10931C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".los" -type "double3" 6 6 6 ;
createNode transform -n "spin_02_cv_end_CLS" -p "spin_02_cv_end_LOC";
	rename -uid "853849C1-42FE-046E-300F-D499C525BBF2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -55 9.2791929244995117 ;
	setAttr ".rp" -type "double3" 0 55 -9.2791929244995117 ;
	setAttr ".sp" -type "double3" 0 55 -9.2791929244995117 ;
createNode clusterHandle -n "spin_02_cv_end_CLSShape" -p "spin_02_cv_end_CLS";
	rename -uid "D0117B8C-4170-6011-38AA-7D8F2C72E5AA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 55 -9.2791929244995117 ;
createNode transform -n "spine_03_HLD" -p "body_HLD";
	rename -uid "27ED45FD-4780-BB46-352C-6AA5D3A9D501";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 0 -18.192914573427412 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".ry";
	setAttr ".ro" 1;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spine_03_HLDShape" -p "spine_03_HLD";
	rename -uid "F621F52F-4647-9C37-92D0-ADA4F81784CD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		19.590290622280612 19.590290622280616 0
		1.696433080777728e-15 27.704854688859694 0
		-19.590290622280612 19.590290622280609 0
		-27.704854688859704 1.4362245593812075e-15 0
		-19.590290622280612 -19.590290622280612 0
		-2.7752142424008063e-15 -27.704854688859708 0
		19.590290622280612 -19.590290622280609 0
		27.704854688859704 -3.7781012519498971e-15 0
		19.590290622280612 19.590290622280616 0
		1.696433080777728e-15 27.704854688859694 0
		-19.590290622280612 19.590290622280609 0
		;
createNode transform -n "spin_03_cv_star_LOC" -p "spine_03_HLD";
	rename -uid "1D54B1A0-4D39-9A66-90BF-40A7E29F4447";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 0 9.2791938781738281 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".drp" yes;
createNode locator -n "spin_03_cv_star_LOCShape" -p "spin_03_cv_star_LOC";
	rename -uid "B3792F6C-45AD-67DB-B9E2-6CA2D9DC009E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".los" -type "double3" 6 6 6 ;
createNode transform -n "spin_03_cv_star_CLS" -p "spin_03_cv_star_LOC";
	rename -uid "86473203-4537-2C5E-A5CF-DA94132C238B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -55 27.837577819824219 ;
	setAttr ".rp" -type "double3" 0 55 -27.837577819824219 ;
	setAttr ".sp" -type "double3" 0 55 -27.837577819824219 ;
createNode clusterHandle -n "spin_03_cv_star_CLSShape" -p "spin_03_cv_star_CLS";
	rename -uid "B5BC4634-43C6-BA9B-5924-89B465353F95";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 55 -27.837577819824219 ;
createNode transform -n "spin_03_cv_end_CLS" -p "spine_03_HLD";
	rename -uid "01064CDB-4D3F-96D5-B4B0-FDB81BCE4D6C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -55 46.395965576171875 ;
	setAttr ".rp" -type "double3" 0 55 -46.395965576171875 ;
	setAttr ".sp" -type "double3" 0 55 -46.395965576171875 ;
createNode clusterHandle -n "spin_03_cv_end_CLSShape" -p "spin_03_cv_end_CLS";
	rename -uid "842DBACB-4EA9-33DA-E451-84A326BE7C83";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 55 -46.395965576171875 ;
createNode transform -n "no_scale_NUL" -p "template_CTRL";
	rename -uid "75EEBCB1-4089-6ACC-0A60-6AB81A20511A";
	setAttr ".it" no;
createNode transform -n "spine_curve_NUL" -p "no_scale_NUL";
	rename -uid "476E12E8-4852-2B3E-7A97-37A341E86178";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode transform -n "spin_CRV" -p "spine_curve_NUL";
	rename -uid "05B897E4-4763-FF29-83C7-FCB860393CB9";
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 0 55 46.469341278076172 ;
	setAttr ".sp" -type "double3" 0 55 46.469341278076172 ;
createNode nurbsCurve -n "spin_CRVShape" -p "spin_CRV";
	rename -uid "42A9E8E0-4B0D-0AEB-8ADD-369C7F1B3910";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode nurbsCurve -n "spin_CRVShapeOrig" -p "spin_CRV";
	rename -uid "93043F0A-4561-4305-FC6B-068A483055A2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 18 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster1_1";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "cluster2_1";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".gtag[4].gtagnm" -type "string" "cluster3";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "cv[2]";
	setAttr ".gtag[5].gtagnm" -type "string" "cluster3_1";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "cv[2]";
	setAttr ".gtag[6].gtagnm" -type "string" "cluster4";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "cv[3]";
	setAttr ".gtag[7].gtagnm" -type "string" "cluster4_1";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "cv[3]";
	setAttr ".gtag[8].gtagnm" -type "string" "cluster5";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "cv[4]";
	setAttr ".gtag[9].gtagnm" -type "string" "cluster5_1";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "cv[4]";
	setAttr ".gtag[10].gtagnm" -type "string" "cluster6";
	setAttr ".gtag[10].gtagcmp" -type "componentList" 1 "cv[5]";
	setAttr ".gtag[11].gtagnm" -type "string" "cluster6_1";
	setAttr ".gtag[11].gtagcmp" -type "componentList" 1 "cv[5]";
	setAttr ".gtag[12].gtagnm" -type "string" "cluster1_2";
	setAttr ".gtag[12].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[13].gtagnm" -type "string" "cluster2_2";
	setAttr ".gtag[13].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".gtag[14].gtagnm" -type "string" "cluster3_2";
	setAttr ".gtag[14].gtagcmp" -type "componentList" 1 "cv[2]";
	setAttr ".gtag[15].gtagnm" -type "string" "cluster4_2";
	setAttr ".gtag[15].gtagcmp" -type "componentList" 1 "cv[3]";
	setAttr ".gtag[16].gtagnm" -type "string" "cluster5_2";
	setAttr ".gtag[16].gtagcmp" -type "componentList" 1 "cv[4]";
	setAttr ".gtag[17].gtagnm" -type "string" "cluster6_2";
	setAttr ".gtag[17].gtagcmp" -type "componentList" 1 "cv[5]";
	setAttr ".cc" -type "nurbsCurve" 
		3 3 0 no 3
		8 0 0 0 1 3 4 4 4
		6
		0 55 46.469341278076172
		0 55 27.837577819824219
		0 55 9.2791929244995117
		0 55 -9.2791929244995117
		0 55 -27.837577819824219
		0 55 -46.395965576171875
		

		"gtag" 18
		"cluster1" 1 "cv[0]"
		"cluster1_1" 1 "cv[0]"
		"cluster1_2" 1 "cv[0]"
		"cluster2" 1 "cv[1]"
		"cluster2_1" 1 "cv[1]"
		"cluster2_2" 1 "cv[1]"
		"cluster3" 1 "cv[2]"
		"cluster3_1" 1 "cv[2]"
		"cluster3_2" 1 "cv[2]"
		"cluster4" 1 "cv[3]"
		"cluster4_1" 1 "cv[3]"
		"cluster4_2" 1 "cv[3]"
		"cluster5" 1 "cv[4]"
		"cluster5_1" 1 "cv[4]"
		"cluster5_2" 1 "cv[4]"
		"cluster6" 1 "cv[5]"
		"cluster6_1" 1 "cv[5]"
		"cluster6_2" 1 "cv[5]";
createNode transform -n "tail_start_con_NUL" -p "template_CTRL";
	rename -uid "AC1C9988-4388-DE70-0265-60A769D4C428";
createNode transform -n "tail_start_HLD" -p "tail_start_con_NUL";
	rename -uid "F3F7AA4F-45BE-2539-4950-108BFDBA845F";
	addAttr -ci true -sn "Tail_Attr" -ln "Tail_Attr" -min 0 -max 0 -en "------" -at "enum";
	addAttr -ci true -sn "Num_Of_Jnt" -ln "Num_Of_Jnt" -min 0 -max 2 -en "3:5:8" -at "enum";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".ry";
	setAttr ".ro" 1;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -cb on ".Tail_Attr";
	setAttr -cb on ".Num_Of_Jnt" 2;
createNode nurbsCurve -n "tail_start_HLDShape" -p "tail_start_HLD";
	rename -uid "C7AFAFE0-4F79-A4C3-4EF4-5C8AFBD9F225";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.7527239496269678 5.7527239496269722 0
		4.9816061440304349e-16 8.1355802301509712 0
		-5.7527239496269678 5.752723949626966 0
		-8.1355802301509748 -6.3676895430002581e-15 0
		-5.7527239496269678 -5.7527239496269678 0
		-8.1494663583231676e-16 -8.1355802301509765 0
		5.7527239496269678 -5.752723949626966 0
		8.1355802301509748 -7.8988856622597931e-15 0
		5.7527239496269678 5.7527239496269722 0
		4.9816061440304349e-16 8.1355802301509712 0
		-5.7527239496269678 5.752723949626966 0
		;
createNode transform -n "tail_end_HLD" -p "tail_start_HLD";
	rename -uid "29B4CEE9-4803-3FAA-70A5-13A336D9728D";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 0 -43.168886908052329 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".ry";
	setAttr ".ro" 1;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode nurbsCurve -n "tail_end_HLDShape" -p "tail_end_HLD";
	rename -uid "4185003F-4673-BA55-788B-FA8090448088";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.7471152463778621 5.7471152463778648 0
		4.9767492534842404e-16 8.1276483259487549 0
		-5.7471152463778621 5.7471152463778568 0
		-8.1276483259487584 -6.3614812699557212e-15 0
		-5.7471152463778621 -5.7471152463778568 0
		-8.1415209156350362e-16 -8.1276483259487602 0
		5.7471152463778621 -5.7471152463778568 0
		8.1276483259487584 -7.8911845269252692e-15 0
		5.7471152463778621 5.7471152463778648 0
		4.9767492534842404e-16 8.1276483259487549 0
		-5.7471152463778621 5.7471152463778568 0
		;
createNode transform -n "tail_3Jnt_01_con_NUL" -p "tail_start_HLD";
	rename -uid "6C1869CE-49DD-8AB1-1B37-CE8A194622DC";
createNode transform -n "tail_3Jnt_01_HLD" -p "tail_3Jnt_01_con_NUL";
	rename -uid "DCF91170-470A-9B6F-3363-C19D76F217D1";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".ry";
	setAttr ".ro" 1;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail_3Jnt_01_HLDShape" -p "tail_3Jnt_01_HLD";
	rename -uid "B023383E-4C85-B534-FD8B-2983A6C6D83D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5760517362417041 3.5760517362417059 0
		3.0967036584099509e-16 5.0573008651408689 0
		-3.5760517362417041 3.5760517362417037 0
		-5.0573008651408715 -3.9583312958326115e-15 0
		-3.5760517362417041 -3.5760517362417041 0
		-5.0659328650759761e-16 -5.0573008651408724 0
		3.5760517362417041 -3.5760517362417037 0
		5.0573008651408715 -4.9101649990923832e-15 0
		3.5760517362417041 3.5760517362417059 0
		3.0967036584099509e-16 5.0573008651408689 0
		-3.5760517362417041 3.5760517362417037 0
		;
createNode parentConstraint -n "tail_3Jnt_01_con_NUL_parentConstraint1" -p "tail_3Jnt_01_con_NUL";
	rename -uid "57DB3B56-4D80-F22D-2A85-80887B05909C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tail_start_HLDW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "tail_end_HLDW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0 0 -17.570128583381646 ;
	setAttr -k on ".w0" 0.5;
	setAttr -k on ".w1" 0.5;
createNode transform -n "tail_5Jnt_01_con_NUL" -p "tail_start_HLD";
	rename -uid "091E5F7A-48FF-EE54-E459-23B8FDDD74D0";
createNode transform -n "tail_5Jnt_01_HLD" -p "tail_5Jnt_01_con_NUL";
	rename -uid "30B1FF87-4D36-E785-00DB-CC8A39F45337";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".ry";
	setAttr ".ro" 1;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail_5Jnt_01_HLDShape" -p "tail_5Jnt_01_HLD";
	rename -uid "82799E1E-4E02-00A8-E9ED-018B4CC493CF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5760517362417041 3.5760517362417059 0
		3.0967036584099509e-16 5.0573008651408689 0
		-3.5760517362417041 3.5760517362417037 0
		-5.0573008651408715 -3.9583312958326115e-15 0
		-3.5760517362417041 -3.5760517362417041 0
		-5.0659328650759761e-16 -5.0573008651408724 0
		3.5760517362417041 -3.5760517362417037 0
		5.0573008651408715 -4.9101649990923832e-15 0
		3.5760517362417041 3.5760517362417059 0
		3.0967036584099509e-16 5.0573008651408689 0
		-3.5760517362417041 3.5760517362417037 0
		;
createNode parentConstraint -n "tail_5Jnt_01_con_NUL_parentConstraint1" -p "tail_5Jnt_01_con_NUL";
	rename -uid "9273E597-4672-532A-23FA-97B9A3420D4D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tail_start_HLDW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "tail_end_HLDW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0 0 -17.570128583381646 ;
	setAttr -k on ".w0" 0.75;
	setAttr -k on ".w1" 0.25;
createNode transform -n "tail_5Jnt_02_con_NUL" -p "tail_start_HLD";
	rename -uid "437F1811-41FB-3886-ADC8-6CBF74142704";
createNode transform -n "tail_5Jnt_02_HLD" -p "tail_5Jnt_02_con_NUL";
	rename -uid "B4563A1D-403B-DB13-1B37-D684AC3DA483";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".ry";
	setAttr ".ro" 1;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail_5Jnt_02_HLDShape" -p "tail_5Jnt_02_HLD";
	rename -uid "CEFBBBD5-42E1-AAE8-42E1-99B38E298397";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5760517362417041 3.5760517362417059 0
		3.0967036584099509e-16 5.0573008651408689 0
		-3.5760517362417041 3.5760517362417037 0
		-5.0573008651408715 -3.9583312958326115e-15 0
		-3.5760517362417041 -3.5760517362417041 0
		-5.0659328650759761e-16 -5.0573008651408724 0
		3.5760517362417041 -3.5760517362417037 0
		5.0573008651408715 -4.9101649990923832e-15 0
		3.5760517362417041 3.5760517362417059 0
		3.0967036584099509e-16 5.0573008651408689 0
		-3.5760517362417041 3.5760517362417037 0
		;
createNode parentConstraint -n "tail_5Jnt_02_con_NUL_parentConstraint1" -p "tail_5Jnt_02_con_NUL";
	rename -uid "722149DF-4E5C-026B-F8D5-928918083AF4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tail_start_HLDW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "tail_end_HLDW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0 0 -17.570128583381646 ;
	setAttr -k on ".w0" 0.5;
	setAttr -k on ".w1" 0.5;
createNode transform -n "tail_5Jnt_03_con_NUL" -p "tail_start_HLD";
	rename -uid "0A4990AF-4378-52F2-9963-AEB98005C3BA";
createNode transform -n "tail_5Jnt_03_HLD" -p "tail_5Jnt_03_con_NUL";
	rename -uid "E2FF16B4-4110-A522-D423-60A64C6A1611";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".ry";
	setAttr ".ro" 1;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail_5Jnt_03_HLDShape" -p "tail_5Jnt_03_HLD";
	rename -uid "A7D97282-4E00-BA87-4436-03893010D4CB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5760517362417041 3.5760517362417059 0
		3.0967036584099509e-16 5.0573008651408689 0
		-3.5760517362417041 3.5760517362417037 0
		-5.0573008651408715 -3.9583312958326115e-15 0
		-3.5760517362417041 -3.5760517362417041 0
		-5.0659328650759761e-16 -5.0573008651408724 0
		3.5760517362417041 -3.5760517362417037 0
		5.0573008651408715 -4.9101649990923832e-15 0
		3.5760517362417041 3.5760517362417059 0
		3.0967036584099509e-16 5.0573008651408689 0
		-3.5760517362417041 3.5760517362417037 0
		;
createNode parentConstraint -n "tail_5Jnt_03_con_NUL_parentConstraint1" -p "tail_5Jnt_03_con_NUL";
	rename -uid "1DF5306D-4CFC-4F62-F9CF-878934892370";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tail_start_HLDW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "tail_end_HLDW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0 0 -17.570128583381646 ;
	setAttr -k on ".w0" 0.25;
	setAttr -k on ".w1" 0.75;
createNode transform -n "tail_7Jnt_01_con_NUL" -p "tail_start_HLD";
	rename -uid "8672DFCD-43B4-5988-FACB-869C869CDB1D";
createNode transform -n "tail_7Jnt_01_HLD" -p "tail_7Jnt_01_con_NUL";
	rename -uid "AC894D34-405E-76ED-A0D3-CABB06798982";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".ry";
	setAttr ".ro" 1;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail_7Jnt_01_HLDShape" -p "tail_7Jnt_01_HLD";
	rename -uid "FBB8B3B0-4544-24A6-6E57-EAB3AD4DEDB3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5760517362417041 3.5760517362417059 0
		3.0967036584099509e-16 5.0573008651408689 0
		-3.5760517362417041 3.5760517362417037 0
		-5.0573008651408715 -3.9583312958326115e-15 0
		-3.5760517362417041 -3.5760517362417041 0
		-5.0659328650759761e-16 -5.0573008651408724 0
		3.5760517362417041 -3.5760517362417037 0
		5.0573008651408715 -4.9101649990923832e-15 0
		3.5760517362417041 3.5760517362417059 0
		3.0967036584099509e-16 5.0573008651408689 0
		-3.5760517362417041 3.5760517362417037 0
		;
createNode parentConstraint -n "tail_7Jnt_01_con_NUL_parentConstraint1" -p "tail_7Jnt_01_con_NUL";
	rename -uid "46DB0967-422A-316B-9A2D-C78972D36B62";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tail_start_HLDW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "tail_end_HLDW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0 0 -17.570128583381646 ;
	setAttr -k on ".w0" 0.83333333333333326;
	setAttr -k on ".w1" 0.16666666666666671;
createNode transform -n "tail_7Jnt_02_con_NUL" -p "tail_start_HLD";
	rename -uid "F46DEFCB-41C9-DDCC-E6FD-EC940C59CE06";
createNode transform -n "tail_7Jnt_02_HLD" -p "tail_7Jnt_02_con_NUL";
	rename -uid "454467CC-4FAA-1411-F08B-35AE03E62E43";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".ry";
	setAttr ".ro" 1;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail_7Jnt_02_HLDShape" -p "tail_7Jnt_02_HLD";
	rename -uid "D3A0C75E-4746-113C-4334-2D98124AC709";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5760517362417041 3.5760517362417059 0
		3.0967036584099509e-16 5.0573008651408689 0
		-3.5760517362417041 3.5760517362417037 0
		-5.0573008651408715 -3.9583312958326115e-15 0
		-3.5760517362417041 -3.5760517362417041 0
		-5.0659328650759761e-16 -5.0573008651408724 0
		3.5760517362417041 -3.5760517362417037 0
		5.0573008651408715 -4.9101649990923832e-15 0
		3.5760517362417041 3.5760517362417059 0
		3.0967036584099509e-16 5.0573008651408689 0
		-3.5760517362417041 3.5760517362417037 0
		;
createNode parentConstraint -n "tail_7Jnt_02_con_NUL_parentConstraint1" -p "tail_7Jnt_02_con_NUL";
	rename -uid "50BAF47B-4937-09C0-F090-50AF3698FE38";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tail_start_HLDW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "tail_end_HLDW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0 0 -17.570128583381646 ;
	setAttr -k on ".w0" 0.66666666666666663;
	setAttr -k on ".w1" 0.33333333333333331;
createNode transform -n "tail_7Jnt_03_con_NUL" -p "tail_start_HLD";
	rename -uid "9BDF253A-4FB3-1AEF-3B45-33BF6F977636";
createNode transform -n "tail_7Jnt_03_HLD" -p "tail_7Jnt_03_con_NUL";
	rename -uid "05326A30-48D2-31F9-4D5E-EB9D4FE00826";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".ry";
	setAttr ".ro" 1;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail_7Jnt_03_HLDShape" -p "tail_7Jnt_03_HLD";
	rename -uid "E911343F-4A35-E1CE-EAC2-EC89C278B785";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5760517362417041 3.5760517362417059 0
		3.0967036584099509e-16 5.0573008651408689 0
		-3.5760517362417041 3.5760517362417037 0
		-5.0573008651408715 -3.9583312958326115e-15 0
		-3.5760517362417041 -3.5760517362417041 0
		-5.0659328650759761e-16 -5.0573008651408724 0
		3.5760517362417041 -3.5760517362417037 0
		5.0573008651408715 -4.9101649990923832e-15 0
		3.5760517362417041 3.5760517362417059 0
		3.0967036584099509e-16 5.0573008651408689 0
		-3.5760517362417041 3.5760517362417037 0
		;
createNode parentConstraint -n "tail_7Jnt_03_con_NUL_parentConstraint1" -p "tail_7Jnt_03_con_NUL";
	rename -uid "21BD577E-4F91-7481-D2A3-A1988E70F939";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tail_start_HLDW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "tail_end_HLDW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0 0 -17.570128583381646 ;
	setAttr -k on ".w0" 0.5;
	setAttr -k on ".w1" 0.5;
createNode transform -n "tail_7Jnt_04_con_NUL" -p "tail_start_HLD";
	rename -uid "9D19AEA1-4AC9-52CE-C3A7-F88D0EA5187A";
createNode transform -n "tail_7Jnt_04_HLD" -p "tail_7Jnt_04_con_NUL";
	rename -uid "65F44FA9-4E69-04B9-020A-A0A7E7C281B0";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".ry";
	setAttr ".ro" 1;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail_7Jnt_04_HLDShape" -p "tail_7Jnt_04_HLD";
	rename -uid "4DC2D8CF-40C8-F623-DDCB-8497D2A2CCAC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5760517362417041 3.5760517362417059 0
		3.0967036584099509e-16 5.0573008651408689 0
		-3.5760517362417041 3.5760517362417037 0
		-5.0573008651408715 -3.9583312958326115e-15 0
		-3.5760517362417041 -3.5760517362417041 0
		-5.0659328650759761e-16 -5.0573008651408724 0
		3.5760517362417041 -3.5760517362417037 0
		5.0573008651408715 -4.9101649990923832e-15 0
		3.5760517362417041 3.5760517362417059 0
		3.0967036584099509e-16 5.0573008651408689 0
		-3.5760517362417041 3.5760517362417037 0
		;
createNode parentConstraint -n "tail_7Jnt_04_con_NUL_parentConstraint1" -p "tail_7Jnt_04_con_NUL";
	rename -uid "6449AB53-44DD-605E-CA30-FFBC998FE24F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tail_start_HLDW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "tail_end_HLDW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0 0 -17.570128583381646 ;
	setAttr -k on ".w0" 0.333;
	setAttr -k on ".w1" 0.66666666666666663;
createNode transform -n "tail_7Jnt_05_con_NUL" -p "tail_start_HLD";
	rename -uid "EEDFEBD5-4FB6-961D-8E9D-4BA9715EDCDC";
createNode transform -n "tail_7Jnt_05_HLD" -p "tail_7Jnt_05_con_NUL";
	rename -uid "E3D6E2E7-4750-1377-6B6E-E9BDADC15FBA";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".ry";
	setAttr ".ro" 1;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail_7Jnt_05_HLDShape" -p "tail_7Jnt_05_HLD";
	rename -uid "464AD973-4169-8890-A7D0-29AFAE2732D3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5760517362417041 3.5760517362417059 0
		3.0967036584099509e-16 5.0573008651408689 0
		-3.5760517362417041 3.5760517362417037 0
		-5.0573008651408715 -3.9583312958326115e-15 0
		-3.5760517362417041 -3.5760517362417041 0
		-5.0659328650759761e-16 -5.0573008651408724 0
		3.5760517362417041 -3.5760517362417037 0
		5.0573008651408715 -4.9101649990923832e-15 0
		3.5760517362417041 3.5760517362417059 0
		3.0967036584099509e-16 5.0573008651408689 0
		-3.5760517362417041 3.5760517362417037 0
		;
createNode parentConstraint -n "tail_7Jnt_05_con_NUL_parentConstraint1" -p "tail_7Jnt_05_con_NUL";
	rename -uid "091E9FBF-4EC6-039F-52CD-B8886252C372";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tail_start_HLDW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "tail_end_HLDW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0 0 -17.570128583381646 ;
	setAttr -k on ".w0" 0.167;
	setAttr -k on ".w1" 0.83333333333333326;
createNode pointConstraint -n "tail_start_con_NUL_pointConstraint1" -p "tail_start_con_NUL";
	rename -uid "A05CE7B0-408E-DF40-1B83-4EAACF51ED95";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine_03_HLDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0 4.8922267493113765 -9.2633821544642387 ;
	setAttr ".rst" -type "double3" 0 59.892226749311376 -46.380153852462286 ;
	setAttr -k on ".w0";
createNode transform -n "tail_ctrl_NUL" -p "template_CTRL";
	rename -uid "34122847-44E9-2526-CC7B-568DD597EC4D";
	setAttr ".v" no;
createNode transform -n "tail_01_NUL" -p "tail_ctrl_NUL";
	rename -uid "DE6B3E9D-4008-59E1-362E-E9BD259B826E";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode transform -n "tail_01_CTRL" -p "tail_01_NUL";
	rename -uid "331E6A12-4049-388B-E298-5692D0E52654";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr ".ro" 1;
createNode nurbsCurve -n "tail_01_CTRLShape" -p "tail_01_CTRL";
	rename -uid "BCBD9344-4978-E6C3-E22D-BE8889719ECC";
	setAttr -k off ".v";
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.7595965523627939 5.7595965523627974 0
		4.9875575159916248e-16 8.1452995581487837 0
		-5.7595965523627939 5.7595965523627939 0
		-8.1452995581487908 -5.9976777439392208e-15 0
		-5.7595965523627939 -5.7595965523627939 0
		-8.1592022756521011e-16 -8.1452995581487908 0
		5.7595965523627939 -5.7595965523627939 0
		8.1452995581487908 -7.5307031362058489e-15 0
		5.7595965523627939 5.7595965523627974 0
		4.9875575159916248e-16 8.1452995581487837 0
		-5.7595965523627939 5.7595965523627939 0
		;
createNode transform -n "tail_02_NUL" -p "tail_01_CTRL";
	rename -uid "6D2DD07C-427B-7A5D-3101-4C8584C375F4";
createNode transform -n "tail_02_CTRL" -p "tail_02_NUL";
	rename -uid "B9E48CDA-488F-94C2-46AB-2282BC3C8F62";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr ".ro" 1;
createNode nurbsCurve -n "tail_02_CTRLShape" -p "tail_02_CTRL";
	rename -uid "DC333A9D-4321-0108-9A6C-9F9CD8D45865";
	setAttr -k off ".v";
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5998579325970095 3.5998579325970108 0
		3.1173187783197594e-16 5.0909679108950625 0
		-3.5998579325970095 3.5998579325970081 0
		-5.0909679108950661 -6.4130626758359721e-15 0
		-3.5998579325970095 -3.5998579325970099 0
		-5.0996573750674176e-16 -5.0909679108950678 0
		3.5998579325970095 -3.5998579325970099 0
		5.0909679108950661 -7.3712328478352047e-15 0
		3.5998579325970095 3.5998579325970108 0
		3.1173187783197594e-16 5.0909679108950625 0
		-3.5998579325970095 3.5998579325970081 0
		;
createNode transform -n "tail_03_NUL" -p "tail_02_CTRL";
	rename -uid "B818658B-4EAE-064F-E796-AFA505087224";
createNode transform -n "tail_03_CTRL" -p "tail_03_NUL";
	rename -uid "5FDB589F-4270-F1BC-5D1E-76B387894CD2";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr ".ro" 1;
createNode nurbsCurve -n "tail_03_CTRLShape" -p "tail_03_CTRL";
	rename -uid "23382F6D-4C1B-0F71-4B2C-DCA6F3AEFDAD";
	setAttr -k off ".v";
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5998579325970095 3.5998579325970108 0
		3.1173187783197594e-16 5.0909679108950625 0
		-3.5998579325970095 3.5998579325970081 0
		-5.0909679108950661 -6.4130626758359721e-15 0
		-3.5998579325970095 -3.5998579325970099 0
		-5.0996573750674176e-16 -5.0909679108950678 0
		3.5998579325970095 -3.5998579325970099 0
		5.0909679108950661 -7.3712328478352047e-15 0
		3.5998579325970095 3.5998579325970108 0
		3.1173187783197594e-16 5.0909679108950625 0
		-3.5998579325970095 3.5998579325970081 0
		;
createNode transform -n "tail_04_NUL" -p "tail_03_CTRL";
	rename -uid "811BFC55-46D8-3B3F-64C2-A9B13EF0598C";
createNode transform -n "tail_04_CTRL" -p "tail_04_NUL";
	rename -uid "0E7C8C97-474F-4A5E-504A-4C8E78331D36";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr ".ro" 1;
createNode nurbsCurve -n "tail_04_CTRLShape" -p "tail_04_CTRL";
	rename -uid "E3A46E02-4741-0AC9-D1E3-D4A1D38036F8";
	setAttr -k off ".v";
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5998579325970095 3.5998579325970108 0
		3.1173187783197594e-16 5.0909679108950625 0
		-3.5998579325970095 3.5998579325970081 0
		-5.0909679108950661 -6.4130626758359721e-15 0
		-3.5998579325970095 -3.5998579325970099 0
		-5.0996573750674176e-16 -5.0909679108950678 0
		3.5998579325970095 -3.5998579325970099 0
		5.0909679108950661 -7.3712328478352047e-15 0
		3.5998579325970095 3.5998579325970108 0
		3.1173187783197594e-16 5.0909679108950625 0
		-3.5998579325970095 3.5998579325970081 0
		;
createNode transform -n "tail_05_NUL" -p "tail_04_CTRL";
	rename -uid "C1E8AE98-490C-E737-3ED0-3B9D0BF89AF6";
createNode transform -n "tail_05_CTRL" -p "tail_05_NUL";
	rename -uid "0C19F103-4821-33C9-BA39-6A85581C8019";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr ".ro" 1;
createNode nurbsCurve -n "tail_05_CTRLShape" -p "tail_05_CTRL";
	rename -uid "320AE8DA-4A89-BB45-53CC-68AB9BB9A6B5";
	setAttr -k off ".v";
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5998579325970095 3.5998579325970108 0
		3.1173187783197594e-16 5.0909679108950625 0
		-3.5998579325970095 3.5998579325970081 0
		-5.0909679108950661 -6.4130626758359721e-15 0
		-3.5998579325970095 -3.5998579325970099 0
		-5.0996573750674176e-16 -5.0909679108950678 0
		3.5998579325970095 -3.5998579325970099 0
		5.0909679108950661 -7.3712328478352047e-15 0
		3.5998579325970095 3.5998579325970108 0
		3.1173187783197594e-16 5.0909679108950625 0
		-3.5998579325970095 3.5998579325970081 0
		;
createNode transform -n "tail_06_NUL" -p "tail_05_CTRL";
	rename -uid "BA9E579D-4152-6E69-324D-DE85F9C8816A";
createNode transform -n "tail_06_CTRL" -p "tail_06_NUL";
	rename -uid "CEB15255-4EDD-18C4-94D2-469AA8C02CF1";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr ".ro" 1;
createNode nurbsCurve -n "tail_06_CTRLShape" -p "tail_06_CTRL";
	rename -uid "8BE98F5A-4223-6D8B-0762-ACB73130E9EF";
	setAttr -k off ".v";
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5998579325970095 3.5998579325970108 0
		3.1173187783197594e-16 5.0909679108950625 0
		-3.5998579325970095 3.5998579325970081 0
		-5.0909679108950661 -6.4130626758359721e-15 0
		-3.5998579325970095 -3.5998579325970099 0
		-5.0996573750674176e-16 -5.0909679108950678 0
		3.5998579325970095 -3.5998579325970099 0
		5.0909679108950661 -7.3712328478352047e-15 0
		3.5998579325970095 3.5998579325970108 0
		3.1173187783197594e-16 5.0909679108950625 0
		-3.5998579325970095 3.5998579325970081 0
		;
createNode transform -n "tail_07_NUL" -p "tail_06_CTRL";
	rename -uid "D561FFDC-4C11-F19C-7F14-E68EB6542A64";
createNode transform -n "tail_07_CTRL" -p "tail_07_NUL";
	rename -uid "B103DC55-4EFD-EF72-5E76-4D8C6A76A4A5";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr ".ro" 1;
createNode nurbsCurve -n "tail_07_CTRLShape" -p "tail_07_CTRL";
	rename -uid "FC5FEB83-47CA-6C4C-D8D6-C2A6DC8BD42E";
	setAttr -k off ".v";
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5998579325970095 3.5998579325970108 0
		3.1173187783197594e-16 5.0909679108950625 0
		-3.5998579325970095 3.5998579325970081 0
		-5.0909679108950661 -6.4130626758359721e-15 0
		-3.5998579325970095 -3.5998579325970099 0
		-5.0996573750674176e-16 -5.0909679108950678 0
		3.5998579325970095 -3.5998579325970099 0
		5.0909679108950661 -7.3712328478352047e-15 0
		3.5998579325970095 3.5998579325970108 0
		3.1173187783197594e-16 5.0909679108950625 0
		-3.5998579325970095 3.5998579325970081 0
		;
createNode joint -n "tail_07_JNT" -p "tail_07_CTRL";
	rename -uid "65028379-46DC-F6AB-9EE3-8A8345AA6F10";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "tail_06_JNT" -p "tail_06_CTRL";
	rename -uid "F2410847-47BB-B8D8-2548-8CA34D71F851";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "tail_05_JNT" -p "tail_05_CTRL";
	rename -uid "A66F3B76-422D-3A96-5283-C283F7969ECC";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "tail_04_JNT" -p "tail_04_CTRL";
	rename -uid "8B4EC1CA-4648-C63C-71FE-89AD479760EB";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "tail_03_JNT" -p "tail_03_CTRL";
	rename -uid "47D37A44-4952-EBAF-BFF3-2786C5B3F0E4";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "tail_02_JNT" -p "tail_02_CTRL";
	rename -uid "FCAA0D91-4A98-D1BE-7DC2-65932AB4E247";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "tail_01_JNT" -p "tail_01_CTRL";
	rename -uid "C5BD15B4-42FA-C3B2-C899-5B940DB0C421";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode transform -n "head_bottom_con_NUL" -p "template_CTRL";
	rename -uid "A79EEEB2-4502-7DB1-9982-D89B407A3FD1";
	setAttr ".r" -type "double3" -90 0 0 ;
createNode joint -n "head_bottom_JNT" -p "head_bottom_con_NUL";
	rename -uid "3206C287-45F5-B320-7AE7-039653ABA967";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
createNode joint -n "head_top_JNT" -p "head_bottom_JNT";
	rename -uid "3FE76AD3-44DF-5ACC-38DB-DF961C2AFB8D";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 11.746017580539799 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.6;
createNode joint -n "nose_JNT" -p "head_bottom_JNT";
	rename -uid "8CAC0ACE-4D25-F9C8-B5C8-608382E1C128";
	setAttr ".t" -type "double3" 0 -23.603179605210087 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.6;
createNode pointConstraint -n "head_bottom_con_NUL_pointConstraint1" -p "head_bottom_con_NUL";
	rename -uid "50F351FC-491E-70DF-8337-F396AC7672C2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "head_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 72.282734174326094 59.502219080379732 ;
	setAttr -k on ".w0";
createNode transform -n "neck_con_NUL" -p "template_CTRL";
	rename -uid "259500BB-407C-E98C-AA7E-EA9BB8EA16C5";
createNode joint -n "neck_JNT" -p "neck_con_NUL";
	rename -uid "17A7A239-4ED2-72AB-0647-1B8ACC6985F1";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" 52.284515417807846 0 0 ;
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".jo" -type "double3" -52.284515417807846 0 0 ;
	setAttr ".radi" 1.6;
createNode joint -n "head_JNT" -p "neck_JNT";
	rename -uid "EC933BD7-4665-85B1-8A36-A392927C9D0D";
	setAttr ".t" -type "double3" 0 3.1086244689504383e-14 27.426735232659421 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".radi" 2.5;
createNode parentConstraint -n "neck_con_NUL_parentConstraint1" -p "neck_con_NUL";
	rename -uid "D0CA8AF7-47AD-5EBA-3D0D-88AA0FD11E33";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine_01_HLDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" -37.715484582192154 0 0 ;
	setAttr ".lr" -type "double3" -37.715484582192161 0 0 ;
	setAttr ".rst" -type "double3" 0 55 37.153459548950195 ;
	setAttr ".rsrr" -type "double3" -37.715484582192154 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "neck_ctrl_NUL" -p "template_CTRL";
	rename -uid "A99A6175-426A-DF61-8A43-B9B48444DB9E";
	setAttr ".v" no;
createNode transform -n "neck_NUL" -p "neck_ctrl_NUL";
	rename -uid "0B805B04-4308-3D4D-C8B2-19A9BE425610";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode transform -n "neck_CTRL" -p "neck_NUL";
	rename -uid "5DEE669F-4A04-B239-4135-499AEEE1E777";
	addAttr -ci true -sn "Head_Attr" -ln "Head_Attr" -min 0 -max 0 -en "------" -at "enum";
	addAttr -ci true -sn "Head_Follow" -ln "Head_Follow" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr ".ro" 1;
	setAttr -cb on ".Head_Attr";
	setAttr -k on ".Head_Follow";
createNode nurbsCurve -n "neck_CTRLShape" -p "neck_CTRL";
	rename -uid "6E3862FE-431B-7A95-5476-549812B484B4";
	setAttr -k off ".v";
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.997866758678397 12.997866758678393 0
		1.1255581437819552e-15 18.381759452041397 0
		-12.997866758678397 12.997866758678381 0
		-18.381759452041432 -7.8544849619209801e-15 0
		-12.997866758678397 -12.997866758678381 0
		-1.8413134161719216e-15 -18.381759452041422 0
		12.997866758678397 -12.997866758678381 0
		18.381759452041432 -1.1314112664173479e-14 0
		12.997866758678397 12.997866758678393 0
		1.1255581437819552e-15 18.381759452041397 0
		-12.997866758678397 12.997866758678381 0
		;
createNode transform -n "head_NUL" -p "neck_CTRL";
	rename -uid "B75F6C7A-42B5-E693-1480-F19B34D50ED0";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode transform -n "head_CTRL" -p "head_NUL";
	rename -uid "0587216B-4348-73E9-B645-F0BE58801BBF";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 17;
	setAttr ".ro" 1;
createNode nurbsCurve -n "head_CTRLShape" -p "head_CTRL";
	rename -uid "537A3905-4BCD-1DB9-7315-3795DAD1CAC4";
	setAttr -k off ".v";
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.982863872234676 12.982863872234688 0
		1.1242589597442576e-15 18.360542166557963 0
		-12.982863872234676 12.982863872234672 0
		-18.360542166557945 -1.3547513935368209e-14 0
		-12.982863872234676 -12.982863872234676 0
		-1.8391880661738729e-15 -18.360542166557966 0
		12.982863872234676 -12.982863872234676 0
		18.360542166557945 -1.7003148336064557e-14 0
		12.982863872234676 12.982863872234688 0
		1.1242589597442576e-15 18.360542166557963 0
		-12.982863872234676 12.982863872234672 0
		;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "86DFB300-4AC2-E8C1-7E8E-AAB0610695B8";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "0919297A-4701-394C-9218-6486C8D62F4A";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C64BE90C-45E4-FD6D-EB0E-CA9A17E27E14";
createNode displayLayerManager -n "layerManager";
	rename -uid "271CB721-4D69-FF6A-425E-E081D3DAAF5D";
	setAttr ".cdl" 4;
	setAttr -s 2 ".dli[1]"  4;
createNode displayLayer -n "defaultLayer";
	rename -uid "CB9B671B-403D-093F-7833-1BA37CD6A69F";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D9A5B278-4C4D-3F7B-03E8-C781BA2935AF";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "187D9FD8-48B3-74EC-4659-89B660648DAD";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "BCAF793C-45C4-FA74-ADD9-9EBEA87E8DAD";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 689\n            -height 340\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 689\n            -height 339\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 689\n            -height 339\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1483\n            -height 723\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n"
		+ "            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1483\\n    -height 723\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1483\\n    -height 723\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "662FA345-4E18-3BB6-6D78-C7AFC435CC63";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "1EB41522-41FC-C771-5C63-E28659EDE04F";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".tol" 0;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "89C798C1-462E-0BD5-B4F8-3D8AFD5FB7D6";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".tol" 0;
createNode distanceBetween -n "front_distance_L_UTL";
	rename -uid "5CA8A3ED-4163-D817-FD8E-0AAC5F76B251";
createNode multiplyDivide -n "front_distance_scale_expose_L_UTL";
	rename -uid "108C8ED6-4C70-CBE3-7359-D5ACFDF02441";
	setAttr ".op" 2;
createNode condition -n "front_distance_condition_L_UTL";
	rename -uid "30C36C8E-476E-3888-8A8C-A9AE096B2109";
	setAttr ".op" 3;
createNode addDoubleLinear -n "front_distance_total_L_UTL";
	rename -uid "28784813-45F1-0243-2F9D-3397BF145C82";
	setAttr ".ihi" 2;
createNode plusMinusAverage -n "front_distance_subtract_L_UTL";
	rename -uid "71E87345-46AC-FBCD-41C8-0584903C5685";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode addDoubleLinear -n "front_distance_add_knee_L_UTL";
	rename -uid "B3AA2215-49F3-6893-24AC-A0B29CC13BE7";
	setAttr ".ihi" 2;
createNode addDoubleLinear -n "front_distance_add_ankle_L_UTL";
	rename -uid "0BB14B58-49A1-2BF5-F16C-CBA6C6D9C725";
	setAttr ".ihi" 2;
createNode distanceBetween -n "front_distance_R_UTL";
	rename -uid "2D239364-4A27-EDB1-D502-629BBBDDEBD8";
createNode multiplyDivide -n "front_distance_scale_expose_R_UTL";
	rename -uid "DC0C3319-442D-EDF6-21A3-578F14A9837B";
	setAttr ".op" 2;
createNode condition -n "front_distance_condition_R_UTL";
	rename -uid "4B7C152D-4C31-06C1-3A36-9D9341C40FFD";
	setAttr ".op" 5;
createNode addDoubleLinear -n "front_distance_total_R_UTL";
	rename -uid "997B3F43-45F4-17EA-DFAA-C9A0CDF12788";
	setAttr ".ihi" 2;
createNode plusMinusAverage -n "front_distance_subtract_R_UTL";
	rename -uid "01C5E8B9-4C91-D3CF-FC03-EE9C41E3EDCD";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode addDoubleLinear -n "front_distance_add_knee_R_UTL";
	rename -uid "25700247-4DA7-AC34-CABB-19BE11EEC3AB";
	setAttr ".ihi" 2;
createNode addDoubleLinear -n "front_distance_add_ankle_R_UTL";
	rename -uid "EC091EF5-401D-A48C-2E58-788BA5ADE7FE";
	setAttr ".ihi" 2;
createNode multiplyDivide -n "front_distance_divide_2_L_UTL";
	rename -uid "4292F24F-4B37-0464-FEEF-35815A572611";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode multiplyDivide -n "front_distance_divide_2_R_UTL";
	rename -uid "27F2E6BF-41AB-154C-86A7-C6A39E52FFFD";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode multDoubleLinear -n "front_distance_posToNeg_R_UTL";
	rename -uid "8D950EA9-42C4-5835-7B85-D8985F804B4D";
	setAttr ".i2" -1;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "D44019F5-4D5B-6327-20F7-109A8D6D5920";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".tol" 0;
createNode distanceBetween -n "back_distance_L_UTL";
	rename -uid "6751BFA0-4917-905E-2F34-D8AAE0A942D8";
createNode multiplyDivide -n "back_distance_scale_expose_L_UTL";
	rename -uid "9745970B-4FE4-68BD-B295-3497C1C9775D";
	setAttr ".op" 2;
createNode condition -n "back_distance_condition_L_UTL";
	rename -uid "E9209325-4153-8220-EE73-5FAC0970F79B";
	setAttr ".op" 3;
createNode addDoubleLinear -n "back_distance_total_L_UTL";
	rename -uid "5A58E57F-45EA-E6C4-EE3A-52B3CE244613";
	setAttr ".ihi" 2;
createNode plusMinusAverage -n "back_distance_subtract_L_UTL";
	rename -uid "76BAD17B-4E82-E7F7-F96F-8D892412C3EE";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode addDoubleLinear -n "back_distance_add_knee_L_UTL";
	rename -uid "15D084F9-460E-7D3A-A7B5-91A91728CD78";
	setAttr ".ihi" 2;
createNode addDoubleLinear -n "back_distance_add_ankle_L_UTL";
	rename -uid "56DDA58A-4A09-C2A6-EB74-E6A3D6AD4896";
	setAttr ".ihi" 2;
createNode distanceBetween -n "back_distance_R_UTL";
	rename -uid "1F432EEB-4F3F-28B8-630D-589B6C28A6B1";
createNode multiplyDivide -n "back_distance_scale_expose_R_UTL";
	rename -uid "A199223B-4F85-3EF3-6988-8498E69E854D";
	setAttr ".op" 2;
createNode condition -n "back_distance_condition_R_UTL";
	rename -uid "906DEE57-4B7D-36B5-B5C4-28A7845C5DD2";
	setAttr ".op" 5;
createNode addDoubleLinear -n "back_distance_total_R_UTL";
	rename -uid "68CB98EB-4474-FB65-F068-F6B8D7710F1E";
	setAttr ".ihi" 2;
createNode plusMinusAverage -n "back_distance_subtract_R_UTL";
	rename -uid "F3ACF3A4-4FE0-721C-3FC0-8E9EBB60E0D8";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode addDoubleLinear -n "back_distance_add_knee_R_UTL";
	rename -uid "74CCA04C-4C92-F783-1AB3-98ABCF1E501C";
	setAttr ".ihi" 2;
createNode addDoubleLinear -n "back_distance_add_ankle_R_UTL";
	rename -uid "60F6D4DA-4013-D0EC-51B0-B792ABB21527";
	setAttr ".ihi" 2;
createNode multiplyDivide -n "back_distance_divide_2_L_UTL";
	rename -uid "818BECAE-4FB5-8263-F752-3B8D006A5B41";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode multiplyDivide -n "back_distance_divide_2_R_UTL";
	rename -uid "B9D7D17E-45A2-738C-2012-39A4BE0EFB30";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode multDoubleLinear -n "back_distance_posToNeg_R_UTL";
	rename -uid "0CF5BBF7-420C-8135-E885-0092B2E2A826";
	setAttr ".i2" -1;
createNode addDoubleLinear -n "front_twist_hip_distance_L_UTL";
	rename -uid "11FF01A1-4940-3A38-4675-F2ABBB8C4B6D";
	setAttr ".ihi" 2;
createNode addDoubleLinear -n "front_twist_hip_distance_R_UTL";
	rename -uid "2D233D22-46AD-0541-5D93-838F9C7C3C09";
	setAttr ".ihi" 2;
createNode addDoubleLinear -n "back_twist_hip_distance_L_UTL";
	rename -uid "B70B9946-400D-805A-87D2-75B111654AE3";
	setAttr ".ihi" 2;
createNode addDoubleLinear -n "back_twist_hip_distance_R_UTL";
	rename -uid "06C45BD9-44BA-EFEB-4F1D-0BAD3D6EE44E";
	setAttr ".ihi" 2;
createNode clamp -n "front_bend_stiffness_L_UTL";
	rename -uid "253CA743-4F82-1C6E-85BC-D0BDA2A94C0A";
createNode clamp -n "front_bend_stiffness_R_UTL";
	rename -uid "346D350B-4CA2-05BB-71D2-A5AC84AB4CD7";
createNode clamp -n "back_bend_stiffness_R_UTL";
	rename -uid "EDEFF1B2-4A49-B600-45C9-0AB157011DE9";
createNode clamp -n "back_bend_stiffness_L_UTL";
	rename -uid "22E0A714-49EC-7849-CC11-5E8CB4475CB6";
createNode multDoubleLinear -n "front_revers_L_UTL";
	rename -uid "49AE0735-449A-71D1-A89A-569345138D4C";
createNode multDoubleLinear -n "front_bend_revers_R_UTL";
	rename -uid "6418A77D-4882-A68E-A110-678ADEFB3235";
createNode multDoubleLinear -n "back_bend_revers_R_UTL";
	rename -uid "596FC6BA-4724-D096-EBC7-819480381952";
createNode multDoubleLinear -n "back_bend_revers_L_UTL";
	rename -uid "72B8FA22-49ED-896E-C1E4-CAAC84192BEF";
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "61A39DAF-43B5-FD59-ED03-0A9EFC587C92";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".tol" 0;
createNode expression -n "back_leg_mirror_EXP";
	rename -uid "2DF29938-417F-94D6-E514-2AA6F30033FF";
	setAttr -k on ".nds";
	setAttr -s 23 ".in";
	setAttr -s 23 ".in";
	setAttr -s 31 ".out";
	setAttr ".ixp" -type "string" "///front legs///\n\n.O[0] = -.I[0];\n.O[1] = .I[1];\n.O[2] = .I[2];\n.O[3] = .I[3];\n.O[4] = .I[4];\n.O[5] = .I[5];\n\n\n.O[6] = -.I[6];\n.O[7] = .I[7];\n\n.O[8] = .I[6];\n.O[9] = .I[7];\n\n.O[10] = .O[6];\n.O[11] = .O[7];\n\n\n.O[12] = -.I[8];\n.O[13] = .I[9];\n\n.O[14] = .I[8];\n.O[15] = .I[9];\n\n.O[16] = .O[12];\n.O[17] = .O[13];\n\n\n.O[18] = -.I[10];\n\n\n.O[19] = .I[11];\n\n\n.O[20] = -.I[12];\n.O[21] = .I[13];\n\n\n.O[22] = -.I[14];\n.O[23] = .I[15];\n\n///front legs Loc///\n\n.O[24] = -.I[16];\n.O[25] = -.I[17];\n.O[26] = .I[18];\n\n\n.O[27] = -.I[19];\n.O[28] = -.I[20];\n\n\n.O[29] = -.I[21];\n.O[30] = -.I[22];";
createNode unitConversion -n "unitConversion22";
	rename -uid "A80A04B4-4A39-B546-4563-B392C87DB25E";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion12";
	rename -uid "BDA17D6F-41B7-2217-03B5-D99C77A34E8E";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion18";
	rename -uid "80F8789E-4EA4-5FAC-60BE-CB862D4E9270";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion6";
	rename -uid "0367AF47-4D99-AFE1-C0FB-A0BD279D0312";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion16";
	rename -uid "509054A1-4EE5-0413-602D-24869F72411B";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion9";
	rename -uid "515DDCB4-4454-23BC-127F-75A7BFC6327F";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion13";
	rename -uid "3537B1AE-4173-111D-8E69-5B964675C07C";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion20";
	rename -uid "3384688B-4CEE-49C1-A9AB-25BCAB66383B";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion10";
	rename -uid "25D37502-47D8-645D-4C16-1F938D38B04C";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion4";
	rename -uid "5DF282BF-4B55-8188-05DC-C8A7B68F7404";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion2";
	rename -uid "72C4F41A-4752-C9FA-9270-F4884AE892A5";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion14";
	rename -uid "ED8B3A8B-4A15-5903-3FC4-7EA6F7625AB0";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion8";
	rename -uid "E84F2E0D-43FF-E319-F3CD-28A0813D0378";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion17";
	rename -uid "88B9884C-4F04-8808-0692-6D88FADF5410";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion11";
	rename -uid "D5F77A02-4BC2-465F-878B-5ABCD1318E48";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion19";
	rename -uid "357D6915-4D96-C57A-415A-D38800D3AD57";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion1";
	rename -uid "68F13240-4A03-8D05-E733-4F85CFCE2F0F";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion15";
	rename -uid "9FA9FC13-489F-0F0D-5004-C3824A9EF970";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion21";
	rename -uid "64092ED7-4647-E0EE-B92D-0F9D37D283D3";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion5";
	rename -uid "4BE4D30C-436E-E3AD-019B-1B9255AFF5D5";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion7";
	rename -uid "4D0966F8-46CE-3166-8C65-C883591A1090";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion3";
	rename -uid "F042335D-4A7D-4793-C831-91A75CC94446";
	setAttr ".cf" 57.295779513082323;
createNode expression -n "front_leg_mirror_EXP";
	rename -uid "CD54777A-4227-9BD1-C5AF-37AC9BB45750";
	setAttr -k on ".nds";
	setAttr -s 23 ".in";
	setAttr -s 23 ".in";
	setAttr -s 31 ".out";
	setAttr ".ixp" -type "string" "///front legs///\n\n.O[0] = -.I[0];\n.O[1] = .I[1];\n.O[2] = .I[2];\n.O[3] = .I[3];\n.O[4] = .I[4];\n.O[5] = .I[5];\n\n\n.O[6] = -.I[6];\n.O[7] = .I[7];\n\n.O[8] = .I[6];\n.O[9] = .I[7];\n\n.O[10] = .O[6];\n.O[11] = .O[7];\n\n\n.O[12] = -.I[8];\n.O[13] = .I[9];\n\n.O[14] = .I[8];\n.O[15] = .I[9];\n\n.O[16] = .O[12];\n.O[17] = .O[13];\n\n\n.O[18] = -.I[10];\n\n\n.O[19] = .I[11];\n\n\n.O[20] = -.I[12];\n.O[21] = .I[13];\n\n\n.O[22] = -.I[14];\n.O[23] = .I[15];\n\n///front legs Loc///\n\n.O[24] = -.I[16];\n.O[25] = -.I[17];\n.O[26] = .I[18];\n\n\n.O[27] = -.I[19];\n.O[28] = -.I[20];\n\n\n.O[29] = -.I[21];\n.O[30] = -.I[22];";
createNode unitConversion -n "unitConversion40";
	rename -uid "51E1D701-48C3-FB0A-CF51-2CB2C6DFCC62";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion54";
	rename -uid "F09E437B-4017-F49F-8885-358B2FB40CE8";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion50";
	rename -uid "0DF3E7D8-4AD3-B33C-8B46-358108BD31AD";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion56";
	rename -uid "75F9F347-49E8-C2BD-44B4-7AB5294266AD";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion48";
	rename -uid "5EDE4CA8-4092-7C62-2BF3-75A354FD70CB";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion58";
	rename -uid "650F5803-401C-9EE7-D465-868761C6EF0E";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion49";
	rename -uid "EF36DD8D-4B3D-A558-AA17-95BB0321AD8D";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion38";
	rename -uid "66EDBFFF-4863-7BF7-28E9-DC8CF2F44FF6";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion42";
	rename -uid "1AE41589-4CCF-8465-7BBE-36A0589116BC";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion52";
	rename -uid "4EB8DAA4-48DF-2EF2-A582-7F98223A48A8";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion44";
	rename -uid "68FC4FF9-4E28-13E0-CDC0-1283737AC915";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion46";
	rename -uid "5AF80E35-4539-7B6A-BB08-47B4335CDEBC";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion45";
	rename -uid "F26CEF28-4A94-AD2D-953C-77AFF4ADB763";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion37";
	rename -uid "92ECA09D-4701-18C0-9C28-22BE223FCC17";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion47";
	rename -uid "3D7A2B08-4CCB-546E-1877-398D05E374F2";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion51";
	rename -uid "8E33D66A-4E71-D026-D017-76B0A77F2CA7";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion55";
	rename -uid "2E94E6CF-4069-7BBC-5E18-958F8A2EC953";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion57";
	rename -uid "1AC6DE75-4558-BFE4-5FC9-E1BB81F9175A";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion41";
	rename -uid "2B2C336E-4280-B0B2-243D-14AEA5BB03E0";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion39";
	rename -uid "0C62A1C6-4851-0E82-6338-2AA3D6A1583C";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion43";
	rename -uid "2EE6AA6C-4A58-F6C4-90A6-B1A50D5CF431";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion53";
	rename -uid "B8186A42-4C9E-BAD3-63CF-33A3EC597EEC";
	setAttr ".cf" 57.295779513082323;
createNode condition -n "tail_7Jnt_condition_UTL";
	rename -uid "0C38DAE9-41C4-5164-815F-C38CC90A3F13";
	setAttr ".st" 2;
	setAttr ".ct" -type "float3" 1 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode condition -n "tail_5Jnt_condition_UTL";
	rename -uid "63A9BB39-4512-5BC0-7667-678F9EFB3A82";
	setAttr ".st" 1;
	setAttr ".ct" -type "float3" 1 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode condition -n "tail_3Jnt_condition_UTL";
	rename -uid "1C38A5C3-44CB-993C-F238-59B10B29B1AD";
	setAttr ".ct" -type "float3" 1 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "331862C3-4BE2-F995-5FAD-558801979449";
	setAttr ".r" 25;
	setAttr ".tol" 0;
createNode cluster -n "spin_01_cv_star_CLSCluster";
	rename -uid "836A6837-4292-0F18-C395-7DA2016371DE";
	setAttr ".ip[0].gtg" -type "string" "cluster1_2";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "spin_01_cv_end_CLSCluster";
	rename -uid "9C7DCD66-4527-06ED-A08B-6A8D642D491A";
	setAttr ".ip[0].gtg" -type "string" "cluster2_2";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "spin_02_cv_star_CLSCluster";
	rename -uid "498572B5-4D8A-61D6-031D-269AB157BB2C";
	setAttr ".ip[0].gtg" -type "string" "cluster3_2";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "spin_02_cv_end_CLSCluster";
	rename -uid "DD50C938-4E13-1048-2AA4-BE8FE8AD52EC";
	setAttr ".ip[0].gtg" -type "string" "cluster4_2";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "spin_03_cv_star_CLSCluster";
	rename -uid "144559D4-4570-F1FF-4C23-119AC5DA71AB";
	setAttr ".ip[0].gtg" -type "string" "cluster5_2";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "spin_03_cv_end_CLSCluster";
	rename -uid "4A7C72AD-437C-A8DB-FC62-20869BBCC088";
	setAttr ".ip[0].gtg" -type "string" "cluster6_2";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "27767582-4353-3431-2475-7296B3555BFE";
	setAttr -s 5 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 633.33330816692853 -1550.1644998679285 ;
	setAttr ".tgi[0].vh" -type "double2" 2539.2856133835699 -130.78781428940894 ;
	setAttr ".tgi[1].tn" -type "string" "Untitled_2";
	setAttr ".tgi[1].vl" -type "double2" 3265.9170146738711 -1545.2380338358525 ;
	setAttr ".tgi[1].vh" -type "double2" 7020.9873384660386 1251.1904264726359 ;
	setAttr -s 3 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 5324.4326171875;
	setAttr ".tgi[1].ni[0].y" -3.1572084426879883;
	setAttr ".tgi[1].ni[0].nvs" 18306;
	setAttr ".tgi[1].ni[1].x" 4701.44970703125;
	setAttr ".tgi[1].ni[1].y" 655.2001953125;
	setAttr ".tgi[1].ni[1].nvs" 18306;
	setAttr ".tgi[1].ni[2].x" 5018.0048828125;
	setAttr ".tgi[1].ni[2].y" 4.2220969200134277;
	setAttr ".tgi[1].ni[2].nvs" 18306;
	setAttr ".tgi[2].tn" -type "string" "Untitled_3";
	setAttr ".tgi[2].vl" -type "double2" 986.90472268869087 -2315.5635680719793 ;
	setAttr ".tgi[2].vh" -type "double2" 4721.4283838158635 465.56364158437128 ;
	setAttr -s 3 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" 2593.119384765625;
	setAttr ".tgi[2].ni[0].y" -582.13067626953125;
	setAttr ".tgi[2].ni[0].nvs" 18306;
	setAttr ".tgi[2].ni[1].x" 2241.428466796875;
	setAttr ".tgi[2].ni[1].y" 54.285713195800781;
	setAttr ".tgi[2].ni[1].nvs" 18306;
	setAttr ".tgi[2].ni[2].x" 2903.35546875;
	setAttr ".tgi[2].ni[2].y" -756.4034423828125;
	setAttr ".tgi[2].ni[2].nvs" 18306;
	setAttr ".tgi[3].tn" -type "string" "Untitled_4";
	setAttr ".tgi[3].vl" -type "double2" -1780.9523101836949 -2038.2093123552186 ;
	setAttr ".tgi[3].vh" -type "double2" 2055.952299256177 819.16174174819787 ;
	setAttr -s 3 ".tgi[3].ni";
	setAttr ".tgi[3].ni[0].x" 282.68978881835938;
	setAttr ".tgi[3].ni[0].y" -609.59197998046875;
	setAttr ".tgi[3].ni[0].nvs" 18306;
	setAttr ".tgi[3].ni[1].x" -462.85714721679688;
	setAttr ".tgi[3].ni[1].y" 224.28572082519531;
	setAttr ".tgi[3].ni[1].nvs" 18306;
	setAttr ".tgi[3].ni[2].x" -62.951759338378906;
	setAttr ".tgi[3].ni[2].y" -254.04156494140625;
	setAttr ".tgi[3].ni[2].nvs" 18306;
	setAttr ".tgi[4].tn" -type "string" "Untitled_5";
	setAttr ".tgi[4].vl" -type "double2" 4742.7584116352691 -2507.142757517955 ;
	setAttr ".tgi[4].vh" -type "double2" 5895.3364037400597 -1648.8094582917224 ;
	setAttr -s 239 ".tgi[4].ni";
	setAttr ".tgi[4].ni[0].x" 6125.71435546875;
	setAttr ".tgi[4].ni[0].y" 270;
	setAttr ".tgi[4].ni[0].nvs" 18304;
	setAttr ".tgi[4].ni[1].x" 6211.4287109375;
	setAttr ".tgi[4].ni[1].y" -5691.4287109375;
	setAttr ".tgi[4].ni[1].nvs" 18304;
	setAttr ".tgi[4].ni[2].x" 6211.4287109375;
	setAttr ".tgi[4].ni[2].y" -5041.4287109375;
	setAttr ".tgi[4].ni[2].nvs" 18304;
	setAttr ".tgi[4].ni[3].x" 5732.85693359375;
	setAttr ".tgi[4].ni[3].y" -348.57144165039062;
	setAttr ".tgi[4].ni[3].nvs" 18304;
	setAttr ".tgi[4].ni[4].x" 5305.71435546875;
	setAttr ".tgi[4].ni[4].y" -2228.571533203125;
	setAttr ".tgi[4].ni[4].nvs" 18304;
	setAttr ".tgi[4].ni[5].x" 6211.4287109375;
	setAttr ".tgi[4].ni[5].y" -8681.4287109375;
	setAttr ".tgi[4].ni[5].nvs" 18304;
	setAttr ".tgi[4].ni[6].x" 6127.14306640625;
	setAttr ".tgi[4].ni[6].y" 2797.142822265625;
	setAttr ".tgi[4].ni[6].nvs" 18304;
	setAttr ".tgi[4].ni[7].x" 5425.71435546875;
	setAttr ".tgi[4].ni[7].y" -198.57142639160156;
	setAttr ".tgi[4].ni[7].nvs" 18304;
	setAttr ".tgi[4].ni[8].x" 6125.71435546875;
	setAttr ".tgi[4].ni[8].y" -521.4285888671875;
	setAttr ".tgi[4].ni[8].nvs" 18304;
	setAttr ".tgi[4].ni[9].x" 6528.5712890625;
	setAttr ".tgi[4].ni[9].y" 1421.4285888671875;
	setAttr ".tgi[4].ni[9].nvs" 18306;
	setAttr ".tgi[4].ni[10].x" 6211.4287109375;
	setAttr ".tgi[4].ni[10].y" -9071.4287109375;
	setAttr ".tgi[4].ni[10].nvs" 18304;
	setAttr ".tgi[4].ni[11].x" 4544.28564453125;
	setAttr ".tgi[4].ni[11].y" 4074.28564453125;
	setAttr ".tgi[4].ni[11].nvs" 18304;
	setAttr ".tgi[4].ni[12].x" 6155.71435546875;
	setAttr ".tgi[4].ni[12].y" -2130;
	setAttr ".tgi[4].ni[12].nvs" 18304;
	setAttr ".tgi[4].ni[13].x" 6211.4287109375;
	setAttr ".tgi[4].ni[13].y" -5301.4287109375;
	setAttr ".tgi[4].ni[13].nvs" 18304;
	setAttr ".tgi[4].ni[14].x" 4544.28564453125;
	setAttr ".tgi[4].ni[14].y" 4277.14306640625;
	setAttr ".tgi[4].ni[14].nvs" 18304;
	setAttr ".tgi[4].ni[15].x" 6125.71435546875;
	setAttr ".tgi[4].ni[15].y" -931.4285888671875;
	setAttr ".tgi[4].ni[15].nvs" 18304;
	setAttr ".tgi[4].ni[16].x" 6211.4287109375;
	setAttr ".tgi[4].ni[16].y" -5561.4287109375;
	setAttr ".tgi[4].ni[16].nvs" 18304;
	setAttr ".tgi[4].ni[17].x" 6211.4287109375;
	setAttr ".tgi[4].ni[17].y" -6081.4287109375;
	setAttr ".tgi[4].ni[17].nvs" 18304;
	setAttr ".tgi[4].ni[18].x" 6211.4287109375;
	setAttr ".tgi[4].ni[18].y" -1820;
	setAttr ".tgi[4].ni[18].nvs" 18304;
	setAttr ".tgi[4].ni[19].x" 6211.4287109375;
	setAttr ".tgi[4].ni[19].y" -7901.4287109375;
	setAttr ".tgi[4].ni[19].nvs" 18304;
	setAttr ".tgi[4].ni[20].x" 5732.85693359375;
	setAttr ".tgi[4].ni[20].y" -75.714286804199219;
	setAttr ".tgi[4].ni[20].nvs" 18304;
	setAttr ".tgi[4].ni[21].x" 6125.71435546875;
	setAttr ".tgi[4].ni[21].y" 3534.28564453125;
	setAttr ".tgi[4].ni[21].nvs" 18304;
	setAttr ".tgi[4].ni[22].x" 6208.5712890625;
	setAttr ".tgi[4].ni[22].y" -2961.428466796875;
	setAttr ".tgi[4].ni[22].nvs" 18304;
	setAttr ".tgi[4].ni[23].x" 5682.85693359375;
	setAttr ".tgi[4].ni[23].y" -2418.571533203125;
	setAttr ".tgi[4].ni[23].nvs" 18304;
	setAttr ".tgi[4].ni[24].x" 4675.71435546875;
	setAttr ".tgi[4].ni[24].y" 608.5714111328125;
	setAttr ".tgi[4].ni[24].nvs" 18304;
	setAttr ".tgi[4].ni[25].x" 4545.71435546875;
	setAttr ".tgi[4].ni[25].y" 2621.428466796875;
	setAttr ".tgi[4].ni[25].nvs" 18304;
	setAttr ".tgi[4].ni[26].x" 5160;
	setAttr ".tgi[4].ni[26].y" 2467.142822265625;
	setAttr ".tgi[4].ni[26].nvs" 18304;
	setAttr ".tgi[4].ni[27].x" 6211.4287109375;
	setAttr ".tgi[4].ni[27].y" -6341.4287109375;
	setAttr ".tgi[4].ni[27].nvs" 18304;
	setAttr ".tgi[4].ni[28].x" 5732.85693359375;
	setAttr ".tgi[4].ni[28].y" -507.14285278320312;
	setAttr ".tgi[4].ni[28].nvs" 18304;
	setAttr ".tgi[4].ni[29].x" 6124.28564453125;
	setAttr ".tgi[4].ni[29].y" -2441.428466796875;
	setAttr ".tgi[4].ni[29].nvs" 18304;
	setAttr ".tgi[4].ni[30].x" 6127.14306640625;
	setAttr ".tgi[4].ni[30].y" 1748.5714111328125;
	setAttr ".tgi[4].ni[30].nvs" 18304;
	setAttr ".tgi[4].ni[31].x" 5732.85693359375;
	setAttr ".tgi[4].ni[31].y" -780;
	setAttr ".tgi[4].ni[31].nvs" 18304;
	setAttr ".tgi[4].ni[32].x" 4544.28564453125;
	setAttr ".tgi[4].ni[32].y" 3972.857177734375;
	setAttr ".tgi[4].ni[32].nvs" 18304;
	setAttr ".tgi[4].ni[33].x" 4982.85693359375;
	setAttr ".tgi[4].ni[33].y" 611.4285888671875;
	setAttr ".tgi[4].ni[33].nvs" 18304;
	setAttr ".tgi[4].ni[34].x" 6127.14306640625;
	setAttr ".tgi[4].ni[34].y" 2898.571533203125;
	setAttr ".tgi[4].ni[34].nvs" 18304;
	setAttr ".tgi[4].ni[35].x" 6207.14306640625;
	setAttr ".tgi[4].ni[35].y" -2831.428466796875;
	setAttr ".tgi[4].ni[35].nvs" 18304;
	setAttr ".tgi[4].ni[36].x" 4238.5712890625;
	setAttr ".tgi[4].ni[36].y" 2298.571533203125;
	setAttr ".tgi[4].ni[36].nvs" 18304;
	setAttr ".tgi[4].ni[37].x" 6125.71435546875;
	setAttr ".tgi[4].ni[37].y" 3838.571533203125;
	setAttr ".tgi[4].ni[37].nvs" 18304;
	setAttr ".tgi[4].ni[38].x" 6211.4287109375;
	setAttr ".tgi[4].ni[38].y" -4651.4287109375;
	setAttr ".tgi[4].ni[38].nvs" 18304;
	setAttr ".tgi[4].ni[39].x" 6211.4287109375;
	setAttr ".tgi[4].ni[39].y" -8941.4287109375;
	setAttr ".tgi[4].ni[39].nvs" 18304;
	setAttr ".tgi[4].ni[40].x" 6225.71435546875;
	setAttr ".tgi[4].ni[40].y" -7478.5712890625;
	setAttr ".tgi[4].ni[40].nvs" 18304;
	setAttr ".tgi[4].ni[41].x" 6211.4287109375;
	setAttr ".tgi[4].ni[41].y" -3871.428466796875;
	setAttr ".tgi[4].ni[41].nvs" 18304;
	setAttr ".tgi[4].ni[42].x" 6125.71435546875;
	setAttr ".tgi[4].ni[42].y" 4881.4287109375;
	setAttr ".tgi[4].ni[42].nvs" 18304;
	setAttr ".tgi[4].ni[43].x" 5507.14306640625;
	setAttr ".tgi[4].ni[43].y" -1328.5714111328125;
	setAttr ".tgi[4].ni[43].nvs" 18304;
	setAttr ".tgi[4].ni[44].x" 6211.4287109375;
	setAttr ".tgi[4].ni[44].y" -2311.428466796875;
	setAttr ".tgi[4].ni[44].nvs" 18304;
	setAttr ".tgi[4].ni[45].x" 6227.14306640625;
	setAttr ".tgi[4].ni[45].y" -3355.71435546875;
	setAttr ".tgi[4].ni[45].nvs" 18304;
	setAttr ".tgi[4].ni[46].x" 6125.71435546875;
	setAttr ".tgi[4].ni[46].y" 4041.428466796875;
	setAttr ".tgi[4].ni[46].nvs" 18304;
	setAttr ".tgi[4].ni[47].x" 4545.71435546875;
	setAttr ".tgi[4].ni[47].y" 2317.142822265625;
	setAttr ".tgi[4].ni[47].nvs" 18304;
	setAttr ".tgi[4].ni[48].x" 6127.14306640625;
	setAttr ".tgi[4].ni[48].y" 1545.7142333984375;
	setAttr ".tgi[4].ni[48].nvs" 18304;
	setAttr ".tgi[4].ni[49].x" 6125.71435546875;
	setAttr ".tgi[4].ni[49].y" -291.42855834960938;
	setAttr ".tgi[4].ni[49].nvs" 18304;
	setAttr ".tgi[4].ni[50].x" 5732.85693359375;
	setAttr ".tgi[4].ni[50].y" -982.85711669921875;
	setAttr ".tgi[4].ni[50].nvs" 18304;
	setAttr ".tgi[4].ni[51].x" 6131.4287109375;
	setAttr ".tgi[4].ni[51].y" -3448.571533203125;
	setAttr ".tgi[4].ni[51].nvs" 18304;
	setAttr ".tgi[4].ni[52].x" 4544.28564453125;
	setAttr ".tgi[4].ni[52].y" 4581.4287109375;
	setAttr ".tgi[4].ni[52].nvs" 18304;
	setAttr ".tgi[4].ni[53].x" 5848.5712890625;
	setAttr ".tgi[4].ni[53].y" -2181.428466796875;
	setAttr ".tgi[4].ni[53].nvs" 18304;
	setAttr ".tgi[4].ni[54].x" 4772.85693359375;
	setAttr ".tgi[4].ni[54].y" -1945.7142333984375;
	setAttr ".tgi[4].ni[54].nvs" 18304;
	setAttr ".tgi[4].ni[55].x" 6127.14306640625;
	setAttr ".tgi[4].ni[55].y" 2594.28564453125;
	setAttr ".tgi[4].ni[55].nvs" 18304;
	setAttr ".tgi[4].ni[56].x" 6211.4287109375;
	setAttr ".tgi[4].ni[56].y" -4911.4287109375;
	setAttr ".tgi[4].ni[56].nvs" 18304;
	setAttr ".tgi[4].ni[57].x" 6125.71435546875;
	setAttr ".tgi[4].ni[57].y" 3737.142822265625;
	setAttr ".tgi[4].ni[57].nvs" 18304;
	setAttr ".tgi[4].ni[58].x" 6211.4287109375;
	setAttr ".tgi[4].ni[58].y" -4781.4287109375;
	setAttr ".tgi[4].ni[58].nvs" 18304;
	setAttr ".tgi[4].ni[59].x" 6125.71435546875;
	setAttr ".tgi[4].ni[59].y" 111.42857360839844;
	setAttr ".tgi[4].ni[59].nvs" 18304;
	setAttr ".tgi[4].ni[60].x" 5221.4287109375;
	setAttr ".tgi[4].ni[60].y" -2365.71435546875;
	setAttr ".tgi[4].ni[60].nvs" 18304;
	setAttr ".tgi[4].ni[61].x" 5290;
	setAttr ".tgi[4].ni[61].y" 971.4285888671875;
	setAttr ".tgi[4].ni[61].nvs" 18304;
	setAttr ".tgi[4].ni[62].x" 6125.71435546875;
	setAttr ".tgi[4].ni[62].y" -722.85711669921875;
	setAttr ".tgi[4].ni[62].nvs" 18304;
	setAttr ".tgi[4].ni[63].x" 4885.71435546875;
	setAttr ".tgi[4].ni[63].y" -2204.28564453125;
	setAttr ".tgi[4].ni[63].nvs" 18304;
	setAttr ".tgi[4].ni[64].x" 6211.4287109375;
	setAttr ".tgi[4].ni[64].y" -4131.4287109375;
	setAttr ".tgi[4].ni[64].nvs" 18304;
	setAttr ".tgi[4].ni[65].x" 6211.4287109375;
	setAttr ".tgi[4].ni[65].y" 1071.4285888671875;
	setAttr ".tgi[4].ni[65].nvs" 18304;
	setAttr ".tgi[4].ni[66].x" 4982.85693359375;
	setAttr ".tgi[4].ni[66].y" 770;
	setAttr ".tgi[4].ni[66].nvs" 18304;
	setAttr ".tgi[4].ni[67].x" 4545.71435546875;
	setAttr ".tgi[4].ni[67].y" 3027.142822265625;
	setAttr ".tgi[4].ni[67].nvs" 18304;
	setAttr ".tgi[4].ni[68].x" 6205.71435546875;
	setAttr ".tgi[4].ni[68].y" -2701.428466796875;
	setAttr ".tgi[4].ni[68].nvs" 18304;
	setAttr ".tgi[4].ni[69].x" 6211.4287109375;
	setAttr ".tgi[4].ni[69].y" -6601.4287109375;
	setAttr ".tgi[4].ni[69].nvs" 18304;
	setAttr ".tgi[4].ni[70].x" 5467.14306640625;
	setAttr ".tgi[4].ni[70].y" 2321.428466796875;
	setAttr ".tgi[4].ni[70].nvs" 18304;
	setAttr ".tgi[4].ni[71].x" 5732.85693359375;
	setAttr ".tgi[4].ni[71].y" 241.42857360839844;
	setAttr ".tgi[4].ni[71].nvs" 18304;
	setAttr ".tgi[4].ni[72].x" 5425.71435546875;
	setAttr ".tgi[4].ni[72].y" -40;
	setAttr ".tgi[4].ni[72].nvs" 18304;
	setAttr ".tgi[4].ni[73].x" 6125.71435546875;
	setAttr ".tgi[4].ni[73].y" -90;
	setAttr ".tgi[4].ni[73].nvs" 18304;
	setAttr ".tgi[4].ni[74].x" 6211.4287109375;
	setAttr ".tgi[4].ni[74].y" -8811.4287109375;
	setAttr ".tgi[4].ni[74].nvs" 18304;
	setAttr ".tgi[4].ni[75].x" 5465.71435546875;
	setAttr ".tgi[4].ni[75].y" 4195.71435546875;
	setAttr ".tgi[4].ni[75].nvs" 18304;
	setAttr ".tgi[4].ni[76].x" 5158.5712890625;
	setAttr ".tgi[4].ni[76].y" 4440;
	setAttr ".tgi[4].ni[76].nvs" 18304;
	setAttr ".tgi[4].ni[77].x" 6211.4287109375;
	setAttr ".tgi[4].ni[77].y" -7381.4287109375;
	setAttr ".tgi[4].ni[77].nvs" 18304;
	setAttr ".tgi[4].ni[78].x" 5465.71435546875;
	setAttr ".tgi[4].ni[78].y" 4411.4287109375;
	setAttr ".tgi[4].ni[78].nvs" 18304;
	setAttr ".tgi[4].ni[79].x" 6225.71435546875;
	setAttr ".tgi[4].ni[79].y" -5788.5712890625;
	setAttr ".tgi[4].ni[79].nvs" 18304;
	setAttr ".tgi[4].ni[80].x" 5904.28564453125;
	setAttr ".tgi[4].ni[80].y" 1111.4285888671875;
	setAttr ".tgi[4].ni[80].nvs" 18304;
	setAttr ".tgi[4].ni[81].x" 5774.28564453125;
	setAttr ".tgi[4].ni[81].y" 2210;
	setAttr ".tgi[4].ni[81].nvs" 18306;
	setAttr ".tgi[4].ni[82].x" 6225.71435546875;
	setAttr ".tgi[4].ni[82].y" -7348.5712890625;
	setAttr ".tgi[4].ni[82].nvs" 18304;
	setAttr ".tgi[4].ni[83].x" 5290;
	setAttr ".tgi[4].ni[83].y" 711.4285888671875;
	setAttr ".tgi[4].ni[83].nvs" 18304;
	setAttr ".tgi[4].ni[84].x" 6211.4287109375;
	setAttr ".tgi[4].ni[84].y" -7641.4287109375;
	setAttr ".tgi[4].ni[84].nvs" 18304;
	setAttr ".tgi[4].ni[85].x" 6225.71435546875;
	setAttr ".tgi[4].ni[85].y" -7088.5712890625;
	setAttr ".tgi[4].ni[85].nvs" 18304;
	setAttr ".tgi[4].ni[86].x" 4544.28564453125;
	setAttr ".tgi[4].ni[86].y" 3871.428466796875;
	setAttr ".tgi[4].ni[86].nvs" 18304;
	setAttr ".tgi[4].ni[87].x" 5820;
	setAttr ".tgi[4].ni[87].y" 2328.571533203125;
	setAttr ".tgi[4].ni[87].nvs" 18304;
	setAttr ".tgi[4].ni[88].x" 6127.14306640625;
	setAttr ".tgi[4].ni[88].y" 1444.2857666015625;
	setAttr ".tgi[4].ni[88].nvs" 18304;
	setAttr ".tgi[4].ni[89].x" 4675.71435546875;
	setAttr ".tgi[4].ni[89].y" 767.14288330078125;
	setAttr ".tgi[4].ni[89].nvs" 18304;
	setAttr ".tgi[4].ni[90].x" 6227.14306640625;
	setAttr ".tgi[4].ni[90].y" -4785.71435546875;
	setAttr ".tgi[4].ni[90].nvs" 18304;
	setAttr ".tgi[4].ni[91].x" 6125.71435546875;
	setAttr ".tgi[4].ni[91].y" 4780;
	setAttr ".tgi[4].ni[91].nvs" 18304;
	setAttr ".tgi[4].ni[92].x" 4545.71435546875;
	setAttr ".tgi[4].ni[92].y" 2722.857177734375;
	setAttr ".tgi[4].ni[92].nvs" 18304;
	setAttr ".tgi[4].ni[93].x" 6211.4287109375;
	setAttr ".tgi[4].ni[93].y" -1950;
	setAttr ".tgi[4].ni[93].nvs" 18304;
	setAttr ".tgi[4].ni[94].x" 4544.28564453125;
	setAttr ".tgi[4].ni[94].y" 4682.85693359375;
	setAttr ".tgi[4].ni[94].nvs" 18304;
	setAttr ".tgi[4].ni[95].x" 6210;
	setAttr ".tgi[4].ni[95].y" -3091.428466796875;
	setAttr ".tgi[4].ni[95].nvs" 18304;
	setAttr ".tgi[4].ni[96].x" 6211.4287109375;
	setAttr ".tgi[4].ni[96].y" -5431.4287109375;
	setAttr ".tgi[4].ni[96].nvs" 18304;
	setAttr ".tgi[4].ni[97].x" 4545.71435546875;
	setAttr ".tgi[4].ni[97].y" 2824.28564453125;
	setAttr ".tgi[4].ni[97].nvs" 18304;
	setAttr ".tgi[4].ni[98].x" 6225.71435546875;
	setAttr ".tgi[4].ni[98].y" -7608.5712890625;
	setAttr ".tgi[4].ni[98].nvs" 18304;
	setAttr ".tgi[4].ni[99].x" 5597.14306640625;
	setAttr ".tgi[4].ni[99].y" 1071.4285888671875;
	setAttr ".tgi[4].ni[99].nvs" 18304;
	setAttr ".tgi[4].ni[100].x" 5904.28564453125;
	setAttr ".tgi[4].ni[100].y" -2311.428466796875;
	setAttr ".tgi[4].ni[100].nvs" 18304;
	setAttr ".tgi[4].ni[101].x" 6211.4287109375;
	setAttr ".tgi[4].ni[101].y" -3741.428466796875;
	setAttr ".tgi[4].ni[101].nvs" 18304;
	setAttr ".tgi[4].ni[102].x" 6211.4287109375;
	setAttr ".tgi[4].ni[102].y" -6471.4287109375;
	setAttr ".tgi[4].ni[102].nvs" 18304;
	setAttr ".tgi[4].ni[103].x" 6227.14306640625;
	setAttr ".tgi[4].ni[103].y" -5565.71435546875;
	setAttr ".tgi[4].ni[103].nvs" 18304;
	setAttr ".tgi[4].ni[104].x" 4545.71435546875;
	setAttr ".tgi[4].ni[104].y" 1797.142822265625;
	setAttr ".tgi[4].ni[104].nvs" 18304;
	setAttr ".tgi[4].ni[105].x" 5864.28564453125;
	setAttr ".tgi[4].ni[105].y" -2041.4285888671875;
	setAttr ".tgi[4].ni[105].nvs" 18304;
	setAttr ".tgi[4].ni[106].x" 6125.71435546875;
	setAttr ".tgi[4].ni[106].y" 3432.857177734375;
	setAttr ".tgi[4].ni[106].nvs" 18304;
	setAttr ".tgi[4].ni[107].x" 6211.4287109375;
	setAttr ".tgi[4].ni[107].y" -6991.4287109375;
	setAttr ".tgi[4].ni[107].nvs" 18304;
	setAttr ".tgi[4].ni[108].x" 6127.14306640625;
	setAttr ".tgi[4].ni[108].y" 2357.142822265625;
	setAttr ".tgi[4].ni[108].nvs" 18304;
	setAttr ".tgi[4].ni[109].x" 6211.4287109375;
	setAttr ".tgi[4].ni[109].y" -7771.4287109375;
	setAttr ".tgi[4].ni[109].nvs" 18304;
	setAttr ".tgi[4].ni[110].x" 4545.71435546875;
	setAttr ".tgi[4].ni[110].y" 2418.571533203125;
	setAttr ".tgi[4].ni[110].nvs" 18304;
	setAttr ".tgi[4].ni[111].x" 5557.14306640625;
	setAttr ".tgi[4].ni[111].y" -2041.4285888671875;
	setAttr ".tgi[4].ni[111].nvs" 18304;
	setAttr ".tgi[4].ni[112].x" 6211.4287109375;
	setAttr ".tgi[4].ni[112].y" -5821.4287109375;
	setAttr ".tgi[4].ni[112].nvs" 18304;
	setAttr ".tgi[4].ni[113].x" 5222.85693359375;
	setAttr ".tgi[4].ni[113].y" -351.42855834960938;
	setAttr ".tgi[4].ni[113].nvs" 18304;
	setAttr ".tgi[4].ni[114].x" 6125.71435546875;
	setAttr ".tgi[4].ni[114].y" -2571.428466796875;
	setAttr ".tgi[4].ni[114].nvs" 18304;
	setAttr ".tgi[4].ni[115].x" 6211.4287109375;
	setAttr ".tgi[4].ni[115].y" -8291.4287109375;
	setAttr ".tgi[4].ni[115].nvs" 18304;
	setAttr ".tgi[4].ni[116].x" 5221.4287109375;
	setAttr ".tgi[4].ni[116].y" -1715.7142333984375;
	setAttr ".tgi[4].ni[116].nvs" 18304;
	setAttr ".tgi[4].ni[117].x" 6125.71435546875;
	setAttr ".tgi[4].ni[117].y" 4678.5712890625;
	setAttr ".tgi[4].ni[117].nvs" 18304;
	setAttr ".tgi[4].ni[118].x" 6211.4287109375;
	setAttr ".tgi[4].ni[118].y" -4261.4287109375;
	setAttr ".tgi[4].ni[118].nvs" 18304;
	setAttr ".tgi[4].ni[119].x" 6130;
	setAttr ".tgi[4].ni[119].y" -3318.571533203125;
	setAttr ".tgi[4].ni[119].nvs" 18304;
	setAttr ".tgi[4].ni[120].x" 5290;
	setAttr ".tgi[4].ni[120].y" 870;
	setAttr ".tgi[4].ni[120].nvs" 18304;
	setAttr ".tgi[4].ni[121].x" 6127.14306640625;
	setAttr ".tgi[4].ni[121].y" 2487.142822265625;
	setAttr ".tgi[4].ni[121].nvs" 18304;
	setAttr ".tgi[4].ni[122].x" 5467.14306640625;
	setAttr ".tgi[4].ni[122].y" 2537.142822265625;
	setAttr ".tgi[4].ni[122].nvs" 18304;
	setAttr ".tgi[4].ni[123].x" 6211.4287109375;
	setAttr ".tgi[4].ni[123].y" -8161.4287109375;
	setAttr ".tgi[4].ni[123].nvs" 18304;
	setAttr ".tgi[4].ni[124].x" 6211.4287109375;
	setAttr ".tgi[4].ni[124].y" -8031.4287109375;
	setAttr ".tgi[4].ni[124].nvs" 18304;
	setAttr ".tgi[4].ni[125].x" 4890;
	setAttr ".tgi[4].ni[125].y" -1685.7142333984375;
	setAttr ".tgi[4].ni[125].nvs" 18304;
	setAttr ".tgi[4].ni[126].x" 4544.28564453125;
	setAttr ".tgi[4].ni[126].y" 3510;
	setAttr ".tgi[4].ni[126].nvs" 18304;
	setAttr ".tgi[4].ni[127].x" 5597.14306640625;
	setAttr ".tgi[4].ni[127].y" 811.4285888671875;
	setAttr ".tgi[4].ni[127].nvs" 18304;
	setAttr ".tgi[4].ni[128].x" 6127.14306640625;
	setAttr ".tgi[4].ni[128].y" 3101.428466796875;
	setAttr ".tgi[4].ni[128].nvs" 18304;
	setAttr ".tgi[4].ni[129].x" 4544.28564453125;
	setAttr ".tgi[4].ni[129].y" 4175.71435546875;
	setAttr ".tgi[4].ni[129].nvs" 18304;
	setAttr ".tgi[4].ni[130].x" 5118.5712890625;
	setAttr ".tgi[4].ni[130].y" -294.28570556640625;
	setAttr ".tgi[4].ni[130].nvs" 18304;
	setAttr ".tgi[4].ni[131].x" 4768.5712890625;
	setAttr ".tgi[4].ni[131].y" -2438.571533203125;
	setAttr ".tgi[4].ni[131].nvs" 18304;
	setAttr ".tgi[4].ni[132].x" 6065.71435546875;
	setAttr ".tgi[4].ni[132].y" -2907.142822265625;
	setAttr ".tgi[4].ni[132].nvs" 18304;
	setAttr ".tgi[4].ni[133].x" 5904.28564453125;
	setAttr ".tgi[4].ni[133].y" 952.85711669921875;
	setAttr ".tgi[4].ni[133].nvs" 18304;
	setAttr ".tgi[4].ni[134].x" 6125.71435546875;
	setAttr ".tgi[4].ni[134].y" 4362.85693359375;
	setAttr ".tgi[4].ni[134].nvs" 18304;
	setAttr ".tgi[4].ni[135].x" 5810;
	setAttr ".tgi[4].ni[135].y" -1690;
	setAttr ".tgi[4].ni[135].nvs" 18304;
	setAttr ".tgi[4].ni[136].x" 6127.14306640625;
	setAttr ".tgi[4].ni[136].y" 1342.857177734375;
	setAttr ".tgi[4].ni[136].nvs" 18304;
	setAttr ".tgi[4].ni[137].x" 6127.14306640625;
	setAttr ".tgi[4].ni[137].y" 2052.857177734375;
	setAttr ".tgi[4].ni[137].nvs" 18304;
	setAttr ".tgi[4].ni[138].x" 6648.5712890625;
	setAttr ".tgi[4].ni[138].y" -1084.2857666015625;
	setAttr ".tgi[4].ni[138].nvs" 18304;
	setAttr ".tgi[4].ni[139].x" 5732.85693359375;
	setAttr ".tgi[4].ni[139].y" 82.857139587402344;
	setAttr ".tgi[4].ni[139].nvs" 18304;
	setAttr ".tgi[4].ni[140].x" 4237.14306640625;
	setAttr ".tgi[4].ni[140].y" 4330;
	setAttr ".tgi[4].ni[140].nvs" 18304;
	setAttr ".tgi[4].ni[141].x" 6137.14306640625;
	setAttr ".tgi[4].ni[141].y" -3708.571533203125;
	setAttr ".tgi[4].ni[141].nvs" 18304;
	setAttr ".tgi[4].ni[142].x" 4545.71435546875;
	setAttr ".tgi[4].ni[142].y" 2925.71435546875;
	setAttr ".tgi[4].ni[142].nvs" 18304;
	setAttr ".tgi[4].ni[143].x" 5810;
	setAttr ".tgi[4].ni[143].y" -1820;
	setAttr ".tgi[4].ni[143].nvs" 18304;
	setAttr ".tgi[4].ni[144].x" 6125.71435546875;
	setAttr ".tgi[4].ni[144].y" 4982.85693359375;
	setAttr ".tgi[4].ni[144].nvs" 18304;
	setAttr ".tgi[4].ni[145].x" 6395.71435546875;
	setAttr ".tgi[4].ni[145].y" -2374.28564453125;
	setAttr ".tgi[4].ni[145].nvs" 18304;
	setAttr ".tgi[4].ni[146].x" 5808.5712890625;
	setAttr ".tgi[4].ni[146].y" -1560;
	setAttr ".tgi[4].ni[146].nvs" 18304;
	setAttr ".tgi[4].ni[147].x" 6211.4287109375;
	setAttr ".tgi[4].ni[147].y" -6211.4287109375;
	setAttr ".tgi[4].ni[147].nvs" 18304;
	setAttr ".tgi[4].ni[148].x" 6127.14306640625;
	setAttr ".tgi[4].ni[148].y" 3000;
	setAttr ".tgi[4].ni[148].nvs" 18304;
	setAttr ".tgi[4].ni[149].x" 6121.4287109375;
	setAttr ".tgi[4].ni[149].y" -1378.5714111328125;
	setAttr ".tgi[4].ni[149].nvs" 18304;
	setAttr ".tgi[4].ni[150].x" 6125.71435546875;
	setAttr ".tgi[4].ni[150].y" 428.57144165039062;
	setAttr ".tgi[4].ni[150].nvs" 18304;
	setAttr ".tgi[4].ni[151].x" 4368.5712890625;
	setAttr ".tgi[4].ni[151].y" 887.14288330078125;
	setAttr ".tgi[4].ni[151].nvs" 18304;
	setAttr ".tgi[4].ni[152].x" 6211.4287109375;
	setAttr ".tgi[4].ni[152].y" -6731.4287109375;
	setAttr ".tgi[4].ni[152].nvs" 18304;
	setAttr ".tgi[4].ni[153].x" 4368.5712890625;
	setAttr ".tgi[4].ni[153].y" 660;
	setAttr ".tgi[4].ni[153].nvs" 18304;
	setAttr ".tgi[4].ni[154].x" 5732.85693359375;
	setAttr ".tgi[4].ni[154].y" 400;
	setAttr ".tgi[4].ni[154].nvs" 18304;
	setAttr ".tgi[4].ni[155].x" 6211.4287109375;
	setAttr ".tgi[4].ni[155].y" -5951.4287109375;
	setAttr ".tgi[4].ni[155].nvs" 18304;
	setAttr ".tgi[4].ni[156].x" 6125.71435546875;
	setAttr ".tgi[4].ni[156].y" 3940;
	setAttr ".tgi[4].ni[156].nvs" 18304;
	setAttr ".tgi[4].ni[157].x" 5465.71435546875;
	setAttr ".tgi[4].ni[157].y" 4570;
	setAttr ".tgi[4].ni[157].nvs" 18304;
	setAttr ".tgi[4].ni[158].x" 6211.4287109375;
	setAttr ".tgi[4].ni[158].y" -7251.4287109375;
	setAttr ".tgi[4].ni[158].nvs" 18304;
	setAttr ".tgi[4].ni[159].x" 6211.4287109375;
	setAttr ".tgi[4].ni[159].y" -7511.4287109375;
	setAttr ".tgi[4].ni[159].nvs" 18304;
	setAttr ".tgi[4].ni[160].x" 6211.4287109375;
	setAttr ".tgi[4].ni[160].y" -6861.4287109375;
	setAttr ".tgi[4].ni[160].nvs" 18304;
	setAttr ".tgi[4].ni[161].x" 6125.71435546875;
	setAttr ".tgi[4].ni[161].y" 3331.428466796875;
	setAttr ".tgi[4].ni[161].nvs" 18304;
	setAttr ".tgi[4].ni[162].x" 6125.71435546875;
	setAttr ".tgi[4].ni[162].y" -1141.4285888671875;
	setAttr ".tgi[4].ni[162].nvs" 18304;
	setAttr ".tgi[4].ni[163].x" 5425.71435546875;
	setAttr ".tgi[4].ni[163].y" -357.14285278320312;
	setAttr ".tgi[4].ni[163].nvs" 18304;
	setAttr ".tgi[4].ni[164].x" 6127.14306640625;
	setAttr ".tgi[4].ni[164].y" 1951.4285888671875;
	setAttr ".tgi[4].ni[164].nvs" 18304;
	setAttr ".tgi[4].ni[165].x" 4852.85693359375;
	setAttr ".tgi[4].ni[165].y" 2317.142822265625;
	setAttr ".tgi[4].ni[165].nvs" 18304;
	setAttr ".tgi[4].ni[166].x" 6211.4287109375;
	setAttr ".tgi[4].ni[166].y" -8551.4287109375;
	setAttr ".tgi[4].ni[166].nvs" 18304;
	setAttr ".tgi[4].ni[167].x" 5732.85693359375;
	setAttr ".tgi[4].ni[167].y" -1198.5714111328125;
	setAttr ".tgi[4].ni[167].nvs" 18304;
	setAttr ".tgi[4].ni[168].x" 4851.4287109375;
	setAttr ".tgi[4].ni[168].y" 4231.4287109375;
	setAttr ".tgi[4].ni[168].nvs" 18304;
	setAttr ".tgi[4].ni[169].x" 6211.4287109375;
	setAttr ".tgi[4].ni[169].y" -3611.428466796875;
	setAttr ".tgi[4].ni[169].nvs" 18304;
	setAttr ".tgi[4].ni[170].x" 4995.71435546875;
	setAttr ".tgi[4].ni[170].y" -1968.5714111328125;
	setAttr ".tgi[4].ni[170].nvs" 18304;
	setAttr ".tgi[4].ni[171].x" 5222.85693359375;
	setAttr ".tgi[4].ni[171].y" -611.4285888671875;
	setAttr ".tgi[4].ni[171].nvs" 18304;
	setAttr ".tgi[4].ni[172].x" 5920;
	setAttr ".tgi[4].ni[172].y" -2315.71435546875;
	setAttr ".tgi[4].ni[172].nvs" 18304;
	setAttr ".tgi[4].ni[173].x" 5820;
	setAttr ".tgi[4].ni[173].y" 2670;
	setAttr ".tgi[4].ni[173].nvs" 18304;
	setAttr ".tgi[4].ni[174].x" 6127.14306640625;
	setAttr ".tgi[4].ni[174].y" 2695.71435546875;
	setAttr ".tgi[4].ni[174].nvs" 18304;
	setAttr ".tgi[4].ni[175].x" 5848.5712890625;
	setAttr ".tgi[4].ni[175].y" -2080;
	setAttr ".tgi[4].ni[175].nvs" 18304;
	setAttr ".tgi[4].ni[176].x" 6211.4287109375;
	setAttr ".tgi[4].ni[176].y" -4521.4287109375;
	setAttr ".tgi[4].ni[176].nvs" 18304;
	setAttr ".tgi[4].ni[177].x" 5221.4287109375;
	setAttr ".tgi[4].ni[177].y" -1715.7142333984375;
	setAttr ".tgi[4].ni[177].nvs" 18304;
	setAttr ".tgi[4].ni[178].x" 5381.4287109375;
	setAttr ".tgi[4].ni[178].y" -2041.4285888671875;
	setAttr ".tgi[4].ni[178].nvs" 18304;
	setAttr ".tgi[4].ni[179].x" 6227.14306640625;
	setAttr ".tgi[4].ni[179].y" -2315.71435546875;
	setAttr ".tgi[4].ni[179].nvs" 18304;
	setAttr ".tgi[4].ni[180].x" 6211.4287109375;
	setAttr ".tgi[4].ni[180].y" -8421.4287109375;
	setAttr ".tgi[4].ni[180].nvs" 18304;
	setAttr ".tgi[4].ni[181].x" 4545.71435546875;
	setAttr ".tgi[4].ni[181].y" 1898.5714111328125;
	setAttr ".tgi[4].ni[181].nvs" 18304;
	setAttr ".tgi[4].ni[182].x" 5597.14306640625;
	setAttr ".tgi[4].ni[182].y" 970;
	setAttr ".tgi[4].ni[182].nvs" 18304;
	setAttr ".tgi[4].ni[183].x" 5732.85693359375;
	setAttr ".tgi[4].ni[183].y" -881.4285888671875;
	setAttr ".tgi[4].ni[183].nvs" 18304;
	setAttr ".tgi[4].ni[184].x" 4544.28564453125;
	setAttr ".tgi[4].ni[184].y" 4378.5712890625;
	setAttr ".tgi[4].ni[184].nvs" 18304;
	setAttr ".tgi[4].ni[185].x" 6127.14306640625;
	setAttr ".tgi[4].ni[185].y" 1850;
	setAttr ".tgi[4].ni[185].nvs" 18304;
	setAttr ".tgi[4].ni[186].x" 4544.28564453125;
	setAttr ".tgi[4].ni[186].y" 3770;
	setAttr ".tgi[4].ni[186].nvs" 18304;
	setAttr ".tgi[4].ni[187].x" 6125.71435546875;
	setAttr ".tgi[4].ni[187].y" 3635.71435546875;
	setAttr ".tgi[4].ni[187].nvs" 18304;
	setAttr ".tgi[4].ni[188].x" 5467.14306640625;
	setAttr ".tgi[4].ni[188].y" 2695.71435546875;
	setAttr ".tgi[4].ni[188].nvs" 18304;
	setAttr ".tgi[4].ni[189].x" 6125.71435546875;
	setAttr ".tgi[4].ni[189].y" 4475.71435546875;
	setAttr ".tgi[4].ni[189].nvs" 18304;
	setAttr ".tgi[4].ni[190].x" 6211.4287109375;
	setAttr ".tgi[4].ni[190].y" -5171.4287109375;
	setAttr ".tgi[4].ni[190].nvs" 18304;
	setAttr ".tgi[4].ni[191].x" 6127.14306640625;
	setAttr ".tgi[4].ni[191].y" 1647.142822265625;
	setAttr ".tgi[4].ni[191].nvs" 18304;
	setAttr ".tgi[4].ni[192].x" 6132.85693359375;
	setAttr ".tgi[4].ni[192].y" -3578.571533203125;
	setAttr ".tgi[4].ni[192].nvs" 18304;
	setAttr ".tgi[4].ni[193].x" 5222.85693359375;
	setAttr ".tgi[4].ni[193].y" -871.4285888671875;
	setAttr ".tgi[4].ni[193].nvs" 18304;
	setAttr ".tgi[4].ni[194].x" 6125.71435546875;
	setAttr ".tgi[4].ni[194].y" 4244.28564453125;
	setAttr ".tgi[4].ni[194].nvs" 18304;
	setAttr ".tgi[4].ni[195].x" 4545.71435546875;
	setAttr ".tgi[4].ni[195].y" 2520;
	setAttr ".tgi[4].ni[195].nvs" 18304;
	setAttr ".tgi[4].ni[196].x" 6218.5712890625;
	setAttr ".tgi[4].ni[196].y" -4098.5712890625;
	setAttr ".tgi[4].ni[196].nvs" 18304;
	setAttr ".tgi[4].ni[197].x" 5358.5712890625;
	setAttr ".tgi[4].ni[197].y" -1700;
	setAttr ".tgi[4].ni[197].nvs" 18304;
	setAttr ".tgi[4].ni[198].x" 6061.4287109375;
	setAttr ".tgi[4].ni[198].y" -2517.142822265625;
	setAttr ".tgi[4].ni[198].nvs" 18304;
	setAttr ".tgi[4].ni[199].x" 6211.4287109375;
	setAttr ".tgi[4].ni[199].y" -4001.428466796875;
	setAttr ".tgi[4].ni[199].nvs" 18304;
	setAttr ".tgi[4].ni[200].x" 5221.4287109375;
	setAttr ".tgi[4].ni[200].y" -2105.71435546875;
	setAttr ".tgi[4].ni[200].nvs" 18304;
	setAttr ".tgi[4].ni[201].x" 5814.28564453125;
	setAttr ".tgi[4].ni[201].y" -1328.5714111328125;
	setAttr ".tgi[4].ni[201].nvs" 18304;
	setAttr ".tgi[4].ni[202].x" 5881.4287109375;
	setAttr ".tgi[4].ni[202].y" -1434.2857666015625;
	setAttr ".tgi[4].ni[202].nvs" 18304;
	setAttr ".tgi[4].ni[203].x" 6225.71435546875;
	setAttr ".tgi[4].ni[203].y" -4618.5712890625;
	setAttr ".tgi[4].ni[203].nvs" 18304;
	setAttr ".tgi[4].ni[204].x" 5818.5712890625;
	setAttr ".tgi[4].ni[204].y" 4545.71435546875;
	setAttr ".tgi[4].ni[204].nvs" 18304;
	setAttr ".tgi[4].ni[205].x" 6127.14306640625;
	setAttr ".tgi[4].ni[205].y" 2255.71435546875;
	setAttr ".tgi[4].ni[205].nvs" 18304;
	setAttr ".tgi[4].ni[206].x" 6211.4287109375;
	setAttr ".tgi[4].ni[206].y" -1560;
	setAttr ".tgi[4].ni[206].nvs" 18304;
	setAttr ".tgi[4].ni[207].x" 5515.71435546875;
	setAttr ".tgi[4].ni[207].y" -1871.4285888671875;
	setAttr ".tgi[4].ni[207].nvs" 18304;
	setAttr ".tgi[4].ni[208].x" 6211.4287109375;
	setAttr ".tgi[4].ni[208].y" -7121.4287109375;
	setAttr ".tgi[4].ni[208].nvs" 18304;
	setAttr ".tgi[4].ni[209].x" 5904.28564453125;
	setAttr ".tgi[4].ni[209].y" 1212.857177734375;
	setAttr ".tgi[4].ni[209].nvs" 18304;
	setAttr ".tgi[4].ni[210].x" 5818.5712890625;
	setAttr ".tgi[4].ni[210].y" 4362.85693359375;
	setAttr ".tgi[4].ni[210].nvs" 18304;
	setAttr ".tgi[4].ni[211].x" 6211.4287109375;
	setAttr ".tgi[4].ni[211].y" -3351.428466796875;
	setAttr ".tgi[4].ni[211].nvs" 18304;
	setAttr ".tgi[4].ni[212].x" 5820;
	setAttr ".tgi[4].ni[212].y" 2487.142822265625;
	setAttr ".tgi[4].ni[212].nvs" 18304;
	setAttr ".tgi[4].ni[213].x" 5305.71435546875;
	setAttr ".tgi[4].ni[213].y" -2425.71435546875;
	setAttr ".tgi[4].ni[213].nvs" 18304;
	setAttr ".tgi[4].ni[214].x" 4982.85693359375;
	setAttr ".tgi[4].ni[214].y" 871.4285888671875;
	setAttr ".tgi[4].ni[214].nvs" 18304;
	setAttr ".tgi[4].ni[215].x" 5814.28564453125;
	setAttr ".tgi[4].ni[215].y" -1430;
	setAttr ".tgi[4].ni[215].nvs" 18304;
	setAttr ".tgi[4].ni[216].x" 5811.4287109375;
	setAttr ".tgi[4].ni[216].y" -1950;
	setAttr ".tgi[4].ni[216].nvs" 18304;
	setAttr ".tgi[4].ni[217].x" 5574.28564453125;
	setAttr ".tgi[4].ni[217].y" -1434.2857666015625;
	setAttr ".tgi[4].ni[217].nvs" 18304;
	setAttr ".tgi[4].ni[218].x" 4368.5712890625;
	setAttr ".tgi[4].ni[218].y" 558.5714111328125;
	setAttr ".tgi[4].ni[218].nvs" 18304;
	setAttr ".tgi[4].ni[219].x" 6211.4287109375;
	setAttr ".tgi[4].ni[219].y" -3221.428466796875;
	setAttr ".tgi[4].ni[219].nvs" 18304;
	setAttr ".tgi[4].ni[220].x" 6227.14306640625;
	setAttr ".tgi[4].ni[220].y" -1434.2857666015625;
	setAttr ".tgi[4].ni[220].nvs" 18304;
	setAttr ".tgi[4].ni[221].x" 6211.4287109375;
	setAttr ".tgi[4].ni[221].y" -3481.428466796875;
	setAttr ".tgi[4].ni[221].nvs" 18304;
	setAttr ".tgi[4].ni[222].x" 5221.4287109375;
	setAttr ".tgi[4].ni[222].y" -1975.7142333984375;
	setAttr ".tgi[4].ni[222].nvs" 18304;
	setAttr ".tgi[4].ni[223].x" 4544.28564453125;
	setAttr ".tgi[4].ni[223].y" 3611.428466796875;
	setAttr ".tgi[4].ni[223].nvs" 18304;
	setAttr ".tgi[4].ni[224].x" 6125.71435546875;
	setAttr ".tgi[4].ni[224].y" 3230;
	setAttr ".tgi[4].ni[224].nvs" 18304;
	setAttr ".tgi[4].ni[225].x" 6648.5712890625;
	setAttr ".tgi[4].ni[225].y" -982.85711669921875;
	setAttr ".tgi[4].ni[225].nvs" 18304;
	setAttr ".tgi[4].ni[226].x" 4675.71435546875;
	setAttr ".tgi[4].ni[226].y" 868.5714111328125;
	setAttr ".tgi[4].ni[226].nvs" 18304;
	setAttr ".tgi[4].ni[227].x" 4544.28564453125;
	setAttr ".tgi[4].ni[227].y" 4480;
	setAttr ".tgi[4].ni[227].nvs" 18304;
	setAttr ".tgi[4].ni[228].x" 5577.14306640625;
	setAttr ".tgi[4].ni[228].y" -2230;
	setAttr ".tgi[4].ni[228].nvs" 18304;
	setAttr ".tgi[4].ni[229].x" 6127.14306640625;
	setAttr ".tgi[4].ni[229].y" 2154.28564453125;
	setAttr ".tgi[4].ni[229].nvs" 18304;
	setAttr ".tgi[4].ni[230].x" 6081.4287109375;
	setAttr ".tgi[4].ni[230].y" 1535.7142333984375;
	setAttr ".tgi[4].ni[230].nvs" 18306;
	setAttr ".tgi[4].ni[231].x" 6211.4287109375;
	setAttr ".tgi[4].ni[231].y" -1690;
	setAttr ".tgi[4].ni[231].nvs" 18304;
	setAttr ".tgi[4].ni[232].x" 6125.71435546875;
	setAttr ".tgi[4].ni[232].y" 4577.14306640625;
	setAttr ".tgi[4].ni[232].nvs" 18304;
	setAttr ".tgi[4].ni[233].x" 5221.4287109375;
	setAttr ".tgi[4].ni[233].y" -1845.7142333984375;
	setAttr ".tgi[4].ni[233].nvs" 18304;
	setAttr ".tgi[4].ni[234].x" 5221.4287109375;
	setAttr ".tgi[4].ni[234].y" -2235.71435546875;
	setAttr ".tgi[4].ni[234].nvs" 18304;
	setAttr ".tgi[4].ni[235].x" 6125.71435546875;
	setAttr ".tgi[4].ni[235].y" 4142.85693359375;
	setAttr ".tgi[4].ni[235].nvs" 18304;
	setAttr ".tgi[4].ni[236].x" 4545.71435546875;
	setAttr ".tgi[4].ni[236].y" 2114.28564453125;
	setAttr ".tgi[4].ni[236].nvs" 18304;
	setAttr ".tgi[4].ni[237].x" 5818.5712890625;
	setAttr ".tgi[4].ni[237].y" 4204.28564453125;
	setAttr ".tgi[4].ni[237].nvs" 18304;
	setAttr ".tgi[4].ni[238].x" 4545.71435546875;
	setAttr ".tgi[4].ni[238].y" 2215.71435546875;
	setAttr ".tgi[4].ni[238].nvs" 18304;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 76;
	setAttr ".unw" 76;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 49 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -cb on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av ".dar";
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr -av ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
connectAttr "template_CTRL.template_Scale" "template_CTRL.sx" -l on;
connectAttr "template_CTRL.template_Scale" "template_CTRL.sy" -l on;
connectAttr "template_CTRL.template_Scale" "template_CTRL.sz" -l on;
connectAttr "makeNurbCircle3.oc" "template_CTRLShape.cr";
connectAttr "front_hip_L_JNT.s" "front_knee_L_JNT.is";
connectAttr "front_knee_L_JNT.s" "front_ankle_L_JNT.is";
connectAttr "front_ankle_L_JNT.s" "front_toeExtra_L_JNT.is";
connectAttr "front_ankle_L_JNT.s" "front_ankle_twist_L_JNT.is";
connectAttr "front_ankle_L_JNT.s" "front_toe_twist_L_JNT.is";
connectAttr "front_hip_L_JNT.s" "front_knee_twist_L_JNT.is";
connectAttr "front_hip_L_JNT.s" "front_hip_twist_L_JNT.is";
connectAttr "front_hip_L_JNT.s" "front_hip_dup_L_JNT.is";
connectAttr "front_leg_mirror_EXP.out[8]" "front_knee_dup_L_JNT.ty";
connectAttr "unitConversion45.o" "front_knee_dup_L_JNT.rx";
connectAttr "front_hip_dup_L_JNT.s" "front_knee_dup_L_JNT.is";
connectAttr "front_leg_mirror_EXP.out[14]" "front_ankle_dup_L_JNT.ty";
connectAttr "unitConversion49.o" "front_ankle_dup_L_JNT.rx";
connectAttr "front_knee_dup_L_JNT.s" "front_ankle_dup_L_JNT.is";
connectAttr "front_leg_mirror_EXP.out[0]" "front_hip_R_JNT.tx";
connectAttr "front_leg_mirror_EXP.out[1]" "front_hip_R_JNT.ty";
connectAttr "front_leg_mirror_EXP.out[2]" "front_hip_R_JNT.tz";
connectAttr "unitConversion38.o" "front_hip_R_JNT.rx";
connectAttr "unitConversion40.o" "front_hip_R_JNT.ry";
connectAttr "unitConversion42.o" "front_hip_R_JNT.rz";
connectAttr "front_leg_mirror_EXP.out[6]" "front_knee_R_JNT.ty";
connectAttr "unitConversion44.o" "front_knee_R_JNT.rx";
connectAttr "front_hip_R_JNT.s" "front_knee_R_JNT.is";
connectAttr "front_leg_mirror_EXP.out[12]" "front_ankle_R_JNT.ty";
connectAttr "unitConversion48.o" "front_ankle_R_JNT.rx";
connectAttr "front_knee_R_JNT.s" "front_ankle_R_JNT.is";
connectAttr "front_leg_mirror_EXP.out[18]" "front_toeExtra_R_JNT.ty";
connectAttr "front_ankle_R_JNT.s" "front_toeExtra_R_JNT.is";
connectAttr "front_ankle_R_JNT.s" "front_ankle_twist_R_JNT.is";
connectAttr "front_ankle_R_JNT.s" "front_toe_twist_R_JNT.is";
connectAttr "front_hip_R_JNT.s" "front_knee_twist_R_JNT.is";
connectAttr "front_hip_R_JNT.s" "front_hip_twist_R_JNT.is";
connectAttr "front_hip_R_JNT.s" "front_hip_dup_R_JNT.is";
connectAttr "front_leg_mirror_EXP.out[10]" "front_knee_dup_R_JNT.ty";
connectAttr "unitConversion46.o" "front_knee_dup_R_JNT.rx";
connectAttr "front_hip_dup_R_JNT.s" "front_knee_dup_R_JNT.is";
connectAttr "front_leg_mirror_EXP.out[16]" "front_ankle_dup_R_JNT.ty";
connectAttr "unitConversion50.o" "front_ankle_dup_R_JNT.rx";
connectAttr "front_knee_dup_R_JNT.s" "front_ankle_dup_R_JNT.is";
connectAttr "makeNurbCircle4.oc" "cog_CTRLShape.cr";
connectAttr "makeNurbCircle2.oc" "front_ankle_L_CTRLShape.cr";
connectAttr "front_knee_L_JNT.ty" "front_foot_L_CTRL.knee_Y_value";
connectAttr "front_ankle_L_JNT.ty" "front_foot_L_CTRL.ankle_Y_value";
connectAttr "front_distance_add_ankle_L_UTL.o" "front_foot_L_CTRL.ankle_dis_UTL"
		;
connectAttr "front_distance_add_knee_L_UTL.o" "front_foot_L_CTRL.knee_dis_UTL";
connectAttr "front_hip_twist_L_JNT.ty" "front_foot_L_CTRL.Twist_Hip_Y_Value";
connectAttr "front_twist_hip_distance_L_UTL.o" "front_foot_L_CTRL.Twist_Hip_Dis_UTL"
		;
connectAttr "front_knee_R_JNT.ty" "front_foot_R_CTRL.knee_Y_value";
connectAttr "front_ankle_R_JNT.ty" "front_foot_R_CTRL.ankle_Y_value";
connectAttr "front_distance_add_ankle_R_UTL.o" "front_foot_R_CTRL.ankle_dis_UTL"
		;
connectAttr "front_distance_add_knee_R_UTL.o" "front_foot_R_CTRL.knee_dis_UTL";
connectAttr "front_hip_twist_R_JNT.ty" "front_foot_R_CTRL.Twist_Hip_Y_Value";
connectAttr "front_twist_hip_distance_R_UTL.o" "front_foot_R_CTRL.Twist_Hip_Dis_UTL"
		;
connectAttr "front_poleVector_L_CRVShape1Orig.ws" "front_poleVector_L_CRVShape.cr"
		;
connectAttr "front_poleVector_R_CRVShape2Orig.ws" "front_poleVector_R_CRVShape.cr"
		;
connectAttr "front_toe_L_NUL_pointConstraint1.ctx" "front_toePoint_L_NUL.tx";
connectAttr "front_toe_L_NUL_pointConstraint1.cty" "front_toePoint_L_NUL.ty";
connectAttr "front_toe_L_NUL_pointConstraint1.ctz" "front_toePoint_L_NUL.tz";
connectAttr "front_toe_L_NUL_orientConstraint1.cry" "front_toePoint_L_NUL.ry";
connectAttr "front_toe_L_JNT.s" "front_toeMid_L_JNT.is";
connectAttr "front_toeMid_L_JNT.s" "front_toeTip_L_JNT.is";
connectAttr "front_toePoint_L_NUL.pim" "front_toe_L_NUL_pointConstraint1.cpim";
connectAttr "front_toePoint_L_NUL.rp" "front_toe_L_NUL_pointConstraint1.crp";
connectAttr "front_toePoint_L_NUL.rpt" "front_toe_L_NUL_pointConstraint1.crt";
connectAttr "front_toeExtra_L_JNT.t" "front_toe_L_NUL_pointConstraint1.tg[0].tt"
		;
connectAttr "front_toeExtra_L_JNT.rp" "front_toe_L_NUL_pointConstraint1.tg[0].trp"
		;
connectAttr "front_toeExtra_L_JNT.rpt" "front_toe_L_NUL_pointConstraint1.tg[0].trt"
		;
connectAttr "front_toeExtra_L_JNT.pm" "front_toe_L_NUL_pointConstraint1.tg[0].tpm"
		;
connectAttr "front_toe_L_NUL_pointConstraint1.w0" "front_toe_L_NUL_pointConstraint1.tg[0].tw"
		;
connectAttr "front_toePoint_L_NUL.ro" "front_toe_L_NUL_orientConstraint1.cro";
connectAttr "front_toePoint_L_NUL.pim" "front_toe_L_NUL_orientConstraint1.cpim";
connectAttr "front_toeExtra_L_JNT.r" "front_toe_L_NUL_orientConstraint1.tg[0].tr"
		;
connectAttr "front_toeExtra_L_JNT.ro" "front_toe_L_NUL_orientConstraint1.tg[0].tro"
		;
connectAttr "front_toeExtra_L_JNT.pm" "front_toe_L_NUL_orientConstraint1.tg[0].tpm"
		;
connectAttr "front_toeExtra_L_JNT.jo" "front_toe_L_NUL_orientConstraint1.tg[0].tjo"
		;
connectAttr "front_toe_L_NUL_orientConstraint1.w0" "front_toe_L_NUL_orientConstraint1.tg[0].tw"
		;
connectAttr "front_toe_R_NUL_pointConstraint1.ctx" "front_toePoint_R_NUL.tx";
connectAttr "front_toe_R_NUL_pointConstraint1.cty" "front_toePoint_R_NUL.ty";
connectAttr "front_toe_R_NUL_pointConstraint1.ctz" "front_toePoint_R_NUL.tz";
connectAttr "front_toePoint_R_NUL_orientConstraint1.cry" "front_toePoint_R_NUL.ry"
		;
connectAttr "unitConversion52.o" "front_toe_R_JNT.rx";
connectAttr "front_leg_mirror_EXP.out[20]" "front_toeMid_R_JNT.ty";
connectAttr "unitConversion54.o" "front_toeMid_R_JNT.rx";
connectAttr "front_toe_R_JNT.s" "front_toeMid_R_JNT.is";
connectAttr "front_leg_mirror_EXP.out[22]" "front_toeTip_R_JNT.ty";
connectAttr "unitConversion56.o" "front_toeTip_R_JNT.rx";
connectAttr "front_toeMid_R_JNT.s" "front_toeTip_R_JNT.is";
connectAttr "front_toePoint_R_NUL.pim" "front_toe_R_NUL_pointConstraint1.cpim";
connectAttr "front_toePoint_R_NUL.rp" "front_toe_R_NUL_pointConstraint1.crp";
connectAttr "front_toePoint_R_NUL.rpt" "front_toe_R_NUL_pointConstraint1.crt";
connectAttr "front_toeExtra_R_JNT.t" "front_toe_R_NUL_pointConstraint1.tg[0].tt"
		;
connectAttr "front_toeExtra_R_JNT.rp" "front_toe_R_NUL_pointConstraint1.tg[0].trp"
		;
connectAttr "front_toeExtra_R_JNT.rpt" "front_toe_R_NUL_pointConstraint1.tg[0].trt"
		;
connectAttr "front_toeExtra_R_JNT.pm" "front_toe_R_NUL_pointConstraint1.tg[0].tpm"
		;
connectAttr "front_toe_R_NUL_pointConstraint1.w0" "front_toe_R_NUL_pointConstraint1.tg[0].tw"
		;
connectAttr "front_leg_mirror_EXP.out[29]" "front_footFront_R_LOC.ty";
connectAttr "front_leg_mirror_EXP.out[30]" "front_footFront_R_LOC.tz";
connectAttr "front_leg_mirror_EXP.out[27]" "front_footBack_R_LOC.ty";
connectAttr "front_leg_mirror_EXP.out[28]" "front_footBack_R_LOC.tz";
connectAttr "front_toePoint_R_NUL.ro" "front_toePoint_R_NUL_orientConstraint1.cro"
		;
connectAttr "front_toePoint_R_NUL.pim" "front_toePoint_R_NUL_orientConstraint1.cpim"
		;
connectAttr "front_toeExtra_R_JNT.r" "front_toePoint_R_NUL_orientConstraint1.tg[0].tr"
		;
connectAttr "front_toeExtra_R_JNT.ro" "front_toePoint_R_NUL_orientConstraint1.tg[0].tro"
		;
connectAttr "front_toeExtra_R_JNT.pm" "front_toePoint_R_NUL_orientConstraint1.tg[0].tpm"
		;
connectAttr "front_toeExtra_R_JNT.jo" "front_toePoint_R_NUL_orientConstraint1.tg[0].tjo"
		;
connectAttr "front_toePoint_R_NUL_orientConstraint1.w0" "front_toePoint_R_NUL_orientConstraint1.tg[0].tw"
		;
connectAttr "front_knee_con_L_NUL_parentConstraint1.cty" "front_knee_con_L_NUL.ty"
		;
connectAttr "front_knee_con_L_NUL_parentConstraint1.ctz" "front_knee_con_L_NUL.tz"
		;
connectAttr "front_knee_con_L_NUL_parentConstraint1.ctx" "front_knee_con_L_NUL.tx"
		;
connectAttr "front_knee_con_L_NUL_parentConstraint1.crx" "front_knee_con_L_NUL.rx"
		;
connectAttr "front_knee_con_L_NUL_parentConstraint1.cry" "front_knee_con_L_NUL.ry"
		;
connectAttr "front_knee_con_L_NUL_parentConstraint1.crz" "front_knee_con_L_NUL.rz"
		;
connectAttr "front_knee_con_L_NUL.ro" "front_knee_con_L_NUL_parentConstraint1.cro"
		;
connectAttr "front_knee_con_L_NUL.pim" "front_knee_con_L_NUL_parentConstraint1.cpim"
		;
connectAttr "front_knee_con_L_NUL.rp" "front_knee_con_L_NUL_parentConstraint1.crp"
		;
connectAttr "front_knee_con_L_NUL.rpt" "front_knee_con_L_NUL_parentConstraint1.crt"
		;
connectAttr "front_hip_L_JNT.t" "front_knee_con_L_NUL_parentConstraint1.tg[0].tt"
		;
connectAttr "front_hip_L_JNT.rp" "front_knee_con_L_NUL_parentConstraint1.tg[0].trp"
		;
connectAttr "front_hip_L_JNT.rpt" "front_knee_con_L_NUL_parentConstraint1.tg[0].trt"
		;
connectAttr "front_hip_L_JNT.r" "front_knee_con_L_NUL_parentConstraint1.tg[0].tr"
		;
connectAttr "front_hip_L_JNT.ro" "front_knee_con_L_NUL_parentConstraint1.tg[0].tro"
		;
connectAttr "front_hip_L_JNT.s" "front_knee_con_L_NUL_parentConstraint1.tg[0].ts"
		;
connectAttr "front_hip_L_JNT.pm" "front_knee_con_L_NUL_parentConstraint1.tg[0].tpm"
		;
connectAttr "front_hip_L_JNT.jo" "front_knee_con_L_NUL_parentConstraint1.tg[0].tjo"
		;
connectAttr "front_hip_L_JNT.ssc" "front_knee_con_L_NUL_parentConstraint1.tg[0].tsc"
		;
connectAttr "front_hip_L_JNT.is" "front_knee_con_L_NUL_parentConstraint1.tg[0].tis"
		;
connectAttr "front_knee_con_L_NUL_parentConstraint1.w0" "front_knee_con_L_NUL_parentConstraint1.tg[0].tw"
		;
connectAttr "front_knee_con_R_NUL_parentConstraint1.cty" "front_knee_con_R_NUL.ty"
		;
connectAttr "front_knee_con_R_NUL_parentConstraint1.ctz" "front_knee_con_R_NUL.tz"
		;
connectAttr "front_knee_con_R_NUL_parentConstraint1.ctx" "front_knee_con_R_NUL.tx"
		;
connectAttr "front_knee_con_R_NUL_parentConstraint1.crx" "front_knee_con_R_NUL.rx"
		;
connectAttr "front_knee_con_R_NUL_parentConstraint1.cry" "front_knee_con_R_NUL.ry"
		;
connectAttr "front_knee_con_R_NUL_parentConstraint1.crz" "front_knee_con_R_NUL.rz"
		;
connectAttr "front_leg_mirror_EXP.out[24]" "front_knee_R_LOC.ty";
connectAttr "front_leg_mirror_EXP.out[25]" "front_knee_R_LOC.tz";
connectAttr "unitConversion58.o" "front_knee_R_LOC.rx";
connectAttr "front_knee_con_R_NUL.ro" "front_knee_con_R_NUL_parentConstraint1.cro"
		;
connectAttr "front_knee_con_R_NUL.pim" "front_knee_con_R_NUL_parentConstraint1.cpim"
		;
connectAttr "front_knee_con_R_NUL.rp" "front_knee_con_R_NUL_parentConstraint1.crp"
		;
connectAttr "front_knee_con_R_NUL.rpt" "front_knee_con_R_NUL_parentConstraint1.crt"
		;
connectAttr "front_hip_R_JNT.t" "front_knee_con_R_NUL_parentConstraint1.tg[0].tt"
		;
connectAttr "front_hip_R_JNT.rp" "front_knee_con_R_NUL_parentConstraint1.tg[0].trp"
		;
connectAttr "front_hip_R_JNT.rpt" "front_knee_con_R_NUL_parentConstraint1.tg[0].trt"
		;
connectAttr "front_hip_R_JNT.r" "front_knee_con_R_NUL_parentConstraint1.tg[0].tr"
		;
connectAttr "front_hip_R_JNT.ro" "front_knee_con_R_NUL_parentConstraint1.tg[0].tro"
		;
connectAttr "front_hip_R_JNT.s" "front_knee_con_R_NUL_parentConstraint1.tg[0].ts"
		;
connectAttr "front_hip_R_JNT.pm" "front_knee_con_R_NUL_parentConstraint1.tg[0].tpm"
		;
connectAttr "front_hip_R_JNT.jo" "front_knee_con_R_NUL_parentConstraint1.tg[0].tjo"
		;
connectAttr "front_hip_R_JNT.ssc" "front_knee_con_R_NUL_parentConstraint1.tg[0].tsc"
		;
connectAttr "front_hip_R_JNT.is" "front_knee_con_R_NUL_parentConstraint1.tg[0].tis"
		;
connectAttr "front_knee_con_R_NUL_parentConstraint1.w0" "front_knee_con_R_NUL_parentConstraint1.tg[0].tw"
		;
connectAttr "front_hip_follow_L_JNT_aimConstraint1.crx" "front_hip_follow_L_JNT.rx"
		;
connectAttr "front_hip_follow_L_JNT_aimConstraint1.cry" "front_hip_follow_L_JNT.ry"
		;
connectAttr "front_hip_follow_L_JNT_aimConstraint1.crz" "front_hip_follow_L_JNT.rz"
		;
connectAttr "front_hip_follow_L_JNT_pointConstraint1.ctx" "front_hip_follow_L_JNT.tx"
		;
connectAttr "front_hip_follow_L_JNT_pointConstraint1.cty" "front_hip_follow_L_JNT.ty"
		;
connectAttr "front_hip_follow_L_JNT_pointConstraint1.ctz" "front_hip_follow_L_JNT.tz"
		;
connectAttr "front_foot_follow_L_JNT_pointConstraint1.cty" "front_foot_follow_L_JNT.ty"
		;
connectAttr "front_hip_follow_L_JNT.s" "front_foot_follow_L_JNT.is";
connectAttr "front_foot_follow_L_JNT.pim" "front_foot_follow_L_JNT_pointConstraint1.cpim"
		;
connectAttr "front_foot_follow_L_JNT.rp" "front_foot_follow_L_JNT_pointConstraint1.crp"
		;
connectAttr "front_foot_follow_L_JNT.rpt" "front_foot_follow_L_JNT_pointConstraint1.crt"
		;
connectAttr "front_toe_L_JNT.t" "front_foot_follow_L_JNT_pointConstraint1.tg[0].tt"
		;
connectAttr "front_toe_L_JNT.rp" "front_foot_follow_L_JNT_pointConstraint1.tg[0].trp"
		;
connectAttr "front_toe_L_JNT.rpt" "front_foot_follow_L_JNT_pointConstraint1.tg[0].trt"
		;
connectAttr "front_toe_L_JNT.pm" "front_foot_follow_L_JNT_pointConstraint1.tg[0].tpm"
		;
connectAttr "front_foot_follow_L_JNT_pointConstraint1.w0" "front_foot_follow_L_JNT_pointConstraint1.tg[0].tw"
		;
connectAttr "front_hip_follow_L_JNT.pim" "front_hip_follow_L_JNT_aimConstraint1.cpim"
		;
connectAttr "front_hip_follow_L_JNT.t" "front_hip_follow_L_JNT_aimConstraint1.ct"
		;
connectAttr "front_hip_follow_L_JNT.rp" "front_hip_follow_L_JNT_aimConstraint1.crp"
		;
connectAttr "front_hip_follow_L_JNT.rpt" "front_hip_follow_L_JNT_aimConstraint1.crt"
		;
connectAttr "front_hip_follow_L_JNT.ro" "front_hip_follow_L_JNT_aimConstraint1.cro"
		;
connectAttr "front_hip_follow_L_JNT.jo" "front_hip_follow_L_JNT_aimConstraint1.cjo"
		;
connectAttr "front_hip_follow_L_JNT.is" "front_hip_follow_L_JNT_aimConstraint1.is"
		;
connectAttr "front_toe_L_JNT.t" "front_hip_follow_L_JNT_aimConstraint1.tg[0].tt"
		;
connectAttr "front_toe_L_JNT.rp" "front_hip_follow_L_JNT_aimConstraint1.tg[0].trp"
		;
connectAttr "front_toe_L_JNT.rpt" "front_hip_follow_L_JNT_aimConstraint1.tg[0].trt"
		;
connectAttr "front_toe_L_JNT.pm" "front_hip_follow_L_JNT_aimConstraint1.tg[0].tpm"
		;
connectAttr "front_hip_follow_L_JNT_aimConstraint1.w0" "front_hip_follow_L_JNT_aimConstraint1.tg[0].tw"
		;
connectAttr "front_knee_L_LOC.wm" "front_hip_follow_L_JNT_aimConstraint1.wum";
connectAttr "front_hip_follow_L_JNT.pim" "front_hip_follow_L_JNT_pointConstraint1.cpim"
		;
connectAttr "front_hip_follow_L_JNT.rp" "front_hip_follow_L_JNT_pointConstraint1.crp"
		;
connectAttr "front_hip_follow_L_JNT.rpt" "front_hip_follow_L_JNT_pointConstraint1.crt"
		;
connectAttr "front_hip_L_JNT.t" "front_hip_follow_L_JNT_pointConstraint1.tg[0].tt"
		;
connectAttr "front_hip_L_JNT.rp" "front_hip_follow_L_JNT_pointConstraint1.tg[0].trp"
		;
connectAttr "front_hip_L_JNT.rpt" "front_hip_follow_L_JNT_pointConstraint1.tg[0].trt"
		;
connectAttr "front_hip_L_JNT.pm" "front_hip_follow_L_JNT_pointConstraint1.tg[0].tpm"
		;
connectAttr "front_hip_follow_L_JNT_pointConstraint1.w0" "front_hip_follow_L_JNT_pointConstraint1.tg[0].tw"
		;
connectAttr "front_hip_follow_R_JNT_aimConstraint1.crx" "front_hip_follow_R_JNT.rx"
		;
connectAttr "front_hip_follow_R_JNT_aimConstraint1.cry" "front_hip_follow_R_JNT.ry"
		;
connectAttr "front_hip_follow_R_JNT_aimConstraint1.crz" "front_hip_follow_R_JNT.rz"
		;
connectAttr "front_hip_follow_R_JNT_pointConstraint1.ctx" "front_hip_follow_R_JNT.tx"
		;
connectAttr "front_hip_follow_R_JNT_pointConstraint1.cty" "front_hip_follow_R_JNT.ty"
		;
connectAttr "front_hip_follow_R_JNT_pointConstraint1.ctz" "front_hip_follow_R_JNT.tz"
		;
connectAttr "front_foot_follow_R_JNT_pointConstraint1.cty" "front_foot_follow_R_JNT.ty"
		;
connectAttr "front_hip_follow_R_JNT.s" "front_foot_follow_R_JNT.is";
connectAttr "front_foot_follow_R_JNT.pim" "front_foot_follow_R_JNT_pointConstraint1.cpim"
		;
connectAttr "front_foot_follow_R_JNT.rp" "front_foot_follow_R_JNT_pointConstraint1.crp"
		;
connectAttr "front_foot_follow_R_JNT.rpt" "front_foot_follow_R_JNT_pointConstraint1.crt"
		;
connectAttr "front_toe_R_JNT.t" "front_foot_follow_R_JNT_pointConstraint1.tg[0].tt"
		;
connectAttr "front_toe_R_JNT.rp" "front_foot_follow_R_JNT_pointConstraint1.tg[0].trp"
		;
connectAttr "front_toe_R_JNT.rpt" "front_foot_follow_R_JNT_pointConstraint1.tg[0].trt"
		;
connectAttr "front_toe_R_JNT.pm" "front_foot_follow_R_JNT_pointConstraint1.tg[0].tpm"
		;
connectAttr "front_foot_follow_R_JNT_pointConstraint1.w0" "front_foot_follow_R_JNT_pointConstraint1.tg[0].tw"
		;
connectAttr "front_hip_follow_R_JNT.pim" "front_hip_follow_R_JNT_aimConstraint1.cpim"
		;
connectAttr "front_hip_follow_R_JNT.t" "front_hip_follow_R_JNT_aimConstraint1.ct"
		;
connectAttr "front_hip_follow_R_JNT.rp" "front_hip_follow_R_JNT_aimConstraint1.crp"
		;
connectAttr "front_hip_follow_R_JNT.rpt" "front_hip_follow_R_JNT_aimConstraint1.crt"
		;
connectAttr "front_hip_follow_R_JNT.ro" "front_hip_follow_R_JNT_aimConstraint1.cro"
		;
connectAttr "front_hip_follow_R_JNT.jo" "front_hip_follow_R_JNT_aimConstraint1.cjo"
		;
connectAttr "front_hip_follow_R_JNT.is" "front_hip_follow_R_JNT_aimConstraint1.is"
		;
connectAttr "front_toe_R_JNT.t" "front_hip_follow_R_JNT_aimConstraint1.tg[0].tt"
		;
connectAttr "front_toe_R_JNT.rp" "front_hip_follow_R_JNT_aimConstraint1.tg[0].trp"
		;
connectAttr "front_toe_R_JNT.rpt" "front_hip_follow_R_JNT_aimConstraint1.tg[0].trt"
		;
connectAttr "front_toe_R_JNT.pm" "front_hip_follow_R_JNT_aimConstraint1.tg[0].tpm"
		;
connectAttr "front_hip_follow_R_JNT_aimConstraint1.w0" "front_hip_follow_R_JNT_aimConstraint1.tg[0].tw"
		;
connectAttr "front_knee_R_LOC.wm" "front_hip_follow_R_JNT_aimConstraint1.wum";
connectAttr "front_hip_follow_R_JNT.pim" "front_hip_follow_R_JNT_pointConstraint1.cpim"
		;
connectAttr "front_hip_follow_R_JNT.rp" "front_hip_follow_R_JNT_pointConstraint1.crp"
		;
connectAttr "front_hip_follow_R_JNT.rpt" "front_hip_follow_R_JNT_pointConstraint1.crt"
		;
connectAttr "front_hip_R_JNT.t" "front_hip_follow_R_JNT_pointConstraint1.tg[0].tt"
		;
connectAttr "front_hip_R_JNT.rp" "front_hip_follow_R_JNT_pointConstraint1.tg[0].trp"
		;
connectAttr "front_hip_R_JNT.rpt" "front_hip_follow_R_JNT_pointConstraint1.tg[0].trt"
		;
connectAttr "front_hip_R_JNT.pm" "front_hip_follow_R_JNT_pointConstraint1.tg[0].tpm"
		;
connectAttr "front_hip_follow_R_JNT_pointConstraint1.w0" "front_hip_follow_R_JNT_pointConstraint1.tg[0].tw"
		;
connectAttr "back_hip_L_JNT.s" "back_knee_L_JNT.is";
connectAttr "back_knee_L_JNT.s" "back_ankle_L_JNT.is";
connectAttr "back_ankle_L_JNT.s" "back_toeExtra_L_JNT.is";
connectAttr "back_ankle_L_JNT.s" "back_ankle_twist_L_JNT.is";
connectAttr "back_ankle_L_JNT.s" "back_toe_twist_L_JNT.is";
connectAttr "back_hip_L_JNT.s" "back_knee_twist_L_JNT.is";
connectAttr "back_hip_L_JNT.s" "back_hip_twist_L_JNT.is";
connectAttr "back_hip_L_JNT.s" "back_hip_dup_L_JNT.is";
connectAttr "back_leg_mirror_EXP.out[8]" "back_knee_dup_L_JNT.ty";
connectAttr "unitConversion9.o" "back_knee_dup_L_JNT.rx";
connectAttr "back_hip_dup_L_JNT.s" "back_knee_dup_L_JNT.is";
connectAttr "back_leg_mirror_EXP.out[14]" "back_ankle_dup_L_JNT.ty";
connectAttr "unitConversion13.o" "back_ankle_dup_L_JNT.rx";
connectAttr "back_knee_dup_L_JNT.s" "back_ankle_dup_L_JNT.is";
connectAttr "back_leg_mirror_EXP.out[0]" "back_hip_R_JNT.tx";
connectAttr "back_leg_mirror_EXP.out[1]" "back_hip_R_JNT.ty";
connectAttr "back_leg_mirror_EXP.out[2]" "back_hip_R_JNT.tz";
connectAttr "unitConversion2.o" "back_hip_R_JNT.rx";
connectAttr "unitConversion4.o" "back_hip_R_JNT.ry";
connectAttr "unitConversion6.o" "back_hip_R_JNT.rz";
connectAttr "back_leg_mirror_EXP.out[6]" "back_knee_R_JNT.ty";
connectAttr "unitConversion8.o" "back_knee_R_JNT.rx";
connectAttr "back_hip_R_JNT.s" "back_knee_R_JNT.is";
connectAttr "back_leg_mirror_EXP.out[12]" "back_ankle_R_JNT.ty";
connectAttr "unitConversion12.o" "back_ankle_R_JNT.rx";
connectAttr "back_knee_R_JNT.s" "back_ankle_R_JNT.is";
connectAttr "back_leg_mirror_EXP.out[18]" "back_toeExtra_R_JNT.ty";
connectAttr "back_ankle_R_JNT.s" "back_toeExtra_R_JNT.is";
connectAttr "back_ankle_R_JNT.s" "back_ankle_twist_R_JNT.is";
connectAttr "back_ankle_R_JNT.s" "back_toe_twist_R_JNT.is";
connectAttr "back_hip_R_JNT.s" "back_knee_twist_R_JNT.is";
connectAttr "back_hip_R_JNT.s" "back_hip_twist_R_JNT.is";
connectAttr "back_hip_R_JNT.s" "back_hip_dup_R_JNT.is";
connectAttr "back_leg_mirror_EXP.out[10]" "back_knee_dup_R_JNT.ty";
connectAttr "unitConversion10.o" "back_knee_dup_R_JNT.rx";
connectAttr "back_hip_dup_R_JNT.s" "back_knee_dup_R_JNT.is";
connectAttr "back_leg_mirror_EXP.out[16]" "back_ankle_dup_R_JNT.ty";
connectAttr "unitConversion14.o" "back_ankle_dup_R_JNT.rx";
connectAttr "back_knee_dup_R_JNT.s" "back_ankle_dup_R_JNT.is";
connectAttr "makeNurbCircle5.oc" "back_ankle_L_CTRLShape.cr";
connectAttr "back_knee_L_JNT.ty" "back_foot_L_CTRL.knee_Y_value";
connectAttr "back_ankle_L_JNT.ty" "back_foot_L_CTRL.ankle_Y_value";
connectAttr "back_distance_add_ankle_L_UTL.o" "back_foot_L_CTRL.ankle_dis_UTL";
connectAttr "back_distance_add_knee_L_UTL.o" "back_foot_L_CTRL.knee_dis_UTL";
connectAttr "back_hip_twist_L_JNT.ty" "back_foot_L_CTRL.Twist_Hip_Y_Value";
connectAttr "back_twist_hip_distance_L_UTL.o" "back_foot_L_CTRL.Twist_Hip_Dis_UTL"
		;
connectAttr "back_knee_R_JNT.ty" "back_foot_R_CTRL.knee_Y_value";
connectAttr "back_ankle_R_JNT.ty" "back_foot_R_CTRL.ankle_Y_value";
connectAttr "back_distance_add_ankle_R_UTL.o" "back_foot_R_CTRL.ankle_dis_UTL";
connectAttr "back_distance_add_knee_R_UTL.o" "back_foot_R_CTRL.knee_dis_UTL";
connectAttr "back_hip_twist_R_JNT.ty" "back_foot_R_CTRL.Twist_Hip_Y_Value";
connectAttr "back_twist_hip_distance_R_UTL.o" "back_foot_R_CTRL.Twist_Hip_Dis_UTL"
		;
connectAttr "back_poleVector_L_CRVShape1Orig.ws" "back_poleVector_L_CRVShape.cr"
		;
connectAttr "back_poleVector_R_CRVShape2Orig.ws" "back_poleVector_R_CRVShape.cr"
		;
connectAttr "back_toe_L_NUL_pointConstraint1.ctx" "back_toePoint_L_NUL.tx";
connectAttr "back_toe_L_NUL_pointConstraint1.cty" "back_toePoint_L_NUL.ty";
connectAttr "back_toe_L_NUL_pointConstraint1.ctz" "back_toePoint_L_NUL.tz";
connectAttr "back_toe_L_NUL_orientConstraint1.cry" "back_toePoint_L_NUL.ry";
connectAttr "back_toe_L_JNT.s" "back_toeMid_L_JNT.is";
connectAttr "back_toeMid_L_JNT.s" "back_toeTip_L_JNT.is";
connectAttr "back_toePoint_L_NUL.pim" "back_toe_L_NUL_pointConstraint1.cpim";
connectAttr "back_toePoint_L_NUL.rp" "back_toe_L_NUL_pointConstraint1.crp";
connectAttr "back_toePoint_L_NUL.rpt" "back_toe_L_NUL_pointConstraint1.crt";
connectAttr "back_toeExtra_L_JNT.t" "back_toe_L_NUL_pointConstraint1.tg[0].tt";
connectAttr "back_toeExtra_L_JNT.rp" "back_toe_L_NUL_pointConstraint1.tg[0].trp"
		;
connectAttr "back_toeExtra_L_JNT.rpt" "back_toe_L_NUL_pointConstraint1.tg[0].trt"
		;
connectAttr "back_toeExtra_L_JNT.pm" "back_toe_L_NUL_pointConstraint1.tg[0].tpm"
		;
connectAttr "back_toe_L_NUL_pointConstraint1.w0" "back_toe_L_NUL_pointConstraint1.tg[0].tw"
		;
connectAttr "back_toePoint_L_NUL.ro" "back_toe_L_NUL_orientConstraint1.cro";
connectAttr "back_toePoint_L_NUL.pim" "back_toe_L_NUL_orientConstraint1.cpim";
connectAttr "back_toeExtra_L_JNT.r" "back_toe_L_NUL_orientConstraint1.tg[0].tr";
connectAttr "back_toeExtra_L_JNT.ro" "back_toe_L_NUL_orientConstraint1.tg[0].tro"
		;
connectAttr "back_toeExtra_L_JNT.pm" "back_toe_L_NUL_orientConstraint1.tg[0].tpm"
		;
connectAttr "back_toeExtra_L_JNT.jo" "back_toe_L_NUL_orientConstraint1.tg[0].tjo"
		;
connectAttr "back_toe_L_NUL_orientConstraint1.w0" "back_toe_L_NUL_orientConstraint1.tg[0].tw"
		;
connectAttr "back_toe_R_NUL_pointConstraint1.ctx" "back_toePoint_R_NUL.tx";
connectAttr "back_toe_R_NUL_pointConstraint1.cty" "back_toePoint_R_NUL.ty";
connectAttr "back_toe_R_NUL_pointConstraint1.ctz" "back_toePoint_R_NUL.tz";
connectAttr "back_toePoint_R_NUL_orientConstraint1.cry" "back_toePoint_R_NUL.ry"
		;
connectAttr "unitConversion16.o" "back_toe_R_JNT.rx";
connectAttr "back_leg_mirror_EXP.out[20]" "back_toeMid_R_JNT.ty";
connectAttr "unitConversion18.o" "back_toeMid_R_JNT.rx";
connectAttr "back_toe_R_JNT.s" "back_toeMid_R_JNT.is";
connectAttr "back_leg_mirror_EXP.out[22]" "back_toeTip_R_JNT.ty";
connectAttr "unitConversion20.o" "back_toeTip_R_JNT.rx";
connectAttr "back_toeMid_R_JNT.s" "back_toeTip_R_JNT.is";
connectAttr "back_toePoint_R_NUL.pim" "back_toe_R_NUL_pointConstraint1.cpim";
connectAttr "back_toePoint_R_NUL.rp" "back_toe_R_NUL_pointConstraint1.crp";
connectAttr "back_toePoint_R_NUL.rpt" "back_toe_R_NUL_pointConstraint1.crt";
connectAttr "back_toeExtra_R_JNT.t" "back_toe_R_NUL_pointConstraint1.tg[0].tt";
connectAttr "back_toeExtra_R_JNT.rp" "back_toe_R_NUL_pointConstraint1.tg[0].trp"
		;
connectAttr "back_toeExtra_R_JNT.rpt" "back_toe_R_NUL_pointConstraint1.tg[0].trt"
		;
connectAttr "back_toeExtra_R_JNT.pm" "back_toe_R_NUL_pointConstraint1.tg[0].tpm"
		;
connectAttr "back_toe_R_NUL_pointConstraint1.w0" "back_toe_R_NUL_pointConstraint1.tg[0].tw"
		;
connectAttr "back_leg_mirror_EXP.out[29]" "back_footFront_R_LOC.ty";
connectAttr "back_leg_mirror_EXP.out[30]" "back_footFront_R_LOC.tz";
connectAttr "back_leg_mirror_EXP.out[27]" "back_footBack_R_LOC.ty";
connectAttr "back_leg_mirror_EXP.out[28]" "back_footBack_R_LOC.tz";
connectAttr "back_toePoint_R_NUL.ro" "back_toePoint_R_NUL_orientConstraint1.cro"
		;
connectAttr "back_toePoint_R_NUL.pim" "back_toePoint_R_NUL_orientConstraint1.cpim"
		;
connectAttr "back_toeExtra_R_JNT.r" "back_toePoint_R_NUL_orientConstraint1.tg[0].tr"
		;
connectAttr "back_toeExtra_R_JNT.ro" "back_toePoint_R_NUL_orientConstraint1.tg[0].tro"
		;
connectAttr "back_toeExtra_R_JNT.pm" "back_toePoint_R_NUL_orientConstraint1.tg[0].tpm"
		;
connectAttr "back_toeExtra_R_JNT.jo" "back_toePoint_R_NUL_orientConstraint1.tg[0].tjo"
		;
connectAttr "back_toePoint_R_NUL_orientConstraint1.w0" "back_toePoint_R_NUL_orientConstraint1.tg[0].tw"
		;
connectAttr "back_hip_follow_L_JNT_aimConstraint1.crx" "back_hip_follow_L_JNT.rx"
		;
connectAttr "back_hip_follow_L_JNT_aimConstraint1.cry" "back_hip_follow_L_JNT.ry"
		;
connectAttr "back_hip_follow_L_JNT_aimConstraint1.crz" "back_hip_follow_L_JNT.rz"
		;
connectAttr "back_hip_follow_L_JNT_pointConstraint1.ctx" "back_hip_follow_L_JNT.tx"
		;
connectAttr "back_hip_follow_L_JNT_pointConstraint1.cty" "back_hip_follow_L_JNT.ty"
		;
connectAttr "back_hip_follow_L_JNT_pointConstraint1.ctz" "back_hip_follow_L_JNT.tz"
		;
connectAttr "back_foot_follow_L_JNT_pointConstraint1.cty" "back_foot_follow_L_JNT.ty"
		;
connectAttr "back_hip_follow_L_JNT.s" "back_foot_follow_L_JNT.is";
connectAttr "back_foot_follow_L_JNT.pim" "back_foot_follow_L_JNT_pointConstraint1.cpim"
		;
connectAttr "back_foot_follow_L_JNT.rp" "back_foot_follow_L_JNT_pointConstraint1.crp"
		;
connectAttr "back_foot_follow_L_JNT.rpt" "back_foot_follow_L_JNT_pointConstraint1.crt"
		;
connectAttr "back_toe_L_JNT.t" "back_foot_follow_L_JNT_pointConstraint1.tg[0].tt"
		;
connectAttr "back_toe_L_JNT.rp" "back_foot_follow_L_JNT_pointConstraint1.tg[0].trp"
		;
connectAttr "back_toe_L_JNT.rpt" "back_foot_follow_L_JNT_pointConstraint1.tg[0].trt"
		;
connectAttr "back_toe_L_JNT.pm" "back_foot_follow_L_JNT_pointConstraint1.tg[0].tpm"
		;
connectAttr "back_foot_follow_L_JNT_pointConstraint1.w0" "back_foot_follow_L_JNT_pointConstraint1.tg[0].tw"
		;
connectAttr "back_hip_follow_L_JNT.pim" "back_hip_follow_L_JNT_aimConstraint1.cpim"
		;
connectAttr "back_hip_follow_L_JNT.t" "back_hip_follow_L_JNT_aimConstraint1.ct";
connectAttr "back_hip_follow_L_JNT.rp" "back_hip_follow_L_JNT_aimConstraint1.crp"
		;
connectAttr "back_hip_follow_L_JNT.rpt" "back_hip_follow_L_JNT_aimConstraint1.crt"
		;
connectAttr "back_hip_follow_L_JNT.ro" "back_hip_follow_L_JNT_aimConstraint1.cro"
		;
connectAttr "back_hip_follow_L_JNT.jo" "back_hip_follow_L_JNT_aimConstraint1.cjo"
		;
connectAttr "back_hip_follow_L_JNT.is" "back_hip_follow_L_JNT_aimConstraint1.is"
		;
connectAttr "back_toe_L_JNT.t" "back_hip_follow_L_JNT_aimConstraint1.tg[0].tt";
connectAttr "back_toe_L_JNT.rp" "back_hip_follow_L_JNT_aimConstraint1.tg[0].trp"
		;
connectAttr "back_toe_L_JNT.rpt" "back_hip_follow_L_JNT_aimConstraint1.tg[0].trt"
		;
connectAttr "back_toe_L_JNT.pm" "back_hip_follow_L_JNT_aimConstraint1.tg[0].tpm"
		;
connectAttr "back_hip_follow_L_JNT_aimConstraint1.w0" "back_hip_follow_L_JNT_aimConstraint1.tg[0].tw"
		;
connectAttr "back_knee_L_LOC.wm" "back_hip_follow_L_JNT_aimConstraint1.wum";
connectAttr "back_hip_follow_L_JNT.pim" "back_hip_follow_L_JNT_pointConstraint1.cpim"
		;
connectAttr "back_hip_follow_L_JNT.rp" "back_hip_follow_L_JNT_pointConstraint1.crp"
		;
connectAttr "back_hip_follow_L_JNT.rpt" "back_hip_follow_L_JNT_pointConstraint1.crt"
		;
connectAttr "back_hip_L_JNT.t" "back_hip_follow_L_JNT_pointConstraint1.tg[0].tt"
		;
connectAttr "back_hip_L_JNT.rp" "back_hip_follow_L_JNT_pointConstraint1.tg[0].trp"
		;
connectAttr "back_hip_L_JNT.rpt" "back_hip_follow_L_JNT_pointConstraint1.tg[0].trt"
		;
connectAttr "back_hip_L_JNT.pm" "back_hip_follow_L_JNT_pointConstraint1.tg[0].tpm"
		;
connectAttr "back_hip_follow_L_JNT_pointConstraint1.w0" "back_hip_follow_L_JNT_pointConstraint1.tg[0].tw"
		;
connectAttr "back_hip_follow_R_JNT_aimConstraint1.crx" "back_hip_follow_R_JNT.rx"
		;
connectAttr "back_hip_follow_R_JNT_aimConstraint1.cry" "back_hip_follow_R_JNT.ry"
		;
connectAttr "back_hip_follow_R_JNT_aimConstraint1.crz" "back_hip_follow_R_JNT.rz"
		;
connectAttr "back_hip_follow_R_JNT_pointConstraint1.ctx" "back_hip_follow_R_JNT.tx"
		;
connectAttr "back_hip_follow_R_JNT_pointConstraint1.cty" "back_hip_follow_R_JNT.ty"
		;
connectAttr "back_hip_follow_R_JNT_pointConstraint1.ctz" "back_hip_follow_R_JNT.tz"
		;
connectAttr "back_foot_follow_R_JNT_pointConstraint1.cty" "back_foot_follow_R_JNT.ty"
		;
connectAttr "back_hip_follow_R_JNT.s" "back_foot_follow_R_JNT.is";
connectAttr "back_foot_follow_R_JNT.pim" "back_foot_follow_R_JNT_pointConstraint1.cpim"
		;
connectAttr "back_foot_follow_R_JNT.rp" "back_foot_follow_R_JNT_pointConstraint1.crp"
		;
connectAttr "back_foot_follow_R_JNT.rpt" "back_foot_follow_R_JNT_pointConstraint1.crt"
		;
connectAttr "back_toe_R_JNT.t" "back_foot_follow_R_JNT_pointConstraint1.tg[0].tt"
		;
connectAttr "back_toe_R_JNT.rp" "back_foot_follow_R_JNT_pointConstraint1.tg[0].trp"
		;
connectAttr "back_toe_R_JNT.rpt" "back_foot_follow_R_JNT_pointConstraint1.tg[0].trt"
		;
connectAttr "back_toe_R_JNT.pm" "back_foot_follow_R_JNT_pointConstraint1.tg[0].tpm"
		;
connectAttr "back_foot_follow_R_JNT_pointConstraint1.w0" "back_foot_follow_R_JNT_pointConstraint1.tg[0].tw"
		;
connectAttr "back_hip_follow_R_JNT.pim" "back_hip_follow_R_JNT_aimConstraint1.cpim"
		;
connectAttr "back_hip_follow_R_JNT.t" "back_hip_follow_R_JNT_aimConstraint1.ct";
connectAttr "back_hip_follow_R_JNT.rp" "back_hip_follow_R_JNT_aimConstraint1.crp"
		;
connectAttr "back_hip_follow_R_JNT.rpt" "back_hip_follow_R_JNT_aimConstraint1.crt"
		;
connectAttr "back_hip_follow_R_JNT.ro" "back_hip_follow_R_JNT_aimConstraint1.cro"
		;
connectAttr "back_hip_follow_R_JNT.jo" "back_hip_follow_R_JNT_aimConstraint1.cjo"
		;
connectAttr "back_hip_follow_R_JNT.is" "back_hip_follow_R_JNT_aimConstraint1.is"
		;
connectAttr "back_toe_R_JNT.t" "back_hip_follow_R_JNT_aimConstraint1.tg[0].tt";
connectAttr "back_toe_R_JNT.rp" "back_hip_follow_R_JNT_aimConstraint1.tg[0].trp"
		;
connectAttr "back_toe_R_JNT.rpt" "back_hip_follow_R_JNT_aimConstraint1.tg[0].trt"
		;
connectAttr "back_toe_R_JNT.pm" "back_hip_follow_R_JNT_aimConstraint1.tg[0].tpm"
		;
connectAttr "back_hip_follow_R_JNT_aimConstraint1.w0" "back_hip_follow_R_JNT_aimConstraint1.tg[0].tw"
		;
connectAttr "back_knee_R_LOC.wm" "back_hip_follow_R_JNT_aimConstraint1.wum";
connectAttr "back_hip_follow_R_JNT.pim" "back_hip_follow_R_JNT_pointConstraint1.cpim"
		;
connectAttr "back_hip_follow_R_JNT.rp" "back_hip_follow_R_JNT_pointConstraint1.crp"
		;
connectAttr "back_hip_follow_R_JNT.rpt" "back_hip_follow_R_JNT_pointConstraint1.crt"
		;
connectAttr "back_hip_R_JNT.t" "back_hip_follow_R_JNT_pointConstraint1.tg[0].tt"
		;
connectAttr "back_hip_R_JNT.rp" "back_hip_follow_R_JNT_pointConstraint1.tg[0].trp"
		;
connectAttr "back_hip_R_JNT.rpt" "back_hip_follow_R_JNT_pointConstraint1.tg[0].trt"
		;
connectAttr "back_hip_R_JNT.pm" "back_hip_follow_R_JNT_pointConstraint1.tg[0].tpm"
		;
connectAttr "back_hip_follow_R_JNT_pointConstraint1.w0" "back_hip_follow_R_JNT_pointConstraint1.tg[0].tw"
		;
connectAttr "back_knee_con_L_NUL_parentConstraint1.cty" "back_knee_con_L_NUL.ty"
		;
connectAttr "back_knee_con_L_NUL_parentConstraint1.ctz" "back_knee_con_L_NUL.tz"
		;
connectAttr "back_knee_con_L_NUL_parentConstraint1.ctx" "back_knee_con_L_NUL.tx"
		;
connectAttr "back_knee_con_L_NUL_parentConstraint1.crx" "back_knee_con_L_NUL.rx"
		;
connectAttr "back_knee_con_L_NUL_parentConstraint1.cry" "back_knee_con_L_NUL.ry"
		;
connectAttr "back_knee_con_L_NUL_parentConstraint1.crz" "back_knee_con_L_NUL.rz"
		;
connectAttr "back_knee_con_L_NUL.ro" "back_knee_con_L_NUL_parentConstraint1.cro"
		;
connectAttr "back_knee_con_L_NUL.pim" "back_knee_con_L_NUL_parentConstraint1.cpim"
		;
connectAttr "back_knee_con_L_NUL.rp" "back_knee_con_L_NUL_parentConstraint1.crp"
		;
connectAttr "back_knee_con_L_NUL.rpt" "back_knee_con_L_NUL_parentConstraint1.crt"
		;
connectAttr "back_hip_L_JNT.t" "back_knee_con_L_NUL_parentConstraint1.tg[0].tt";
connectAttr "back_hip_L_JNT.rp" "back_knee_con_L_NUL_parentConstraint1.tg[0].trp"
		;
connectAttr "back_hip_L_JNT.rpt" "back_knee_con_L_NUL_parentConstraint1.tg[0].trt"
		;
connectAttr "back_hip_L_JNT.r" "back_knee_con_L_NUL_parentConstraint1.tg[0].tr";
connectAttr "back_hip_L_JNT.ro" "back_knee_con_L_NUL_parentConstraint1.tg[0].tro"
		;
connectAttr "back_hip_L_JNT.s" "back_knee_con_L_NUL_parentConstraint1.tg[0].ts";
connectAttr "back_hip_L_JNT.pm" "back_knee_con_L_NUL_parentConstraint1.tg[0].tpm"
		;
connectAttr "back_hip_L_JNT.jo" "back_knee_con_L_NUL_parentConstraint1.tg[0].tjo"
		;
connectAttr "back_hip_L_JNT.ssc" "back_knee_con_L_NUL_parentConstraint1.tg[0].tsc"
		;
connectAttr "back_hip_L_JNT.is" "back_knee_con_L_NUL_parentConstraint1.tg[0].tis"
		;
connectAttr "back_knee_con_L_NUL_parentConstraint1.w0" "back_knee_con_L_NUL_parentConstraint1.tg[0].tw"
		;
connectAttr "back_knee_con_R_NUL_parentConstraint1.cty" "back_knee_con_R_NUL.ty"
		;
connectAttr "back_knee_con_R_NUL_parentConstraint1.ctz" "back_knee_con_R_NUL.tz"
		;
connectAttr "back_knee_con_R_NUL_parentConstraint1.ctx" "back_knee_con_R_NUL.tx"
		;
connectAttr "back_knee_con_R_NUL_parentConstraint1.crx" "back_knee_con_R_NUL.rx"
		;
connectAttr "back_knee_con_R_NUL_parentConstraint1.cry" "back_knee_con_R_NUL.ry"
		;
connectAttr "back_knee_con_R_NUL_parentConstraint1.crz" "back_knee_con_R_NUL.rz"
		;
connectAttr "back_leg_mirror_EXP.out[24]" "back_knee_R_LOC.ty";
connectAttr "back_leg_mirror_EXP.out[25]" "back_knee_R_LOC.tz";
connectAttr "unitConversion22.o" "back_knee_R_LOC.rx";
connectAttr "back_knee_con_R_NUL.ro" "back_knee_con_R_NUL_parentConstraint1.cro"
		;
connectAttr "back_knee_con_R_NUL.pim" "back_knee_con_R_NUL_parentConstraint1.cpim"
		;
connectAttr "back_knee_con_R_NUL.rp" "back_knee_con_R_NUL_parentConstraint1.crp"
		;
connectAttr "back_knee_con_R_NUL.rpt" "back_knee_con_R_NUL_parentConstraint1.crt"
		;
connectAttr "back_hip_R_JNT.t" "back_knee_con_R_NUL_parentConstraint1.tg[0].tt";
connectAttr "back_hip_R_JNT.rp" "back_knee_con_R_NUL_parentConstraint1.tg[0].trp"
		;
connectAttr "back_hip_R_JNT.rpt" "back_knee_con_R_NUL_parentConstraint1.tg[0].trt"
		;
connectAttr "back_hip_R_JNT.r" "back_knee_con_R_NUL_parentConstraint1.tg[0].tr";
connectAttr "back_hip_R_JNT.ro" "back_knee_con_R_NUL_parentConstraint1.tg[0].tro"
		;
connectAttr "back_hip_R_JNT.s" "back_knee_con_R_NUL_parentConstraint1.tg[0].ts";
connectAttr "back_hip_R_JNT.pm" "back_knee_con_R_NUL_parentConstraint1.tg[0].tpm"
		;
connectAttr "back_hip_R_JNT.jo" "back_knee_con_R_NUL_parentConstraint1.tg[0].tjo"
		;
connectAttr "back_hip_R_JNT.ssc" "back_knee_con_R_NUL_parentConstraint1.tg[0].tsc"
		;
connectAttr "back_hip_R_JNT.is" "back_knee_con_R_NUL_parentConstraint1.tg[0].tis"
		;
connectAttr "back_knee_con_R_NUL_parentConstraint1.w0" "back_knee_con_R_NUL_parentConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle6.oc" "spine_01_HLDShape.cr";
connectAttr "spin_03_cv_end_CLSCluster.og[0]" "spin_CRVShape.cr";
connectAttr "tail_start_con_NUL_pointConstraint1.ctx" "tail_start_con_NUL.tx";
connectAttr "tail_start_con_NUL_pointConstraint1.cty" "tail_start_con_NUL.ty";
connectAttr "tail_start_con_NUL_pointConstraint1.ctz" "tail_start_con_NUL.tz";
connectAttr "tail_3Jnt_01_con_NUL_parentConstraint1.ctx" "tail_3Jnt_01_con_NUL.tx"
		;
connectAttr "tail_3Jnt_01_con_NUL_parentConstraint1.cty" "tail_3Jnt_01_con_NUL.ty"
		;
connectAttr "tail_3Jnt_01_con_NUL_parentConstraint1.ctz" "tail_3Jnt_01_con_NUL.tz"
		;
connectAttr "tail_3Jnt_01_con_NUL_parentConstraint1.crx" "tail_3Jnt_01_con_NUL.rx"
		;
connectAttr "tail_3Jnt_01_con_NUL_parentConstraint1.cry" "tail_3Jnt_01_con_NUL.ry"
		;
connectAttr "tail_3Jnt_01_con_NUL_parentConstraint1.crz" "tail_3Jnt_01_con_NUL.rz"
		;
connectAttr "tail_3Jnt_condition_UTL.ocr" "tail_3Jnt_01_con_NUL.v";
connectAttr "tail_3Jnt_01_con_NUL.ro" "tail_3Jnt_01_con_NUL_parentConstraint1.cro"
		;
connectAttr "tail_3Jnt_01_con_NUL.pim" "tail_3Jnt_01_con_NUL_parentConstraint1.cpim"
		;
connectAttr "tail_3Jnt_01_con_NUL.rp" "tail_3Jnt_01_con_NUL_parentConstraint1.crp"
		;
connectAttr "tail_3Jnt_01_con_NUL.rpt" "tail_3Jnt_01_con_NUL_parentConstraint1.crt"
		;
connectAttr "tail_start_HLD.t" "tail_3Jnt_01_con_NUL_parentConstraint1.tg[0].tt"
		;
connectAttr "tail_start_HLD.rp" "tail_3Jnt_01_con_NUL_parentConstraint1.tg[0].trp"
		;
connectAttr "tail_start_HLD.rpt" "tail_3Jnt_01_con_NUL_parentConstraint1.tg[0].trt"
		;
connectAttr "tail_start_HLD.r" "tail_3Jnt_01_con_NUL_parentConstraint1.tg[0].tr"
		;
connectAttr "tail_start_HLD.ro" "tail_3Jnt_01_con_NUL_parentConstraint1.tg[0].tro"
		;
connectAttr "tail_start_HLD.s" "tail_3Jnt_01_con_NUL_parentConstraint1.tg[0].ts"
		;
connectAttr "tail_start_HLD.pm" "tail_3Jnt_01_con_NUL_parentConstraint1.tg[0].tpm"
		;
connectAttr "tail_3Jnt_01_con_NUL_parentConstraint1.w0" "tail_3Jnt_01_con_NUL_parentConstraint1.tg[0].tw"
		;
connectAttr "tail_end_HLD.t" "tail_3Jnt_01_con_NUL_parentConstraint1.tg[1].tt";
connectAttr "tail_end_HLD.rp" "tail_3Jnt_01_con_NUL_parentConstraint1.tg[1].trp"
		;
connectAttr "tail_end_HLD.rpt" "tail_3Jnt_01_con_NUL_parentConstraint1.tg[1].trt"
		;
connectAttr "tail_end_HLD.r" "tail_3Jnt_01_con_NUL_parentConstraint1.tg[1].tr";
connectAttr "tail_end_HLD.ro" "tail_3Jnt_01_con_NUL_parentConstraint1.tg[1].tro"
		;
connectAttr "tail_end_HLD.s" "tail_3Jnt_01_con_NUL_parentConstraint1.tg[1].ts";
connectAttr "tail_end_HLD.pm" "tail_3Jnt_01_con_NUL_parentConstraint1.tg[1].tpm"
		;
connectAttr "tail_3Jnt_01_con_NUL_parentConstraint1.w1" "tail_3Jnt_01_con_NUL_parentConstraint1.tg[1].tw"
		;
connectAttr "tail_5Jnt_01_con_NUL_parentConstraint1.ctx" "tail_5Jnt_01_con_NUL.tx"
		;
connectAttr "tail_5Jnt_01_con_NUL_parentConstraint1.cty" "tail_5Jnt_01_con_NUL.ty"
		;
connectAttr "tail_5Jnt_01_con_NUL_parentConstraint1.ctz" "tail_5Jnt_01_con_NUL.tz"
		;
connectAttr "tail_5Jnt_01_con_NUL_parentConstraint1.crx" "tail_5Jnt_01_con_NUL.rx"
		;
connectAttr "tail_5Jnt_01_con_NUL_parentConstraint1.cry" "tail_5Jnt_01_con_NUL.ry"
		;
connectAttr "tail_5Jnt_01_con_NUL_parentConstraint1.crz" "tail_5Jnt_01_con_NUL.rz"
		;
connectAttr "tail_5Jnt_condition_UTL.ocr" "tail_5Jnt_01_con_NUL.v";
connectAttr "tail_5Jnt_01_con_NUL.ro" "tail_5Jnt_01_con_NUL_parentConstraint1.cro"
		;
connectAttr "tail_5Jnt_01_con_NUL.pim" "tail_5Jnt_01_con_NUL_parentConstraint1.cpim"
		;
connectAttr "tail_5Jnt_01_con_NUL.rp" "tail_5Jnt_01_con_NUL_parentConstraint1.crp"
		;
connectAttr "tail_5Jnt_01_con_NUL.rpt" "tail_5Jnt_01_con_NUL_parentConstraint1.crt"
		;
connectAttr "tail_start_HLD.t" "tail_5Jnt_01_con_NUL_parentConstraint1.tg[0].tt"
		;
connectAttr "tail_start_HLD.rp" "tail_5Jnt_01_con_NUL_parentConstraint1.tg[0].trp"
		;
connectAttr "tail_start_HLD.rpt" "tail_5Jnt_01_con_NUL_parentConstraint1.tg[0].trt"
		;
connectAttr "tail_start_HLD.r" "tail_5Jnt_01_con_NUL_parentConstraint1.tg[0].tr"
		;
connectAttr "tail_start_HLD.ro" "tail_5Jnt_01_con_NUL_parentConstraint1.tg[0].tro"
		;
connectAttr "tail_start_HLD.s" "tail_5Jnt_01_con_NUL_parentConstraint1.tg[0].ts"
		;
connectAttr "tail_start_HLD.pm" "tail_5Jnt_01_con_NUL_parentConstraint1.tg[0].tpm"
		;
connectAttr "tail_5Jnt_01_con_NUL_parentConstraint1.w0" "tail_5Jnt_01_con_NUL_parentConstraint1.tg[0].tw"
		;
connectAttr "tail_end_HLD.t" "tail_5Jnt_01_con_NUL_parentConstraint1.tg[1].tt";
connectAttr "tail_end_HLD.rp" "tail_5Jnt_01_con_NUL_parentConstraint1.tg[1].trp"
		;
connectAttr "tail_end_HLD.rpt" "tail_5Jnt_01_con_NUL_parentConstraint1.tg[1].trt"
		;
connectAttr "tail_end_HLD.r" "tail_5Jnt_01_con_NUL_parentConstraint1.tg[1].tr";
connectAttr "tail_end_HLD.ro" "tail_5Jnt_01_con_NUL_parentConstraint1.tg[1].tro"
		;
connectAttr "tail_end_HLD.s" "tail_5Jnt_01_con_NUL_parentConstraint1.tg[1].ts";
connectAttr "tail_end_HLD.pm" "tail_5Jnt_01_con_NUL_parentConstraint1.tg[1].tpm"
		;
connectAttr "tail_5Jnt_01_con_NUL_parentConstraint1.w1" "tail_5Jnt_01_con_NUL_parentConstraint1.tg[1].tw"
		;
connectAttr "tail_5Jnt_02_con_NUL_parentConstraint1.ctx" "tail_5Jnt_02_con_NUL.tx"
		;
connectAttr "tail_5Jnt_02_con_NUL_parentConstraint1.cty" "tail_5Jnt_02_con_NUL.ty"
		;
connectAttr "tail_5Jnt_02_con_NUL_parentConstraint1.ctz" "tail_5Jnt_02_con_NUL.tz"
		;
connectAttr "tail_5Jnt_02_con_NUL_parentConstraint1.crx" "tail_5Jnt_02_con_NUL.rx"
		;
connectAttr "tail_5Jnt_02_con_NUL_parentConstraint1.cry" "tail_5Jnt_02_con_NUL.ry"
		;
connectAttr "tail_5Jnt_02_con_NUL_parentConstraint1.crz" "tail_5Jnt_02_con_NUL.rz"
		;
connectAttr "tail_5Jnt_condition_UTL.ocr" "tail_5Jnt_02_con_NUL.v";
connectAttr "tail_5Jnt_02_con_NUL.ro" "tail_5Jnt_02_con_NUL_parentConstraint1.cro"
		;
connectAttr "tail_5Jnt_02_con_NUL.pim" "tail_5Jnt_02_con_NUL_parentConstraint1.cpim"
		;
connectAttr "tail_5Jnt_02_con_NUL.rp" "tail_5Jnt_02_con_NUL_parentConstraint1.crp"
		;
connectAttr "tail_5Jnt_02_con_NUL.rpt" "tail_5Jnt_02_con_NUL_parentConstraint1.crt"
		;
connectAttr "tail_start_HLD.t" "tail_5Jnt_02_con_NUL_parentConstraint1.tg[0].tt"
		;
connectAttr "tail_start_HLD.rp" "tail_5Jnt_02_con_NUL_parentConstraint1.tg[0].trp"
		;
connectAttr "tail_start_HLD.rpt" "tail_5Jnt_02_con_NUL_parentConstraint1.tg[0].trt"
		;
connectAttr "tail_start_HLD.r" "tail_5Jnt_02_con_NUL_parentConstraint1.tg[0].tr"
		;
connectAttr "tail_start_HLD.ro" "tail_5Jnt_02_con_NUL_parentConstraint1.tg[0].tro"
		;
connectAttr "tail_start_HLD.s" "tail_5Jnt_02_con_NUL_parentConstraint1.tg[0].ts"
		;
connectAttr "tail_start_HLD.pm" "tail_5Jnt_02_con_NUL_parentConstraint1.tg[0].tpm"
		;
connectAttr "tail_5Jnt_02_con_NUL_parentConstraint1.w0" "tail_5Jnt_02_con_NUL_parentConstraint1.tg[0].tw"
		;
connectAttr "tail_end_HLD.t" "tail_5Jnt_02_con_NUL_parentConstraint1.tg[1].tt";
connectAttr "tail_end_HLD.rp" "tail_5Jnt_02_con_NUL_parentConstraint1.tg[1].trp"
		;
connectAttr "tail_end_HLD.rpt" "tail_5Jnt_02_con_NUL_parentConstraint1.tg[1].trt"
		;
connectAttr "tail_end_HLD.r" "tail_5Jnt_02_con_NUL_parentConstraint1.tg[1].tr";
connectAttr "tail_end_HLD.ro" "tail_5Jnt_02_con_NUL_parentConstraint1.tg[1].tro"
		;
connectAttr "tail_end_HLD.s" "tail_5Jnt_02_con_NUL_parentConstraint1.tg[1].ts";
connectAttr "tail_end_HLD.pm" "tail_5Jnt_02_con_NUL_parentConstraint1.tg[1].tpm"
		;
connectAttr "tail_5Jnt_02_con_NUL_parentConstraint1.w1" "tail_5Jnt_02_con_NUL_parentConstraint1.tg[1].tw"
		;
connectAttr "tail_5Jnt_03_con_NUL_parentConstraint1.ctx" "tail_5Jnt_03_con_NUL.tx"
		;
connectAttr "tail_5Jnt_03_con_NUL_parentConstraint1.cty" "tail_5Jnt_03_con_NUL.ty"
		;
connectAttr "tail_5Jnt_03_con_NUL_parentConstraint1.ctz" "tail_5Jnt_03_con_NUL.tz"
		;
connectAttr "tail_5Jnt_03_con_NUL_parentConstraint1.crx" "tail_5Jnt_03_con_NUL.rx"
		;
connectAttr "tail_5Jnt_03_con_NUL_parentConstraint1.cry" "tail_5Jnt_03_con_NUL.ry"
		;
connectAttr "tail_5Jnt_03_con_NUL_parentConstraint1.crz" "tail_5Jnt_03_con_NUL.rz"
		;
connectAttr "tail_5Jnt_condition_UTL.ocr" "tail_5Jnt_03_con_NUL.v";
connectAttr "tail_5Jnt_03_con_NUL.ro" "tail_5Jnt_03_con_NUL_parentConstraint1.cro"
		;
connectAttr "tail_5Jnt_03_con_NUL.pim" "tail_5Jnt_03_con_NUL_parentConstraint1.cpim"
		;
connectAttr "tail_5Jnt_03_con_NUL.rp" "tail_5Jnt_03_con_NUL_parentConstraint1.crp"
		;
connectAttr "tail_5Jnt_03_con_NUL.rpt" "tail_5Jnt_03_con_NUL_parentConstraint1.crt"
		;
connectAttr "tail_start_HLD.t" "tail_5Jnt_03_con_NUL_parentConstraint1.tg[0].tt"
		;
connectAttr "tail_start_HLD.rp" "tail_5Jnt_03_con_NUL_parentConstraint1.tg[0].trp"
		;
connectAttr "tail_start_HLD.rpt" "tail_5Jnt_03_con_NUL_parentConstraint1.tg[0].trt"
		;
connectAttr "tail_start_HLD.r" "tail_5Jnt_03_con_NUL_parentConstraint1.tg[0].tr"
		;
connectAttr "tail_start_HLD.ro" "tail_5Jnt_03_con_NUL_parentConstraint1.tg[0].tro"
		;
connectAttr "tail_start_HLD.s" "tail_5Jnt_03_con_NUL_parentConstraint1.tg[0].ts"
		;
connectAttr "tail_start_HLD.pm" "tail_5Jnt_03_con_NUL_parentConstraint1.tg[0].tpm"
		;
connectAttr "tail_5Jnt_03_con_NUL_parentConstraint1.w0" "tail_5Jnt_03_con_NUL_parentConstraint1.tg[0].tw"
		;
connectAttr "tail_end_HLD.t" "tail_5Jnt_03_con_NUL_parentConstraint1.tg[1].tt";
connectAttr "tail_end_HLD.rp" "tail_5Jnt_03_con_NUL_parentConstraint1.tg[1].trp"
		;
connectAttr "tail_end_HLD.rpt" "tail_5Jnt_03_con_NUL_parentConstraint1.tg[1].trt"
		;
connectAttr "tail_end_HLD.r" "tail_5Jnt_03_con_NUL_parentConstraint1.tg[1].tr";
connectAttr "tail_end_HLD.ro" "tail_5Jnt_03_con_NUL_parentConstraint1.tg[1].tro"
		;
connectAttr "tail_end_HLD.s" "tail_5Jnt_03_con_NUL_parentConstraint1.tg[1].ts";
connectAttr "tail_end_HLD.pm" "tail_5Jnt_03_con_NUL_parentConstraint1.tg[1].tpm"
		;
connectAttr "tail_5Jnt_03_con_NUL_parentConstraint1.w1" "tail_5Jnt_03_con_NUL_parentConstraint1.tg[1].tw"
		;
connectAttr "tail_7Jnt_01_con_NUL_parentConstraint1.ctx" "tail_7Jnt_01_con_NUL.tx"
		;
connectAttr "tail_7Jnt_01_con_NUL_parentConstraint1.cty" "tail_7Jnt_01_con_NUL.ty"
		;
connectAttr "tail_7Jnt_01_con_NUL_parentConstraint1.ctz" "tail_7Jnt_01_con_NUL.tz"
		;
connectAttr "tail_7Jnt_01_con_NUL_parentConstraint1.crx" "tail_7Jnt_01_con_NUL.rx"
		;
connectAttr "tail_7Jnt_01_con_NUL_parentConstraint1.cry" "tail_7Jnt_01_con_NUL.ry"
		;
connectAttr "tail_7Jnt_01_con_NUL_parentConstraint1.crz" "tail_7Jnt_01_con_NUL.rz"
		;
connectAttr "tail_7Jnt_condition_UTL.ocr" "tail_7Jnt_01_con_NUL.v";
connectAttr "tail_7Jnt_01_con_NUL.ro" "tail_7Jnt_01_con_NUL_parentConstraint1.cro"
		;
connectAttr "tail_7Jnt_01_con_NUL.pim" "tail_7Jnt_01_con_NUL_parentConstraint1.cpim"
		;
connectAttr "tail_7Jnt_01_con_NUL.rp" "tail_7Jnt_01_con_NUL_parentConstraint1.crp"
		;
connectAttr "tail_7Jnt_01_con_NUL.rpt" "tail_7Jnt_01_con_NUL_parentConstraint1.crt"
		;
connectAttr "tail_start_HLD.t" "tail_7Jnt_01_con_NUL_parentConstraint1.tg[0].tt"
		;
connectAttr "tail_start_HLD.rp" "tail_7Jnt_01_con_NUL_parentConstraint1.tg[0].trp"
		;
connectAttr "tail_start_HLD.rpt" "tail_7Jnt_01_con_NUL_parentConstraint1.tg[0].trt"
		;
connectAttr "tail_start_HLD.r" "tail_7Jnt_01_con_NUL_parentConstraint1.tg[0].tr"
		;
connectAttr "tail_start_HLD.ro" "tail_7Jnt_01_con_NUL_parentConstraint1.tg[0].tro"
		;
connectAttr "tail_start_HLD.s" "tail_7Jnt_01_con_NUL_parentConstraint1.tg[0].ts"
		;
connectAttr "tail_start_HLD.pm" "tail_7Jnt_01_con_NUL_parentConstraint1.tg[0].tpm"
		;
connectAttr "tail_7Jnt_01_con_NUL_parentConstraint1.w0" "tail_7Jnt_01_con_NUL_parentConstraint1.tg[0].tw"
		;
connectAttr "tail_end_HLD.t" "tail_7Jnt_01_con_NUL_parentConstraint1.tg[1].tt";
connectAttr "tail_end_HLD.rp" "tail_7Jnt_01_con_NUL_parentConstraint1.tg[1].trp"
		;
connectAttr "tail_end_HLD.rpt" "tail_7Jnt_01_con_NUL_parentConstraint1.tg[1].trt"
		;
connectAttr "tail_end_HLD.r" "tail_7Jnt_01_con_NUL_parentConstraint1.tg[1].tr";
connectAttr "tail_end_HLD.ro" "tail_7Jnt_01_con_NUL_parentConstraint1.tg[1].tro"
		;
connectAttr "tail_end_HLD.s" "tail_7Jnt_01_con_NUL_parentConstraint1.tg[1].ts";
connectAttr "tail_end_HLD.pm" "tail_7Jnt_01_con_NUL_parentConstraint1.tg[1].tpm"
		;
connectAttr "tail_7Jnt_01_con_NUL_parentConstraint1.w1" "tail_7Jnt_01_con_NUL_parentConstraint1.tg[1].tw"
		;
connectAttr "tail_7Jnt_02_con_NUL_parentConstraint1.ctx" "tail_7Jnt_02_con_NUL.tx"
		;
connectAttr "tail_7Jnt_02_con_NUL_parentConstraint1.cty" "tail_7Jnt_02_con_NUL.ty"
		;
connectAttr "tail_7Jnt_02_con_NUL_parentConstraint1.ctz" "tail_7Jnt_02_con_NUL.tz"
		;
connectAttr "tail_7Jnt_02_con_NUL_parentConstraint1.crx" "tail_7Jnt_02_con_NUL.rx"
		;
connectAttr "tail_7Jnt_02_con_NUL_parentConstraint1.cry" "tail_7Jnt_02_con_NUL.ry"
		;
connectAttr "tail_7Jnt_02_con_NUL_parentConstraint1.crz" "tail_7Jnt_02_con_NUL.rz"
		;
connectAttr "tail_7Jnt_condition_UTL.ocr" "tail_7Jnt_02_con_NUL.v";
connectAttr "tail_7Jnt_02_con_NUL.ro" "tail_7Jnt_02_con_NUL_parentConstraint1.cro"
		;
connectAttr "tail_7Jnt_02_con_NUL.pim" "tail_7Jnt_02_con_NUL_parentConstraint1.cpim"
		;
connectAttr "tail_7Jnt_02_con_NUL.rp" "tail_7Jnt_02_con_NUL_parentConstraint1.crp"
		;
connectAttr "tail_7Jnt_02_con_NUL.rpt" "tail_7Jnt_02_con_NUL_parentConstraint1.crt"
		;
connectAttr "tail_start_HLD.t" "tail_7Jnt_02_con_NUL_parentConstraint1.tg[0].tt"
		;
connectAttr "tail_start_HLD.rp" "tail_7Jnt_02_con_NUL_parentConstraint1.tg[0].trp"
		;
connectAttr "tail_start_HLD.rpt" "tail_7Jnt_02_con_NUL_parentConstraint1.tg[0].trt"
		;
connectAttr "tail_start_HLD.r" "tail_7Jnt_02_con_NUL_parentConstraint1.tg[0].tr"
		;
connectAttr "tail_start_HLD.ro" "tail_7Jnt_02_con_NUL_parentConstraint1.tg[0].tro"
		;
connectAttr "tail_start_HLD.s" "tail_7Jnt_02_con_NUL_parentConstraint1.tg[0].ts"
		;
connectAttr "tail_start_HLD.pm" "tail_7Jnt_02_con_NUL_parentConstraint1.tg[0].tpm"
		;
connectAttr "tail_7Jnt_02_con_NUL_parentConstraint1.w0" "tail_7Jnt_02_con_NUL_parentConstraint1.tg[0].tw"
		;
connectAttr "tail_end_HLD.t" "tail_7Jnt_02_con_NUL_parentConstraint1.tg[1].tt";
connectAttr "tail_end_HLD.rp" "tail_7Jnt_02_con_NUL_parentConstraint1.tg[1].trp"
		;
connectAttr "tail_end_HLD.rpt" "tail_7Jnt_02_con_NUL_parentConstraint1.tg[1].trt"
		;
connectAttr "tail_end_HLD.r" "tail_7Jnt_02_con_NUL_parentConstraint1.tg[1].tr";
connectAttr "tail_end_HLD.ro" "tail_7Jnt_02_con_NUL_parentConstraint1.tg[1].tro"
		;
connectAttr "tail_end_HLD.s" "tail_7Jnt_02_con_NUL_parentConstraint1.tg[1].ts";
connectAttr "tail_end_HLD.pm" "tail_7Jnt_02_con_NUL_parentConstraint1.tg[1].tpm"
		;
connectAttr "tail_7Jnt_02_con_NUL_parentConstraint1.w1" "tail_7Jnt_02_con_NUL_parentConstraint1.tg[1].tw"
		;
connectAttr "tail_7Jnt_03_con_NUL_parentConstraint1.ctx" "tail_7Jnt_03_con_NUL.tx"
		;
connectAttr "tail_7Jnt_03_con_NUL_parentConstraint1.cty" "tail_7Jnt_03_con_NUL.ty"
		;
connectAttr "tail_7Jnt_03_con_NUL_parentConstraint1.ctz" "tail_7Jnt_03_con_NUL.tz"
		;
connectAttr "tail_7Jnt_03_con_NUL_parentConstraint1.crx" "tail_7Jnt_03_con_NUL.rx"
		;
connectAttr "tail_7Jnt_03_con_NUL_parentConstraint1.cry" "tail_7Jnt_03_con_NUL.ry"
		;
connectAttr "tail_7Jnt_03_con_NUL_parentConstraint1.crz" "tail_7Jnt_03_con_NUL.rz"
		;
connectAttr "tail_7Jnt_condition_UTL.ocr" "tail_7Jnt_03_con_NUL.v";
connectAttr "tail_7Jnt_03_con_NUL.ro" "tail_7Jnt_03_con_NUL_parentConstraint1.cro"
		;
connectAttr "tail_7Jnt_03_con_NUL.pim" "tail_7Jnt_03_con_NUL_parentConstraint1.cpim"
		;
connectAttr "tail_7Jnt_03_con_NUL.rp" "tail_7Jnt_03_con_NUL_parentConstraint1.crp"
		;
connectAttr "tail_7Jnt_03_con_NUL.rpt" "tail_7Jnt_03_con_NUL_parentConstraint1.crt"
		;
connectAttr "tail_start_HLD.t" "tail_7Jnt_03_con_NUL_parentConstraint1.tg[0].tt"
		;
connectAttr "tail_start_HLD.rp" "tail_7Jnt_03_con_NUL_parentConstraint1.tg[0].trp"
		;
connectAttr "tail_start_HLD.rpt" "tail_7Jnt_03_con_NUL_parentConstraint1.tg[0].trt"
		;
connectAttr "tail_start_HLD.r" "tail_7Jnt_03_con_NUL_parentConstraint1.tg[0].tr"
		;
connectAttr "tail_start_HLD.ro" "tail_7Jnt_03_con_NUL_parentConstraint1.tg[0].tro"
		;
connectAttr "tail_start_HLD.s" "tail_7Jnt_03_con_NUL_parentConstraint1.tg[0].ts"
		;
connectAttr "tail_start_HLD.pm" "tail_7Jnt_03_con_NUL_parentConstraint1.tg[0].tpm"
		;
connectAttr "tail_7Jnt_03_con_NUL_parentConstraint1.w0" "tail_7Jnt_03_con_NUL_parentConstraint1.tg[0].tw"
		;
connectAttr "tail_end_HLD.t" "tail_7Jnt_03_con_NUL_parentConstraint1.tg[1].tt";
connectAttr "tail_end_HLD.rp" "tail_7Jnt_03_con_NUL_parentConstraint1.tg[1].trp"
		;
connectAttr "tail_end_HLD.rpt" "tail_7Jnt_03_con_NUL_parentConstraint1.tg[1].trt"
		;
connectAttr "tail_end_HLD.r" "tail_7Jnt_03_con_NUL_parentConstraint1.tg[1].tr";
connectAttr "tail_end_HLD.ro" "tail_7Jnt_03_con_NUL_parentConstraint1.tg[1].tro"
		;
connectAttr "tail_end_HLD.s" "tail_7Jnt_03_con_NUL_parentConstraint1.tg[1].ts";
connectAttr "tail_end_HLD.pm" "tail_7Jnt_03_con_NUL_parentConstraint1.tg[1].tpm"
		;
connectAttr "tail_7Jnt_03_con_NUL_parentConstraint1.w1" "tail_7Jnt_03_con_NUL_parentConstraint1.tg[1].tw"
		;
connectAttr "tail_7Jnt_04_con_NUL_parentConstraint1.ctx" "tail_7Jnt_04_con_NUL.tx"
		;
connectAttr "tail_7Jnt_04_con_NUL_parentConstraint1.cty" "tail_7Jnt_04_con_NUL.ty"
		;
connectAttr "tail_7Jnt_04_con_NUL_parentConstraint1.ctz" "tail_7Jnt_04_con_NUL.tz"
		;
connectAttr "tail_7Jnt_04_con_NUL_parentConstraint1.crx" "tail_7Jnt_04_con_NUL.rx"
		;
connectAttr "tail_7Jnt_04_con_NUL_parentConstraint1.cry" "tail_7Jnt_04_con_NUL.ry"
		;
connectAttr "tail_7Jnt_04_con_NUL_parentConstraint1.crz" "tail_7Jnt_04_con_NUL.rz"
		;
connectAttr "tail_7Jnt_condition_UTL.ocr" "tail_7Jnt_04_con_NUL.v";
connectAttr "tail_7Jnt_04_con_NUL.ro" "tail_7Jnt_04_con_NUL_parentConstraint1.cro"
		;
connectAttr "tail_7Jnt_04_con_NUL.pim" "tail_7Jnt_04_con_NUL_parentConstraint1.cpim"
		;
connectAttr "tail_7Jnt_04_con_NUL.rp" "tail_7Jnt_04_con_NUL_parentConstraint1.crp"
		;
connectAttr "tail_7Jnt_04_con_NUL.rpt" "tail_7Jnt_04_con_NUL_parentConstraint1.crt"
		;
connectAttr "tail_start_HLD.t" "tail_7Jnt_04_con_NUL_parentConstraint1.tg[0].tt"
		;
connectAttr "tail_start_HLD.rp" "tail_7Jnt_04_con_NUL_parentConstraint1.tg[0].trp"
		;
connectAttr "tail_start_HLD.rpt" "tail_7Jnt_04_con_NUL_parentConstraint1.tg[0].trt"
		;
connectAttr "tail_start_HLD.r" "tail_7Jnt_04_con_NUL_parentConstraint1.tg[0].tr"
		;
connectAttr "tail_start_HLD.ro" "tail_7Jnt_04_con_NUL_parentConstraint1.tg[0].tro"
		;
connectAttr "tail_start_HLD.s" "tail_7Jnt_04_con_NUL_parentConstraint1.tg[0].ts"
		;
connectAttr "tail_start_HLD.pm" "tail_7Jnt_04_con_NUL_parentConstraint1.tg[0].tpm"
		;
connectAttr "tail_7Jnt_04_con_NUL_parentConstraint1.w0" "tail_7Jnt_04_con_NUL_parentConstraint1.tg[0].tw"
		;
connectAttr "tail_end_HLD.t" "tail_7Jnt_04_con_NUL_parentConstraint1.tg[1].tt";
connectAttr "tail_end_HLD.rp" "tail_7Jnt_04_con_NUL_parentConstraint1.tg[1].trp"
		;
connectAttr "tail_end_HLD.rpt" "tail_7Jnt_04_con_NUL_parentConstraint1.tg[1].trt"
		;
connectAttr "tail_end_HLD.r" "tail_7Jnt_04_con_NUL_parentConstraint1.tg[1].tr";
connectAttr "tail_end_HLD.ro" "tail_7Jnt_04_con_NUL_parentConstraint1.tg[1].tro"
		;
connectAttr "tail_end_HLD.s" "tail_7Jnt_04_con_NUL_parentConstraint1.tg[1].ts";
connectAttr "tail_end_HLD.pm" "tail_7Jnt_04_con_NUL_parentConstraint1.tg[1].tpm"
		;
connectAttr "tail_7Jnt_04_con_NUL_parentConstraint1.w1" "tail_7Jnt_04_con_NUL_parentConstraint1.tg[1].tw"
		;
connectAttr "tail_7Jnt_05_con_NUL_parentConstraint1.ctx" "tail_7Jnt_05_con_NUL.tx"
		;
connectAttr "tail_7Jnt_05_con_NUL_parentConstraint1.cty" "tail_7Jnt_05_con_NUL.ty"
		;
connectAttr "tail_7Jnt_05_con_NUL_parentConstraint1.ctz" "tail_7Jnt_05_con_NUL.tz"
		;
connectAttr "tail_7Jnt_05_con_NUL_parentConstraint1.crx" "tail_7Jnt_05_con_NUL.rx"
		;
connectAttr "tail_7Jnt_05_con_NUL_parentConstraint1.cry" "tail_7Jnt_05_con_NUL.ry"
		;
connectAttr "tail_7Jnt_05_con_NUL_parentConstraint1.crz" "tail_7Jnt_05_con_NUL.rz"
		;
connectAttr "tail_7Jnt_condition_UTL.ocr" "tail_7Jnt_05_con_NUL.v";
connectAttr "tail_7Jnt_05_con_NUL.ro" "tail_7Jnt_05_con_NUL_parentConstraint1.cro"
		;
connectAttr "tail_7Jnt_05_con_NUL.pim" "tail_7Jnt_05_con_NUL_parentConstraint1.cpim"
		;
connectAttr "tail_7Jnt_05_con_NUL.rp" "tail_7Jnt_05_con_NUL_parentConstraint1.crp"
		;
connectAttr "tail_7Jnt_05_con_NUL.rpt" "tail_7Jnt_05_con_NUL_parentConstraint1.crt"
		;
connectAttr "tail_start_HLD.t" "tail_7Jnt_05_con_NUL_parentConstraint1.tg[0].tt"
		;
connectAttr "tail_start_HLD.rp" "tail_7Jnt_05_con_NUL_parentConstraint1.tg[0].trp"
		;
connectAttr "tail_start_HLD.rpt" "tail_7Jnt_05_con_NUL_parentConstraint1.tg[0].trt"
		;
connectAttr "tail_start_HLD.r" "tail_7Jnt_05_con_NUL_parentConstraint1.tg[0].tr"
		;
connectAttr "tail_start_HLD.ro" "tail_7Jnt_05_con_NUL_parentConstraint1.tg[0].tro"
		;
connectAttr "tail_start_HLD.s" "tail_7Jnt_05_con_NUL_parentConstraint1.tg[0].ts"
		;
connectAttr "tail_start_HLD.pm" "tail_7Jnt_05_con_NUL_parentConstraint1.tg[0].tpm"
		;
connectAttr "tail_7Jnt_05_con_NUL_parentConstraint1.w0" "tail_7Jnt_05_con_NUL_parentConstraint1.tg[0].tw"
		;
connectAttr "tail_end_HLD.t" "tail_7Jnt_05_con_NUL_parentConstraint1.tg[1].tt";
connectAttr "tail_end_HLD.rp" "tail_7Jnt_05_con_NUL_parentConstraint1.tg[1].trp"
		;
connectAttr "tail_end_HLD.rpt" "tail_7Jnt_05_con_NUL_parentConstraint1.tg[1].trt"
		;
connectAttr "tail_end_HLD.r" "tail_7Jnt_05_con_NUL_parentConstraint1.tg[1].tr";
connectAttr "tail_end_HLD.ro" "tail_7Jnt_05_con_NUL_parentConstraint1.tg[1].tro"
		;
connectAttr "tail_end_HLD.s" "tail_7Jnt_05_con_NUL_parentConstraint1.tg[1].ts";
connectAttr "tail_end_HLD.pm" "tail_7Jnt_05_con_NUL_parentConstraint1.tg[1].tpm"
		;
connectAttr "tail_7Jnt_05_con_NUL_parentConstraint1.w1" "tail_7Jnt_05_con_NUL_parentConstraint1.tg[1].tw"
		;
connectAttr "tail_start_con_NUL.pim" "tail_start_con_NUL_pointConstraint1.cpim";
connectAttr "tail_start_con_NUL.rp" "tail_start_con_NUL_pointConstraint1.crp";
connectAttr "tail_start_con_NUL.rpt" "tail_start_con_NUL_pointConstraint1.crt";
connectAttr "spine_03_HLD.t" "tail_start_con_NUL_pointConstraint1.tg[0].tt";
connectAttr "spine_03_HLD.rp" "tail_start_con_NUL_pointConstraint1.tg[0].trp";
connectAttr "spine_03_HLD.rpt" "tail_start_con_NUL_pointConstraint1.tg[0].trt";
connectAttr "spine_03_HLD.pm" "tail_start_con_NUL_pointConstraint1.tg[0].tpm";
connectAttr "tail_start_con_NUL_pointConstraint1.w0" "tail_start_con_NUL_pointConstraint1.tg[0].tw"
		;
connectAttr "head_bottom_con_NUL_pointConstraint1.ctx" "head_bottom_con_NUL.tx";
connectAttr "head_bottom_con_NUL_pointConstraint1.cty" "head_bottom_con_NUL.ty";
connectAttr "head_bottom_con_NUL_pointConstraint1.ctz" "head_bottom_con_NUL.tz";
connectAttr "head_bottom_JNT.s" "head_top_JNT.is";
connectAttr "head_bottom_JNT.s" "nose_JNT.is";
connectAttr "head_bottom_con_NUL.pim" "head_bottom_con_NUL_pointConstraint1.cpim"
		;
connectAttr "head_bottom_con_NUL.rp" "head_bottom_con_NUL_pointConstraint1.crp";
connectAttr "head_bottom_con_NUL.rpt" "head_bottom_con_NUL_pointConstraint1.crt"
		;
connectAttr "head_JNT.t" "head_bottom_con_NUL_pointConstraint1.tg[0].tt";
connectAttr "head_JNT.rp" "head_bottom_con_NUL_pointConstraint1.tg[0].trp";
connectAttr "head_JNT.rpt" "head_bottom_con_NUL_pointConstraint1.tg[0].trt";
connectAttr "head_JNT.pm" "head_bottom_con_NUL_pointConstraint1.tg[0].tpm";
connectAttr "head_bottom_con_NUL_pointConstraint1.w0" "head_bottom_con_NUL_pointConstraint1.tg[0].tw"
		;
connectAttr "neck_con_NUL_parentConstraint1.ctx" "neck_con_NUL.tx";
connectAttr "neck_con_NUL_parentConstraint1.cty" "neck_con_NUL.ty";
connectAttr "neck_con_NUL_parentConstraint1.ctz" "neck_con_NUL.tz";
connectAttr "neck_con_NUL_parentConstraint1.crx" "neck_con_NUL.rx";
connectAttr "neck_con_NUL_parentConstraint1.cry" "neck_con_NUL.ry";
connectAttr "neck_con_NUL_parentConstraint1.crz" "neck_con_NUL.rz";
connectAttr "neck_JNT.s" "head_JNT.is";
connectAttr "neck_con_NUL.ro" "neck_con_NUL_parentConstraint1.cro";
connectAttr "neck_con_NUL.pim" "neck_con_NUL_parentConstraint1.cpim";
connectAttr "neck_con_NUL.rp" "neck_con_NUL_parentConstraint1.crp";
connectAttr "neck_con_NUL.rpt" "neck_con_NUL_parentConstraint1.crt";
connectAttr "spine_01_HLD.t" "neck_con_NUL_parentConstraint1.tg[0].tt";
connectAttr "spine_01_HLD.rp" "neck_con_NUL_parentConstraint1.tg[0].trp";
connectAttr "spine_01_HLD.rpt" "neck_con_NUL_parentConstraint1.tg[0].trt";
connectAttr "spine_01_HLD.r" "neck_con_NUL_parentConstraint1.tg[0].tr";
connectAttr "spine_01_HLD.ro" "neck_con_NUL_parentConstraint1.tg[0].tro";
connectAttr "spine_01_HLD.s" "neck_con_NUL_parentConstraint1.tg[0].ts";
connectAttr "spine_01_HLD.pm" "neck_con_NUL_parentConstraint1.tg[0].tpm";
connectAttr "neck_con_NUL_parentConstraint1.w0" "neck_con_NUL_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "front_top_distance_L_LOCShape.wp" "front_distance_L_UTL.p1";
connectAttr "front_bot_distance_L_LOCShape.wp" "front_distance_L_UTL.p2";
connectAttr "scale_expose_NUL.s" "front_distance_scale_expose_L_UTL.i2";
connectAttr "front_distance_L_UTL.d" "front_distance_scale_expose_L_UTL.i1x";
connectAttr "front_distance_scale_expose_L_UTL.ox" "front_distance_condition_L_UTL.ctr"
		;
connectAttr "front_distance_scale_expose_L_UTL.ox" "front_distance_condition_L_UTL.ft"
		;
connectAttr "front_distance_total_L_UTL.o" "front_distance_condition_L_UTL.cfr";
connectAttr "front_distance_total_L_UTL.o" "front_distance_condition_L_UTL.st";
connectAttr "front_foot_L_CTRL.knee_Y_value" "front_distance_total_L_UTL.i1";
connectAttr "front_foot_L_CTRL.ankle_Y_value" "front_distance_total_L_UTL.i2";
connectAttr "front_distance_condition_L_UTL.ocr" "front_distance_subtract_L_UTL.i1[0]"
		;
connectAttr "front_distance_total_L_UTL.o" "front_distance_subtract_L_UTL.i1[1]"
		;
connectAttr "front_distance_divide_2_L_UTL.ox" "front_distance_add_knee_L_UTL.i2"
		;
connectAttr "front_foot_L_CTRL.knee_Y_value" "front_distance_add_knee_L_UTL.i1";
connectAttr "front_distance_divide_2_L_UTL.ox" "front_distance_add_ankle_L_UTL.i2"
		;
connectAttr "front_foot_L_CTRL.ankle_Y_value" "front_distance_add_ankle_L_UTL.i1"
		;
connectAttr "front_top_distance_R_LOCShape.wp" "front_distance_R_UTL.p1";
connectAttr "front_bot_distance_R_LOCShape.wp" "front_distance_R_UTL.p2";
connectAttr "scale_expose_NUL.s" "front_distance_scale_expose_R_UTL.i2";
connectAttr "front_distance_posToNeg_R_UTL.o" "front_distance_scale_expose_R_UTL.i1x"
		;
connectAttr "front_distance_scale_expose_R_UTL.ox" "front_distance_condition_R_UTL.ft"
		;
connectAttr "front_distance_scale_expose_R_UTL.ox" "front_distance_condition_R_UTL.ctr"
		;
connectAttr "front_distance_total_R_UTL.o" "front_distance_condition_R_UTL.cfr";
connectAttr "front_distance_total_R_UTL.o" "front_distance_condition_R_UTL.st";
connectAttr "front_foot_R_CTRL.knee_Y_value" "front_distance_total_R_UTL.i1";
connectAttr "front_foot_R_CTRL.ankle_Y_value" "front_distance_total_R_UTL.i2";
connectAttr "front_distance_condition_R_UTL.ocr" "front_distance_subtract_R_UTL.i1[0]"
		;
connectAttr "front_distance_total_R_UTL.o" "front_distance_subtract_R_UTL.i1[1]"
		;
connectAttr "front_distance_divide_2_R_UTL.ox" "front_distance_add_knee_R_UTL.i2"
		;
connectAttr "front_foot_R_CTRL.knee_Y_value" "front_distance_add_knee_R_UTL.i1";
connectAttr "front_distance_divide_2_R_UTL.ox" "front_distance_add_ankle_R_UTL.i2"
		;
connectAttr "front_foot_R_CTRL.ankle_Y_value" "front_distance_add_ankle_R_UTL.i1"
		;
connectAttr "front_distance_subtract_L_UTL.o1" "front_distance_divide_2_L_UTL.i1x"
		;
connectAttr "front_distance_subtract_R_UTL.o1" "front_distance_divide_2_R_UTL.i1x"
		;
connectAttr "front_distance_R_UTL.d" "front_distance_posToNeg_R_UTL.i1";
connectAttr "back_top_distance_L_LOCShape.wp" "back_distance_L_UTL.p1";
connectAttr "back_bot_distance_L_LOCShape.wp" "back_distance_L_UTL.p2";
connectAttr "back_distance_L_UTL.d" "back_distance_scale_expose_L_UTL.i1x";
connectAttr "back_distance_scale_expose_L_UTL.ox" "back_distance_condition_L_UTL.ctr"
		;
connectAttr "back_distance_scale_expose_L_UTL.ox" "back_distance_condition_L_UTL.ft"
		;
connectAttr "back_distance_total_L_UTL.o" "back_distance_condition_L_UTL.cfr";
connectAttr "back_distance_total_L_UTL.o" "back_distance_condition_L_UTL.st";
connectAttr "back_foot_L_CTRL.knee_Y_value" "back_distance_total_L_UTL.i1";
connectAttr "back_foot_L_CTRL.ankle_Y_value" "back_distance_total_L_UTL.i2";
connectAttr "back_distance_condition_L_UTL.ocr" "back_distance_subtract_L_UTL.i1[0]"
		;
connectAttr "back_distance_total_L_UTL.o" "back_distance_subtract_L_UTL.i1[1]";
connectAttr "back_distance_divide_2_L_UTL.ox" "back_distance_add_knee_L_UTL.i2";
connectAttr "back_foot_L_CTRL.knee_Y_value" "back_distance_add_knee_L_UTL.i1";
connectAttr "back_distance_divide_2_L_UTL.ox" "back_distance_add_ankle_L_UTL.i2"
		;
connectAttr "back_foot_L_CTRL.ankle_Y_value" "back_distance_add_ankle_L_UTL.i1";
connectAttr "back_top_distance_R_LOCShape.wp" "back_distance_R_UTL.p1";
connectAttr "back_bot_distance_R_LOCShape.wp" "back_distance_R_UTL.p2";
connectAttr "back_distance_posToNeg_R_UTL.o" "back_distance_scale_expose_R_UTL.i1x"
		;
connectAttr "back_distance_scale_expose_R_UTL.ox" "back_distance_condition_R_UTL.ft"
		;
connectAttr "back_distance_scale_expose_R_UTL.ox" "back_distance_condition_R_UTL.ctr"
		;
connectAttr "back_distance_total_R_UTL.o" "back_distance_condition_R_UTL.cfr";
connectAttr "back_distance_total_R_UTL.o" "back_distance_condition_R_UTL.st";
connectAttr "back_foot_R_CTRL.knee_Y_value" "back_distance_total_R_UTL.i1";
connectAttr "back_foot_R_CTRL.ankle_Y_value" "back_distance_total_R_UTL.i2";
connectAttr "back_distance_condition_R_UTL.ocr" "back_distance_subtract_R_UTL.i1[0]"
		;
connectAttr "back_distance_total_R_UTL.o" "back_distance_subtract_R_UTL.i1[1]";
connectAttr "back_distance_divide_2_R_UTL.ox" "back_distance_add_knee_R_UTL.i2";
connectAttr "back_foot_R_CTRL.knee_Y_value" "back_distance_add_knee_R_UTL.i1";
connectAttr "back_distance_divide_2_R_UTL.ox" "back_distance_add_ankle_R_UTL.i2"
		;
connectAttr "back_foot_R_CTRL.ankle_Y_value" "back_distance_add_ankle_R_UTL.i1";
connectAttr "back_distance_subtract_L_UTL.o1" "back_distance_divide_2_L_UTL.i1x"
		;
connectAttr "back_distance_subtract_R_UTL.o1" "back_distance_divide_2_R_UTL.i1x"
		;
connectAttr "back_distance_R_UTL.d" "back_distance_posToNeg_R_UTL.i1";
connectAttr "front_distance_divide_2_L_UTL.ox" "front_twist_hip_distance_L_UTL.i2"
		;
connectAttr "front_foot_L_CTRL.Twist_Hip_Y_Value" "front_twist_hip_distance_L_UTL.i1"
		;
connectAttr "front_distance_divide_2_R_UTL.ox" "front_twist_hip_distance_R_UTL.i2"
		;
connectAttr "front_foot_R_CTRL.Twist_Hip_Y_Value" "front_twist_hip_distance_R_UTL.i1"
		;
connectAttr "back_distance_divide_2_L_UTL.ox" "back_twist_hip_distance_L_UTL.i2"
		;
connectAttr "back_foot_L_CTRL.Twist_Hip_Y_Value" "back_twist_hip_distance_L_UTL.i1"
		;
connectAttr "back_distance_divide_2_R_UTL.ox" "back_twist_hip_distance_R_UTL.i2"
		;
connectAttr "back_foot_R_CTRL.Twist_Hip_Y_Value" "back_twist_hip_distance_R_UTL.i1"
		;
connectAttr "front_foot_L_CTRL.bend_Max" "front_bend_stiffness_L_UTL.mxr";
connectAttr "front_foot_L_CTRL.Bend_Min" "front_bend_stiffness_L_UTL.mnr";
connectAttr "front_foot_R_CTRL.bend_Max" "front_bend_stiffness_R_UTL.mxr";
connectAttr "front_foot_R_CTRL.Bend_Min" "front_bend_stiffness_R_UTL.mnr";
connectAttr "back_foot_R_CTRL.Bend_Min" "back_bend_stiffness_R_UTL.mnr";
connectAttr "back_foot_R_CTRL.bend_Max" "back_bend_stiffness_R_UTL.mxr";
connectAttr "back_foot_L_CTRL.Bend_Min" "back_bend_stiffness_L_UTL.mnr";
connectAttr "front_foot_L_CTRL.Bend_Pos_Neg" "front_revers_L_UTL.i2";
connectAttr "front_bend_stiffness_L_UTL.opr" "front_revers_L_UTL.i1";
connectAttr "front_foot_R_CTRL.Bend_Pos_Neg" "front_bend_revers_R_UTL.i2";
connectAttr "front_bend_stiffness_R_UTL.opr" "front_bend_revers_R_UTL.i1";
connectAttr "back_foot_R_CTRL.Bend_Pos_Neg" "back_bend_revers_R_UTL.i2";
connectAttr "back_bend_stiffness_R_UTL.opr" "back_bend_revers_R_UTL.i1";
connectAttr "back_foot_L_CTRL.Bend_Pos_Neg" "back_bend_revers_L_UTL.i2";
connectAttr "back_bend_stiffness_L_UTL.opr" "back_bend_revers_L_UTL.i1";
connectAttr "back_hip_L_JNT.tx" "back_leg_mirror_EXP.in[0]";
connectAttr "back_hip_L_JNT.ty" "back_leg_mirror_EXP.in[1]";
connectAttr "back_hip_L_JNT.tz" "back_leg_mirror_EXP.in[2]";
connectAttr "unitConversion1.o" "back_leg_mirror_EXP.in[3]";
connectAttr "unitConversion3.o" "back_leg_mirror_EXP.in[4]";
connectAttr "unitConversion5.o" "back_leg_mirror_EXP.in[5]";
connectAttr "back_knee_L_JNT.ty" "back_leg_mirror_EXP.in[6]";
connectAttr "unitConversion7.o" "back_leg_mirror_EXP.in[7]";
connectAttr "back_ankle_L_JNT.ty" "back_leg_mirror_EXP.in[8]";
connectAttr "unitConversion11.o" "back_leg_mirror_EXP.in[9]";
connectAttr "back_toeExtra_L_JNT.ty" "back_leg_mirror_EXP.in[10]";
connectAttr "unitConversion15.o" "back_leg_mirror_EXP.in[11]";
connectAttr "back_toeMid_L_JNT.ty" "back_leg_mirror_EXP.in[12]";
connectAttr "unitConversion17.o" "back_leg_mirror_EXP.in[13]";
connectAttr "back_toeTip_L_JNT.ty" "back_leg_mirror_EXP.in[14]";
connectAttr "unitConversion19.o" "back_leg_mirror_EXP.in[15]";
connectAttr "back_knee_L_LOC.ty" "back_leg_mirror_EXP.in[16]";
connectAttr "back_knee_L_LOC.tz" "back_leg_mirror_EXP.in[17]";
connectAttr "unitConversion21.o" "back_leg_mirror_EXP.in[18]";
connectAttr "back_footBack_L_LOC.ty" "back_leg_mirror_EXP.in[19]";
connectAttr "back_footBack_L_LOC.tz" "back_leg_mirror_EXP.in[20]";
connectAttr "back_footFront_L_LOC.ty" "back_leg_mirror_EXP.in[21]";
connectAttr "back_footFront_L_LOC.tz" "back_leg_mirror_EXP.in[22]";
connectAttr "back_hip_R_JNT.msg" "back_leg_mirror_EXP.obm";
connectAttr "back_leg_mirror_EXP.out[26]" "unitConversion22.i";
connectAttr "back_leg_mirror_EXP.out[13]" "unitConversion12.i";
connectAttr "back_leg_mirror_EXP.out[21]" "unitConversion18.i";
connectAttr "back_leg_mirror_EXP.out[5]" "unitConversion6.i";
connectAttr "back_leg_mirror_EXP.out[19]" "unitConversion16.i";
connectAttr "back_leg_mirror_EXP.out[9]" "unitConversion9.i";
connectAttr "back_leg_mirror_EXP.out[15]" "unitConversion13.i";
connectAttr "back_leg_mirror_EXP.out[23]" "unitConversion20.i";
connectAttr "back_leg_mirror_EXP.out[11]" "unitConversion10.i";
connectAttr "back_leg_mirror_EXP.out[4]" "unitConversion4.i";
connectAttr "back_leg_mirror_EXP.out[3]" "unitConversion2.i";
connectAttr "back_leg_mirror_EXP.out[17]" "unitConversion14.i";
connectAttr "back_leg_mirror_EXP.out[7]" "unitConversion8.i";
connectAttr "back_toeMid_L_JNT.rx" "unitConversion17.i";
connectAttr "back_ankle_L_JNT.rx" "unitConversion11.i";
connectAttr "back_toeTip_L_JNT.rx" "unitConversion19.i";
connectAttr "back_hip_L_JNT.rx" "unitConversion1.i";
connectAttr "back_toe_L_JNT.rx" "unitConversion15.i";
connectAttr "back_knee_L_LOC.rx" "unitConversion21.i";
connectAttr "back_hip_L_JNT.rz" "unitConversion5.i";
connectAttr "back_knee_L_JNT.rx" "unitConversion7.i";
connectAttr "back_hip_L_JNT.ry" "unitConversion3.i";
connectAttr "front_hip_L_JNT.tx" "front_leg_mirror_EXP.in[0]";
connectAttr "front_hip_L_JNT.ty" "front_leg_mirror_EXP.in[1]";
connectAttr "front_hip_L_JNT.tz" "front_leg_mirror_EXP.in[2]";
connectAttr "unitConversion37.o" "front_leg_mirror_EXP.in[3]";
connectAttr "unitConversion39.o" "front_leg_mirror_EXP.in[4]";
connectAttr "unitConversion41.o" "front_leg_mirror_EXP.in[5]";
connectAttr "front_knee_L_JNT.ty" "front_leg_mirror_EXP.in[6]";
connectAttr "unitConversion43.o" "front_leg_mirror_EXP.in[7]";
connectAttr "front_ankle_L_JNT.ty" "front_leg_mirror_EXP.in[8]";
connectAttr "unitConversion47.o" "front_leg_mirror_EXP.in[9]";
connectAttr "front_toeExtra_L_JNT.ty" "front_leg_mirror_EXP.in[10]";
connectAttr "unitConversion51.o" "front_leg_mirror_EXP.in[11]";
connectAttr "front_toeMid_L_JNT.ty" "front_leg_mirror_EXP.in[12]";
connectAttr "unitConversion53.o" "front_leg_mirror_EXP.in[13]";
connectAttr "front_toeTip_L_JNT.ty" "front_leg_mirror_EXP.in[14]";
connectAttr "unitConversion55.o" "front_leg_mirror_EXP.in[15]";
connectAttr "front_knee_L_LOC.ty" "front_leg_mirror_EXP.in[16]";
connectAttr "front_knee_L_LOC.tz" "front_leg_mirror_EXP.in[17]";
connectAttr "unitConversion57.o" "front_leg_mirror_EXP.in[18]";
connectAttr "front_footBack_L_LOC.ty" "front_leg_mirror_EXP.in[19]";
connectAttr "front_footBack_L_LOC.tz" "front_leg_mirror_EXP.in[20]";
connectAttr "front_footFront_L_LOC.ty" "front_leg_mirror_EXP.in[21]";
connectAttr "front_footFront_L_LOC.tz" "front_leg_mirror_EXP.in[22]";
connectAttr "front_hip_R_JNT.msg" "front_leg_mirror_EXP.obm";
connectAttr "front_leg_mirror_EXP.out[4]" "unitConversion40.i";
connectAttr "front_leg_mirror_EXP.out[21]" "unitConversion54.i";
connectAttr "front_leg_mirror_EXP.out[17]" "unitConversion50.i";
connectAttr "front_leg_mirror_EXP.out[23]" "unitConversion56.i";
connectAttr "front_leg_mirror_EXP.out[13]" "unitConversion48.i";
connectAttr "front_leg_mirror_EXP.out[26]" "unitConversion58.i";
connectAttr "front_leg_mirror_EXP.out[15]" "unitConversion49.i";
connectAttr "front_leg_mirror_EXP.out[3]" "unitConversion38.i";
connectAttr "front_leg_mirror_EXP.out[5]" "unitConversion42.i";
connectAttr "front_leg_mirror_EXP.out[19]" "unitConversion52.i";
connectAttr "front_leg_mirror_EXP.out[7]" "unitConversion44.i";
connectAttr "front_leg_mirror_EXP.out[11]" "unitConversion46.i";
connectAttr "front_leg_mirror_EXP.out[9]" "unitConversion45.i";
connectAttr "front_hip_L_JNT.rx" "unitConversion37.i";
connectAttr "front_ankle_L_JNT.rx" "unitConversion47.i";
connectAttr "front_toe_L_JNT.rx" "unitConversion51.i";
connectAttr "front_toeTip_L_JNT.rx" "unitConversion55.i";
connectAttr "front_knee_L_LOC.rx" "unitConversion57.i";
connectAttr "front_hip_L_JNT.rz" "unitConversion41.i";
connectAttr "front_hip_L_JNT.ry" "unitConversion39.i";
connectAttr "front_knee_L_JNT.rx" "unitConversion43.i";
connectAttr "front_toeMid_L_JNT.rx" "unitConversion53.i";
connectAttr "tail_start_HLD.Num_Of_Jnt" "tail_7Jnt_condition_UTL.ft";
connectAttr "tail_start_HLD.Num_Of_Jnt" "tail_5Jnt_condition_UTL.ft";
connectAttr "tail_start_HLD.Num_Of_Jnt" "tail_3Jnt_condition_UTL.ft";
connectAttr "spin_CRVShapeOrig.ws" "spin_01_cv_star_CLSCluster.ip[0].ig";
connectAttr "spin_CRVShapeOrig.l" "spin_01_cv_star_CLSCluster.orggeom[0]";
connectAttr "spin_01_cv_star_CLS.wm" "spin_01_cv_star_CLSCluster.ma";
connectAttr "spin_01_cv_star_CLSShape.x" "spin_01_cv_star_CLSCluster.x";
connectAttr "spin_01_cv_star_CLSCluster.og[0]" "spin_01_cv_end_CLSCluster.ip[0].ig"
		;
connectAttr "spin_CRVShapeOrig.l" "spin_01_cv_end_CLSCluster.orggeom[0]";
connectAttr "spin_01_cv_end_CLS.wm" "spin_01_cv_end_CLSCluster.ma";
connectAttr "spin_01_cv_end_CLSShape.x" "spin_01_cv_end_CLSCluster.x";
connectAttr "spin_01_cv_end_CLSCluster.og[0]" "spin_02_cv_star_CLSCluster.ip[0].ig"
		;
connectAttr "spin_CRVShapeOrig.l" "spin_02_cv_star_CLSCluster.orggeom[0]";
connectAttr "spin_02_cv_star_CLS.wm" "spin_02_cv_star_CLSCluster.ma";
connectAttr "spin_02_cv_star_CLSShape.x" "spin_02_cv_star_CLSCluster.x";
connectAttr "spin_02_cv_star_CLSCluster.og[0]" "spin_02_cv_end_CLSCluster.ip[0].ig"
		;
connectAttr "spin_CRVShapeOrig.l" "spin_02_cv_end_CLSCluster.orggeom[0]";
connectAttr "spin_02_cv_end_CLS.wm" "spin_02_cv_end_CLSCluster.ma";
connectAttr "spin_02_cv_end_CLSShape.x" "spin_02_cv_end_CLSCluster.x";
connectAttr "spin_02_cv_end_CLSCluster.og[0]" "spin_03_cv_star_CLSCluster.ip[0].ig"
		;
connectAttr "spin_CRVShapeOrig.l" "spin_03_cv_star_CLSCluster.orggeom[0]";
connectAttr "spin_03_cv_star_CLS.wm" "spin_03_cv_star_CLSCluster.ma";
connectAttr "spin_03_cv_star_CLSShape.x" "spin_03_cv_star_CLSCluster.x";
connectAttr "spin_03_cv_star_CLSCluster.og[0]" "spin_03_cv_end_CLSCluster.ip[0].ig"
		;
connectAttr "spin_CRVShapeOrig.l" "spin_03_cv_end_CLSCluster.orggeom[0]";
connectAttr "spin_03_cv_end_CLS.wm" "spin_03_cv_end_CLSCluster.ma";
connectAttr "spin_03_cv_end_CLSShape.x" "spin_03_cv_end_CLSCluster.x";
connectAttr "back_bend_revers_L_UTL.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "back_foot_L_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "back_bend_stiffness_L_UTL.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "back_bend_stiffness_R_UTL.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[0].dn"
		;
connectAttr "back_foot_R_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[1].dn"
		;
connectAttr "back_bend_revers_R_UTL.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "front_bend_revers_R_UTL.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[0].dn"
		;
connectAttr "front_foot_R_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[1].dn"
		;
connectAttr "front_bend_stiffness_R_UTL.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[2].dn"
		;
connectAttr "tail_5Jnt_03_con_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[0].dn"
		;
connectAttr "tail_7Jnt_01_HLDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[1].dn"
		;
connectAttr "spin_03_cv_star_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[2].dn"
		;
connectAttr "tail_7Jnt_04_con_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[3].dn"
		;
connectAttr "tail_02_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[4].dn";
connectAttr "spine_02_HLDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[5].dn"
		;
connectAttr "unitConversion16.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[6].dn"
		;
connectAttr "tail_end_HLD.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[7].dn";
connectAttr "tail_7Jnt_02_con_NUL_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[8].dn"
		;
connectAttr "front_revers_L_UTL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[9].dn"
		;
connectAttr "tail_end_HLDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[10].dn"
		;
connectAttr "unitConversion43.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[11].dn"
		;
connectAttr "tail_start_con_NUL_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[12].dn"
		;
connectAttr "spin_02_cv_end_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[13].dn"
		;
connectAttr "unitConversion51.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[14].dn"
		;
connectAttr "tail_3Jnt_01_con_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[15].dn"
		;
connectAttr "tail_5Jnt_02_HLD.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[16].dn"
		;
connectAttr "spine_02_HLD.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[17].dn";
connectAttr "back_knee_con_R_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[18].dn"
		;
connectAttr "tail_5Jnt_02_HLDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[19].dn"
		;
connectAttr "tail_7Jnt_03_con_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[20].dn"
		;
connectAttr "unitConversion54.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[21].dn"
		;
connectAttr "back_footFront_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[22].dn"
		;
connectAttr "tail_7Jnt_03_HLD.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[23].dn"
		;
connectAttr "spin_01_cv_star_CLSCluster.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[24].dn"
		;
connectAttr "unitConversion15.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[25].dn"
		;
connectAttr "back_toeExtra_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[26].dn"
		;
connectAttr "body_HLD.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[27].dn";
connectAttr "tail_7Jnt_02_con_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[28].dn"
		;
connectAttr "back_hip_follow_R_JNT_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[29].dn"
		;
connectAttr "unitConversion18.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[30].dn"
		;
connectAttr "tail_5Jnt_01_con_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[31].dn"
		;
connectAttr "unitConversion41.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[32].dn"
		;
connectAttr "spin_01_cv_end_CLSCluster.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[33].dn"
		;
connectAttr "unitConversion10.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[34].dn"
		;
connectAttr "front_footFront_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[35].dn"
		;
connectAttr "back_knee_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[36].dn"
		;
connectAttr "unitConversion42.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[37].dn"
		;
connectAttr "back_knee_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[38].dn"
		;
connectAttr "tail_3Jnt_01_HLD.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[39].dn"
		;
connectAttr "tail_5Jnt_03_HLDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[40].dn"
		;
connectAttr "back_con_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[41].dn";
connectAttr "unitConversion49.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[42].dn"
		;
connectAttr "neck_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[43].dn";
connectAttr "spine_01_HLDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[44].dn"
		;
connectAttr "front_ctrl_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[45].dn";
connectAttr "unitConversion44.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[46].dn"
		;
connectAttr "unitConversion5.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[47].dn"
		;
connectAttr "unitConversion9.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[48].dn"
		;
connectAttr "tail_7Jnt_04_con_NUL_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[49].dn"
		;
connectAttr "tail_3Jnt_01_con_NUL_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[50].dn"
		;
connectAttr "back_foot_follow_R_JNT_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[51].dn"
		;
connectAttr "unitConversion57.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[52].dn"
		;
connectAttr "tail_start_con_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[53].dn"
		;
connectAttr "front_clavicle_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[54].dn"
		;
connectAttr "back_toe_L_NUL_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[55].dn"
		;
connectAttr "spin_03_cv_star_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[56].dn"
		;
connectAttr "unitConversion52.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[57].dn"
		;
connectAttr "no_scale_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[58].dn";
connectAttr "tail_5Jnt_02_con_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[59].dn"
		;
connectAttr "tail_04_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[60].dn"
		;
connectAttr "spin_02_cv_end_CLSShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[61].dn"
		;
connectAttr "tail_5Jnt_01_con_NUL_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[62].dn"
		;
connectAttr "front_clavicle_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[63].dn"
		;
connectAttr "back_footBack_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[64].dn"
		;
connectAttr "spin_03_cv_end_CLSCluster.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[65].dn"
		;
connectAttr "spin_02_cv_star_CLS.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[66].dn"
		;
connectAttr "back_toeExtra_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[67].dn"
		;
connectAttr "back_footFront_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[68].dn"
		;
connectAttr "tail_7Jnt_01_HLD.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[69].dn"
		;
connectAttr "back_toe_R_NUL_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[70].dn"
		;
connectAttr "tail_5Jnt_03_con_NUL_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[71].dn"
		;
connectAttr "tail_5Jnt_condition_UTL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[72].dn"
		;
connectAttr "tail_7Jnt_03_con_NUL_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[73].dn"
		;
connectAttr "tail_3Jnt_01_HLDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[74].dn"
		;
connectAttr "front_toe_L_NUL_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[75].dn"
		;
connectAttr "front_toeExtra_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[76].dn"
		;
connectAttr "tail_7Jnt_05_HLDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[77].dn"
		;
connectAttr "unitConversion58.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[78].dn"
		;
connectAttr "spin_02_cv_star_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[79].dn"
		;
connectAttr "spin_03_cv_end_CLS.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[80].dn"
		;
connectAttr "front_foot_L_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[81].dn"
		;
connectAttr "tail_start_HLDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[82].dn"
		;
connectAttr "spin_02_cv_star_CLSCluster.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[83].dn"
		;
connectAttr "tail_7Jnt_04_HLDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[84].dn"
		;
connectAttr "tail_5Jnt_01_HLDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[85].dn"
		;
connectAttr "unitConversion39.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[86].dn"
		;
connectAttr "back_toePoint_R_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[87].dn"
		;
connectAttr "unitConversion8.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[88].dn"
		;
connectAttr "spin_01_cv_end_CLS.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[89].dn"
		;
connectAttr "template_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[90].dn";
connectAttr "unitConversion40.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[91].dn"
		;
connectAttr "unitConversion17.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[92].dn"
		;
connectAttr "back_knee_con_L_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[93].dn"
		;
connectAttr "front_toeExtra_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[94].dn"
		;
connectAttr "front_footBack_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[95].dn"
		;
connectAttr "spin_02_cv_end_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[96].dn"
		;
connectAttr "unitConversion19.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[97].dn"
		;
connectAttr "tail_5Jnt_01_HLD.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[98].dn"
		;
connectAttr "spin_03_cv_star_CLSShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[99].dn"
		;
connectAttr "makeNurbCircle6.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[100].dn"
		;
connectAttr "front_footBack_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[101].dn"
		;
connectAttr "neck_ctrl_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[102].dn";
connectAttr "spin_ctrl_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[103].dn";
connectAttr "back_footBack_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[104].dn"
		;
connectAttr "head_top_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[105].dn";
connectAttr "unitConversion48.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[106].dn"
		;
connectAttr "tail_06_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[107].dn";
connectAttr "back_toePoint_R_NUL_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[108].dn"
		;
connectAttr "tail_7Jnt_02_HLDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[109].dn"
		;
connectAttr "unitConversion7.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[110].dn"
		;
connectAttr "head_bottom_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[111].dn"
		;
connectAttr "body_HLDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[112].dn";
connectAttr "head_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[113].dn";
connectAttr "back_hip_follow_L_JNT_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[114].dn"
		;
connectAttr "tail_7Jnt_03_HLDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[115].dn"
		;
connectAttr "tail_05_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[116].dn";
connectAttr "front_hip_follow_L_JNT_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[117].dn"
		;
connectAttr "template_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[118].dn";
connectAttr "front_foot_follow_R_JNT_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[119].dn"
		;
connectAttr "spin_02_cv_end_CLS.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[120].dn"
		;
connectAttr "back_hip_follow_R_JNT_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[121].dn"
		;
connectAttr "unitConversion22.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[122].dn"
		;
connectAttr "tail_07_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[123].dn";
connectAttr "tail_07_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[124].dn";
connectAttr "tail_05_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[125].dn";
connectAttr "front_footBack_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[126].dn"
		;
connectAttr "spin_02_cv_end_CLSCluster.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[127].dn"
		;
connectAttr "unitConversion13.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[128].dn"
		;
connectAttr "unitConversion47.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[129].dn"
		;
connectAttr "tail_start_HLD.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[130].dn"
		;
connectAttr "tail_ctrl_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[131].dn";
connectAttr "front_hip_follow_L_JNT_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[132].dn"
		;
connectAttr "spin_03_cv_star_CLSCluster.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[133].dn"
		;
connectAttr "front_hip_follow_R_JNT_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[134].dn"
		;
connectAttr "front_knee_con_L_NUL_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[135].dn"
		;
connectAttr "unitConversion14.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[136].dn"
		;
connectAttr "back_footFront_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[137].dn"
		;
connectAttr "neck_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[138].dn";
connectAttr "tail_5Jnt_02_con_NUL_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[139].dn"
		;
connectAttr "front_knee_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[140].dn"
		;
connectAttr "front_hip_follow_R_JNT_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[141].dn"
		;
connectAttr "unitConversion21.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[142].dn"
		;
connectAttr "back_knee_con_R_NUL_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[143].dn"
		;
connectAttr "unitConversion38.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[144].dn"
		;
connectAttr "tail_7Jnt_04_HLD.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[145].dn"
		;
connectAttr "front_knee_con_R_NUL_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[146].dn"
		;
connectAttr "spin_01_cv_end_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[147].dn"
		;
connectAttr "unitConversion2.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[148].dn"
		;
connectAttr "head_bottom_con_NUL_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[149].dn"
		;
connectAttr "tail_7Jnt_05_con_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[150].dn"
		;
connectAttr "spin_CRVShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[151].dn"
		;
connectAttr "tail_06_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[152].dn";
connectAttr "spin_01_cv_star_CLSShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[153].dn"
		;
connectAttr "tail_7Jnt_05_con_NUL_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[154].dn"
		;
connectAttr "tail_06_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[155].dn";
connectAttr "unitConversion46.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[156].dn"
		;
connectAttr "front_toe_R_NUL_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[157].dn"
		;
connectAttr "tail_06_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[158].dn"
		;
connectAttr "tail_7Jnt_05_HLD.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[159].dn"
		;
connectAttr "tail_7Jnt_02_HLD.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[160].dn"
		;
connectAttr "unitConversion56.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[161].dn"
		;
connectAttr "tail_7Jnt_01_con_NUL_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[162].dn"
		;
connectAttr "tail_7Jnt_condition_UTL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[163].dn"
		;
connectAttr "unitConversion20.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[164].dn"
		;
connectAttr "back_leg_mirror_EXP.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[165].dn"
		;
connectAttr "spin_01_cv_end_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[166].dn"
		;
connectAttr "tail_7Jnt_01_con_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[167].dn"
		;
connectAttr "front_leg_mirror_EXP.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[168].dn"
		;
connectAttr "back_ctrl_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[169].dn";
connectAttr "tail_01_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[170].dn";
connectAttr "neck_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[171].dn"
		;
connectAttr "makeNurbCircle3.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[172].dn"
		;
connectAttr "back_toePoint_L_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[173].dn"
		;
connectAttr "unitConversion6.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[174].dn"
		;
connectAttr "spine_03_HLD.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[175].dn";
connectAttr "front_con_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[176].dn";
connectAttr "tail_07_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[177].dn"
		;
connectAttr "head_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[178].dn"
		;
connectAttr "template_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[179].dn"
		;
connectAttr "tail_5Jnt_03_HLD.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[180].dn"
		;
connectAttr "back_footFront_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[181].dn"
		;
connectAttr "spin_03_cv_star_CLS.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[182].dn"
		;
connectAttr "tail_3Jnt_condition_UTL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[183].dn"
		;
connectAttr "unitConversion53.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[184].dn"
		;
connectAttr "back_footBack_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[185].dn"
		;
connectAttr "unitConversion37.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[186].dn"
		;
connectAttr "unitConversion50.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[187].dn"
		;
connectAttr "back_toe_L_NUL_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[188].dn"
		;
connectAttr "front_toePoint_R_NUL_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[189].dn"
		;
connectAttr "spine_03_HLDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[190].dn"
		;
connectAttr "unitConversion4.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[191].dn"
		;
connectAttr "front_foot_follow_L_JNT_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[192].dn"
		;
connectAttr "neck_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[193].dn";
connectAttr "front_toe_L_NUL_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[194].dn"
		;
connectAttr "unitConversion11.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[195].dn"
		;
connectAttr "front_footFront_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[196].dn"
		;
connectAttr "tail_03_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[197].dn";
connectAttr "back_foot_follow_L_JNT_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[198].dn"
		;
connectAttr "back_footBack_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[199].dn"
		;
connectAttr "tail_04_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[200].dn";
connectAttr "head_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[201].dn";
connectAttr "neck_con_NUL_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[202].dn"
		;
connectAttr "spin_02_cv_star_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[203].dn"
		;
connectAttr "front_toePoint_R_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[204].dn"
		;
connectAttr "back_hip_follow_L_JNT_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[205].dn"
		;
connectAttr "front_knee_con_R_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[206].dn"
		;
connectAttr "back_clavicle_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[207].dn"
		;
connectAttr "tail_07_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[208].dn";
connectAttr "spin_03_cv_end_CLSShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[209].dn"
		;
connectAttr "front_knee_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[210].dn"
		;
connectAttr "front_knee_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[211].dn"
		;
connectAttr "back_knee_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[212].dn"
		;
connectAttr "tail_04_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[213].dn";
connectAttr "spin_02_cv_star_CLSShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[214].dn"
		;
connectAttr "head_bottom_con_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[215].dn"
		;
connectAttr "back_knee_con_L_NUL_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[216].dn"
		;
connectAttr "spine_01_HLD.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[217].dn";
connectAttr "spin_01_cv_star_CLS.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[218].dn"
		;
connectAttr "back_knee_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[219].dn"
		;
connectAttr "neck_con_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[220].dn";
connectAttr "front_knee_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[221].dn"
		;
connectAttr "tail_05_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[222].dn"
		;
connectAttr "front_footFront_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[223].dn"
		;
connectAttr "unitConversion45.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[224].dn"
		;
connectAttr "head_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[225].dn";
connectAttr "spin_01_cv_end_CLSShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[226].dn"
		;
connectAttr "unitConversion55.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[227].dn"
		;
connectAttr "back_clavicle_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[228].dn"
		;
connectAttr "unitConversion12.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[229].dn"
		;
connectAttr "front_bend_stiffness_L_UTL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[230].dn"
		;
connectAttr "front_knee_con_L_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[231].dn"
		;
connectAttr "front_footBack_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[232].dn"
		;
connectAttr "tail_05_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[233].dn";
connectAttr "tail_04_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[234].dn";
connectAttr "front_footFront_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[235].dn"
		;
connectAttr "unitConversion1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[236].dn"
		;
connectAttr "front_toePoint_L_NUL.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[237].dn"
		;
connectAttr "unitConversion3.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[238].dn"
		;
connectAttr "front_distance_L_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "front_distance_scale_expose_L_UTL.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "front_distance_condition_L_UTL.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "front_distance_total_L_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "front_distance_subtract_L_UTL.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "front_distance_add_knee_L_UTL.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "front_distance_add_ankle_L_UTL.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "front_distance_R_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "front_distance_scale_expose_R_UTL.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "front_distance_condition_R_UTL.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "front_distance_total_R_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "front_distance_subtract_R_UTL.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "front_distance_add_knee_R_UTL.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "front_distance_add_ankle_R_UTL.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "front_distance_divide_2_L_UTL.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "front_distance_divide_2_R_UTL.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "front_distance_posToNeg_R_UTL.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "back_distance_L_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "back_distance_scale_expose_L_UTL.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "back_distance_condition_L_UTL.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "back_distance_total_L_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "back_distance_subtract_L_UTL.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "back_distance_add_knee_L_UTL.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "back_distance_add_ankle_L_UTL.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "back_distance_R_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "back_distance_scale_expose_R_UTL.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "back_distance_condition_R_UTL.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "back_distance_total_R_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "back_distance_subtract_R_UTL.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "back_distance_add_knee_R_UTL.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "back_distance_add_ankle_R_UTL.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "back_distance_divide_2_L_UTL.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "back_distance_divide_2_R_UTL.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "back_distance_posToNeg_R_UTL.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "front_twist_hip_distance_L_UTL.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "front_twist_hip_distance_R_UTL.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "back_twist_hip_distance_L_UTL.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "back_twist_hip_distance_R_UTL.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "front_bend_stiffness_L_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "front_bend_stiffness_R_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "back_bend_stiffness_R_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "back_bend_stiffness_L_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "front_revers_L_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "front_bend_revers_R_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "back_bend_revers_R_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "back_bend_revers_L_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "tail_3Jnt_condition_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "tail_5Jnt_condition_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "tail_7Jnt_condition_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of quad_template.v001.ma
