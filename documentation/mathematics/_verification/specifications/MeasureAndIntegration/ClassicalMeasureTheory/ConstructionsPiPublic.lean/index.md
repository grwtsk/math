# Verification target: Constructions Pi Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a62c773222f631197270b3ac84ea3efaf728458",
  "lexical_observation_count": 118,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Pi/Variantc42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a62c773222f631197270b3ac84ea3efaf728458`.

Source path: `GRWTSK/Analysis/MeasureTheory/Pi/Variantc42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Pi/Variantc42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piPremeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pipremeasure.md) | 75 | `declaration-track:055a1ca3faa0d6ef72240d467be9efaf201272919abb77cd5f7f0c181f572ed9` |
| 2 | `theorem` | [piPremeasure_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pipremeasure-pi-source-edition-2.md) | 78 | `result-track:41006919236a0bc44517db6303839f9ece8cdd446a0e536105f27fccd4552965` |
| 3 | `theorem` | [piPremeasure_pi'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pipremeasure-pi.md) | 81 | `result-track:36faed29176bf8ed0867b7f6d08301e2282b0f6ceb6548628df7c6ee31306604` |
| 4 | `theorem` | [piPremeasure_pi_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pipremeasure-pi-mono.md) | 91 | `result-track:1c5ef4a68dbe4737742aa05d72b5535d96ec2e9a5bea62b7e0766bb47d4e6489` |
| 5 | `theorem` | [piPremeasure_pi_eval](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pipremeasure-pi-eval.md) | 95 | `result-track:ab6ba2c30d90d0dcb4509e9e609044704a1c88a792272606f989d3bbdd81d3a8` |
| 6 | `def` | [pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-source-edition-2.md) | 105 | `declaration-track:90413242ecbf95a79d9459b2af88ee2057167253f425268e676bb7b29f78c718` |
| 7 | `theorem` | [pi_pi_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-pi-le.md) | 108 | `result-track:f3ff1d27aa4b283fa45f0fd78bb85beed04ab538f3f9ec8566009b3275559031` |
| 8 | `theorem` | [le_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/le-pi.md) | 114 | `result-track:81431eeb9493a9efb7c4e4cb83d3e262203aa2db5a76a30298b23692ca51f4a5` |
| 9 | `def` | [tprod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/tprod.md) | 136 | `declaration-track:e225708e3b46d818de1c87301a42641b9cea580ee8421fdf8796a0633027e7f0` |
| 10 | `theorem` | [tprod_nil](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/tprod-nil.md) | 142 | `result-track:50596c252186fe23063476f49b362c55453321f9232694763992148f00bc13b6` |
| 11 | `theorem` | [tprod_cons](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/tprod-cons.md) | 146 | `result-track:7692d30955944403f5edd97d04c95d5d0e3a835c725a32dd6024ec686fccdb0f` |
| 12 | `instance` | [sigmaFinite_tprod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/sigmafinite-tprod.md) | 151 | `declaration-track:6bbbaa87059e9d9ed22b4db62d586fef4bcce61515df2462f86bf7fcf4c00a73` |
| 13 | `theorem` | [tprod_tprod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/tprod-tprod.md) | 158 | `result-track:795c019b1fe32a2168ef238c7380c79c723b3524964c370d36697330a09d150c` |
| 14 | `def` | [pi'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi.md) | 180 | `declaration-track:695a666387d513fec143afe26400aba57ad8a0176001659cee0b33dc010a314a` |
| 15 | `theorem` | [pi'_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-pi-source-edition-2.md) | 183 | `result-track:e75ed840014b4629652d3dafad95ac8a683c5f70609c0cb1acf59dff4bc78af5` |
| 16 | `theorem` | [pi_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-caratheodory.md) | 194 | `result-track:4eb10ce7f0eac0391ab0b393f6d3b68be7a3816dd6f387d56f853aea34fe6353` |
| 17 | `instance` | [_root_.MeasureTheory.MeasureSpace.pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/root-measuretheory-measurespace-pi.md) | 213 | `declaration-track:b0bce392cb34149546827889cb80dfd93c565791d4e8087518262a032406a64b` |
| 18 | `theorem` | [pi_pi_aux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-pi-aux.md) | 217 | `result-track:c3773a179fb48053c5a3bc862de38896da802186d8bb86a975e6fc2a02847435` |
| 19 | `def` | [FiniteSpanningSetsIn.pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/finitespanningsetsin-pi.md) | 234 | `declaration-track:a2b8215a6a986e16b05e6c5695ce16d2ebc81b528fd14cdbf71b7d067a58377f` |
| 20 | `theorem` | [pi_eq_generateFrom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-eq-generatefrom.md) | 261 | `result-track:df1aad219c8640f2b839bdd396bdfb2dfce1b96b1b0c59d240af8284fd66d058` |
| 21 | `theorem` | [pi_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-eq.md) | 278 | `result-track:ace6259590edcc8624f0fd5cc6673dd8f9e4c5a46a7a91f651025590b8943d1b` |
| 22 | `theorem` | [pi'_eq_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-eq-pi.md) | 286 | `result-track:eafd3853dbdbb545e8f7f4a9c7f080d3817b5be01c023d64acbf65981ee6c032` |
| 23 | `theorem` | [pi_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-pi.md) | 290 | `result-track:4c61c819409d804b64222679627f30ecf6280156d0f4acd8e5414080af9d7f52` |
| 24 | `theorem` | [pi_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-univ.md) | 295 | `result-track:565af61391f1b7dbf42d5b620ece18cdbe5a1429c34205b450d3034b1a17f656` |
| 25 | `lemma` | [pi_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-singleton.md) | 298 | `result-track:98be53871fad74830767ad2dcd8f6b54d8d8cdc635dc35c4744daefb9cf86a6d` |
| 26 | `instance` | [pi.instIsFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-instisfinitemeasure.md) | 302 | `declaration-track:7c5dde28fbe59f96a3ca3116dfd4ac38fc6c78bfafa660097227145bff68e723` |
| 27 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/instance-source-edition-4.md) | 306 | `declaration-track:3fb564ceef605a148707cca51c210094203a7782d8c4f7f9d8e539a5c6270781` |
| 28 | `instance` | [pi.instIsProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-instisprobabilitymeasure.md) | 310 | `declaration-track:e4921374da1b760353c37d3d955d1d07906e0ad97a7513f909ad4bbd6061c6b2` |
| 29 | `theorem` | [pi_pi_finset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-pi-finset.md) | 315 | `result-track:9eaf1df2e811d7f9419dd6cecc48e6dcbb8d72fe043d6cd0a8d8f660fd5755f6` |
| 30 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/instance-source-edition-7.md) | 319 | `declaration-track:80bd3b73243f6d20ba9116b7a8b9ce082ae27174eff577d79610f12c65faa644` |
| 31 | `theorem` | [pi_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-ball.md) | 326 | `result-track:8b280b97d61d14b3628d65679e37d35ff12ae14507e0808e35e4b8cbb4c23059` |
| 32 | `theorem` | [pi_closedBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-closedball.md) | 329 | `result-track:ca810790fc6d5dc8143f49b4de759746ceefd9deb5313771907be3fe86d7144a` |
| 33 | `instance` | [pi.sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-sigmafinite.md) | 333 | `declaration-track:bf44e3256560707132fb83e9a1aad6e8e8a0e782a007eb77542318729cb89efa` |
| 34 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/instance-source-edition-6.md) | 336 | `declaration-track:62815029e6d00120d3277635b03a9ef90a758e07173f593426c53c13ec097167` |
| 35 | `theorem` | [pi_of_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-of-empty.md) | 340 | `result-track:58500493f97ef156a00b477d10a0a25101d3a66489bfbf80860181c6b2c8e976` |
| 36 | `lemma` | [volume_pi_eq_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/volume-pi-eq-dirac.md) | 348 | `result-track:535c3519dbd21c02372714a39fff9e7024409954c32eddb495103606eb094a18` |
| 37 | `theorem` | [pi_empty_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-empty-univ.md) | 354 | `result-track:a70651e7677baeb52e960327608b536456fcc0d550de2e3d3ea211c61762aa35` |
| 38 | `theorem` | [pi_eval_preimage_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-eval-preimage-null.md) | 359 | `result-track:6f321ddfb6e78bc2ee984ddba105642016012ee5f2b1bfb21573a57f2432fa2d` |
| 39 | `theorem` | [quasiMeasurePreserving_eval](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/quasimeasurepreserving-eval.md) | 370 | `result-track:b4a4dfe6a8274ba7082a683522efedc9ff82c2b5af23aceb672a5c3b950baf67` |
| 40 | `lemma` | [pi_map_eval](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-map-eval.md) | 375 | `result-track:f566b70639c78e03a31bd8a731ce8527e69f00c026d0e8b1433bdbdda680a612` |
| 41 | `lemma` | [pi_map_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-map-pi.md) | 385 | `result-track:8136f04424ba2658ea008afdf3a2d2ebd3957a2e6173de75a522be9ff79054fc` |
| 42 | `lemma` | [_root_.MeasureTheory.measurePreserving_eval](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/root-measuretheory-measurepreserving-eval.md) | 401 | `result-track:006928c5e8ebc3a73883c1cc405b2a05037a7118d617b6b9269b002ca9ffe49b` |
| 43 | `theorem` | [pi_hyperplane](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-hyperplane.md) | 408 | `result-track:2009da52bbbeb68e139f0750b997c0efef4d2df042d4cdaadbab6b4b95ac4274` |
| 44 | `theorem` | [ae_eval_ne](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/ae-eval-ne.md) | 412 | `result-track:e2cf2d8f1c117a62ce43a66727353a2558570a05a2f49c3732b8da3aced8e734` |
| 45 | `theorem` | [restrict_pi_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/restrict-pi-pi.md) | 416 | `result-track:9d4b41500ad3048c48c6118bd5c445a92a315f800eaba3c28788fbee468a8093` |
| 46 | `theorem` | [tendsto_eval_ae_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/tendsto-eval-ae-ae.md) | 424 | `result-track:f817259048e18e71acbc6b2f846ffc7d072b1ae70e217f9bff91e905e93c417f` |
| 47 | `theorem` | [ae_pi_le_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/ae-pi-le-pi.md) | 427 | `result-track:01a46dbf1983b8e7966ad47a78d8bfd929a75b3fcab44c4121c2daea63b47bed` |
| 48 | `theorem` | [ae_eq_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/ae-eq-pi.md) | 430 | `result-track:a9f769fa71624b72ccfcfd5b268cfcdf6e5ee8281edd998d028f573caafd099f` |
| 49 | `theorem` | [ae_le_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/ae-le-pi.md) | 434 | `result-track:d6b72c3489482172e5aa885f08058645de566d68d576b55fdbbe2287986b32e8` |
| 50 | `theorem` | [ae_le_set_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/ae-le-set-pi.md) | 439 | `result-track:2fc1939901204b6a206d69ff26efaccc74381688332b607d00d9e7baad9ba50e` |
| 51 | `theorem` | [ae_eq_set_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/ae-eq-set-pi.md) | 444 | `result-track:f6b6a1cf161ee750891d79c561aa78a5a1774bd6c081c1fd3b0d25ff26741598` |
| 52 | `lemma` | [pi_map_piOptionEquivProd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-map-pioptionequivprod.md) | 448 | `result-track:fe8da46e3cf31f672dac3813ffb49184f62d919d54f4e3fd036062b0eac78157` |
| 53 | `theorem` | [pi_Iio_ae_eq_pi_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-iio-ae-eq-pi-iic.md) | 468 | `result-track:abd719845d38bc419ee791662dcc277f56af62d497ea1a75b170f8bf47f4274d` |
| 54 | `theorem` | [pi_Ioi_ae_eq_pi_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-ioi-ae-eq-pi-ici.md) | 472 | `result-track:9e0d7f10afb7e16d6bccc03fb952f72f58e0d03ff298e8a1d5d72d8f2af2f561` |
| 55 | `theorem` | [univ_pi_Iio_ae_eq_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/univ-pi-iio-ae-eq-iic.md) | 476 | `result-track:96ec00d684f87e623b80519fffaef25e4a909992127034db5866a34122cd74ea` |
| 56 | `theorem` | [univ_pi_Ioi_ae_eq_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/univ-pi-ioi-ae-eq-ici.md) | 480 | `result-track:63cb34c8486f9079ccb4b8d2b62db2e88cd80a0f4bc4ca9c7299e99a05016997` |
| 57 | `theorem` | [pi_Ioo_ae_eq_pi_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-ioo-ae-eq-pi-icc.md) | 484 | `result-track:a803acc939d899e508bf82aa42692a93a8cfef62f178057a98724b488121cb64` |
| 58 | `theorem` | [pi_Ioo_ae_eq_pi_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-ioo-ae-eq-pi-ioc.md) | 488 | `result-track:193bdfcb196e1948849d6e04ce51289c3cb3bc2848ef36ed6fd7a6455c8b8a0f` |
| 59 | `theorem` | [univ_pi_Ioo_ae_eq_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/univ-pi-ioo-ae-eq-icc.md) | 492 | `result-track:911a61b9f19a926ad5ea242c367bec6ff8469315bdfd632191c9dfdb065828ba` |
| 60 | `theorem` | [pi_Ioc_ae_eq_pi_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-ioc-ae-eq-pi-icc.md) | 496 | `result-track:ae871a2c56d4eb15e71d9ad85e5233fd62ee3189d109b06cd501b9d9f6506e41` |
| 61 | `theorem` | [univ_pi_Ioc_ae_eq_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/univ-pi-ioc-ae-eq-icc.md) | 500 | `result-track:e68e1fd8f9256731abdf9a0444f80f8906b49503d5527cb5b8cf2e4a506cfd05` |
| 62 | `theorem` | [pi_Ico_ae_eq_pi_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-ico-ae-eq-pi-icc.md) | 504 | `result-track:b23c49b26fa1849b87aceba2946ee01ce6379aba17c099e4f8990fd850c2f705` |
| 63 | `theorem` | [univ_pi_Ico_ae_eq_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/univ-pi-ico-ae-eq-icc.md) | 508 | `result-track:a613b07d7256f4a0297ca419811121cc79ff70069ec6cf3a3c1d302d0eb6864c` |
| 64 | `theorem` | [pi_nullSingletonClass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-nullsingletonclass-source-edition-2.md) | 517 | `result-track:f1b8de53735cd524a0675d7d2099dc677b43048350b05b7b9728dab320592768` |
| 65 | `instance` | [pi_nullSingletonClass'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-nullsingletonclass.md) | 524 | `declaration-track:30728a1f0e14d55646bf3eaab25de4023cb66b548097d07d3ca3006fb8bf7527` |
| 66 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/instance-source-edition-10.md) | 531 | `declaration-track:eeffc18d2cd6693768b2aa617140bfa08dc90bf382b947377485187c7673619f` |
| 67 | `instance` | [pi.isLocallyFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-islocallyfinitemeasure.md) | 536 | `declaration-track:ff5b6ed412c0f4075f7735fb8a6075a0997e2da87e0f5e99306234cdf14f463f` |
| 68 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/instance-source-edition-5.md) | 545 | `declaration-track:566b3004756930abdfcb5f7600d7bf8ed721991635f28e3c8c57761255b68d09` |
| 69 | `instance` | [_root_.IsUnifLocDoublingMeasure.pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/root-isuniflocdoublingmeasure-pi.md) | 551 | `declaration-track:e647d59280a9b825a04ac0a2141c81b2f76ddf844a729250e811b09ef07914ed` |
| 70 | `instance` | [IsUnifLocDoublingMeasure.volume_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/isuniflocdoublingmeasure-volume-pi.md) | 562 | `declaration-track:3796a24068eab63c6d5400b941a0d58b588ca9492973375ec89cc1e4689e9b19` |
| 71 | `instance` | [pi.isMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/ismulleftinvariant.md) | 572 | `declaration-track:c50e0804d931cb6b5db61a4c6706f2cd783c54339c8d7f8d3312944d9294410e` |
| 72 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/instance-source-edition-8.md) | 580 | `declaration-track:8d493a27f7716ab245691774ff5d2803d5a263765417a3cf3d11daefb8e459b6` |
| 73 | `instance` | [pi.isMulRightInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/ismulrightinvariant.md) | 586 | `declaration-track:bdee3799b81fa7e412fb511fb9950e3c4a29038658fdc8e91521d96c57545265` |
| 74 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/instance-source-edition-9.md) | 594 | `declaration-track:92d92965128575404718bdbedd75324264235cd5dfa87b501ed04491c2f0d41d` |
| 75 | `instance` | [pi.isInvInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/isinvinvariant.md) | 601 | `declaration-track:7ed1a28ea68f4174e676d23fddb08a39db09da007c365e251561f89c447d2b96` |
| 76 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/instance-source-edition-2.md) | 609 | `declaration-track:20f7d21d5195d2ac58c50708a2d343e62c1b63756453b872ceb9f53a287d682a` |
| 77 | `instance` | [pi.isOpenPosMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-isopenposmeasure.md) | 614 | `declaration-track:3c723e7609b62add97cba2e35c1cdbcd686d6f0c824d116cc7090eb61958cccb` |
| 78 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/instance-source-edition-3.md) | 625 | `declaration-track:278f8468200c424ebbbff732020963f5c373c07396cd056e01632df2f69559e7` |
| 79 | `instance` | [pi.isFiniteMeasureOnCompacts](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-isfinitemeasureoncompacts.md) | 630 | `declaration-track:9c232d4a7786e9d6b732a6cf54989e5986d6405e0489cac629e06e27e29a7c42` |
| 80 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/instance-source-edition-11.md) | 641 | `declaration-track:fb8cb0a4651108488d2c66534848ca94347a85ff1d5d88418ab2eb699419f02c` |
| 81 | `instance` | [pi.isHaarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/pi-ishaarmeasure.md) | 648 | `declaration-track:0297c57e2a1e139d9a5625e8b111694a98233d8a73eabc59d5c064c4ec3e7e1a` |
| 82 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/instance.md) | 652 | `declaration-track:1c3e5dfb2cf9b312d1c83e9aacd5a876b494059f9e98cc28e2258fe8c8cfd998` |
| 83 | `theorem` | [volume_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/volume-pi.md) | 659 | `result-track:b5d27e22722d3bf3824596d5d1ec8f153e7c1b9eb34bb1cd2f55d0efe6d4926b` |
| 84 | `theorem` | [volume_pi_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/volume-pi-pi.md) | 663 | `result-track:e59b70f9f48d229b4c8ec4f54d8f24ddb30331b07c553f4a29cb96a9d70396ab` |
| 85 | `theorem` | [volume_pi_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/volume-pi-ball.md) | 667 | `result-track:27ec615065d1bf463652b5abb9e5db28858fc6fa67a71ed87ea6b6943f4d05a6` |
| 86 | `theorem` | [volume_pi_closedBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/volume-pi-closedball.md) | 672 | `result-track:2f3f4125c2c4e6190f626b40a9a43b2b1dd79eadc5d911d7a37236ff976ef4d1` |
| 87 | `instance` | [Pi.isMulLeftInvariant_volume](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/ismulleftinvariant-volume.md) | 684 | `declaration-track:49bae083e7b36dafd86ad5139960bb153032d6a9d45892619dff8b3ccaa9a773` |
| 88 | `instance` | [Pi.isInvInvariant_volume](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/isinvinvariant-volume.md) | 694 | `declaration-track:988ac8d7e0831beb5e16cade69f8a22e6224eaba1b0ee708adfa0a2f126e0a2e` |
| 89 | `theorem` | [measurePreserving_piEquivPiSubtypeProd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/measurepreserving-piequivpisubtypeprod.md) | 714 | `result-track:0e7fc24e2e586ec9f64bfab06c7d0b0aad94d15b2811647a286c7d05863a527a` |
| 90 | `theorem` | [volume_preserving_piEquivPiSubtypeProd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/volume-preserving-piequivpisubtypeprod.md) | 726 | `result-track:f6dd810e7dcd71ee0b630bd46f6abf9e6aef9b6ba7a215595440a78aa13afb58` |
| 91 | `theorem` | [measurePreserving_piCongrLeft](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/measurepreserving-picongrleft.md) | 731 | `result-track:41253fddacf8590b376ca2c9275576033423295c1f735493e51d2d966e05186d` |
| 92 | `theorem` | [volume_measurePreserving_piCongrLeft](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/volume-measurepreserving-picongrleft.md) | 740 | `result-track:2ba414e9cbe81dd9bc396ca10e7ed55fe24c692a419500e45d229444d9a966d5` |
| 93 | `lemma` | [Measure.pi_map_piCongrLeft](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/measure-pi-map-picongrleft.md) | 745 | `result-track:984f2d75a15c4bf750d065f0f3f2b6a717fd9e93d95c57d892c8a283df1cc4c4` |
| 94 | `theorem` | [measurePreserving_arrowProdEquivProdArrow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/measurepreserving-arrowprodequivprodarrow.md) | 751 | `result-track:8c5ea8c985d5a8ecd5a495660dbc485bef237d2b9715ac99a0e044e847f216fd` |
| 95 | `theorem` | [volume_measurePreserving_arrowProdEquivProdArrow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/volume-measurepreserving-arrowprodequivprodarrow.md) | 773 | `result-track:479613e35cc376d050ef6f87bf700c45feb6d175a4cf19132e17102d0f332a56` |
| 96 | `theorem` | [measurePreserving_sumPiEquivProdPi_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/measurepreserving-sumpiequivprodpi-symm.md) | 779 | `result-track:d3316717b034c287cef3fd7c4f26c4544d44679b85ce80047fb87f2c53472e95` |
| 97 | `theorem` | [volume_measurePreserving_sumPiEquivProdPi_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/volume-measurepreserving-sumpiequivprodpi-symm.md) | 790 | `result-track:cc94cc0c74ed34003b7a080cc0d81f169b56a5be9405b2d222e45ded29fa4bae` |
| 98 | `theorem` | [measurePreserving_sumPiEquivProdPi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/measurepreserving-sumpiequivprodpi.md) | 795 | `result-track:caad6430ade774d372d5ec10ab8e3fed2771f5b1fdbc0b3e801def5f637dc9a5` |
| 99 | `theorem` | [volume_measurePreserving_sumPiEquivProdPi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/volume-measurepreserving-sumpiequivprodpi.md) | 801 | `result-track:a783f74c855c22de2698bc9aa92140de084953233d5d8f7d74c8bf54ab7b979f` |
| 100 | `theorem` | [measurePreserving_piFinSuccAbove](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/measurepreserving-pifinsuccabove.md) | 806 | `result-track:c487a8ee90cbf3cbee607576ac2f2898811220f42ac043e0049b792288dcdf26` |
| 101 | `theorem` | [volume_preserving_piFinSuccAbove](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/volume-preserving-pifinsuccabove.md) | 818 | `result-track:ca0f810c232158b0f110de6e07368d8d5c98c657fc3cb88808ab229c273d49fd` |
| 102 | `theorem` | [measurePreserving_piUnique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/measurepreserving-piunique.md) | 823 | `result-track:daab6de0e878b6d1d98de4fbf5fc374d54d17f229ece027fd29cbb3786e7fb6f` |
| 103 | `theorem` | [volume_preserving_piUnique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/volume-preserving-piunique.md) | 836 | `result-track:2d59e4198cda75966da64a95e1738045ceb06304743846949cce909322986645` |
| 104 | `theorem` | [measurePreserving_funUnique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/measurepreserving-fununique.md) | 840 | `result-track:3dcb301aa4ad1be542223430a190e80a8825363024c2594106c3d1aa94a08413` |
| 105 | `theorem` | [volume_preserving_funUnique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/volume-preserving-fununique.md) | 845 | `result-track:94e9c59967317b6a360aa222e67068b155ec4b0c835072997089c212be85ffa5` |
| 106 | `theorem` | [measurePreserving_piFinTwo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/measurepreserving-pifintwo.md) | 849 | `result-track:02a562dce1f09752c6c626eac8ff46c82610ee328f52fff5995d5daa76e8a8bc` |
| 107 | `theorem` | [volume_preserving_piFinTwo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/volume-preserving-pifintwo.md) | 857 | `result-track:6d7b1600b9a5e65a3d7a2b0d83e79f56460158dd0a3e80d0127f84b9ec66baaf` |
| 108 | `theorem` | [measurePreserving_finTwoArrow_vec](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/measurepreserving-fintwoarrow-vec.md) | 862 | `result-track:5438ecc6c067df71d61d78b6c8b49005d8f1f32d5daffca13e838ff3a37d063e` |
| 109 | `theorem` | [measurePreserving_finTwoArrow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/measurepreserving-fintwoarrow.md) | 868 | `result-track:7961fa3bef34361c5a326e2fac48298c65b12ce973b774113bee8db77136063f` |
| 110 | `theorem` | [volume_preserving_finTwoArrow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/volume-preserving-fintwoarrow.md) | 874 | `result-track:0326ec55a6bc20960a8b75f92e017b086dd0904dfb964e9cf038abd64b8825d6` |
| 111 | `theorem` | [measurePreserving_pi_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/measurepreserving-pi-empty.md) | 879 | `result-track:410d011f657f778a842620166aefdfbb75598b42f58e83ece588c61f989cd308` |
| 112 | `theorem` | [volume_preserving_pi_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/volume-preserving-pi-empty.md) | 887 | `result-track:f4a9e5392dbc7068d76c1afad12756135aa910d3607319a2fe37bf2ab4244bbf` |
| 113 | `theorem` | [measurePreserving_piFinsetUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/measurepreserving-pifinsetunion.md) | 892 | `result-track:27166ea503cde39fea576abccc278281c12674413a0d12e7e464b2248a92637d` |
| 114 | `theorem` | [volume_preserving_piFinsetUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/volume-preserving-pifinsetunion.md) | 902 | `result-track:b80b233d0fd806b2663fa64742ea0853af51d93d9063ecf390f210e81a9de72a` |
| 115 | `theorem` | [measurePreserving_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/measurepreserving-pi.md) | 907 | `result-track:34f6261c04a5999348858df8f547a3016cf5592ee4065de87ed07506c9c29f1c` |
| 116 | `theorem` | [volume_preserving_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/volume-preserving-pi.md) | 920 | `result-track:920225e59f911390f30825c459c218fffc6b15aa376f9a5b992659f5dee43790` |
| 117 | `theorem` | [measurePreserving_arrowCongr'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/measurepreserving-arrowcongr.md) | 928 | `result-track:84f25c4d55b2586ed2180caf5e30233e306e6e4e26e9270fea8a1ed52fb8f9db` |
| 118 | `theorem` | [volume_preserving_arrowCongr'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/declarations/volume-preserving-arrowcongr.md) | 943 | `result-track:921a92093f1fed010982c2791629dcb73202849ae5cd19d1b82e4445921b238c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a032665f7cfeba28628f36b40e360ae3e0328517b5741cec17c0d4d32b09fdf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Pi/Variantc42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Pi/Variantc42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
