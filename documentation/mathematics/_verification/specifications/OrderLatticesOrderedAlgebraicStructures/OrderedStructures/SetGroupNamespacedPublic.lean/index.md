# Verification target: Set Group Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6cf7317e922b9ae04abd10cd0c2ccfcb2e50f9a",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Group/Variant7f20e1d098787a6dcfb296c52878732a01308cbe3a3eb122631c5ac17c694605.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6cf7317e922b9ae04abd10cd0c2ccfcb2e50f9a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Group/Variant7f20e1d098787a6dcfb296c52878732a01308cbe3a3eb122631c5ac17c694605.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Group/Variant7f20e1d098787a6dcfb296c52878732a01308cbe3a3eb122631c5ac17c694605.lean.json)

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
| 1 | `theorem` | [inv_mem_Icc_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/inv-mem-icc-iff.md) | 40 | `result-track:cf2a1d8e963bef2eaf9871b33b11831955801135e74588305e61312c9f5a18a0` |
| 2 | `theorem` | [inv_mem_Ico_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/inv-mem-ico-iff.md) | 44 | `result-track:85129bd49a6ad3ddb868af1aa5549a0515544d2a5d8749f9749a681f25dbc327` |
| 3 | `theorem` | [inv_mem_Ioc_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/inv-mem-ioc-iff.md) | 48 | `result-track:3058ee13d996376970eb6deb5e00ae9148ba8e3dab35cbf4fa297ded58c5e7ea` |
| 4 | `theorem` | [inv_mem_Ioo_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/inv-mem-ioo-iff.md) | 52 | `result-track:a1aea8e91edcb52dd7db3534421af55795f036367051d955e8ae2c259e0c4bf5` |
| 5 | `theorem` | [add_mem_Icc_iff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/add-mem-icc-iff-left.md) | 63 | `result-track:8667ae52dafdd62901284ab162876f04f574c06b156722cbbd6a125b1339eaff` |
| 6 | `theorem` | [add_mem_Ico_iff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/add-mem-ico-iff-left.md) | 66 | `result-track:a6cb7312abad5262fac6a258816060ff6bbb8a73610eef089523b0937e847401` |
| 7 | `theorem` | [add_mem_Ioc_iff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/add-mem-ioc-iff-left.md) | 69 | `result-track:7ebd8f34da94390389ba6cc2a4085a7fdebf14adf4c08f2de958aefd25d9587a` |
| 8 | `theorem` | [add_mem_Ioo_iff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/add-mem-ioo-iff-left.md) | 72 | `result-track:2de2a209aa500ffdf6b37af81e87b6aabd14c31421430d254e6c62b1ecf6c48c` |
| 9 | `theorem` | [add_mem_Icc_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/add-mem-icc-iff-right.md) | 77 | `result-track:700ac507eda0cae507a28c458cbe01aa4d561a8531d0338286ab6d14086ce203` |
| 10 | `theorem` | [add_mem_Ico_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/add-mem-ico-iff-right.md) | 80 | `result-track:7f9e426e48d19b6feef2d75f14a2e1928dda9e1623eb8325141b2997e0ce9b9a` |
| 11 | `theorem` | [add_mem_Ioc_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/add-mem-ioc-iff-right.md) | 83 | `result-track:5d7bf048b458fbcc90f355e654b0679e3b75204d9f598399ffb310774bbccdb7` |
| 12 | `theorem` | [add_mem_Ioo_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/add-mem-ioo-iff-right.md) | 86 | `result-track:4f6132bbf034e23d0798954405ce5af7791acb4d83eeae60d486e38ec08919cd` |
| 13 | `theorem` | [sub_mem_Icc_iff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/sub-mem-icc-iff-left.md) | 91 | `result-track:06c30559ff0e022b9eec1b786b9a285b58e2dd4525077fb4a31a613975c2b043` |
| 14 | `theorem` | [sub_mem_Ico_iff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/sub-mem-ico-iff-left.md) | 94 | `result-track:14f5859836906a79ef9247e28f57066cb78b344c072544a619acf9ee2e19d668` |
| 15 | `theorem` | [sub_mem_Ioc_iff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/sub-mem-ioc-iff-left.md) | 97 | `result-track:e57832a50232b8acc7658447c27e9109297ad9800742223499d9547def512053` |
| 16 | `theorem` | [sub_mem_Ioo_iff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/sub-mem-ioo-iff-left.md) | 100 | `result-track:d2435382906a2395de1f8f5ae380eba369342ab7d0d0d8ced8d0cf87f568c40c` |
| 17 | `theorem` | [sub_mem_Icc_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/sub-mem-icc-iff-right.md) | 105 | `result-track:b6998385aca217e8b100bb3e50c6cb90a0f3b8137f72c827b4c1133797b10211` |
| 18 | `theorem` | [sub_mem_Ico_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/sub-mem-ico-iff-right.md) | 108 | `result-track:b0db4e1a07c1f588f3332e8373f827b5c713344200872b83677676403973eac2` |
| 19 | `theorem` | [sub_mem_Ioc_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/sub-mem-ioc-iff-right.md) | 111 | `result-track:111b8fe9cc26e02234079f7f10c1a472094b6f7ee58a960b8098e5f58726302d` |
| 20 | `theorem` | [sub_mem_Ioo_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/sub-mem-ioo-iff-right.md) | 114 | `result-track:1b5a4891fd12dd7f03c041898f8f0c12e5913f281efd4f46613a0338a3bcf41d` |
| 21 | `theorem` | [mem_Icc_iff_abs_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/mem-icc-iff-abs-le.md) | 119 | `result-track:48c5574d269e9120485039aac8447b99b0a31f944e0e2982991a10ab26682451` |
| 22 | `theorem` | [sub_mem_Icc_zero_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/sub-mem-icc-zero-iff-right.md) | 127 | `result-track:eb2f19007791a567ff8deded248200c3e8cfff6f0c1f07ed2cc5d263a3b25075` |
| 23 | `theorem` | [sub_mem_Ico_zero_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/sub-mem-ico-zero-iff-right.md) | 130 | `result-track:398f96b94c50825dce3d0c65b2a1e3513b23c7b21939d1358af6d17aa832f490` |
| 24 | `theorem` | [sub_mem_Ioc_zero_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/sub-mem-ioc-zero-iff-right.md) | 133 | `result-track:662dd290bc61de5dbbfa5a8b2396559a22b4fd3e637fc6d6d7aa37de67e02696` |
| 25 | `theorem` | [sub_mem_Ioo_zero_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/sub-mem-ioo-zero-iff-right.md) | 136 | `result-track:1e9cd3f46788de63796f0babba401c6426b775bf05b775c3fbd3d8b92957b7f2` |
| 26 | `theorem` | [nonempty_Ico_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/nonempty-ico-sdiff.md) | 146 | `result-track:2cb867431b3eef0a03be885d4dbf91197ce0ac6690a0f4db669911f77107b457` |
| 27 | `theorem` | [pairwise_disjoint_Ioc_mul_zpow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/pairwise-disjoint-ioc-mul-zpow.md) | 166 | `result-track:dcb4fa37e14063a8af041e3688273923a1a002f6baaf9cb48685ad1a2e0a38fe` |
| 28 | `theorem` | [pairwise_disjoint_Ico_mul_zpow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/pairwise-disjoint-ico-mul-zpow.md) | 181 | `result-track:ac0a50609bc2bd6584a3c6cd4519ffd28580dc1be072168883552d2cfac14b37` |
| 29 | `theorem` | [pairwise_disjoint_Ioo_mul_zpow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/pairwise-disjoint-ioo-mul-zpow.md) | 196 | `result-track:12d8e20d239ea6f786e080a909648227e896ed84a44240095045206489884dcf` |
| 30 | `theorem` | [pairwise_disjoint_Ioc_zpow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/pairwise-disjoint-ioc-zpow.md) | 201 | `result-track:ab6ae8a2a1b9c744e5c31401867c3bce9baf32beeecca671785b3f5d1c15b9e7` |
| 31 | `theorem` | [pairwise_disjoint_Ico_zpow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/pairwise-disjoint-ico-zpow.md) | 206 | `result-track:86fbd3b44028e41341781feebf714b1938c96a440a5fbc8146b99056bc6ee79a` |
| 32 | `theorem` | [pairwise_disjoint_Ioo_zpow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/pairwise-disjoint-ioo-zpow.md) | 211 | `result-track:a281897e517cf8e97581c119cc2ce63faae1b78db5cf15a7244c2294bc575057` |
| 33 | `theorem` | [pairwise_disjoint_Ioc_add_intCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/pairwise-disjoint-ioc-add-intcast.md) | 221 | `result-track:4b554cb1c5c6c5a38502fdcdfdc51058b491319af04c1a439ac46584e1690176` |
| 34 | `theorem` | [pairwise_disjoint_Ico_add_intCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/pairwise-disjoint-ico-add-intcast.md) | 226 | `result-track:ffb00b3603eddbc8e4482a448ef49313125eb8fd7638e4b6622851c72de747a0` |
| 35 | `theorem` | [pairwise_disjoint_Ioo_add_intCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/pairwise-disjoint-ioo-add-intcast.md) | 231 | `result-track:43a5f251e8c72a3848cb8e473f2324345efce06ff32d4f814852adb2ffe7579d` |
| 36 | `theorem` | [pairwise_disjoint_Ico_intCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/pairwise-disjoint-ico-intcast.md) | 238 | `result-track:14ac900d19eb92208adf3af48d3ea8f4c21fe8a3ad3622b639cffff34085a589` |
| 37 | `theorem` | [pairwise_disjoint_Ioo_intCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/pairwise-disjoint-ioo-intcast.md) | 242 | `result-track:262132075d8a48b1225879b98e69a4ed8dc6ca37aff12f1ece152f2044508002` |
| 38 | `theorem` | [pairwise_disjoint_Ioc_intCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetGroupNamespacedPublic.lean/declarations/pairwise-disjoint-ioc-intcast.md) | 246 | `result-track:2bb96dcf8b1d86307975e821d3e3dfa465cf6c2a22e4dd7fc680cc43f7ac3b22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a009c40f57db5e6e21878959cf02222a81241a21be8c560d4b9117a47c4b1e7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Group/Variant7f20e1d098787a6dcfb296c52878732a01308cbe3a3eb122631c5ac17c694605.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Group/Variant7f20e1d098787a6dcfb296c52878732a01308cbe3a3eb122631c5ac17c694605.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
