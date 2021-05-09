﻿within VCLib.DataBase.Media.Refrigerants.R32;
record TSP_IIR_P1_70_T233_373
  "Record with fitting coefficients calculated for 1-phase functions"
extends ThermodynamicStatePropertiesBaseDataDefinition(
  name="Coefficients taken from Göbel",
  s_IIR_IO = 0,
  h_IIR_IO = 0,
  T_ph_regions = 3,
  T_phNt = {4,11,50,
            12,12,91,
            3,5,18},
  Tl_phA = {-0.00633093128403416, 0.00104848762197526, 0.000168972004106638, -0.000653818997873475},
  Tl_phB = {1.12462205869269, -0.0703367890276886, -0.0291464191596956, 0.0293958097416133, 0.0143364440766979, -0.0834962691719504, 0.0232228598689926, 0.0615719477906913, -0.0539683542971315, 0.0157032859055343, -0.00154689508845822},
  Tl_phC = {-0.00235991509892699, 0.0142208296456288, -0.000372252706320382, -0.0094840931078553, -0.0217131244128693, 0.0104242059159345, -0.0255436863903638, 0.0474268719433873, -0.0146948038007286, -0.00708746127229437, 0.0225711503704109, -0.0080064822257849, -0.00885000189085101, 0.0126502296953382, 0.0183722363204466, -0.0452961667659217, 0.0165053524885114, 0.00401334007497051, -0.0120637284547406, 0.0211339607592543, 0.00470654096409558, -0.0145810128528001, -0.00291387475700408, 0.00978201394282366, -0.0028724030922525, -0.000917898885511441, 0.00786795363760787, -0.00710995338637064, 0.000361473046183604, 0.0035202349864218, 0.00988071676562147, 0.000941735805708528, 0.000729883472584559, -0.000928147737902215},
  Tl_phD = {0.0958885070679777},
  Tv_phA = {0.940865504550395, -0.173828458947708, 0.0503479320667924, -0.0179703822452013, 0.0196290346574423, -0.0161840589182154, -0.00965810267975084, 0.014209119503814, 0.00226262258905167, -0.00751719995380472, 0.0030531285404761, -0.000388072218724421},
  Tv_phB = {0.770727779932162, 0.0779008683340961, -0.0160059964913689, -0.000812354244774785, 0.00212924927090175, -0.00623609360049041, -0.0149774478710768, 0.0274151646455438, -0.00848314486312912, -0.00271090222707368, 0.000617375673032098, 0.000281911927794692},
  Tv_phC = {-0.000989137109861996, 0.00874509069546637, 0.000362524095201298, -0.0194843912677881, 0.0147057429695676, 0.00896562206284843, -0.00573590221962906, -0.0502435317381367, 0.0155037472656779, 0.0330885893687832, 0.044366169946773, -0.000979978835834077, -0.104911697060988, -0.00541694353924372, 0.0675956544445773, 0.0114840844648551, 0.0868503293241689, -0.0145254744421747, -0.151781658824362, -0.0226084238528098, 0.090222599076252, -0.0700194234977953, 0.0424212728773851, 0.183908399378481, -0.0633422337969635, -0.206357485973864, 0.00102024071228879, 0.0849548885230134, 0.0208654406156769, -0.109656282197344, 0.0761530113430497, 0.262320340562736, -0.0736782769785973, -0.254334362690228, 0.0374309138830408, 0.0594944830030146, -0.0264466457212602, -0.02490683802519, -0.132520398951539, 0.111719121209108, 0.233338493565879, -0.041403936331184, -0.210578459919899, 0.0388237806334477, 0.0313930372892791, 0.11095995275792, 0.00882089528763659, -0.0643388129645329, -0.120972882449039, 0.0954986708882967, 0.157792765147705, -0.0393742702888927, -0.0972139612286595, 0.0181246589940355, 0.0116625139904804, -0.250337456105934, 0.0295432207450077, 0.0326301574811819, -0.029541060712142, -0.0676217624808071, 0.0153747598544824, 0.0950821380302293, -0.0333849395083102, -0.0232593278434449, 0.00468616367793845, 0.0026509381754971},
  Tv_phD = {0.0129848609601194},
  Tscr_phA = {0.633446168082385, -0.0288246850289465, 0.00183584025276029},
  Tscr_phB = {0.657891634516468, 0.589386679254788, 0.257767428001585, -0.0467547247885307, -0.00949946500082336},
  Tscr_phC = {0.00136614631034522, -0.000783518504328571, -0.00376845424856179, -0.0811120359411396, 0.00786385518196062, -0.00162600737364173, 0.136472193868355, 0.00205096444474424, 0.000219964974060217},
  Tscr_phD = {-0.385300982343462},
  T_phIO = {4163881.04147178, 2100662.93119210, 175109.116775803, 101891.115382834, 252.830388036008, 54.8299865801538,
            1764642.92161993, 1736460.62051945, 543645.484310216, 35391.1331971211, 318.474103217216, 35.5202971540045,
            6295894.26858962, 419075.331114534, 456755.221015171, 50386.0188124643, 359.569974705729, 6.34825875937242},
  hscr_IO= {6391500, 351750.621889998, 371988.330733655, 6984.44607721997},
  hscr_Nt = 9,
  hscr_N = {-0.229994717739535, -0.677844265655808, -0.0497636499255021, -0.2375233025356, 0.458768923099466, 0.159861373512126, -0.294252152800906, -0.0451798539245242, 0.0634229063052632},
  T_ps_regions = 3,
  T_psNt = {4,8,35,
            3,13,50,
            2,4,12},
  Tl_psA = {0.0162103214519941, 0.00731712571431491, 0.00162110867808151, 9.01357817428802e-05},
  Tl_psB = {0.994698974040281, 0.0826799337772093, -0.0096283413640456, -0.0334900245004738, 0.00322039669586458, 0.0261381341562466, -0.0172653610868116, 0.00204400577825453},
  Tl_psC = {0.00586678329215318, 0.00405831580633545, -0.012636519314169, -0.0183127993873416, -0.00170170238212807, 0.0142762567362889, -0.00240183488416596, 0.0191194710059804, 3.21178249594636e-05, -0.00473910210220308, 0.0142347178577749, 0.00470131686109246, -0.0103905035774516, -0.00345411885047965, 0.00457183274451846, -0.00330956663217591, 0.00118629230820848, 0.000853670706839869, 0.00745906376710768, 0.00392224292412835, 0.00275457874731475, 0.000518414254205189},
  Tl_psD = {-0.0473524138478642},
  Tv_psA = {2.03331585559827, 0.197311018145921, -0.00333850968434481},
  Tv_psB = {1.84286948879548, 0.398319830817416, -0.113081724981705, 0.0363920874770569, -0.0359334077085979, 0.0357966031978766, -0.0199514119421308, 0.0117237022936487, -0.00926338514292344, 0.00448308729108809, -0.00108738241931603, 0.000151523254843577, -1.05821938016847e-05},
  Tv_psC = {-0.000155757187592964, 0.0014219299219045, -0.000518965686434385, -0.00664776496246994, 0.00358212855433257, -0.000433211172560297, 0.0195111759234777, -0.0109278810021953, 0.00252649804841591, -0.0300274929854407, 0.0217640613178696, -0.00509620757849376, 0.0270285821269334, -0.0261964656527746, 0.00529061239576283, -0.0518433009473107, 0.0213429014854132, -0.0060227017741088, 0.108240604566648, -0.0549169952871548, 0.0106627428452813, -0.110636317014871, 0.11522956080352, -0.0236309575728537, 0.0864866514064992, -0.101319949615718, 0.03798907512142, -0.127132695814496, 0.0633097573605523, -0.0274214596124245, 0.257192337297865, -0.116821389068364, 0.00409214454982833},
  Tv_psD = {-0.375766285553996},
  Tscr_psA = {0.576847579291881, -0.00217987427601312},
  Tscr_psB = {0.493113593820795, 0.515029853899761, 0.348851344630716, -0.0544553058302868},
  Tscr_psC = {-0.000369733329215711, -0.04757138292723, 0.00593556024416352, 0.200942284474854, -0.00257363302643843},
  Tscr_psD = {-0.327383467359897},
  T_psIO = {14.9448573563973, 0.881691674720842,766.507566800662, 354.359519730800, 240.674827018988, 52.7804347025945,
            13.7071132855869, 1.17643731075378, 2250.07204094540, 229.076195367092, 316.705530001855, 35.5566500848004,
            15.6565076456638, 0.0642760073907664, 1736.35712929561, 154.281677684303, 358.591558827730, 6.50356756495230},
  sscr_IO = {6391500, 351750.621889998, 1525.78196325671, 21.3672467572462},
  sscr_Nt = 9,
  sscr_N = {-0.23621826883562, -0.674006919879221, -0.0111689769656141, -0.318902208160569, 0.407309923626554, 0.242941009513175, -0.273371417876765, -0.0701376139475168, 0.0632365389121228},
  d_pT_regions = 6,
  d_pTNt = {8,10,63,
            8,9,54,
            8,8,45,
            8,8,45,
            5,17,93,
            9,18,145},
  dl_pTA = {0.0627763452117915, -0.00213170936105093, 0.000255178820769605, 5.16611795294423e-05, -1.92652217155409e-05, -3.57871790180926e-05, 1.84317868056315e-06, 5.16625409631055e-06},
  dl_pTB = {-0.928204893459867, -0.127834302011047, -0.0403309713064787, -0.0286520069051961, -0.0222725725755049, 0.00508443939166798, 0.0124892852298909, -0.00181368550990209, -0.00570362703840147, -0.00154221232313551},
  dl_pTC = {0.00335897420190136, 0.0119526229342936, -0.00241223690478703, 0.00513202405023323, -0.00918678244705043, 0.000794206276217148, -0.0191722646406342, -0.00719783026145076, 0.0032032146829887, -8.15780257879476e-05, -0.00959387377848716, 0.00832754825458531, 0.00373884215007602, -0.000416052681948202, -9.61546907507027e-05, 0.0232142197798867, 0.00867144508366618, -9.17330263269491e-05, -0.000762752085372283, -0.000208485817157239, 5.63778682804286e-05, 0.0249802932422087, -0.00600044001389064, -0.00229066250464987, -0.00053522816288523, 5.13562762997183e-05, 0.000133979086502526, -1.88604781448369e-05, 0.0223272884231725, -0.00785521309638188, -0.000397324900932298, 5.63806486723599e-06, 0.000248035875178736, 3.28182588026234e-05, -3.30630772428301e-05, 7.29079529086298e-06, 0.0411603606521363, -0.00352349859779118, 0.00073918871569354, 0.000166726834467521, 3.25325927219962e-05, -8.66093363459636e-05, -5.70995527600744e-06, 1.4585771209285e-05},
  dl_pTD = {0.148036494247666},
  dv_pTA = {1.09030980859846, 0.40884234442083, 0.178663669446626, 0.154102735637681, 0.320544056071162, 0.329397036539936, 0.141924392037996, 0.0208843014024313},
  dv_pTB = {-0.28855690407307, 0.112882218117448, -0.0319904285325252, 0.0589388814565942, -0.099009646625881, 0.0488187054080812, -0.00393953415918085, -0.000265281797498745, 6.35227177418435e-06},
  dv_pTC = {-0.000208820474064316, -0.0054003557389728, -0.00179841148776328, 0.152552314576544, 0.14626810597185, 0.0440889999328306, -0.587631813651913, -1.10912607572411, -0.834114226987898, -0.217407506824295, 0.697135085518535, 2.32055613407982, 3.18576639310759, 1.93485621029609, 0.431322330019011, -0.294011395864131, -1.81655659985923, -4.29630124616595, -4.50782282113991, -2.15622252969935, -0.384201211563032, 0.241138173533525, 0.61015099031029, 2.27061229452656, 4.04690776768162, 3.28973055199247, 1.18787434153965, 0.146402805200256, -0.524272291726848, -0.422418073183747, -0.525589359584282, -1.38333810133086, -1.8696345064376, -1.14196418867597, -0.290220924323982, -0.0184972812650676},
  dv_pTD = {-0.153816874289484},
  dtra1_pTA = {0.806872256295052, -0.155514302781379, -0.165652019399263, 0.123777590551267, 0.413997449195575, -0.763337533477599, 0.412247749951004, -0.0446276074604995},
  dtra1_pTB = {-1.55858378168443, -0.235772324880373, 0.29718486129751, -1.85938963366391, -2.10434449054327, 3.47033816837345, 1.68126979510675, -2.50148852583949},
  dtra1_pTC = {-0.143524835842511, -1.26374772582275, 1.47299443290182, 3.39970083297753, -1.17954427601318, -2.14287223183397, -3.03042876425108, -4.24317671829689, 10.519444907272, -3.91716986924788, 0.513159434633507, 8.40446996721878, -2.97095253081265, -19.6397780694396, 15.3964648578749, 0.572302249913626, -2.9478261223038, -11.38211325592, 12.2558328077475, 17.9478675925998, -19.1536163806433, 0.38321569682328, -0.698544009269031, 4.1381527891807, 7.69790450423632, -11.1391990716515, -8.4787880399033, 11.0326253880169},
  dtra1_pTD = {0.130924951197768},
  dtra2_pTA = {2.37623726542892, 1.09197656064322, 0.994348392244099, 1.35072537776111, 0.464399803383307, 0.785617261231851, 1.96618117446035, 1.25813125088072},
  dtra2_pTB = {-1.76152046532849, 0.944271789590046, -1.01603483538685, 2.13870488430061, -0.600113099502131, -3.3609792285634, -0.781694496547208, 3.50884417060597},
  dtra2_pTC = {-6.76284589564173, -8.4050611151014, 11.6828997586791, -5.8368933230609, 11.898837302523, -2.47582008255665, -3.96533137923383, 12.8652273529012, -3.02546172852466, -12.2323495628209, -5.77911113921249, 10.0983967337123, -8.24092516378255, -7.09735449070928, 6.23373882455842, -3.00304748688342, 9.65873998904681, -10.7851673400763, -6.07175686521754, 5.11737318229648, 10.9963092913038, -2.08493751055818, 3.01379583322069, -7.36751314339748, 4.79007434120291, 9.85992591595724, 0.326993900488611, -12.2089397046865},
  dtra2_pTD = {-0.0700892114560997},
  dscr1_pTA = {0.345702076272234, -0.0879880621302428, 0.0021563345822951, 0.00214288079056596, -0.00241877071925521},
  dscr1_pTB = {-3.14325195980229, -5.31191457951079, 8.53771356974337, 22.2330715218424, -17.6907166909455, -44.1362404527325, 21.9591208877636, 47.8813628191663, -16.7117039883594, -29.9957399913936, 7.8834641774218, 10.8246409362393, -2.24998289259161, -2.08871764737033, 0.356156724746213, 0.166850169902269, -0.0240180485973518},
  dscr1_pTC = {-0.00733241200533883, -0.30557893304175, 0.0595001326919001, 0.00564841409415959, 0.239907219437272, -0.0557469678532415, 3.35457538583056, -0.544501443433037, -0.0966183614213308, 0.0242836174547122, 0.458144033614467, -2.27152953825706, 0.467046782331512, 0.0142016449033911, -0.00550093275556504, -14.9587337321475, 1.91461475626652, 0.77376351128001, -0.179035526729738, 0.00165281112441268, -2.77233891037667, 8.54071045668324, -1.52146464537482, -0.0855039009865688, 0.0398555020274547, 34.7585265852407, -3.1585091003893, -2.39366286185811, 0.501506953772939, -0.0154456773577564, 7.169392242108, -16.2245613116128, 2.42798279002435, 0.186867371446866, -0.112941095805267, -44.8280465574115, 2.22079540052477, 3.60137528231974, -0.663103985919271, 0.0475581509841805, -9.63279931461399, 16.3571788919245, -1.95575503819626, -0.186749894587816, 0.156747966475313, 31.4955528632591, -0.0502003420307129, -2.71715132384977, 0.413766230715094, -0.0598956204509143, 6.82176472517707, -8.35223474765901, 0.725904944574274, 0.0928337536563534, -0.107121655625495, -10.8895254231832, -0.624884222041724, 0.941760663461926, -0.102863065553322, 0.0289013413005304, -2.35091655077164, 1.81100012725733, -0.0918123470922209, -0.0241515299109697, 0.0310275796437958, 1.4023955764209, 0.189748191087143, -0.109372784730326, 0.00537827577294237, -0.00344432002352935},
  dscr1_pTD = {0.361738456901902},
  dscr2_pTA = {1.21985501051042, -0.461592591768963, -0.0141964364260063, 0.357765603620199, -0.396916375727557, -0.120947605324244, 0.226739700324082, 0.0142362794494297, -0.0376008845602434},
  dscr2_pTB = {-2.07388445027597, 0.0644578889486432, 1.48694192336712, -0.342732343508459, -0.28354905627486, 0.285962950438068, -0.636152569361198, 0.366150443719291, -0.0828508982910206, -0.563705749593331, 0.776595477279603, 0.1926228538253, -0.498078974634704, 0.0171362386178266, 0.1124286846701, -0.0122812355313894, -0.00672691237091445, -0.000400306716607446},
  dscr2_pTC = {0.0148755061792277, -0.0074118319137531, -0.0434733710718068, -0.0215411191812912, 0.0674711824806431, 0.0237969622416573, -0.117755735135683, 0.0720695022745426, -0.032609189819994, 0.0568386694999502, 0.0900755579728093, -0.332019147721496, 0.0973477864412099, -0.198345948895326, -0.0831025936017059, 0.611745812515164, -0.0934383898733385, 0.541313629533994, -0.277280202150173, 0.352824849402888, 0.0285913047609366, -0.551781593791943, 0.480354145101821, -0.33700884135788, 0.0220709694279074, 0.00126989858363576, -0.195272118160877, -0.00880331982211974, -0.340087882696028, 0.167751341172529, -0.548892223037262, 0.380973013339342, -0.329019399725308, 0.335408487671082, -0.033339793411781, 0.0324973519422749, 0.562740423874149, -0.861811967922633, 0.473008314777252, -0.728288515834281, 0.189310382166729, -0.18430211484455, -0.154907209425904, 0.0751048673744012, -0.0226384023097619, -1.38999899322325, 0.820972731157374, -0.690416574987237, 0.169202931229058, 0.541710839203928, -0.0710309241538594, 0.590966672640858, -0.185261309629367, -0.0230996140118009, 0.671972515705929, 1.1626207692766, -0.756668158911542, 2.10591022142632, -0.979152378683444, 0.968930832040255, -0.601445958386042, -0.37805760919921, 0.172578667999613, 0.811409943387043, -1.34540202916415, 0.919063203099365, -0.514905321788479, -0.0565840431474071, 0.122294358507937, -1.60499938829487, 0.750978882746646, 0.0985693881343304, -0.69488140169421, 1.19747613239136, -0.714212139218628, -0.158555295378956, 0.330878740747823, -1.55909361375478, 0.873216394794726, 0.845805319303574, -0.495229776223459, 2.35951837323305, -1.04967027120853, -0.420247397631488, 1.3347292209981, -2.87816279868556, 0.60224347224061, 1.52325196777108, -0.267402684454198, -0.239248202729716, -0.626243309723717, -3.12482715234883, 2.45047851439218, -1.60726565919526, 0.711296483441231, 2.26809002487794, -1.70137078099865, -0.39044487214142, 0.360941257941209, -2.78019805520102, 1.98524261410352, 0.194746124371648, -1.73197637919833, 2.79103789581133, -0.240083328465182, -1.35260773587785, 0.265831112985154, 0.133452170164536, 0.650583392593029, 1.50451813002227, -1.14668416460682, 0.454222113727352, -0.0343978657127673, -0.81303609330021, 0.474411724069721, 0.194649128486682, -0.128933750027675},
  dscr2_pTD = {0.000240890281828179},
  d_pTIO = {4350471.53120770, 1708120.00447193, 291.215864607579, 32.1521651128453, 984.836456813105, 131.141835832421,
            3155007.46717796, 1902724.74357708, 340.729994750689, 26.7750632578421, 91.2556357096757, 67.6689469701425,
            5397273.33301376, 269586.928567425, 346.544516082638, 2.25186055640163, 649.164735082322, 34.3087091145699,
            5411345.04574654, 2.527408192563513e+05, 349.414434494840, 2.85039996210552, 228.765473126582, 22.8882819071589,
            5847309.50819672, 36939.9917809753, 351.426693208430, 2.42906062366123, 458.395346307012, 179.036579108450,
            6480381.56343999, 310966.566006206, 356.498773945015, 3.89476721058539, 453.064484550971, 141.231611130533},
  d_pT_TO = {340.57, 370},
  d_pT_pO = {4638824.76245235, 5782000, 5910000},
  fit_SCrSH_IO = {354.619217758985, 7.47858134651005, 5818000, 682861.015629584},
  fit_SCrSH_Nt = 9,
  fit_SCrSH_N = {-0.088459232314772, 0.989042133043436, 0.0941725227150269, 0.0120426108475615, -0.0168315020645627, 0.00320875213623223, 0.0130038164806081, -0.000688523391288815, -0.00242242294098191},
  fit_SCrSC_IO = {347.270507399577, 4.07834835348235, 5818000, 682861.015629584},
  fit_SCrSC_Nt = 9,
  fit_SCrSC_N = {0.0471820001146352, 1.0075160406481, -0.0473286506949754, -0.00230609402237783, 0.00135347026896384, 0.000942031837871028, -0.00106611373536093, -0.000279927449325522, 0.000229066752167707});

  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end TSP_IIR_P1_70_T233_373;
