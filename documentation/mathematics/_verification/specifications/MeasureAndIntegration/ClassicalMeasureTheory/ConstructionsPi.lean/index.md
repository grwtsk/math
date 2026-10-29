# Verification target: Constructions Pi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9faf376e19ecd46825d0a28d6b48596f21c5433d",
  "lexical_observation_count": 110,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Pi/Varianta46469751958b46f3f2de1e69f8fd59e8c729910bb1e449dcda68e0b99a41609.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9faf376e19ecd46825d0a28d6b48596f21c5433d`.

Source path: `GRWTSK/Analysis/MeasureTheory/Pi/Varianta46469751958b46f3f2de1e69f8fd59e8c729910bb1e449dcda68e0b99a41609.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Pi/Varianta46469751958b46f3f2de1e69f8fd59e8c729910bb1e449dcda68e0b99a41609.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Encodable.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Measure` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.Pi` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Prod` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Constructions` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piPremeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pipremeasure.md) | 74 | `declaration-track:6ef97dadc6dfdb97460d69e9e346fcc37018c3d4e1be5e8e6f3c9217f0a7bbf6` |
| 2 | `theorem` | [piPremeasure_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pipremeasure-pi-source-edition-2.md) | 77 | `result-track:265fa918f459ddc9861183f311380c960876eb6b64fcb4e99f1a79bb046658ea` |
| 3 | `theorem` | [piPremeasure_pi'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pipremeasure-pi.md) | 80 | `result-track:024d9ef2efb5c99b928da8fe9fe6c7716e21aa48038acefe748a25a0f1030d0b` |
| 4 | `theorem` | [piPremeasure_pi_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pipremeasure-pi-mono.md) | 90 | `result-track:116b6119eeeff157e682576efdb3c0de394fa3ed5907964c82247315aefb8105` |
| 5 | `theorem` | [piPremeasure_pi_eval](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pipremeasure-pi-eval.md) | 94 | `result-track:8b240233db38806702f83be67758ff5566913306af03d767d3f043010513ba23` |
| 6 | `def` | [pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi.md) | 104 | `declaration-track:1e47937197f7ac0377aee7120ac28981a035d17be8136b261315f67737255c80` |
| 7 | `theorem` | [pi_pi_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-pi-le.md) | 107 | `result-track:68158a08c134193af063e54f09c3c71d72539bc48504a84e16137aa00862cb38` |
| 8 | `theorem` | [le_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/le-pi.md) | 113 | `result-track:37baac6235688644c91291fc29a80908149b537c7c1df00e3489105212156ba6` |
| 9 | `def` | [tprod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/tprod.md) | 135 | `declaration-track:53c19b91fe55c46d42b84c088a07df4c4d81c43d1a18b32ca62e35eebf02e57b` |
| 10 | `theorem` | [tprod_nil](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/tprod-nil.md) | 141 | `result-track:b43c026c29d743aa8103e942d21a6161ea5ab42f2d92fd495ce686839786ed27` |
| 11 | `theorem` | [tprod_cons](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/tprod-cons.md) | 145 | `result-track:1d9b1e7810df66b79a3c25b24e6409a204dbeb0c1d10838cb453ea0e0a3bb64c` |
| 12 | `instance` | [sigmaFinite_tprod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/sigmafinite-tprod.md) | 149 | `declaration-track:c9d6c249a4a5859622fd3665c466872724ae10f283d52427093f34ea08a1588b` |
| 13 | `theorem` | [tprod_tprod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/tprod-tprod.md) | 155 | `result-track:faba28862447c9b56273cb7231f57656ee02bd2b1ce3af3532d53fa37069a3bb` |
| 14 | `def` | [pi'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-source-edition-2.md) | 177 | `declaration-track:6091f306a5fb71eb950bc17d9139fa09314b51f6015da864ea8738d76f91e4cb` |
| 15 | `theorem` | [pi'_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-pi.md) | 180 | `result-track:5222ab02a8f7ab5d86d6fc8c4b0488c2c255414c55a2f87ed4e32aa119e8bb90` |
| 16 | `theorem` | [pi_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-caratheodory.md) | 191 | `result-track:29e9a4d48ff8f8924db4c9871506b1c5cfd9d696f923500df0c7b7555aed0049` |
| 17 | `instance` | [_root_.MeasureTheory.MeasureSpace.pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/root-measuretheory-measurespace-pi.md) | 210 | `declaration-track:aad292aa937feeddd590044599a1d7826a4f611725bfe51aa1ce15e4fc3b0b95` |
| 18 | `theorem` | [pi_pi_aux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-pi-aux.md) | 214 | `result-track:4f2e9df6b9c1b4eb3d6b7746432dbd9a60ee4e4095ce4422c2498e31ecfc0872` |
| 19 | `def` | [FiniteSpanningSetsIn.pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/finitespanningsetsin-pi.md) | 231 | `declaration-track:42bc7b7b245cf1f94a5c98e6a4c96c25873fa34e8132084d3404f33775808e54` |
| 20 | `theorem` | [pi_eq_generateFrom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-eq-generatefrom.md) | 258 | `result-track:51038fffa546ac59563785e7d7021e644c2aff2938186bad6cc7bd84ceef1dff` |
| 21 | `theorem` | [pi_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-eq.md) | 277 | `result-track:c97ba946840ebff6aa5d487dd0c868ca5151205b8ed049abda0271033f954570` |
| 22 | `theorem` | [pi'_eq_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-eq-pi.md) | 285 | `result-track:5218845902a8c9e6f0fc88482ef4dbef959f9a65c1ee436976aeaaa8fa794ece` |
| 23 | `theorem` | [pi_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-pi-source-edition-2.md) | 289 | `result-track:fcccb39f4dc83b3b52d83227147e31e4d925e84c07c37cff1827bbaa40c03e1e` |
| 24 | `theorem` | [pi_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-univ.md) | 293 | `result-track:843d84c4ab4c5fe8a95b33e9ffbbdfa2138b27f88bfb2c1ee39283e237018011` |
| 25 | `theorem` | [pi_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-ball.md) | 295 | `result-track:d500417951cafd68c94319f88d0ff6ca7fca342d536e67bf414c0eaf9dfad4e8` |
| 26 | `theorem` | [pi_closedBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-closedball.md) | 298 | `result-track:56bd55bad04c36ef5b9e1a0091f24d10450491204f34213439e2ae240e7b55fe` |
| 27 | `instance` | [pi.sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-sigmafinite.md) | 302 | `declaration-track:24b07a39ee77c1beb1f8ae7e3cbdf7e06f3d158b5dbee9c17f8261328e93d3fd` |
| 28 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/instance-source-edition-4.md) | 305 | `declaration-track:57eb9711a483bddcdb4c0eb54b8ca708521b6cef3d9137074703bbd450cdda06` |
| 29 | `instance` | [pi.instIsFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-instisfinitemeasure.md) | 309 | `declaration-track:81eae80964618575ab7e505768740747b575c6b7e9d9c77bec418716a6f179f4` |
| 30 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/instance-source-edition-9.md) | 313 | `declaration-track:ca69659dfe70171aa32a5fcd212955bfb80500eff1a949f62a397ee5169ccefd` |
| 31 | `instance` | [pi.instIsProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-instisprobabilitymeasure.md) | 317 | `declaration-track:776bb89be4102953aed0fd74706fbfd4cc9ce3af4177f0968412689383a7b008` |
| 32 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/instance-source-edition-7.md) | 321 | `declaration-track:7f7f347535a06f05a256a03cf7ccae4395b9c3d23b94820b8a31a335cda4f444` |
| 33 | `theorem` | [pi_of_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-of-empty.md) | 326 | `result-track:39cf32a5c764990716b6760a0088d8f22cf0451e28ed33d8cb3cb3800ac6148a` |
| 34 | `lemma` | [volume_pi_eq_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/volume-pi-eq-dirac.md) | 334 | `result-track:38f0a6b735343a1ae25dc1a3c365380fc204c0e20950c3990df3b16ddd925399` |
| 35 | `theorem` | [pi_empty_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-empty-univ.md) | 340 | `result-track:f8bab49c3accd9e7983e1a032c496d02b69ee2bcdc19d327b72b58e43b24d31d` |
| 36 | `theorem` | [pi_eval_preimage_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-eval-preimage-null.md) | 345 | `result-track:aa15f3d0e513992d9557fe49cb8a2d341dfb6e7c6d430b9280aca01f797cb2eb` |
| 37 | `theorem` | [pi_hyperplane](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-hyperplane.md) | 356 | `result-track:5caff5e3b8a84c84fd872dba8bf6e8139ad6d5b2ce7302b21115265e5f1dcead` |
| 38 | `theorem` | [ae_eval_ne](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/ae-eval-ne.md) | 360 | `result-track:461bb1cbc4bba5502b3c5fdf29e14c7f6556d74efbf9634c4faa73a23c25e852` |
| 39 | `theorem` | [restrict_pi_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/restrict-pi-pi.md) | 363 | `result-track:c05054d6bf49968ea1ec536e5bcc844faa25da1bf2e66c48fc5b41613eefa811` |
| 40 | `theorem` | [tendsto_eval_ae_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/tendsto-eval-ae-ae.md) | 371 | `result-track:a300284d7097e2aa367f3c4813c3f589689cc45abf0a104a3f2295825a399ae8` |
| 41 | `theorem` | [ae_pi_le_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/ae-pi-le-pi.md) | 374 | `result-track:81bf3fd6c3c6106b6b19640a268abe5ca1c5c73e1358ee1f5f78cb7b4117a4bb` |
| 42 | `theorem` | [ae_eq_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/ae-eq-pi.md) | 377 | `result-track:0d797d363a6e7e1b56f5bfc874dbfd9787d7133542a59d08ea7dd31573462cd5` |
| 43 | `theorem` | [ae_le_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/ae-le-pi.md) | 381 | `result-track:228ea208bc98328e6105b62fb7f3b06f3d82bc653978d1508e5d4bb6061d27aa` |
| 44 | `theorem` | [ae_le_set_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/ae-le-set-pi.md) | 386 | `result-track:59d31fb458080d242c843f4a854597a7e9f65e9c50d7472703d0ba3e96ecbc22` |
| 45 | `theorem` | [ae_eq_set_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/ae-eq-set-pi.md) | 391 | `result-track:83d31b26440abfddb4464e1d196c196a7cb362cb251cc8614ba77e21aaaf8cd4` |
| 46 | `lemma` | [pi_map_piCongrLeft](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-map-picongrleft.md) | 395 | `result-track:7bc95dbd2e8d2ea32563ed7c4eda87d3b1afbdd28b2d3d55cad986e34bc8c20a` |
| 47 | `lemma` | [pi_map_piOptionEquivProd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-map-pioptionequivprod.md) | 417 | `result-track:ac0a16c07989e2d51e68a0cf5d60cc811facf908c22e0246c4e480ce24b313c3` |
| 48 | `theorem` | [pi_Iio_ae_eq_pi_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-iio-ae-eq-pi-iic.md) | 437 | `result-track:aef0cb0e34f2275935758982fd379bb3dca8b4776010418c924815939b375ca8` |
| 49 | `theorem` | [pi_Ioi_ae_eq_pi_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-ioi-ae-eq-pi-ici.md) | 441 | `result-track:26ae179b708f58b08e4acdaa0b05a87f830471ab23436c28be68b7ed1883dcb7` |
| 50 | `theorem` | [univ_pi_Iio_ae_eq_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/univ-pi-iio-ae-eq-iic.md) | 445 | `result-track:3b14db69e14b6a3d60b3f080d80e5698174695d59d54a78584b5c22201592652` |
| 51 | `theorem` | [univ_pi_Ioi_ae_eq_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/univ-pi-ioi-ae-eq-ici.md) | 449 | `result-track:a8e36c5054e5bbcc88460db1d420344c0e8330f4f56ccf0678cfee9dc56d0fa8` |
| 52 | `theorem` | [pi_Ioo_ae_eq_pi_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-ioo-ae-eq-pi-icc.md) | 453 | `result-track:a63fe4e4d6518e71241b99c84fc49c123805a617c687d2c3dcf7c216c551a55b` |
| 53 | `theorem` | [pi_Ioo_ae_eq_pi_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-ioo-ae-eq-pi-ioc.md) | 457 | `result-track:579c5458bfe0c29dce378d957a2c289f6cbe184da1aafb89c759268382c9c718` |
| 54 | `theorem` | [univ_pi_Ioo_ae_eq_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/univ-pi-ioo-ae-eq-icc.md) | 461 | `result-track:94bf25b8bb09ebf77ee415c22f51c102604c8e9f6875e537c91ef2432889eca5` |
| 55 | `theorem` | [pi_Ioc_ae_eq_pi_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-ioc-ae-eq-pi-icc.md) | 465 | `result-track:284624aa10ca5c30977605f36d33aaa91812203cb0b478b209b4042dae716bd5` |
| 56 | `theorem` | [univ_pi_Ioc_ae_eq_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/univ-pi-ioc-ae-eq-icc.md) | 469 | `result-track:4003ce746a5ee51c10217e2138368884da349b00e8ed16d083cdbf3166c1309e` |
| 57 | `theorem` | [pi_Ico_ae_eq_pi_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-ico-ae-eq-pi-icc.md) | 473 | `result-track:c5fa8a611b6ad9ea42b732245eeb7729a886e87d502c4b13680f28e998a2cccb` |
| 58 | `theorem` | [univ_pi_Ico_ae_eq_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/univ-pi-ico-ae-eq-icc.md) | 477 | `result-track:8f90dfb42222258b8b2b6d3a80904a5ee752097e1dd60abe1469c18730c3c935` |
| 59 | `theorem` | [pi_noAtoms](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-noatoms.md) | 485 | `result-track:a1c79a3f87c5173eaed6d1930a4e64adbbc10cfe595124d1ebcf1ea656bf043c` |
| 60 | `instance` | [pi_noAtoms'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-noatoms-source-edition-2.md) | 488 | `declaration-track:e880178ad20de8ff271f44388836f4e80277d0df608764bba7a4284ae9490dca` |
| 61 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/instance-source-edition-8.md) | 491 | `declaration-track:840ba5c576c092ad9b64dfaae90984398df0be58c30cc2bf2721b3cc00451a08` |
| 62 | `instance` | [pi.isLocallyFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-islocallyfinitemeasure.md) | 496 | `declaration-track:a677c7d1b196b7e863f0056f90981cde9008fa15230d79ae3bc12506c23046cb` |
| 63 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/instance-source-edition-11.md) | 505 | `declaration-track:e737663e0e1e13973c92326033fcc66c4f5e38643fbfe716ac3364a55bf93e9b` |
| 64 | `instance` | [pi.isMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/ismulleftinvariant.md) | 514 | `declaration-track:703f9bbe3448c4982e33b992d2da8fc3db22e15ff729183a56efe737fec07de8` |
| 65 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/instance-source-edition-5.md) | 522 | `declaration-track:631fe7a6b850938c047aaaba74713982a3ef1cdd73092f87960e59ca62ae4b47` |
| 66 | `instance` | [pi.isMulRightInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/ismulrightinvariant.md) | 528 | `declaration-track:323b24735f6b987864a37ab913d6c5dd36dfe06fa7bcb57cdd039a62a29944a4` |
| 67 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/instance.md) | 536 | `declaration-track:085e36d6f471b356ff5fc941ca90fb17afb988d1a9c013e08d53bd41402e89b1` |
| 68 | `instance` | [pi.isInvInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/isinvinvariant.md) | 543 | `declaration-track:aa6b96af981c7a1f4cedbf7e9305fee077ea9d504ea932af678f27e9324fc790` |
| 69 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/instance-source-edition-3.md) | 551 | `declaration-track:490aa4ab4326f4de0bd3c1dcdb13b03ed55ac35461813d5c5018429149ecb55e` |
| 70 | `instance` | [pi.isOpenPosMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-isopenposmeasure.md) | 556 | `declaration-track:aa23290965cca6b52aacaf2566245936bdbd6fbc239f0038bd5b003ec1472d40` |
| 71 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/instance-source-edition-2.md) | 567 | `declaration-track:2a7ccb7f0cf5c446d4770fe7bd29e1eea03922ee7499110289a36f1a26dd0cbc` |
| 72 | `instance` | [pi.isFiniteMeasureOnCompacts](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-isfinitemeasureoncompacts.md) | 572 | `declaration-track:dfb8de1f3d610430d163c9f0f9b95727ab4afb772c3ad54870d9454d5f3889af` |
| 73 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/instance-source-edition-6.md) | 583 | `declaration-track:7c3d5a1e8af5d6e5eef79aeb2cab8998d0fd1c9c72f2916d94897ce1b02b5078` |
| 74 | `instance` | [pi.isHaarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/pi-ishaarmeasure.md) | 590 | `declaration-track:30cc8a0cfe7b8c5c13ff7b73cf5b90d6203ce25226dcf3da0d823936739cbbfe` |
| 75 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/instance-source-edition-10.md) | 594 | `declaration-track:ca7c0373693841c8aa913087e8784dd900b8e1be7392ed29bf52756483553195` |
| 76 | `theorem` | [volume_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/volume-pi.md) | 601 | `result-track:4100b96e2e628a9f0cb01ecdfa533a62fc193b18839e42b27bf1ab6fae534fb0` |
| 77 | `theorem` | [volume_pi_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/volume-pi-pi.md) | 605 | `result-track:ec1eaa638ac39846cc50eb18baef265427a9089ce8a2e5adba808ba20e74fc3d` |
| 78 | `theorem` | [volume_pi_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/volume-pi-ball.md) | 609 | `result-track:a3c736c65a2ff636912e7d210dce7a71fde7b739a9a81a18106d4c8ca39aac52` |
| 79 | `theorem` | [volume_pi_closedBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/volume-pi-closedball.md) | 614 | `result-track:0afc133ac39dc42746b1d6c4e8c8348eb381caadef62c2af43bce0ee2e5ec6b5` |
| 80 | `instance` | [Pi.isMulLeftInvariant_volume](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/ismulleftinvariant-volume.md) | 626 | `declaration-track:bb4716ac27ace6144d79ca2ffba62c3ed46e7ab6a98e781b73cf3b2d04ab440d` |
| 81 | `instance` | [Pi.isInvInvariant_volume](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/isinvinvariant-volume.md) | 636 | `declaration-track:6bb61afb59c3be14afd91baba3417284c6b6445b1f0f370119390bc822f1f1b6` |
| 82 | `theorem` | [measurePreserving_piEquivPiSubtypeProd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/measurepreserving-piequivpisubtypeprod.md) | 656 | `result-track:b20b11997b1ebc72dc84cb59626fde17940f84f03cde0b0a38ffc50b100bd83d` |
| 83 | `theorem` | [volume_preserving_piEquivPiSubtypeProd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/volume-preserving-piequivpisubtypeprod.md) | 668 | `result-track:8f4c5f14ecb3da1c565f273d35888e310283fc1ecea21322c88c85c49cb76306` |
| 84 | `theorem` | [measurePreserving_piCongrLeft](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/measurepreserving-picongrleft.md) | 673 | `result-track:d5f900a80609513c24d35c3b0931bbb87f56c4242305b0f5710b64c8b6a7dff7` |
| 85 | `theorem` | [volume_measurePreserving_piCongrLeft](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/volume-measurepreserving-picongrleft.md) | 682 | `result-track:fd4baf3dd79450a46e7025e9ab5e68ec79f4ef27322c945528a4a5c793ca63b2` |
| 86 | `theorem` | [measurePreserving_arrowProdEquivProdArrow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/measurepreserving-arrowprodequivprodarrow.md) | 687 | `result-track:c0f0f14c616fb24a97ddcf33027fca172783cc077345e9cf00b36ea8bc5760c7` |
| 87 | `theorem` | [volume_measurePreserving_arrowProdEquivProdArrow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/volume-measurepreserving-arrowprodequivprodarrow.md) | 709 | `result-track:6fb17975a3261669650a85f39d4b6531fda2c9c4080bcc5c186efdac6cfbb456` |
| 88 | `theorem` | [measurePreserving_sumPiEquivProdPi_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/measurepreserving-sumpiequivprodpi-symm.md) | 715 | `result-track:11a6d22c1bd9dc0fddb981c041ad4ce1120f8528c34c2bdeafff8b9bc4f511e1` |
| 89 | `theorem` | [volume_measurePreserving_sumPiEquivProdPi_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/volume-measurepreserving-sumpiequivprodpi-symm.md) | 726 | `result-track:19a340876c7065b385b9c786435838b829f6f89ab5277a22872d680e6ec2da31` |
| 90 | `theorem` | [measurePreserving_sumPiEquivProdPi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/measurepreserving-sumpiequivprodpi.md) | 731 | `result-track:8b2ecf53cc1a3838405eac2ea765692d487ba3ced1623700a0961dd384e476f6` |
| 91 | `theorem` | [volume_measurePreserving_sumPiEquivProdPi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/volume-measurepreserving-sumpiequivprodpi.md) | 737 | `result-track:ade6e2ee05a69b680e897d2743644e8452046f99c12f66dea3c3e7ba9add2eef` |
| 92 | `theorem` | [measurePreserving_piFinSuccAbove](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/measurepreserving-pifinsuccabove.md) | 742 | `result-track:a67692412eaef366e39a4ae34f44d26518a835848e2b1d2ffa775be0db7eecc5` |
| 93 | `theorem` | [volume_preserving_piFinSuccAbove](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/volume-preserving-pifinsuccabove.md) | 754 | `result-track:aebd98880f617a5920946f12b38a3f6a13c31cecdfb97be4f1f9f413e893daef` |
| 94 | `theorem` | [measurePreserving_piUnique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/measurepreserving-piunique.md) | 759 | `result-track:727454a1237eb971f92a22980cde63033e28a2a5249974f7881c8f9932d7e3cd` |
| 95 | `theorem` | [volume_preserving_piUnique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/volume-preserving-piunique.md) | 772 | `result-track:c390d1094a2fae00f7b49a541055a8c44e9f629f4b8934a198f54fa716af0dcb` |
| 96 | `theorem` | [measurePreserving_funUnique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/measurepreserving-fununique.md) | 776 | `result-track:6cd0548d4901d7e19635fd32cbd0235656679f89c6343476830f6784a0a3a465` |
| 97 | `theorem` | [volume_preserving_funUnique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/volume-preserving-fununique.md) | 781 | `result-track:caeeaddcae39dc4ec808b4389a051b2e5b2ff05a19aaecf042cef9c27d774d2a` |
| 98 | `theorem` | [measurePreserving_piFinTwo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/measurepreserving-pifintwo.md) | 785 | `result-track:d105f54aacc23e2f225ce92db205c9ea67834e6fe4439abe3649153bfb4757c1` |
| 99 | `theorem` | [volume_preserving_piFinTwo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/volume-preserving-pifintwo.md) | 793 | `result-track:8fad0dfc7782f30b7ea6341b8c61e6e6d4b683040ccdc7f2a7ad3426898ab1bb` |
| 100 | `theorem` | [measurePreserving_finTwoArrow_vec](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/measurepreserving-fintwoarrow-vec.md) | 798 | `result-track:55f95921ad9711287e3c28d487ec7d41c71bc33abdf5473d0fe739a34fe0b07a` |
| 101 | `theorem` | [measurePreserving_finTwoArrow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/measurepreserving-fintwoarrow.md) | 804 | `result-track:387cd9224a0e346ce8ad04837622e9b94c4ed5db63981098810cf94ba5150a7f` |
| 102 | `theorem` | [volume_preserving_finTwoArrow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/volume-preserving-fintwoarrow.md) | 810 | `result-track:4e286043625be4cadefa58f34b900565d5a39cedad9b8d5d517dac047a3b3f1f` |
| 103 | `theorem` | [measurePreserving_pi_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/measurepreserving-pi-empty.md) | 815 | `result-track:07e1fe85756033e4452aed021e828c3ae07a6dddfcfdd1ba9d20bc7cee7d3d0b` |
| 104 | `theorem` | [volume_preserving_pi_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/volume-preserving-pi-empty.md) | 823 | `result-track:e406e615f9db7ba8990cfe13327c4bd7c8ae295ba471c0e848b2a5c1e5501041` |
| 105 | `theorem` | [measurePreserving_piFinsetUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/measurepreserving-pifinsetunion.md) | 828 | `result-track:49e246696ba8a6f36f8c83e20564f5414c95133373e3e203b04478838264b5c3` |
| 106 | `theorem` | [volume_preserving_piFinsetUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/volume-preserving-pifinsetunion.md) | 838 | `result-track:fca6a2e337c285ea41b5966280de73e2da9b92ab43c50ec96babaa2d25cce7f0` |
| 107 | `theorem` | [measurePreserving_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/measurepreserving-pi.md) | 843 | `result-track:3372ac32ef02d2f26bfa5856cbfbaced5f69d76e5513e5e5b5d7adeea31e33a7` |
| 108 | `theorem` | [volume_preserving_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/volume-preserving-pi.md) | 859 | `result-track:13811e4be2fd11c2e7ab6b5356c83a33278d57b7e186380274e2d0e478b4dc0a` |
| 109 | `theorem` | [measurePreserving_arrowCongr'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/measurepreserving-arrowcongr.md) | 867 | `result-track:e6806ab9393bd6f25bf7305f59a912550d4988cd947cf90bd51de8b70ec8ec4a` |
| 110 | `theorem` | [volume_preserving_arrowCongr'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPi.lean/declarations/volume-preserving-arrowcongr.md) | 882 | `result-track:24eae083c730f3343c570f033c81fdefbe57a4f1bde5704a38cde404a625347e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1479206dfcbf039461f115e773f8bbfba037ca5da2b54bba9e1edcbc018d7890 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Pi/Varianta46469751958b46f3f2de1e69f8fd59e8c729910bb1e449dcda68e0b99a41609.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Pi/Varianta46469751958b46f3f2de1e69f8fd59e8c729910bb1e449dcda68e0b99a41609.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
