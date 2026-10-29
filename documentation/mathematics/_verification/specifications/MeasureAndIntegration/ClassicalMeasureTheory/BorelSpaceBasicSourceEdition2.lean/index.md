# Verification target: Borel Space Basic Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b8a9a5f3732a4b4c1822eebb4543c9e50021073",
  "lexical_observation_count": 106,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta99336218abfe5694bd4d4191ce8144e024edb3dc946b27cac4251c79d8811e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b8a9a5f3732a4b4c1822eebb4543c9e50021073`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Varianta99336218abfe5694bd4d4191ce8144e024edb3dc946b27cac4251c79d8811e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Varianta99336218abfe5694bd4d4191ce8144e024edb3dc946b27cac4251c79d8811e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.Arithmetic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.GDelta.MetrizableSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.EReal.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Rat` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [borel](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/borel.md) | 48 | `declaration-track:ca45f8e0b9c4cc971b066f1cb6380ca088822a186f5457ee991cea8dda155614` |
| 2 | `theorem` | [borel_anti](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/borel-anti.md) | 51 | `result-track:5658ead82a5522244140abebc6be204ad1f565596d85f795cf5b55f37118026b` |
| 3 | `theorem` | [borel_eq_top_of_discrete](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/borel-eq-top-of-discrete.md) | 54 | `result-track:a8cf932fe90f469e589808a55a43b5012ddcb663aa265d2b62320aec7f8cb206` |
| 4 | `theorem` | [borel_eq_generateFrom_of_subbasis](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/borel-eq-generatefrom-of-subbasis.md) | 57 | `result-track:8863334a3b07b510796159ffe15fbe82fde15796480a437975a3b2b5a7b7231e` |
| 5 | `theorem` | [TopologicalSpace.IsTopologicalBasis.borel_eq_generateFrom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/topologicalspace-istopologicalbasis-borel-eq-generatefrom.md) | 73 | `result-track:598cf1f0e79cc6ccc6afbc30b25540007e7f22efbfce6fe0cf7f49c02bd3124f` |
| 6 | `theorem` | [isPiSystem_isOpen](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/ispisystem-isopen.md) | 78 | `result-track:5dfb51b97a85452a02cb100b80a5ad4544889fafa1939ed52e63bfc294253e60` |
| 7 | `lemma` | [isPiSystem_isClosed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/ispisystem-isclosed.md) | 81 | `result-track:519ec4d0ca2daa4cc19e891abff181ad5d60dc1cdee86fd1c20d8170401cb902` |
| 8 | `theorem` | [borel_eq_generateFrom_isClosed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/borel-eq-generatefrom-isclosed.md) | 84 | `result-track:0069293a5ac0e7af52f122498baff7e0d08c1a3d98c36e5dd280139ef98752be` |
| 9 | `theorem` | [borel_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/borel-comap.md) | 93 | `result-track:964dd31b63909fbeee7a912e4349fa19f3421f11b0caa25725a264806dcdce4b` |
| 10 | `theorem` | [Continuous.borel_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/continuous-borel-measurable.md) | 97 | `result-track:9d023f03b398dbc8718d91b04078c6720fd918dda7c7ff9c6f30f8c0476c0027` |
| 11 | `class` | [OpensMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/opensmeasurablespace.md) | 104 | `declaration-track:5c7e1150f62bbb0500f4b9b7f7d7df5a8b2aef44398753e3b7c52e6403a8f0ca` |
| 12 | `class` | [BorelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/borelspace.md) | 110 | `declaration-track:4e25ac5d8835ac8816f5e02532fa94671cc70fd372abea3a16dd091b9f36b428` |
| 13 | `syntax` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/syntax.md) | 126 | `declaration-track:6ba46b1fcaef6ef2ee0367dd0193b3789391d734b5d3943786eac62866bf1bc9` |
| 14 | `def` | [addBorelInstance](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/addborelinstance.md) | 129 | `declaration-track:124017c5f0b4c1c07a2d448000c5f918577f0a7aac546d7532eda65608e718e8` |
| 15 | `def` | [borelToRefl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/boreltorefl.md) | 139 | `declaration-track:667a094a96be4202533faf6d46fe72facba96199971311642e79c56d8a94c7a0` |
| 16 | `def` | [borelize](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/borelize.md) | 160 | `declaration-track:53991d7b9c951212717b13338a2522fac2b8ba23484e575eac71473ee3ba2376` |
| 17 | `elab_rules` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/elab-rules.md) | 166 | `declaration-track:555f6121faad73411d22bf8345009496dcb0828a1564583122de00a8a92bf916` |
| 18 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/instance-source-edition-9.md) | 171 | `declaration-track:7dc16a87d02e3c56be80b5b75deabb9e446208c6eaf4d67c34c99344e5895334` |
| 19 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/instance.md) | 175 | `declaration-track:06eed0ab888a49b4c48da05ebce0f209896a6bdb44f5c3b8616ac867c2308076` |
| 20 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/instance-source-edition-15.md) | 180 | `declaration-track:e3313294f78ccb52c0c87a39978ca28b759c074235bee7669426f6841d17880f` |
| 21 | `instance` | [Subtype.borelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/subtype-borelspace.md) | 184 | `declaration-track:68ada716f9dc3827fde9107b28e370f863b615a9c5fd673bbce9c7797ba87e70` |
| 22 | `instance` | [Countable.instBorelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/countable-instborelspace.md) | 188 | `declaration-track:11c27af78ed602d0a251db9e05f0796d00281b510e99bebac75e91d81edb4af9` |
| 23 | `instance` | [Subtype.opensMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/subtype-opensmeasurablespace.md) | 194 | `declaration-track:42da5e5457925851adca01a4fd6b00a2de28d2c4e434bec2651f9ef80fda25fc` |
| 24 | `lemma` | [opensMeasurableSpace_iff_forall_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/opensmeasurablespace-iff-forall-measurableset.md) | 200 | `result-track:43fbd843eed7f5e2e6d18152d0db5c2cb6d481ab20b95f7aa405940f5ee731b5` |
| 25 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/instance-source-edition-6.md) | 206 | `declaration-track:4ee83d151fe3854abe63a180f23efe3d28aa45feb4503dd7f2157b9ad4e9cf49` |
| 26 | `theorem` | [IsOpen.measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/isopen-measurableset.md) | 219 | `result-track:0a89f1f0329b413608f31b6f67353cc17fdf3ebb8571e072fa5f7e1851bbc7c3` |
| 27 | `theorem` | [IsOpen.nullMeasurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/isopen-nullmeasurableset.md) | 222 | `result-track:902ed57be455d2a406f201dc345545da7aa1cbf042e84ffddafc32d5069ec3a0` |
| 28 | `theorem` | [MeasurableSet.induction_on_open](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/measurableset-induction-on-open.md) | 227 | `result-track:fd3c87ff80cfc938e0d9ddb09efc0ded66c3c604bf60bd0ebb597f04b3d6a8a8` |
| 29 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/instance-source-edition-11.md) | 236 | `declaration-track:8c9053887919f6e47fd1b81b15853c56ddcbb7a935e6e3b1fc99a1b2c2ab76ce` |
| 30 | `theorem` | [measurableSet_interior](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/measurableset-interior.md) | 242 | `result-track:1695353a8bfa7444638d23e218a9d3d8afac21607cfb23b0b5accfc5da3eb341` |
| 31 | `theorem` | [IsGδ.measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/isg-measurableset.md) | 245 | `result-track:63695178c304caf1a0c99a9513ffc6367df5e07b2ef1076761f4094477775a00` |
| 32 | `theorem` | [measurableSet_of_continuousAt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/measurableset-of-continuousat.md) | 249 | `result-track:f9d7201d0dc76f6cd11736e229c07b5aae7aafbd44539e444a340fdbb7a7ad2a` |
| 33 | `theorem` | [IsClosed.measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/isclosed-measurableset.md) | 253 | `result-track:d57e61fa94ac859e5726433a37bcefb52769b92a5baaa1ddf91f201a9a9ebe8d` |
| 34 | `theorem` | [IsClosed.nullMeasurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/isclosed-nullmeasurableset.md) | 256 | `result-track:3778ee693639d1fa3b5e399c523686f70ae6a4c14f0ef4b568822f898898b430` |
| 35 | `theorem` | [IsCompact.measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/iscompact-measurableset.md) | 259 | `result-track:c5e4a0a0ddf16f5356aa219f9ed1e39aaeb4e87f9551ae54a3e7041c95602902` |
| 36 | `theorem` | [IsCompact.nullMeasurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/iscompact-nullmeasurableset.md) | 262 | `result-track:e8c49e7f188b8cfe3c276e29f25ce4c2d976c4e58f7d05ec1caa3b0f158ef5fe` |
| 37 | `theorem` | [Inseparable.mem_measurableSet_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/inseparable-mem-measurableset-iff.md) | 267 | `result-track:5bf407a6906572c47a7da80f68e28b7421e97088a836e6d8927aa228f81f979f` |
| 38 | `theorem` | [IsCompact.closure_subset_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/iscompact-closure-subset-measurableset.md) | 274 | `result-track:f444b3645a788fecd2a5f61d13f4cbe3a57a05b72152a1e5dc7d57261f39486c` |
| 39 | `theorem` | [IsCompact.measure_closure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/iscompact-measure-closure.md) | 285 | `result-track:324cef3f5238074dbc28e12dec0bd1c588099c7203a9e08d99479e2ae1758fa1` |
| 40 | `theorem` | [measurableSet_closure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/measurableset-closure.md) | 294 | `result-track:a0bdeff4cb894a81bb345efc23ac594adfb05ab6057cd8f5c383496fad799d31` |
| 41 | `theorem` | [measurableSet_frontier](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/measurableset-frontier.md) | 298 | `result-track:0e91eb5dd2295c2699bfdc9b30a48c47835f16e538612ce649b5751b69e33168` |
| 42 | `theorem` | [measurable_of_isOpen](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/measurable-of-isopen.md) | 301 | `result-track:4d6f1172b552712ac1c52945eeaf6f7acb51cddf99829835fb3ffb92fcd18890` |
| 43 | `theorem` | [measurable_of_isClosed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/measurable-of-isclosed.md) | 306 | `result-track:1029eaa43548eb62c8e32e7b3857030ece6f4878ea4dd623878ba1b1b424bb54` |
| 44 | `theorem` | [measurable_of_isClosed'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/measurable-of-isclosed-source-edition-2.md) | 311 | `result-track:33c63d0d144aaf1901fff6a7cfa456ab8e2124c31b7d2e70cbcfdcfafb397592` |
| 45 | `instance` | [nhds_isMeasurablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/nhds-ismeasurablygenerated.md) | 320 | `declaration-track:da3abf799b49879cee8c9dd0298050b7b1988af37d44817fa6d0b90b65784486` |
| 46 | `theorem` | [MeasurableSet.nhdsWithin_isMeasurablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/measurableset-nhdswithin-ismeasurablygenerated.md) | 328 | `result-track:c3e6a02168dde3774418a488b20ec1e64bd7fcba0308efbf8a675565112bf811` |
| 47 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/instance-source-edition-5.md) | 333 | `declaration-track:4dcb15effac2ab2cf5921af7e45e077d4059fb278ec38a12dbf6ab52da86bf07` |
| 48 | `theorem` | [borel_eq_top_of_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/borel-eq-top-of-countable.md) | 341 | `result-track:2bb6c36774eedb46fd855a03cbf00900423d62771216324d71206873d6fcd9cb` |
| 49 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/instance-source-edition-7.md) | 348 | `declaration-track:75b47ac91a3bba0609bdb1cc1e1d17efef2c70b1f926fa403aafca8eded55cd9` |
| 50 | `instance` | [Pi.opensMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/pi-opensmeasurablespace.md) | 352 | `declaration-track:85922298d12d80d07bb4b9017ed4c35ead8b0409193f776e6f2a4d9030165ff5` |
| 51 | `class` | [SecondCountableTopologyEither](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/secondcountabletopologyeither.md) | 370 | `declaration-track:fc7353569ff929d21dcd8fdcb2617333a7f42a91861040ac40a037ec086766f0` |
| 52 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/instance-source-edition-17.md) | 375 | `declaration-track:f36a880f3368f3c71468204ccfb630aa9ec8550242e6ab40eecc08868de3df28` |
| 53 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/instance-source-edition-16.md) | 379 | `declaration-track:ea8c05ab2c4d629bde3b078a546fa65b37e8a865de578dd15e0edeb0c8b557bf` |
| 54 | `instance` | [Prod.opensMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/prod-opensmeasurablespace.md) | 386 | `declaration-track:358832bb5f2738ad84a617574357aa2515c1a0c849c5924ab3f343a759cf7ed1` |
| 55 | `theorem` | [interior_ae_eq_of_null_frontier](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/interior-ae-eq-of-null-frontier.md) | 435 | `result-track:e7d2859f52b3fe4dca8ff04a8db22788100104dbfdb886f110fc4990d144f83d` |
| 56 | `theorem` | [measure_interior_of_null_frontier](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/measure-interior-of-null-frontier.md) | 439 | `result-track:586736e68eba0ba045bc146872c69374a04a8f71ad6092979ca078d8e0675a52` |
| 57 | `theorem` | [nullMeasurableSet_of_null_frontier](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/nullmeasurableset-of-null-frontier.md) | 443 | `result-track:acacc87df0b567c5e5ed44dc37f6cf7b77f81c78e2288cd0b389510885de9ce6` |
| 58 | `theorem` | [closure_ae_eq_of_null_frontier](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/closure-ae-eq-of-null-frontier.md) | 447 | `result-track:ccf6b513bfa653968a28cb4bb34d283101dbaabd4e6b4aa5c04271aadd34834a` |
| 59 | `theorem` | [measure_closure_of_null_frontier](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/measure-closure-of-null-frontier.md) | 451 | `result-track:84473e0014a11aac41e2a6c24714330f6a42f842d4409dcfa51f0b2f1c54a23d` |
| 60 | `instance` | [separatesPointsOfOpensMeasurableSpaceOfT0Space](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/separatespointsofopensmeasurablespaceoft0space.md) | 455 | `declaration-track:1567ee87122e18071fd9b5cb494262b640252871de1e395504ea24872de726cf` |
| 61 | `theorem` | [Continuous.measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/continuous-measurable.md) | 470 | `result-track:86cec23c6c54b218b192ff5f135d07f695f527c71d673016412a05f4a2e62bea` |
| 62 | `theorem` | [Continuous.aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/continuous-aemeasurable.md) | 476 | `result-track:ae3a25e0a88d1aad0d7dce61f925242c9bccfe89a87c1f5a408af24e4e971024` |
| 63 | `theorem` | [IsClosedEmbedding.measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/isclosedembedding-measurable.md) | 479 | `result-track:d19f9a175a1c6fea17dba4bc32935fdc91c491d0833562cb8cb33dab4d9ee676` |
| 64 | `theorem` | [ContinuousOn.measurable_piecewise](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/continuouson-measurable-piecewise.md) | 484 | `result-track:161979143ca8736f686fca6a381150791f26371413713a6c9259133cd16fdbaf` |
| 65 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/instance-source-edition-18.md) | 498 | `declaration-track:fcb41271f4e3a37a31327331876c586496353c495b51ef7461d59dedca66dfae` |
| 66 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/instance-source-edition-10.md) | 503 | `declaration-track:8bc60d82f99299532c525438da4b086e21228a0861cca98db1d1c8dd4bf26c60` |
| 67 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/instance-source-edition-3.md) | 509 | `declaration-track:3a2fc11fefdd58c9a6112d593b0918a2a95ad3da31dda2a4bcee32c3d4069646` |
| 68 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/instance-source-edition-13.md) | 513 | `declaration-track:cf9f2c786a90be55783798deb4a10c59ff9bea7d997faad66b8c1841564a1c98` |
| 69 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/instance-source-edition-2.md) | 519 | `declaration-track:2a86eef3f7940134d57470b4709db6e87130e6c5dcaee611b6b0ca720f3a9e7b` |
| 70 | `theorem` | [Homeomorph.measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/homeomorph-measurable.md) | 527 | `result-track:93270c90a7f5f1bbaeebbd74e59e07bb513fbf475dde9ee7faf3327625f029e1` |
| 71 | `def` | [Homeomorph.toMeasurableEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/homeomorph-tomeasurableequiv.md) | 531 | `declaration-track:ba456555a0a451a1ed611982e99d4cd284701ed9eba25980bae04d782a3b57aa` |
| 72 | `lemma` | [Homeomorph.measurableEmbedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/homeomorph-measurableembedding.md) | 536 | `result-track:73b3514856f005d26de2379c13fac702e2df374549b6a37cc692a30015905ab7` |
| 73 | `theorem` | [Homeomorph.toMeasurableEquiv_coe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/homeomorph-tomeasurableequiv-coe.md) | 540 | `result-track:bc927034e1f254f420f48d326962befd562b7165e0ef2dd24bedf80d15bb3411` |
| 74 | `theorem` | [Homeomorph.toMeasurableEquiv_symm_coe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/homeomorph-tomeasurableequiv-symm-coe.md) | 544 | `result-track:7dae64d57223c7ffe01645d7db697211f0b7f58c0828fecb0f106332b5a8d1e3` |
| 75 | `theorem` | [ContinuousMap.measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/continuousmap-measurable.md) | 551 | `result-track:20f7a5c8d8b78cd4573a24fa283ea4913255020886ed0569857315e90c33257a` |
| 76 | `theorem` | [measurable_of_continuousOn_compl_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/measurable-of-continuouson-compl-singleton.md) | 555 | `result-track:a817b61a6dc376c4b76097d692f67a981359582f26e95c996a81fbb1cead79ca` |
| 77 | `theorem` | [Continuous.measurable2](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/continuous-measurable2.md) | 560 | `result-track:0ee8425da87c56e35a69b4191418895097ac6670e9ba7688390f192575248e4c` |
| 78 | `theorem` | [Continuous.aemeasurable2](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/continuous-aemeasurable2.md) | 565 | `result-track:a495846b90ccf50b9f963e7cd7f02a5603f885e59aed672d0491ce236be273b1` |
| 79 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/instance-source-edition-12.md) | 571 | `declaration-track:c36a67a1ee2b9523cdca45a3536532ad49109ae1df0e9fb4c4133679d4123536` |
| 80 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/instance-source-edition-4.md) | 576 | `declaration-track:3a75f27888ef659369e847feb3d3b8e8dc8aefd0230a8120136cd644db8e50a3` |
| 81 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/instance-source-edition-8.md) | 580 | `declaration-track:7d5e5f9c85b525896aa8faa92aa4d3b82a94b7054db1b529a5879c82cd7b2d20` |
| 82 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/instance-source-edition-14.md) | 584 | `declaration-track:de6d2a0bfb08e3445eb486cb0bcc0ea663791fb6d25d8206af1369969efc9dd0` |
| 83 | `theorem` | [pi_le_borel_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/pi-le-borel-pi.md) | 598 | `result-track:8351039d437908516f7d4b8dc575ad6c6ec24173b804015f4bc0f0372ae52053` |
| 84 | `theorem` | [prod_le_borel_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/prod-le-borel-prod.md) | 606 | `result-track:7e0d9b8fe397e823dd98005cbe60730a6b1bcaebc69cc9bb76e03765fdd7fd9c` |
| 85 | `instance` | [Pi.borelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/pi-borelspace.md) | 612 | `declaration-track:776efeb4237efed80936818074dab63ea1b6a2105520fa6e6927070a15773bdd` |
| 86 | `instance` | [Prod.borelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/prod-borelspace.md) | 617 | `declaration-track:389a88a34eca647d366f07e615762b4cddd93e25ac165fa5f1058dbd9018e37c` |
| 87 | `lemma` | [MeasurableEmbedding.borelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/measurableembedding-borelspace.md) | 623 | `result-track:7cd1c9ae4bca5f653d25996aba3641c389f7ee28c85c4daa3bf70f7c1f27bd8d` |
| 88 | `instance` | [_root_.ULift.instBorelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/root-ulift-instborelspace.md) | 631 | `declaration-track:3d7985c73e56afead6f83d0291f1fcce755f9dc6a9e36cdc88c531940af83784` |
| 89 | `instance` | [DiscreteMeasurableSpace.toBorelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/discretemeasurablespace-toborelspace.md) | 634 | `declaration-track:aaa7e00cb88b5f56ed8ddd7b9fbe32cd24e82dde175f97cee2de72429a32ff3d` |
| 90 | `theorem` | [Topology.IsEmbedding.measurableEmbedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/topology-isembedding-measurableembedding.md) | 638 | `result-track:133c544e7cec2d34340e6b9e53c0f8e81bc74bb46e8594999b84307df9eaa922` |
| 91 | `theorem` | [Topology.IsClosedEmbedding.measurableEmbedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/topology-isclosedembedding-measurableembedding.md) | 647 | `result-track:8238aba024ea8f09632a79e0eab4e27dea3c3eb647f6f14f52f7a51723e65100` |
| 92 | `theorem` | [Topology.IsOpenEmbedding.measurableEmbedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/topology-isopenembedding-measurableembedding.md) | 651 | `result-track:10cb566cb5beab92ecb21240e6edef3099f38c86c05dfea1d1e8b1339903108d` |
| 93 | `instance` | [Empty.borelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/empty-borelspace.md) | 655 | `declaration-track:0645718200721e517238456a76fd4b282e31c758b8efc6250680081c7571c4f9` |
| 94 | `instance` | [Unit.borelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/unit-borelspace.md) | 658 | `declaration-track:a838d54e859203dc4df8ae9653478896fe32fc8836e771d6f874d236e6327f9f` |
| 95 | `instance` | [Bool.borelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/bool-borelspace.md) | 661 | `declaration-track:0567baded87c09c991d7f9e3eab8d6200ba9fb17d4f8d323fc8d1eef3146167a` |
| 96 | `instance` | [Nat.borelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/nat-borelspace.md) | 664 | `declaration-track:f98d5cc79a3a50cdc7345ebebffb2f600d2fd0cfde75e1196cd36c7ad541958e` |
| 97 | `instance` | [Int.borelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/int-borelspace.md) | 667 | `declaration-track:923a23f6dfbe50c105101e42cf5464a12d539a6efc8791ab7e640876a58b21db` |
| 98 | `instance` | [Rat.borelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/rat-borelspace.md) | 670 | `declaration-track:e5cbe5c29f96d9445ee2b7f631869348a4b5c8e30bacf3e289cfc351d7351384` |
| 99 | `instance` | [Real.measurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/real-measurablespace.md) | 675 | `declaration-track:6be7c114db24ab91c8520fbe0bc2a410384e8a2c01df7abf3889eb0a32d69e3d` |
| 100 | `instance` | [Real.borelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/real-borelspace.md) | 678 | `declaration-track:40ebcf99908be0e1757a131c174520e1fb25a0af4f897f2cbb0dc65ec454020b` |
| 101 | `instance` | [NNReal.measurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/nnreal-measurablespace.md) | 681 | `declaration-track:3004d6e97f4a1756ad28ebef3f573b1ac288d0befc37f8fdfe0a3d5fd5482e97` |
| 102 | `instance` | [NNReal.borelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/nnreal-borelspace.md) | 684 | `declaration-track:6f5ad0501fd56b0732a19acb4ef15cd82b333acb5e3eb2e9a6c712eefec0972d` |
| 103 | `instance` | [ENNReal.measurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/ennreal-measurablespace.md) | 687 | `declaration-track:4d703ea6415d50ad9201aaaf25686ab69fc195c627b30c18e569d4400981a714` |
| 104 | `instance` | [ENNReal.borelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/ennreal-borelspace.md) | 690 | `declaration-track:63c76088e902ba7f2774570bc6abe4b38e6fc68a37ad09ea1d88336fc8314ab2` |
| 105 | `instance` | [EReal.measurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/ereal-measurablespace.md) | 693 | `declaration-track:5c1b96b9b25af9d13574efd3565fe66068e8cdf5c7d431730fb02d229399a863` |
| 106 | `instance` | [EReal.borelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/declarations/ereal-borelspace.md) | 696 | `declaration-track:5fa99fbaa4670f817ffa63a38931a374c3a16edafeb81fe503fbb7ac87243adf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2abfd3aee049fa261b73fa2bc626c5237056eb02e88ac709070c29bfa28a54af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Varianta99336218abfe5694bd4d4191ce8144e024edb3dc946b27cac4251c79d8811e1.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Varianta99336218abfe5694bd4d4191ce8144e024edb3dc946b27cac4251c79d8811e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
