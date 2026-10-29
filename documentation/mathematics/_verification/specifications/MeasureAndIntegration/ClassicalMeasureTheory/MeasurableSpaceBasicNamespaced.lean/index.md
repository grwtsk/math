# Verification target: Measurable Space Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbc3af1d59ad3a1431afa37d724631a4132f16ea",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variante256d3ece623d6d7dd1117b02d2dc4172fd65571dfe112ccfc3eaa08811ceb49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbc3af1d59ad3a1431afa37d724631a4132f16ea`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variante256d3ece623d6d7dd1117b02d2dc4172fd65571dfe112ccfc3eaa08811ceb49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variante256d3ece623d6d7dd1117b02d2dc4172fd65571dfe112ccfc3eaa08811ceb49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Indicator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/map.md) | 65 | `declaration-track:1a02e3805443f485041b66b322e7712ad3bf00f39c38fb81656103672c6581b1` |
| 2 | `lemma` | [map_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/map-def.md) | 71 | `result-track:4d9b9cf7bdb340dfec4c5a46e87e6dc231ddc84fa8c6d2d390aee8047ef903b6` |
| 3 | `theorem` | [map_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/map-id.md) | 74 | `result-track:fa702b54cdbba1c88d63ebd7f796ca167203cb61bfa72430f1f713f222773f34` |
| 4 | `theorem` | [map_comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/map-comp.md) | 78 | `result-track:c026a3345f9e10d421c7ff219f9af1e19206c7380f0d0efed7bc346fe80a3109` |
| 5 | `def` | [comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/comap.md) | 83 | `declaration-track:e48e2426f915788c948fe7a75c3ef1d6145f58fe49e5d2589dcb375b52cb39ee` |
| 6 | `lemma` | [measurableSet_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurableset-comap.md) | 91 | `result-track:0045c727b85fb96ee22c291febcc22fb28f271122e0577f13ef4c094faed9d74` |
| 7 | `theorem` | [comap_eq_generateFrom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/comap-eq-generatefrom.md) | 94 | `result-track:470623c8870a1001e8a068a399213e7a5a1ca1980e9aaa9f8777fb966aaddfaa` |
| 8 | `theorem` | [comap_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/comap-id.md) | 99 | `result-track:4f3fd2b675bf98b20f85b6185b110d71b8db68beb1b8f000fc43168f02c1c00c` |
| 9 | `theorem` | [comap_comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/comap-comp.md) | 103 | `result-track:c1cd2541e9b1b53968133d77fb48d2f321d5ccbb09c53284c58d030f314984e1` |
| 10 | `theorem` | [comap_le_iff_le_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/comap-le-iff-le-map.md) | 107 | `result-track:23d3027496a407bb29b19f8845e2ecbd795bbda318531bb15e18b01d6ae58b37` |
| 11 | `theorem` | [gc_comap_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/gc-comap-map.md) | 110 | `result-track:34263aa1d77cfece78ae3d3ec49d5f12ac7bcb29322d57cfaa5e34901545081c` |
| 12 | `theorem` | [map_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/map-mono.md) | 114 | `result-track:bad5d142460220290d52536d1dcfda3e18f4b2f89bffeb0c7b6b19bd5f37e276` |
| 13 | `theorem` | [monotone_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/monotone-map.md) | 117 | `result-track:f7e983a1f81a500af0f0d3e1a111d6011874d3608d374d740a30b1ea60b512a3` |
| 14 | `theorem` | [comap_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/comap-mono.md) | 119 | `result-track:1588b40fc473da7c6593043e8c0d816acba9aa119ef259a210468941178ee67f` |
| 15 | `theorem` | [monotone_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/monotone-comap.md) | 122 | `result-track:708ab94f8ffcfe624bff6aec324a232cc4c4c4154a6b375225eed2f3b273aa3d` |
| 16 | `theorem` | [comap_bot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/comap-bot.md) | 125 | `result-track:097913da15159291a16891f00e0332a110c7667cd4b26ca048b50361b5a7b259` |
| 17 | `theorem` | [comap_sup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/comap-sup.md) | 129 | `result-track:da94b5e0373dc572b1b77cbd4dbb3d5ec5d8d915da9bca0df7e6ef40324ff602` |
| 18 | `theorem` | [comap_iSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/comap-isup.md) | 133 | `result-track:dbeff3ff939bf0191b2b57988d186bfa5eb3beb6734b233ee46ebc067fc58408` |
| 19 | `theorem` | [map_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/map-top.md) | 137 | `result-track:3ffe0a3502c3ff7c66ace58e342d84a60db547b079abe2c6ca76358d151c30c0` |
| 20 | `theorem` | [map_inf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/map-inf.md) | 141 | `result-track:b512326f264100732e8d8f57bd9f335bfaade4b2c30e52977347d8221df490b4` |
| 21 | `theorem` | [map_iInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/map-iinf.md) | 145 | `result-track:e04033e07e5ed49896dd6befb733440a3cae4164b0b2a0c9d3e754e4daa39b57` |
| 22 | `theorem` | [comap_map_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/comap-map-le.md) | 148 | `result-track:509662bdc52783275ce18b3624185181fd9f86719ea235f48ebdedc1a40ec27a` |
| 23 | `theorem` | [le_map_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/le-map-comap.md) | 151 | `result-track:09cf032fc261ea8df719916020e1ee51773b83fb949290cdbebf8fcc16c28a52` |
| 24 | `theorem` | [map_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/map-const.md) | 156 | `result-track:149930b97257c8932af36fc1c0487ad3db8ca696769a123611421192d426754a` |
| 25 | `theorem` | [comap_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/comap-const.md) | 159 | `result-track:151bcaa9682ecab11066ad939f8db0eb4d49f794b34a09f42ecd62c75b61c631` |
| 26 | `theorem` | [comap_generateFrom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/comap-generatefrom.md) | 162 | `result-track:5738454f9879c3f6efe591bbe46287d18ce8b464e88d128ad469d8bbe2effd0c` |
| 27 | `theorem` | [measurable_iff_le_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-iff-le-map.md) | 175 | `result-track:0bc9c4b85853d48d5350c7b228bad7e3e6847854039a0fe8362e12fbbc0effc8` |
| 28 | `theorem` | [measurable_iff_comap_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-iff-comap-le.md) | 181 | `result-track:5a2651c70e0deca9d791561b2e62bf7015be8855e7002bd4634f11ce0a3ddbd7` |
| 29 | `theorem` | [comap_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/comap-measurable.md) | 187 | `result-track:dbc97291e91d74f8ae2d14e50e6ce279123a57e1128ca7877586ec34e53b8af9` |
| 30 | `theorem` | [Measurable.mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-mono.md) | 190 | `result-track:0740065464b23a7bf0f3b39211a47cd251e9a614f58f84c04d17396cdfc216c2` |
| 31 | `lemma` | [Measurable.iSup'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-isup.md) | 194 | `result-track:8cb4e9652cacace0462cc5384bc3a7d86d5497eb9ecb6ed87e7ff0a589064527` |
| 32 | `lemma` | [Measurable.sup_of_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-sup-of-left.md) | 199 | `result-track:d98554f2e40bd1b14f00dbbae2a8befbdc718255f2a2d6a99c7619b51cfd4a48` |
| 33 | `lemma` | [Measurable.sup_of_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-sup-of-right.md) | 204 | `result-track:0eb7b95fc9da7ad3bc203ca430b2090c17514e0db4ece18040471718fa12a1ae` |
| 34 | `theorem` | [measurable_id''](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-id.md) | 209 | `result-track:e45894209adbb2b182b21c685edf747b25bc83a61a4a7e82558ffaf71021648d` |
| 35 | `theorem` | [measurable_from_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-from-top.md) | 213 | `result-track:009431cbb9a97f8fb9919454cf5a227abf796098f6c66617db2809fa40511f93` |
| 36 | `theorem` | [measurable_generateFrom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-generatefrom.md) | 215 | `result-track:0f1a5e7b7e72ef09a74a35a4d55e20960cf55888b224652aa011e32f146e2e98` |
| 37 | `theorem` | [Subsingleton.measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/subsingleton-measurable.md) | 226 | `result-track:0946b75720b50624f124f37db19c37683f748f1e076f9ec138bf324a055c223f` |
| 38 | `theorem` | [measurable_of_subsingleton_codomain](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-of-subsingleton-codomain.md) | 230 | `result-track:c753210cf18ed6b057d3a2a9e77a6455d04a3071d9d41a6daf53041fc9bbd4a0` |
| 39 | `theorem` | [measurable_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-one.md) | 234 | `result-track:12a71f21f0a47e49a1dc04524e952acd0e1957cc34ff0d9ce25ec3c55f993b03` |
| 40 | `theorem` | [measurable_of_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-of-empty.md) | 237 | `result-track:1c2c49a6d27d94913bcb2438efe2d59ce17b89ec85853d08158fcb70696bb6e5` |
| 41 | `theorem` | [measurable_of_empty_codomain](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-of-empty-codomain.md) | 240 | `result-track:2cca812cd3c0955c62c002ca7345f1ca402f580ca45a7b46f8303da8dedfe3a0` |
| 42 | `theorem` | [measurable_const'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-const.md) | 245 | `result-track:4def075321ca25c7b6c8c9ac12faf95266c64a8a8b30de22a5ffe158c0eb8de3` |
| 43 | `theorem` | [measurable_natCast](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-natcast.md) | 252 | `result-track:642ab22b55e3e928100df77d022b9fd1f9a98f5f661f170a3b3cac30f588c3fe` |
| 44 | `theorem` | [measurable_intCast](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-intcast.md) | 256 | `result-track:a50501a84d9243df6551e76474dd74f809f4e9943a3049d58c254eff23089143` |
| 45 | `theorem` | [measurable_of_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-of-countable.md) | 259 | `result-track:f8d5cb0e0347669b76bce50abaddfcf061090464aa4ad526e22766425731cfa3` |
| 46 | `theorem` | [measurable_of_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-of-finite.md) | 263 | `result-track:894566a703a9abb369fa97964c1e8dd5db4fb8a03a7d1fd2933ec192a4065d3e` |
| 47 | `theorem` | [Measurable.iterate](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-iterate.md) | 271 | `result-track:b5a8205c0d50fe358866b050aff4d582ac6bf3506f9ecd480dd8142b9d90186a` |
| 48 | `theorem` | [measurableSet_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurableset-preimage-source-edition-2.md) | 278 | `result-track:8f8dd8ee239cfa7cc3324cfb04ed0505461129c559c038e94d192ab93d5983fa` |
| 49 | `theorem` | [MeasurableSet.preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurableset-preimage.md) | 282 | `result-track:649fe59fb5fd8dfc87030c71349fb9e6c39c1b55648e85587166860b08e6e2f0` |
| 50 | `theorem` | [Measurable.piecewise](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-piecewise.md) | 287 | `result-track:cc0525d99c3aadfde06e2b0087d808cfb4928af4e9d48f91f93fb6783230c3f9` |
| 51 | `theorem` | [Measurable.ite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-ite.md) | 297 | `result-track:af7c9b59161ae709af9929e685e71bc2b8432059904353345ce994a295613904` |
| 52 | `theorem` | [Measurable.indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-indicator.md) | 302 | `result-track:8bdaf5c649a77bfa89fa0a7f4b2dc00189beca3e68be135e122ade919087f697` |
| 53 | `lemma` | [measurable_indicator_const_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-indicator-const-iff.md) | 308 | `result-track:177a8de4f0aa1ea3d068258df0403659dea347812af2d72153bb2b804160c447` |
| 54 | `theorem` | [measurableSet_mulSupport](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurableset-mulsupport.md) | 317 | `result-track:8936c50764ca89ea60da51b69bdc786b478a55201520302bc36b5ad44c3d54d2` |
| 55 | `theorem` | [Measurable.measurable_of_countable_ne](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/measurable-measurable-of-countable-ne.md) | 323 | `result-track:dd82c11c247ab1d014cc02fe8efd77d37fa52274a1de39415c8734bab2d58507` |
| 56 | `def` | [IsCountablySpanning](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/iscountablyspanning.md) | 342 | `declaration-track:e1add607f36b39746e9d1675fff56524b7ed6c0fe1f8ca15373685e181b79ab8` |
| 57 | `theorem` | [isCountablySpanning_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/iscountablyspanning-measurableset.md) | 345 | `result-track:f9cbcb5703bd7509e0297d33fe9c47d99efe6d29e0989a24c6c0ed18026f0325` |
| 58 | `lemma` | [IsCountablySpanning.prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasicNamespaced.lean/declarations/iscountablyspanning-prod.md) | 350 | `result-track:aad32916a9963c693820b22cc1f015a10f404b9fb42f34bfe3e16fd2f1673346` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4df06d811f1a6cef0942a704ef02c66b9db5fb6272abebb348617dd03d0dd6a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Basic/Variante256d3ece623d6d7dd1117b02d2dc4172fd65571dfe112ccfc3eaa08811ceb49.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Basic/Variante256d3ece623d6d7dd1117b02d2dc4172fd65571dfe112ccfc3eaa08811ceb49.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
