package Make_With_Ada_Gcode is
   Gcode : constant array (Integer range <>) of  access constant String :=
     (new String'("G21 ; All units in mm"),
      new String'("G90 ; Set to absolute mode"),
      new String'("; Parameters"),
      new String'("#<pen_up> = 1"),
      new String'("#<pen_down> = -1"),
      new String'("M17 ; Enable motors"),
      --  new String'("G28 ; Go home"),
      new String'("(Start cutting path: Right Curly Bracket)"),
      new String'("G00 Z#<pen_up>"),
      new String'("G00 X34.492847 Y33.263329"),
      new String'("G00 Z#<pen_down>"),
      new String'("G03 X34.266823 Y33.264315 I-0.118170 J-1.182682 F400.000000"),
      new String'("G03 X34.051875 Y33.228052 I0.129812 J-1.424635"),
      new String'("G03 X33.509500 Y33.014731 I0.537662 J-2.163191"),
      new String'("G03 X33.028820 Y32.672427 I1.268048 J-2.289302"),
      new String'("G01 X33.214028 Y32.460760"),
      new String'("G02 X33.659198 Y32.770810 I1.826138 J-2.147357"),
      new String'("G02 X34.122431 Y32.954649 I0.912531 J-1.623831"),
      new String'("G02 X34.458955 Y32.981797 I0.250735 J-1.008758"),
      new String'("G02 X34.766250 Y32.875274 I-0.054025 J-0.652351"),
      new String'("G02 X34.988036 Y32.643987 I-0.402337 J-0.607790"),
      new String'("G02 X35.260139 Y31.958052 I-1.921637 J-1.159231"),
      new String'("G02 X35.315485 Y31.077665 I-2.890678 J-0.623655"),
      new String'("G02 X35.092570 Y29.462149 I-16.191183 J1.410981"),
      new String'("G02 X34.754081 Y27.876745 I-34.572475 J6.552495"),
      new String'("G03 X34.360556 Y26.163677 I112.793738 J-26.812655"),
      new String'("G03 X34.018459 Y24.440202 I38.506915 J-8.539014"),
      new String'("G03 X33.893125 Y23.156246 I8.328030 J-1.461042"),
      new String'("G03 X33.923627 Y22.533529 I4.461412 J-0.093580"),
      new String'("G03 X34.034236 Y22.080274 I1.926933 J0.230114"),
      new String'("G03 X34.268234 Y21.696225 I1.129829 J0.425084"),
      new String'("G03 X34.625139 Y21.462913 I0.621919 J0.561730"),
      new String'("G01 X34.633944 Y21.462913"),
      new String'("G03 X34.856072 Y21.398156 I0.976764 J2.937138"),
      new String'("G02 X35.039639 Y21.348260 I-1.212939 J-4.824995"),
      new String'("G02 X34.843429 Y21.335504 I-0.224979 J1.945128"),
      new String'("G03 X34.616306 Y21.312982 I0.019950 J-1.357688"),
      new String'("G03 X34.245057 Y21.160053 I0.177464 J-0.957891"),
      new String'("G03 X33.963667 Y20.880829 I0.612750 J-0.898905"),
      new String'("G03 X33.777663 Y20.517610 I1.266851 J-0.877987"),
      new String'("G03 X33.646167 Y20.025343 I3.024366 J-1.071578"),
      new String'("G03 X33.560626 Y18.991601 I5.161861 J-0.947545"),
      new String'("G03 X33.646167 Y17.582357 I15.974145 J0.262402"),
      new String'("G03 X34.141197 Y14.476543 I29.392161 J3.092411"),
      new String'("G02 X34.510472 Y12.537635 I-41.793535 J-8.964410"),
      new String'("G02 X34.583297 Y11.277882 I-5.807576 J-0.967709"),
      new String'("G02 X34.484028 Y10.853135 I-1.216923 J0.060437"),
      new String'("G02 X34.232442 Y10.575638 I-0.535004 J0.232254"),
      new String'("G02 X33.963681 Y10.509163 I-0.256876 J0.462013"),
      new String'("G02 X33.611540 Y10.575688 I0.024954 J1.097356"),
      new String'("G02 X33.266945 Y10.729635 I0.934251 J2.553877"),
      new String'("G02 X33.078564 Y10.839169 I1.386667 J2.601601"),
      new String'("G02 X32.922986 Y10.950135 I0.913180 J1.444848"),
      new String'("G01 X32.755417 Y10.720829"),
      new String'("G03 X32.927546 Y10.601894 I1.279020 J1.667041"),
      new String'("G03 X33.134653 Y10.482690 I1.933029 J3.118956"),
      new String'("G03 X33.501684 Y10.316525 I1.470306 J2.759224"),
      new String'("G03 X33.963681 Y10.226940 I0.493334 J1.308101"),
      new String'("G03 X34.370416 Y10.328766 I0.017764 J0.792291"),
      new String'("G03 X34.739792 Y10.738468 I-0.425123 J0.754640"),
      new String'("G03 X34.865875 Y11.292253 I-1.410507 J0.612382"),
      new String'("G03 X34.783889 Y12.581746 I-6.364412 J0.242706"),
      new String'("G03 X34.411259 Y14.552785 I-45.516724 J-7.584315"),
      new String'("G02 X33.928403 Y17.608815 I29.185451 J6.177493"),
      new String'("G02 X33.841000 Y19.013874 I16.399399 J1.725391"),
      new String'("G02 X33.919598 Y19.981246 I4.835975 J0.093961"),
      new String'("G02 X34.044835 Y20.431217 I2.558282 J-0.469619"),
      new String'("G02 X34.193000 Y20.713260 I1.221013 J-0.461492"),
      new String'("G02 X34.402614 Y20.923173 I0.686082 J-0.475488"),
      new String'("G02 X34.660431 Y21.030760 I0.378660 J-0.544703"),
      new String'("G02 X35.403958 Y21.125065 I1.197750 J-6.465176"),
      new String'("G02 X35.833417 Y21.136593 I0.350927 J-5.067764"),
      new String'("G02 X35.927593 Y21.112473 I-0.173635 J-0.873848"),
      new String'("G03 X36.009806 Y21.092496 I0.190073 J0.603077"),
      new String'("G03 X36.226697 Y21.063024 I0.514644 J2.974552"),
      new String'("G03 X36.336125 Y21.057218 I0.118061 J1.191117"),
      new String'("G02 X36.382570 Y21.056723 I-0.047903 J-6.676864"),
      new String'("G03 X36.441959 Y21.066024 I0.002518 J0.178192"),
      new String'("G03 X36.474579 Y21.078911 I-0.110340 J0.327008"),
      new String'("G03 X36.547792 Y21.163037 I-0.055706 J0.122401"),
      new String'("G03 X36.548563 Y21.232196 I-0.121063 J0.035933"),
      new String'("G03 X36.530153 Y21.277690 I-0.200607 J-0.054707"),
      new String'("G03 X36.508447 Y21.308782 I-0.155862 J-0.085690"),
      new String'("G03 X36.494875 Y21.321787 I-0.078499 J-0.068333"),
      new String'("G03 X36.431125 Y21.359873 I-0.171238 J-0.214232"),
      new String'("G03 X36.389042 Y21.374704 I-0.136961 J-0.321504"),
      new String'("G03 X36.341179 Y21.383727 I-0.074486 J-0.263648"),
      new String'("G02 X36.274389 Y21.392343 I0.105697 J1.082570"),
      new String'("G03 X36.131649 Y21.411595 I-0.449070 J-2.790805"),
      new String'("G03 X35.895153 Y21.427621 I-0.313953 J-2.879988"),
      new String'("G03 X35.873392 Y21.427661 I-0.011708 J-0.442559"),
      new String'("G02 X35.851056 Y21.427621 I-0.012141 J0.534485"),
      new String'("G02 X35.469909 Y21.512789 I2.227519 J10.864084"),
      new String'("G02 X34.722167 Y21.727482 I2.171373 J8.972039"),
      new String'("G02 X34.482620 Y21.881233 I0.182730 J0.548181"),
      new String'("G02 X34.298834 Y22.177274 I0.654667 J0.611495"),
      new String'("G02 X34.206148 Y22.553660 I1.535611 J0.577750"),
      new String'("G02 X34.175362 Y23.156232 I4.162367 J0.514738"),
      new String'("G02 X34.293880 Y24.380955 I8.153198 J-0.170899"),
      new String'("G02 X34.633973 Y26.101926 I37.382780 J-6.493380"),
      new String'("G02 X35.024560 Y27.806118 I120.567086 J-26.736195"),
      new String'("G03 X35.365987 Y29.409218 I-35.390055 J8.375238"),
      new String'("G03 X35.598756 Y31.018350 I-18.304804 J3.469284"),
      new String'("G03 X35.542375 Y32.019774 I-3.206606 J0.321767"),
      new String'("G03 X35.243697 Y32.779114 I-2.468697 J-0.532625"),
      new String'("G03 X34.925014 Y33.113385 I-0.891200 J-0.530594"),
      new String'("G03 X34.707376 Y33.218331 I-0.493920 J-0.746153"),
      new String'("G03 X34.492862 Y33.263315 I-0.316311 J-0.974410"),
      new String'("G01 X34.492847 Y33.263329"),
      new String'("G00 Z#<pen_up>"),
      new String'("(End cutting path: Right Curly Bracket)"),
      new String'("(Start cutting path: Left Curly Bracket)"),
      new String'("G00 Z#<pen_up>"),
      new String'("G00 X5.600347 Y33.342704"),
      new String'("G00 Z#<pen_down>"),
      new String'("G03 X5.385774 Y33.293694 I0.087780 J-0.878526 F400.000000"),
      new String'("G03 X5.168194 Y33.183954 I0.355615 J-0.975641"),
      new String'("G03 X4.849511 Y32.849683 I0.572518 J-0.864867"),
      new String'("G03 X4.550833 Y32.090343 I2.169999 J-1.291955"),
      new String'("G03 X4.491522 Y31.092303 I3.203566 J-0.691165"),
      new String'("G03 X4.718403 Y29.488607 I17.246734 J1.622068"),
      new String'("G03 X5.064057 Y27.881231 I32.957486 J6.246413"),
      new String'("G02 X5.459236 Y26.172496 I-94.182598 J-22.681656"),
      new String'("G02 X5.799333 Y24.451524 I-37.047041 J-8.215299"),
      new String'("G02 X5.917847 Y23.226802 I-8.033807 J-1.395511"),
      new String'("G02 X5.886668 Y22.629657 I-4.092133 J-0.085717"),
      new String'("G02 X5.794375 Y22.256663 I-1.628948 J0.205146"),
      new String'("G02 X5.610589 Y21.960622 I-0.838448 J0.315452"),
      new String'("G02 X5.371042 Y21.806871 I-0.422279 J0.394433"),
      new String'("G02 X4.623238 Y21.586254 I-3.535962 J10.607801"),
      new String'("G02 X4.242153 Y21.498190 I-1.957666 J7.603020"),
      new String'("G02 X4.215276 Y21.498221 I-0.012634 J0.716146"),
      new String'("G03 X4.189236 Y21.498190 I-0.012303 J-0.618631"),
      new String'("G03 X3.958238 Y21.487496 I0.159112 J-5.936926"),
      new String'("G03 X3.818819 Y21.471746 I0.098585 J-1.497627"),
      new String'("G03 X3.752023 Y21.458037 I0.125249 J-0.779838"),
      new String'("G03 X3.704167 Y21.445302 I0.416102 J-1.659956"),
      new String'("G02 X3.662147 Y21.433641 I-1.278281 J4.524652"),
      new String'("G03 X3.598333 Y21.401205 I0.046409 J-0.170294"),
      new String'("G03 X3.584532 Y21.385497 I0.037157 J-0.046563"),
      new String'("G03 X3.563056 Y21.348288 I0.875948 J-0.530396"),
      new String'("G03 X3.545474 Y21.306292 I0.188499 J-0.103591"),
      new String'("G03 X3.545417 Y21.242455 I0.107115 J-0.032015"),
      new String'("G03 X3.618362 Y21.151225 I0.148760 J0.044168"),
      new String'("G03 X3.651250 Y21.136621 I0.095118 J0.169872"),
      new String'("G03 X3.710641 Y21.127308 I0.056857 J0.168547"),
      new String'("G02 X3.757083 Y21.127816 I0.100005 J-7.017432"),
      new String'("G03 X3.863556 Y21.133796 I-0.008398 J1.100355"),
      new String'("G03 X4.074583 Y21.163094 I-0.333307 J3.175423"),
      new String'("G03 X4.156796 Y21.183063 I-0.107334 J0.621096"),
      new String'("G02 X4.250972 Y21.207191 I0.267621 J-0.848732"),
      new String'("G02 X4.678910 Y21.199150 I0.101467 J-5.991165"),
      new String'("G02 X5.423958 Y21.110177 I-0.317899 J-5.826022"),
      new String'("G02 X5.686459 Y21.003195 I-0.127553 J-0.688512"),
      new String'("G02 X5.900208 Y20.792677 I-0.449532 J-0.670207"),
      new String'("G02 X6.045041 Y20.507154 I-0.966080 J-0.669545"),
      new String'("G02 X6.164792 Y20.051844 I-2.944163 J-1.017741"),
      new String'("G02 X6.246675 Y19.088071 I-4.922291 J-0.903568"),
      new String'("G02 X6.164792 Y17.688233 I-15.115239 J0.181849"),
      new String'("G02 X5.682000 Y14.626841 I-29.886071 J3.144373"),
      new String'("G03 X5.309306 Y12.652344 I45.842247 J-9.675323"),
      new String'("G03 X5.227858 Y11.369030 I6.245310 J-1.040609"),
      new String'("G03 X5.353403 Y10.817900 I1.530169 J0.058700"),
      new String'("G03 X5.722788 Y10.408170 I0.794533 J0.344927"),
      new String'("G03 X6.129514 Y10.306344 I0.388962 J0.690427"),
      new String'("G03 X6.586564 Y10.391797 I-0.032228 J1.437362"),
      new String'("G03 X6.949722 Y10.553288 I-0.950996 J2.627669"),
      new String'("G03 X7.159360 Y10.674957 I-1.576248 J2.957336"),
      new String'("G03 X7.337778 Y10.800232 I-1.159373 J1.840878"),
      new String'("G01 X7.170208 Y11.020733"),
      new String'("G02 X7.007810 Y10.916315 I-1.573962 J2.269443"),
      new String'("G02 X6.817431 Y10.809066 I-2.383337 J4.008115"),
      new String'("G02 X6.472837 Y10.655080 I-1.280638 J2.403279"),
      new String'("G02 X6.120694 Y10.588566 I-0.376787 J1.029378"),
      new String'("G02 X5.856602 Y10.652822 I-0.011955 J0.525702"),
      new String'("G02 X5.609167 Y10.923733 I0.271004 J0.495972"),
      new String'("G02 X5.509887 Y11.348483 I1.117532 J0.485185"),
      new String'("G02 X5.582708 Y12.608233 I5.880346 J0.292060"),
      new String'("G02 X5.951985 Y14.547140 I42.166008 J-7.026149"),
      new String'("G03 X6.447014 Y17.652955 I-28.897351 J6.198245"),
      new String'("G03 X6.532863 Y19.067287 I-15.945530 J1.677660"),
      new String'("G03 X6.447014 Y20.104761 I-5.266369 J0.086504"),
      new String'("G03 X6.315114 Y20.591975 I-2.999925 J-0.550686"),
      new String'("G03 X6.129514 Y20.951427 I-1.473845 J-0.533365"),
      new String'("G03 X5.848122 Y21.230651 I-0.894145 J-0.619686"),
      new String'("G03 X5.476875 Y21.383580 I-0.548712 J-0.804962"),
      new String'("G03 X5.244783 Y21.406247 I-0.247772 J-1.337453"),
      new String'("G02 X5.044722 Y21.418858 I0.022478 J1.949774"),
      new String'("G02 X5.231911 Y21.468577 I1.091951 J-3.733892"),
      new String'("G03 X5.459236 Y21.533511 I-0.631976 J2.642850"),
      new String'("G03 X5.820936 Y21.766337 I-0.274712 J0.824136"),
      new String'("G03 X6.058958 Y22.150872 I-0.857459 J0.796691"),
      new String'("G03 X6.169968 Y22.607843 I-1.815104 J0.682902"),
      new String'("G03 X6.200069 Y23.235663 I-4.536672 J0.532148"),
      new String'("G03 X6.074527 Y24.515855 I-8.380185 J-0.175552"),
      new String'("G03 X5.732639 Y26.234274 I-39.521936 J-6.969874"),
      new String'("G03 X5.339081 Y27.951924 I-122.601857 J-27.187330"),
      new String'("G02 X5.000625 Y29.541566 I35.192487 J8.323805"),
      new String'("G02 X4.777710 Y31.157082 I15.969037 J3.026604"),
      new String'("G02 X4.833056 Y32.037469 I2.945976 J0.256734"),
      new String'("G02 X5.105159 Y32.723404 I2.193744 J-0.473297"),
      new String'("G02 X5.326944 Y32.954691 I0.624123 J-0.376503"),
      new String'("G02 X5.634238 Y33.061214 I0.361319 J-0.545825"),
      new String'("G02 X5.970764 Y33.034066 I0.085791 J-1.035912"),
      new String'("G02 X6.434170 Y32.847887 I-0.436555 J-1.756404"),
      new String'("G02 X6.879167 Y32.531358 I-1.389968 J-2.425175"),
      new String'("G01 X7.064375 Y32.743024"),
      new String'("G03 X6.583948 Y33.091688 I-1.756979 J-1.915631"),
      new String'("G03 X6.041319 Y33.307469 I-1.066404 J-1.891542"),
      new String'("G03 X5.826367 Y33.343742 I-0.344249 J-1.384974"),
      new String'("G03 X5.600347 Y33.342747 I-0.107795 J-1.184897"),
      new String'("G01 X5.600347 Y33.342704"),
      new String'("G00 Z#<pen_up>"),
      new String'("(End cutting path: Left Curly Bracket)"),

      new String'("(Start cutting path: 'M'ake)"),
      new String'("G00 X10.514431 Y35.000258"),
      new String'("G00 Z#<pen_down>"),
      new String'("G01 X11.675842 Y35.000258 F400.000000"),
      new String'("G01 X13.145933 Y31.080015"),
      new String'("G01 X14.623741 Y35.000258"),
      new String'("G01 X15.785152 Y35.000258"),
      new String'("G01 X15.785152 Y29.239507"),
      new String'("G01 X15.025026 Y29.239507"),
      new String'("G01 X15.025026 Y34.298010"),
      new String'("G01 X13.539501 Y30.346899"),
      new String'("G01 X12.756224 Y30.346899"),
      new String'("G01 X11.270699 Y34.298010"),
      new String'("G01 X11.270699 Y29.239507"),
      new String'("G01 X10.514431 Y29.239507"),
      new String'("G01 X10.514431 Y35.000258"),
      new String'("G00 Z#<pen_up>"),
      new String'("(End cutting path: 'M'ake)"),

      new String'("(Start cutting path id: M'a'ke)"),
      new String'("G00 X19.269384 Y31.411847"),
      new String'("G00 Z#<pen_down>"),
      new String'("G03 X18.427849 Y31.342865 I0.000020 J-5.167823 F400.000000"),
      new String'("G03 X18.077105 Y31.215063 I0.164494 J-0.996640"),
      new String'("G03 X17.843132 Y30.962536 I0.308864 J-0.520825"),
      new String'("G03 X17.745274 Y30.543683 I0.847441 J-0.418850"),
      new String'("G03 X17.813832 Y30.195941 I0.916170 J-0.000004"),
      new String'("G03 X17.992218 Y29.941756 I0.650639 J0.266929"),
      new String'("G03 X18.267042 Y29.785653 I0.515915 J0.588316"),
      new String'("G03 X18.671315 Y29.721821 I0.404270 J1.248272"),
      new String'("G03 X19.209332 Y29.835143 I0.000002 J1.333819"),
      new String'("G03 X19.616649 Y30.138540 I-0.459090 J1.041454"),
      new String'("G03 X19.872451 Y30.597097 I-1.017823 J0.868409"),
      new String'("G03 X19.975491 Y31.253648 I-2.040297 J0.656567"),
      new String'("G01 X19.975491 Y31.411847"),
      new String'("G01 X19.269384 Y31.411847"),
      new String'("G00 Z#<pen_up>"),
      new String'("G00 X20.685456 Y31.705094"),
      new String'("G00 Z#<pen_down>"),
      new String'("G01 X20.685456 Y29.239507 F400.000000"),
      new String'("G01 X19.975491 Y29.239507"),
      new String'("G01 X19.975491 Y29.895454"),
      new String'("G02 X19.692478 Y29.544824 I-1.527890 J0.943714"),
      new String'("G02 X19.369705 Y29.312819 I-0.968796 J1.007291"),
      new String'("G02 X18.994287 Y29.180472 I-0.681613 J1.334838"),
      new String'("G02 X18.482248 Y29.127611 I-0.512040 J2.453531"),
      new String'("G02 X17.860527 Y29.233374 I0.000001 J1.880265"),
      new String'("G02 X17.425017 Y29.498027 I0.405978 J1.158731"),
      new String'("G02 X17.144152 Y29.918680 I0.814057 J0.847630"),
      new String'("G02 X17.035308 Y30.497381 I1.483990 J0.578699"),
      new String'("G02 X17.174737 Y31.157580 I1.632732 J0.000002"),
      new String'("G02 X17.521480 Y31.597055 I1.027788 J-0.454391"),
      new String'("G02 X18.050481 Y31.851281 I0.893899 J-1.182562"),
      new String'("G02 X18.979996 Y31.967472 I0.929531 J-3.660031"),
      new String'("G01 X19.975491 Y31.967472"),
      new String'("G01 X19.975491 Y32.036925"),
      new String'("G03 X19.883802 Y32.483613 I-1.133987 J-0.000012"),
      new String'("G03 X19.651376 Y32.793192 I-0.751191 J-0.321939"),
      new String'("G03 X19.301539 Y32.982336 I-0.629825 J-0.746817"),
      new String'("G03 X18.748485 Y33.063288 I-0.553073 J-1.848845"),
      new String'("G03 X18.380868 Y33.040762 I0.000048 J-3.011799"),
      new String'("G03 X18.026945 Y32.974542 I0.351395 J-2.856986"),
      new String'("G03 X17.684304 Y32.864190 I0.689662 J-2.728513"),
      new String'("G03 X17.351706 Y32.708305 I1.074854 J-2.726079"),
      new String'("G01 X17.351706 Y33.364251"),
      new String'("G02 X17.746127 Y33.498513 I1.858373 J-4.812888"),
      new String'("G02 X18.107973 Y33.588045 I1.171794 J-3.959859"),
      new String'("G02 X18.476466 Y33.646599 I0.770529 J-3.660302"),
      new String'("G02 X18.821797 Y33.665215 I0.345393 J-3.194907"),
      new String'("G02 X19.696221 Y33.517767 I-0.000019 J-2.666677"),
      new String'("G02 X20.222435 Y33.179043 I-0.435505 J-1.254669"),
      new String'("G02 X20.542712 Y32.635771 I-1.008868 J-0.960804"),
      new String'("G02 X20.685456 Y31.705094 I-2.962723 J-0.930698"),
      new String'("G00 Z#<pen_up>"),
      new String'("(End cutting path: M'a'ke)"),

      new String'("(Start cutting path id: Ma'k'e)"),
      new String'("G00 X22.124679 Y35.243344"),
      new String'("G00 Z#<pen_down>"),
      new String'("G01 X22.838503 Y35.243344 F400.000000"),
      new String'("G01 X22.838503 Y31.697376"),
      new String'("G01 X24.956823 Y33.561035"),
      new String'("G01 X25.863572 Y33.561035"),
      new String'("G01 X23.571619 Y31.539178"),
      new String'("G01 X25.960035 Y29.239507"),
      new String'("G01 X25.033993 Y29.239507"),
      new String'("G01 X22.838503 Y31.350111"),
      new String'("G01 X22.838503 Y29.239507"),
      new String'("G01 X22.124679 Y29.239507"),
      new String'("G01 X22.124679 Y35.243344"),
      new String'("G00 Z#<pen_up>"),
      new String'("(End cutting path: Ma'k'e)"),

      new String'("(Start cutting path id: Make'e')"),
      new String'("G00 Z#<pen_up>"),
      new String'("G00 X30.154231 Y31.577763"),
      new String'("G00 Z#<pen_down>"),
      new String'("G01 X30.154231 Y31.230497 F400.000000"),
      new String'("G01 X26.889935 Y31.230497"),
      new String'("G03 X27.042177 Y30.545862 I2.256362 J0.142501"),
      new String'("G03 X27.329805 Y30.111530 I1.160804 J0.456316"),
      new String'("G03 X27.772013 Y29.840760 I0.837578 J0.871411"),
      new String'("G03 X28.433339 Y29.729538 I0.661323 J1.910490"),
      new String'("G03 X28.839027 Y29.755161 I0.000007 J3.224280"),
      new String'("G03 X29.224331 Y29.829859 I-0.378178 J2.981802"),
      new String'("G03 X29.601430 Y29.952661 I-0.825914 J3.176594"),
      new String'("G03 X29.988315 Y30.130823 I-1.387674 J3.522546"),
      new String'("G01 X29.988315 Y29.459442"),
      new String'("G02 X29.600347 Y29.316363 I-1.686139 J3.974536"),
      new String'("G02 X29.205039 Y29.212498 I-1.268235 J4.022665"),
      new String'("G02 X28.801516 Y29.148960 I-0.808811 J3.823542"),
      new String'("G02 X28.390895 Y29.127611 I-0.410625 J3.938257"),
      new String'("G02 X27.427422 Y29.298851 I0.000001 J2.796093"),
      new String'("G02 X26.751029 Y29.729538 I0.646940 J1.762498"),
      new String'("G02 X26.320066 Y30.402279 I1.320018 J1.320023"),
      new String'("G02 X26.149102 Y31.357828 I2.584876 J0.955546"),
      new String'("G02 X26.313693 Y32.354756 I3.101480 J0.000002"),
      new String'("G02 X26.720161 Y33.040137 I1.826540 J-0.620018"),
      new String'("G02 X27.371503 Y33.491077 I1.326355 J-1.219927"),
      new String'("G02 X28.267423 Y33.665215 I0.895937 J-2.217722"),
      new String'("G02 X29.069110 Y33.507616 I-0.000016 J-2.117928"),
      new String'("G02 X29.644910 Y33.101873 I-0.595896 J-1.457088"),
      new String'("G02 X30.006610 Y32.485257 I-1.280029 J-1.165242"),
      new String'("G02 X30.154231 Y31.577763 I-2.715655 J-0.907507"),
      new String'("G00 Z#<pen_up>"),
      new String'("G00 X29.444267 Y31.786122"),
      new String'("G00 Z#<pen_down>"),
      new String'("G03 X29.346914 Y32.333044 I-1.712154 J-0.022641 F400.000000"),
      new String'("G03 X29.116294 Y32.716022 I-1.045959 J-0.368925"),
      new String'("G03 X28.757629 Y32.967605 I-0.741422 J-0.675542"),
      new String'("G03 X28.275139 Y33.063288 I-0.482505 J-1.168734"),
      new String'("G03 X27.718499 Y32.968119 I0.000017 J-1.675560"),
      new String'("G03 X27.322088 Y32.727598 I0.375275 J-1.065434"),
      new String'("G03 X27.056687 Y32.348535 I0.790462 J-0.835885"),
      new String'("G03 X26.913086 Y31.782264 I1.682894 J-0.728109"),
      new String'("G01 X29.444267 Y31.786122"),
      new String'("G00 Z#<pen_up>"),
      new String'("(End cutting path id: Mak'e')"),

      new String'("(Start cutting path: 'w'ith)"),
      new String'("G00 Z#<pen_up>"),
      new String'("G00 X12.100278 Y23.683257"),
      new String'("G00 Z#<pen_down>"),
      new String'("G01 X12.810243 Y23.683257 F400.000000"),
      new String'("G01 X13.697700 Y20.310922"),
      new String'("G01 X14.581298 Y23.683257"),
      new String'("G01 X15.418594 Y23.683257"),
      new String'("G01 X16.306051 Y20.310922"),
      new String'("G01 X17.189649 Y23.683257"),
      new String'("G01 X17.899614 Y23.683257"),
      new String'("G01 X16.769071 Y19.361730"),
      new String'("G01 X15.931775 Y19.361730"),
      new String'("G01 X15.001875 Y22.903839"),
      new String'("G01 X14.068116 Y19.361730"),
      new String'("G01 X13.230820 Y19.361730"),
      new String'("G01 X12.100278 Y23.683257"),
      new String'("G00 Z#<pen_up>"),
      new String'("(End cutting path: 'w'ith)"),

      new String'("(Start cutting path: w'i'th)"),
      new String'("G00 Z#<pen_up>"),
      new String'("G00 X18.979996 Y23.683257"),
      new String'("G00 Z#<pen_down>"),
      new String'("G01 X19.689961 Y23.683257 F400.000000"),
      new String'("G01 X19.689961 Y19.361730"),
      new String'("G01 X18.979996 Y19.361730"),
      new String'("G01 X18.979996 Y23.683257"),
      new String'("G00 Z#<pen_up>"),
      new String'("G00 Z#<pen_up>"),
      new String'("G00 X18.979996 Y25.365566"),
      new String'("G00 Z#<pen_down>"),
      new String'("G01 X19.689961 Y25.365566 F400.000000"),
      new String'("G01 X19.689961 Y24.466534"),
      new String'("G01 X18.979996 Y24.466534"),
      new String'("G01 X18.979996 Y25.365566"),
      new String'("G00 Z#<pen_up>"),
      new String'("(End cutting path: w'i'th)"),

	  new String'("(Start cutting path: wi't'h)"),
      new String'("G00 Z#<pen_up>"),
      new String'("G00 X21.873876 Y24.910263"),
      new String'("G00 Z#<pen_down>"),
      new String'("G01 X21.873876 Y23.683257 F400.000000"),
      new String'("G01 X23.336250 Y23.683257"),
      new String'("G01 X23.336250 Y23.131491"),
      new String'("G01 X21.873876 Y23.131491"),
      new String'("G01 X21.873876 Y20.785519"),
      new String'("G03 X21.926650 Y20.277954 I2.467086 J-0.000010"),
      new String'("G03 X22.016641 Y20.106421 I0.347875 J0.073133"),
      new String'("G03 X22.185563 Y20.008806 I0.257842 J0.251225"),
      new String'("G03 X22.606992 Y19.955940 I0.421426 J1.653288"),
      new String'("G01 X23.336250 Y19.955940"),
      new String'("G01 X23.336250 Y19.361730"),
      new String'("G01 X22.606992 Y19.361730"),
      new String'("G02 X21.827026 Y19.464695 I0.000000 J3.005623"),
      new String'("G02 X21.472591 Y19.666552 I0.209651 J0.780220"),
      new String'("G02 X21.265074 Y20.019116 I0.559912 J0.566915"),
      new String'("G02 X21.160052 Y20.785519 I2.743902 J0.766400"),
      new String'("G01 X21.160052 Y23.131491"),
      new String'("G01 X20.639154 Y23.131491"),
      new String'("G01 X20.639154 Y23.683257"),
      new String'("G01 X21.160052 Y23.683257"),
      new String'("G01 X21.160052 Y24.910263"),
      new String'("G01 X21.873876 Y24.910263"),
      new String'("G00 Z#<pen_up>"),
      new String'("(End cutting path: wi't'h)"),

      new String'("(Start cutting path: wit'h')"),
      new String'("G00 Z#<pen_up>"),
      new String'("G00 X27.866137 Y21.970080"),
      new String'("G00 Z#<pen_down>"),
      new String'("G01 X27.866137 Y19.361730 F400.000000"),
      new String'("G01 X27.156172 Y19.361730"),
      new String'("G01 X27.156172 Y21.946929"),
      new String'("G03 X27.080903 Y22.534420 I-2.330559 J-0.000021"),
      new String'("G03 X26.916945 Y22.865254 I-0.876456 J-0.228320"),
      new String'("G03 X26.634610 Y23.081452 I-0.561251 J-0.440493"),
      new String'("G03 X26.199262 Y23.170076 I-0.435361 J-1.025026"),
      new String'("G03 X25.670004 Y23.067142 I0.000014 J-1.412185"),
      new String'("G03 X25.292513 Y22.803518 I0.385966 J-0.954758"),
      new String'("G03 X25.056991 Y22.399837 I0.840677 J-0.761029"),
      new String'("G03 X24.960681 Y21.804164 I1.793924 J-0.595666"),
      new String'("G01 X24.960681 Y19.361730"),
      new String'("G01 X24.246858 Y19.361730"),
      new String'("G01 X24.246858 Y25.365566"),
      new String'("G01 X24.960681 Y25.365566"),
      new String'("G01 X24.960681 Y23.011877"),
      new String'("G02 X25.250492 Y23.363994 I1.741468 J-1.137996"),
      new String'("G02 X25.558750 Y23.594512 I1.034157 J-1.061552"),
      new String'("G02 X25.919523 Y23.735292 I0.698464 J-1.257264"),
      new String'("G02 X26.357461 Y23.787437 I0.437966 J-1.813183"),
      new String'("G02 X27.038734 Y23.652905 I-0.000016 J-1.792337"),
      new String'("G02 X27.484145 Y23.324416 I-0.432729 J-1.052975"),
      new String'("G02 X27.748206 Y22.822610 I-1.048063 J-0.871893"),
      new String'("G02 X27.866137 Y21.970080 I-3.022683 J-0.852552"),
      new String'("G00 Z#<pen_up>"),
      new String'("(End cutting path: wit'h')"),

      new String'("(Start cutting path: 'A'da)"),
      new String'("G00 Z#<pen_up>"),
      new String'("G00 X15.295121 Y14.476860"),
      new String'("G00 Z#<pen_down>"),
      new String'("G01 X14.237891 Y11.609990 F400.000000"),
      new String'("G01 X16.356211 Y11.609990"),
      new String'("G01 X15.295121 Y14.476860"),
      new String'("G00 Z#<pen_up>"),
      new String'("G00 X14.855252 Y15.244703"),
      new String'("G00 Z#<pen_down>"),
      new String'("G01 X15.738850 Y15.244703 F400.000000"),
      new String'("G01 X17.934340 Y9.483951"),
      new String'("G01 X17.124054 Y9.483951"),
      new String'("G01 X16.599297 Y10.961760"),
      new String'("G01 X14.002522 Y10.961760"),
      new String'("G01 X13.477765 Y9.483951"),
      new String'("G01 X12.655903 Y9.483951"),
      new String'("G01 X14.855252 Y15.244703"),
      new String'("G00 Z#<pen_up>"),
      new String'("(End cutting path: 'A'da)"),

      new String'("(Start cutting path A'd'a)"),
      new String'("G00 Z#<pen_up>"),
      new String'("G00 X21.445582 Y13.149534"),
      new String'("G00 Z#<pen_down>"),
      new String'("G01 X21.445582 Y15.487789 F400.000000"),
      new String'("G01 X22.155547 Y15.487789"),
      new String'("G01 X22.155547 Y9.483951"),
      new String'("G01 X21.445582 Y9.483951"),
      new String'("G01 X21.445582 Y10.132181"),
      new String'("G02 X21.182015 Y9.786995 I-1.488617 J0.863416"),
      new String'("G02 X20.878381 Y9.557264 I-0.941527 J0.928886"),
      new String'("G02 X20.525568 Y9.424060 I-0.654767 J1.200421"),
      new String'("G02 X20.060378 Y9.372055 I-0.465190 J2.054588"),
      new String'("G02 X19.356098 Y9.535158 I-0.000000 J1.602095"),
      new String'("G02 X18.783212 Y9.997132 I0.729896 J1.491332"),
      new String'("G02 X18.434664 Y10.671057 I1.601037 J1.255138"),
      new String'("G02 X18.293181 Y11.640857 I3.253029 J0.969798"),
      new String'("G02 X18.434663 Y12.610652 I3.394492 J0.000001"),
      new String'("G02 X18.783212 Y13.284581 I1.949621 J-0.581225"),
      new String'("G02 X19.356097 Y13.746553 I1.302787 J-1.029369"),
      new String'("G02 X20.060378 Y13.909659 I0.704294 J-1.439021"),
      new String'("G02 X20.525068 Y13.856652 I-0.000029 J-2.063628"),
      new String'("G02 X20.878381 Y13.720592 I-0.304527 J-1.317545"),
      new String'("G02 X21.181654 Y13.493986 I-0.613158 J-1.136844"),
      new String'("G02 X21.445582 Y13.149534 I-1.204047 J-1.195911"),
      new String'("G00 Z#<pen_up>"),
      new String'("G00 X19.026298 Y11.640857"),
      new String'("G00 Z#<pen_down>"),
      new String'("G03 X19.122574 Y10.888476 I2.987930 J-0.000008 F400.000000"),
      new String'("G03 X19.346554 Y10.409993 I1.402805 J0.364992"),
      new String'("G03 X19.730982 Y10.085014 I0.861570 J0.629314"),
      new String'("G03 X20.234010 Y9.966266 I0.503029 J1.006066"),
      new String'("G03 X20.737034 Y10.085012 I-0.000000 J1.124802"),
      new String'("G03 X21.121467 Y10.409993 I-0.477157 J0.954323"),
      new String'("G03 X21.348262 Y10.889114 I-1.169350 J0.846758"),
      new String'("G03 X21.445582 Y11.640857 I-2.854910 J0.751762"),
      new String'("G03 X21.348006 Y12.392291 I-2.942360 J-0.000019"),
      new String'("G03 X21.121467 Y12.867862 I-1.374843 J-0.363166"),
      new String'("G03 X20.736340 Y13.195941 I-0.867386 J-0.628124"),
      new String'("G03 X20.234010 Y13.315449 I-0.502341 J-0.996021"),
      new String'("G03 X19.731675 Y13.195940 I0.000011 J-1.115540"),
      new String'("G03 X19.346554 Y12.867862 I0.482244 J-0.956173"),
      new String'("G03 X19.122828 Y12.392933 I1.157562 J-0.835454"),
      new String'("G03 X19.026298 Y11.640857 I2.881418 J-0.752068"),
      new String'("G00 Z#<pen_up>"),
      new String'("(End cutting path: A'd'a)"),

      new String'("(Start cutting path Ad'a')"),
      new String'("G00 Z#<pen_up>"),
      new String'("G00 X25.581901 Y11.656291"),
      new String'("G00 Z#<pen_down>"),
      new String'("G03 X24.740367 Y11.587309 I0.000025 J-5.167846 F400.000000"),
      new String'("G03 X24.389623 Y11.459506 I0.164493 J-0.996634"),
      new String'("G03 X24.155650 Y11.206981 I0.308864 J-0.520826"),
      new String'("G03 X24.057791 Y10.788128 I0.847433 J-0.418849"),
      new String'("G03 X24.126350 Y10.440385 I0.916167 J-0.000005"),
      new String'("G03 X24.304735 Y10.186199 I0.650652 J0.266935"),
      new String'("G03 X24.579560 Y10.030098 I0.515910 J0.588313"),
      new String'("G03 X24.983833 Y9.966266 I0.404273 J1.248299"),
      new String'("G03 X25.521849 Y10.079587 I0.000000 J1.333830"),
      new String'("G03 X25.929167 Y10.382984 I-0.459084 J1.041448"),
      new String'("G03 X26.184968 Y10.841542 I-1.017831 J0.868413"),
      new String'("G03 X26.288008 Y11.498092 I-2.040292 J0.656565"),
      new String'("G01 X26.288008 Y11.656291"),
      new String'("G01 X25.581901 Y11.656291"),
      new String'("G00 Z#<pen_up>"),
      new String'("G00 X26.997973 Y11.949538"),
      new String'("G00 Z#<pen_down>"),
      new String'("G01 X26.997973 Y9.483951 F400.000000"),
      new String'("G01 X26.288008 Y9.483951"),
      new String'("G01 X26.288008 Y10.139897"),
      new String'("G02 X26.004995 Y9.789268 I-1.527888 J0.943711"),
      new String'("G02 X25.682222 Y9.557264 I-0.968783 J1.007279"),
      new String'("G02 X25.306804 Y9.424916 I-0.681615 J1.334845"),
      new String'("G02 X24.794766 Y9.372055 I-0.512038 J2.453514"),
      new String'("G02 X24.173044 Y9.477818 I0.000000 J1.880259"),
      new String'("G02 X23.737535 Y9.742472 I0.405979 J1.158732"),
      new String'("G02 X23.456669 Y10.163124 I0.814052 J0.847628"),
      new String'("G02 X23.347826 Y10.741824 I1.483987 J0.578697"),
      new String'("G02 X23.487255 Y11.402023 I1.632736 J0.000002"),
      new String'("G02 X23.833998 Y11.841500 I1.027789 J-0.454390"),
      new String'("G02 X24.362998 Y12.095725 I0.893898 J-1.182560"),
      new String'("G02 X25.292513 Y12.211916 I0.929532 J-3.660033"),
      new String'("G01 X26.288008 Y12.211916"),
      new String'("G01 X26.288008 Y12.281369"),
      new String'("G03 X26.196319 Y12.728057 I-1.133988 J-0.000012"),
      new String'("G03 X25.963893 Y13.037637 I-0.751191 J-0.321939"),
      new String'("G03 X25.614056 Y13.226780 I-0.629826 J-0.746819"),
      new String'("G03 X25.061003 Y13.307732 I-0.553073 J-1.848845"),
      new String'("G03 X24.693385 Y13.285207 I0.000048 J-3.011796"),
      new String'("G03 X24.339462 Y13.218986 I0.351396 J-2.856995"),
      new String'("G03 X23.996821 Y13.108635 I0.689661 J-2.728507"),
      new String'("G03 X23.664223 Y12.952750 I1.074861 J-2.726097"),
      new String'("G01 X23.664223 Y13.608696"),
      new String'("G02 X24.058645 Y13.742957 I1.858380 J-4.812911"),
      new String'("G02 X24.420491 Y13.832489 I1.171794 J-3.959861"),
      new String'("G02 X24.788983 Y13.891044 I0.770529 J-3.660302"),
      new String'("G02 X25.134314 Y13.909659 I0.345394 J-3.194907"),
      new String'("G02 X26.008738 Y13.762211 I-0.000019 J-2.666676"),
      new String'("G02 X26.534952 Y13.423487 I-0.435505 J-1.254670"),
      new String'("G02 X26.855229 Y12.880216 I-1.008869 J-0.960804"),
      new String'("G02 X26.997973 Y11.949538 I-2.962716 J-0.930697"),
      new String'("G00 Z#<pen_up>"),
      new String'("(End cutting path: Ad'a')"),

      new String'("G03 X34.266823 Y33.264315 I-0.118170 J-1.182682"),
      new String'("G00 Z-1 ; Pen all the way up"),
      new String'("M18 ; Disable motors"));
end Make_With_Ada_Gcode;
