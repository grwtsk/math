# Verification target: Tangent Cone Namespaced Tangent Cone Univ

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "503df4a24932f5b49c10d96bcbdbd54b407f5d47",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/index.md) · [Full source](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `503df4a24932f5b49c10d96bcbdbd54b407f5d47`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Topology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tangentConeAt](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/tangentconeat.md) | 55 | `declaration-track:34cd43186f226803756c56a8f4c2c3eeb6ce3c0fe714b6499ce020709b0ee0c7` |
| 2 | `structure` | [UniqueDiffWithinAt](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffwithinat.md) | 68 | `declaration-track:9c60ac82b852a3c1dcd14a672bbb585327cdafdd612c10944caad9521018c5c7` |
| 3 | `def` | [UniqueDiffOn](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffon.md) | 77 | `declaration-track:efe643569125c047fb4ba56184a02dedafbe41b781c31504465b48063ef63576` |
| 4 | `theorem` | [mem_tangentConeAt_of_pow_smul](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/mem-tangentconeat-of-pow-smul.md) | 96 | `result-track:691097baf1afa491b4ae150f7b47f45497293e7bee1617968638b8c849d7b8b7` |
| 5 | `theorem` | [tangentCone_univ](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/tangentcone-univ.md) | 103 | `result-track:3cb4cb41f0e23fe202da10ea45f1142fa8575933555738965b7046640a63d754` |
| 6 | `theorem` | [tangentCone_mono](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/tangentcone-mono.md) | 109 | `result-track:fca80e823ec64bc351a2c1c35bc7462167e33e8fd785276f2246f23f694b96cf` |
| 7 | `theorem` | [tangentConeAt.lim_zero](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/tangentconeat-lim-zero.md) | 116 | `result-track:8121c748017fd6f1c7447155fda30245648ecf51685d2f5e88a314a2b49f622b` |
| 8 | `theorem` | [tangentCone_mono_nhds](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/tangentcone-mono-nhds.md) | 132 | `result-track:b69b9c0dbe5704163718336e25933cf3537d74389131b00ee972d5b10206bab1` |
| 9 | `theorem` | [tangentCone_congr](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/tangentcone-congr.md) | 143 | `result-track:2684f1e9f5b7746051e650ba56d462fda38853bd0475e1c53cf485979ecca009` |
| 10 | `theorem` | [tangentCone_inter_nhds](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/tangentcone-inter-nhds.md) | 148 | `result-track:8d3e6dac2c6143f63cf18e9859000424d4691d0ffaea0a5bd82be9546c065eb2` |
| 11 | `theorem` | [subset_tangentCone_prod_left](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/subset-tangentcone-prod-left.md) | 153 | `result-track:3a424fa0bf564dac7323ca96937c9446540641de87186fb938dc21d99fffe4b0` |
| 12 | `theorem` | [subset_tangentCone_prod_right](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/subset-tangentcone-prod-right.md) | 173 | `result-track:420c96b276550674056f7496963756ab9c40e9b06141abe3f6d06a60788cec78` |
| 13 | `theorem` | [mapsTo_tangentCone_pi](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/mapsto-tangentcone-pi.md) | 193 | `result-track:2610a0b1af2fb2ffc67788fac8a623f4a64061410bb2b114152ce944ed44743f` |
| 14 | `theorem` | [mem_tangentCone_of_openSegment_subset](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/mem-tangentcone-of-opensegment-subset.md) | 218 | `result-track:d8304d8b57e32861f0fd0b1987aa5e15564fe754026c0c18a73de121a59ad41b` |
| 15 | `theorem` | [mem_tangentCone_of_segment_subset](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/mem-tangentcone-of-segment-subset.md) | 231 | `result-track:9bd4dca0d5e43fb09fbe0d8d1bc4ee02df6d0d55742827b3d8a2563c870cbf28` |
| 16 | `theorem` | [UniqueDiffOn.uniqueDiffWithinAt](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffon-uniquediffwithinat.md) | 246 | `result-track:464bd35e65be045746e1c4c9dbaea77a9ab59c597a736c3fd77c320880aec2eb` |
| 17 | `theorem` | [uniqueDiffWithinAt_univ](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffwithinat-univ.md) | 251 | `result-track:8c9369febda134a2bd19ffc54ed1b2008e2e40399a25b92647a3a6a3e78256c3` |
| 18 | `theorem` | [uniqueDiffOn_univ](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffon-univ.md) | 256 | `result-track:cc7b792e1fc2aa529260633d50dd8619f47e6ee0577ea961b1e2b469d98d76ba` |
| 19 | `theorem` | [uniqueDiffOn_empty](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffon-empty.md) | 260 | `result-track:6c6efb22138ec7eeb821dfd6fe1c6d890d496af8d7b523677c9cbd27985e15fa` |
| 20 | `theorem` | [UniqueDiffWithinAt.congr_pt](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffwithinat-congr-pt.md) | 264 | `result-track:7914394890e118f24f69637eb3441fc6721275a2a31ccb3b1ee14db2cc353220` |
| 21 | `theorem` | [UniqueDiffWithinAt.mono_nhds](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffwithinat-mono-nhds.md) | 267 | `result-track:2cb2978e80889aaba78df58f77028b1fc436da123572a27add9bdf6962d81450` |
| 22 | `theorem` | [UniqueDiffWithinAt.mono](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffwithinat-mono.md) | 274 | `result-track:7c5cac54e6ae0097f9b22755555efd7f76037aa61cfa7cf2a56efa9af8d4f7f4` |
| 23 | `theorem` | [uniqueDiffWithinAt_congr](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffwithinat-congr.md) | 279 | `result-track:b132f33c8cd7d720e92fee72f1e516e3eee92b2a0f641b859d63503bb6dd83e6` |
| 24 | `theorem` | [uniqueDiffWithinAt_inter](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffwithinat-inter-source-edition-4.md) | 284 | `result-track:bcc4a1d8cc0b696fc32753fd330c6d9d393398eceb664a15c8b59466759a02f2` |
| 25 | `theorem` | [UniqueDiffWithinAt.inter](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffwithinat-inter-source-edition-2.md) | 289 | `result-track:73de26361a6c0e2a001324c6760c04088199f656a45e311d03755e0f00b14d06` |
| 26 | `theorem` | [uniqueDiffWithinAt_inter'](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffwithinat-inter.md) | 294 | `result-track:16d88136815cdb1a9ca19ece4bca90759e0e3ce660d45fc2f3ffee145ec91e0a` |
| 27 | `theorem` | [UniqueDiffWithinAt.inter'](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffwithinat-inter-source-edition-3.md) | 299 | `result-track:a61c9dd79fec878b893d1c74e694f152ea10f201fdefd5228c2586100fbca467` |
| 28 | `theorem` | [uniqueDiffWithinAt_of_mem_nhds](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffwithinat-of-mem-nhds.md) | 304 | `result-track:eb575e6cd1ea43438bee2662bf7214041d9feaf7e07bb5bef6fff1aca2076848` |
| 29 | `theorem` | [IsOpen.uniqueDiffWithinAt](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/isopen-uniquediffwithinat.md) | 308 | `result-track:19a6c998d39466ad1e302b88495ca8a2a041f452f6220b604a47a5e9b242eed6` |
| 30 | `theorem` | [UniqueDiffOn.inter](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffon-inter.md) | 312 | `result-track:8febe78562384922475234c165533f7cd26f5aab618345994b40ad93976ed397` |
| 31 | `theorem` | [IsOpen.uniqueDiffOn](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/isopen-uniquediffon.md) | 316 | `result-track:2d658b615df43da2227953a3177e97ee3d0745c051703fc63375403c1d56c5f1` |
| 32 | `theorem` | [UniqueDiffWithinAt.prod](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffwithinat-prod.md) | 322 | `result-track:d0012659e3f71139788d86438d77efe6d2b9d31175b5844ee758bb859a696a0f` |
| 33 | `theorem` | [UniqueDiffWithinAt.univ_pi](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffwithinat-univ-pi.md) | 333 | `result-track:02c39a39817cd5e29e7f9685f60bbb37f2ca367b4046edbd1393c6f9836a40dc` |
| 34 | `theorem` | [UniqueDiffWithinAt.pi](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffwithinat-pi.md) | 345 | `result-track:eb4ad8d97ab64ce49b50e6279839ae33257e771ec29d87ccf8c7701b54aab136` |
| 35 | `theorem` | [UniqueDiffOn.prod](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffon-prod.md) | 356 | `result-track:fc1fc59e5fbd9db2456d428cb7438345a5de30d4ed853ecc1c1c6e67619e99ad` |
| 36 | `theorem` | [UniqueDiffOn.pi](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffon-pi.md) | 363 | `result-track:e03d99be7fa89d47e518afb2c52c1a00742a96b79d6a97b58e29129339e1d10f` |
| 37 | `theorem` | [UniqueDiffOn.univ_pi](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffon-univ-pi.md) | 371 | `result-track:38bcb4da1b2f6be4aa50deb39c3c8886156554fa9ea5054a18039c402f261d61` |
| 38 | `theorem` | [uniqueDiffWithinAt_convex](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffwithinat-convex.md) | 379 | `result-track:63ce61dbcbfde3dd8332550042adcbf6360fbb85ff4b972dabf1bb93f8ec39dd` |
| 39 | `theorem` | [uniqueDiffOn_convex](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffon-convex.md) | 396 | `result-track:1c4d8307e21f13da41683fb44f1b6f84715bcd73e51042b710d8fe8a97ea778e` |
| 40 | `theorem` | [uniqueDiffOn_Ici](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffon-ici.md) | 401 | `result-track:74125389840e8b08ec314b6b6a0950228774d84edce35f908458afe54767e17a` |
| 41 | `theorem` | [uniqueDiffOn_Iic](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffon-iic.md) | 405 | `result-track:7b91be77c41afa959c331253c8994cbf2740ad7b7888584e3a342e0d50ec83cf` |
| 42 | `theorem` | [uniqueDiffOn_Ioi](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffon-ioi.md) | 409 | `result-track:f94227ae55baf17a75982b3978ab775b5d7d058dd905d45f2fbe35bbb30dfd60` |
| 43 | `theorem` | [uniqueDiffOn_Iio](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffon-iio.md) | 413 | `result-track:33f349968505817954f631e2a026dfda37e5d36995b8a3cb08cb2bb4002154ef` |
| 44 | `theorem` | [uniqueDiffOn_Icc](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffon-icc.md) | 417 | `result-track:0654c0a4954c7c6ed44995dfd59d208a2919b2bc7c643a731a2ccc03a96b3664` |
| 45 | `theorem` | [uniqueDiffOn_Ico](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffon-ico.md) | 421 | `result-track:afbc943f872d890e95ccb197a233eeb361af7ae4cda89d80086b92e86082a928` |
| 46 | `theorem` | [uniqueDiffOn_Ioc](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffon-ioc.md) | 427 | `result-track:cf7f1c7a792bf97df9a040447c4e08c152aae312b59ace1a7829fc248d4a26c5` |
| 47 | `theorem` | [uniqueDiffOn_Ioo](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffon-ioo.md) | 433 | `result-track:4180951fed92bb5e39891f54c3a65a72f5f5b2c6bd325e2a05cf10e636389bcd` |
| 48 | `theorem` | [uniqueDiffOn_Icc_zero_one](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffon-icc-zero-one.md) | 438 | `result-track:ab2fb348807e34a1c5182f139c5ba4c12bc5f04a460a2ad4b7daeeb16e6f5475` |
| 49 | `theorem` | [uniqueDiffWithinAt_Ioo](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffwithinat-ioo.md) | 442 | `result-track:82751132166c2d3d341835fd2e9fe8fa80eb1d202320d9be50532241504137c3` |
| 50 | `theorem` | [uniqueDiffWithinAt_Ioi](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffwithinat-ioi.md) | 447 | `result-track:f2c8814f37d3ee94c3711f1eab9f379a8e1e2e71d2b35936adf609ce04d56418` |
| 51 | `theorem` | [uniqueDiffWithinAt_Iio](../../../../RealFunctions/TangentConeNamespacedTangentConeUniv.lean/declarations/uniquediffwithinat-iio.md) | 451 | `result-track:0ec3428e2f3bca563fd2490031d6d78f0e98bb223d19679a3ba8b3e44029fef6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9deb6d109acfd0d48cbaaa1fccf2982508d97855d0032c459a78a5bee6fdcd1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
