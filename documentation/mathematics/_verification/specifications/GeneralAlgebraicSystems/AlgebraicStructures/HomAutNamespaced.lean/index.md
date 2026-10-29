# Verification target: Hom Aut Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4916ded16df28ed4a9b383b8c0f50baf94567e35",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Aut/Variant97808f661761df439332bfb0b28756fca4d2ef5389bc9ead2171d002fdce452b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4916ded16df28ed4a9b383b8c0f50baf94567e35`.

Source path: `GRWTSK/Algebra/GroupTheory/Aut/Variant97808f661761df439332bfb0b28756fca4d2ef5389bc9ead2171d002fdce452b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Aut/Variant97808f661761df439332bfb0b28756fca4d2ef5389bc9ead2171d002fdce452b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Perm.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MulAut](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/mulaut.md) | 43 | `declaration-track:39d56358477e4cf2096a5156c38a91e63c4ce878be967ba8535dd71e9a77fc63` |
| 2 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/instance-source-edition-3.md) | 57 | `declaration-track:fe5d59c7df029161aa074b0de8566d52eb8c0ebd6ae97f840634cc22778838b2` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/instance.md) | 71 | `declaration-track:41f8cbb0dfd40d7bc9434263629d7ce71318cbf491821175ec7b20d32dfe65d1` |
| 4 | `theorem` | [coe_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/coe-mul.md) | 75 | `result-track:dd9dfe4ea3b7f723dbe5926d6e9316830ea567fde5fdc64417b3c526ef51601c` |
| 5 | `theorem` | [coe_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/coe-one-source-edition-2.md) | 80 | `result-track:faa9e1db5e537770c85728e1c06972c2690d64e0f6acf6eab826047d6cc0d194` |
| 6 | `theorem` | [mul_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/mul-def.md) | 84 | `result-track:4d9b59658fdd6197cffb9344f82f276c1d538d69412e7b53769f25361918f10b` |
| 7 | `theorem` | [one_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/one-def.md) | 88 | `result-track:0e02cfc41f2065ea8d40605ae0ae7c161f797c01c3e51200243a771addd06160` |
| 8 | `theorem` | [inv_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/inv-def.md) | 92 | `result-track:04b6e9527dbad314360ec27a3c004dbbc5414b22e4c90175075647ddc229b6b9` |
| 9 | `theorem` | [mul_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/mul-apply-source-edition-2.md) | 97 | `result-track:8e562f39d8bb989952ae9b42b25ca90ffbb5572d4fb6c8947e38950bacd16046` |
| 10 | `theorem` | [one_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/one-apply-source-edition-2.md) | 102 | `result-track:d2f8e590d852a9c8ff7fea5e1244994894c9d09f8e9a4de28fca87d6ebe37a5a` |
| 11 | `theorem` | [apply_inv_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/apply-inv-self-source-edition-2.md) | 107 | `result-track:7b1de217b9fecce101a9dca5c07d44aa9b0f5aabc88997b6c5408fa1179cacfa` |
| 12 | `theorem` | [inv_apply_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/inv-apply-self.md) | 112 | `result-track:586c7cabba88a7595bd73c1a9d8211a35171cbff07116f20e61396ab3507543b` |
| 13 | `def` | [toPerm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/toperm.md) | 117 | `declaration-track:1430a81c7fae7bd8f8e2bd0f26388205473cf8053306f99614806362c83a7652` |
| 14 | `instance` | [applyMulDistribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/applymuldistribmulaction.md) | 124 | `declaration-track:69c31795dcc015433d3926c33ae0da89bc26327b3b37c7179ce9709ed73ae723` |
| 15 | `theorem` | [smul_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/smul-def.md) | 133 | `result-track:6390614e40672e0f8e06ed86da25597bebe1bccdb00869eae682a635c620b0bb` |
| 16 | `instance` | [apply_faithfulSMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/apply-faithfulsmul-source-edition-2.md) | 138 | `declaration-track:d7caf4bffa45164babbfaa7cd22617054a36d56bcc2a7c829617120d30d3da3a` |
| 17 | `def` | [conj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/conj.md) | 146 | `declaration-track:ad1293129eba63021623ea55c4738899de7e402745dc64ec1c9916792f0929a2` |
| 18 | `theorem` | [conj_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/conj-apply-source-edition-2.md) | 161 | `result-track:de261685f886d99e2728198fc94ea7e489474b00e3467865d3cbbc2087c39e47` |
| 19 | `theorem` | [conj_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/conj-symm-apply.md) | 166 | `result-track:159e33cd04cbdde2b319dfc9fbcfc45bb928ef1f30810f7180c29dc6d2d9f815` |
| 20 | `theorem` | [conj_inv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/conj-inv-apply.md) | 171 | `result-track:7ba15535c8bdeeedec9b2329e468b3b327f6bac875388e0946d0ff3ad3ad6b09` |
| 21 | `instance` | [group](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/group.md) | 184 | `declaration-track:9b68f41d3456bf9fcafbd7704f98a8af97475169f5f5234ddf6d1fdc2b61a609` |
| 22 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/instance-source-edition-2.md) | 199 | `declaration-track:72a29572b05b66f6db64a85b3984863da7f89eaf1e8d202ac585578978a3cbd0` |
| 23 | `theorem` | [coe_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/coe-mul-source-edition-2.md) | 203 | `result-track:dfb247d7486ccd038772a1f70e2eda1956483891d81db03026dc499c28a1810a` |
| 24 | `theorem` | [coe_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/coe-one.md) | 208 | `result-track:e1cbbc798c2f811ac663799a5de1e0be7655ea363d5a6dfedc2e4d44fcfd5556` |
| 25 | `theorem` | [mul_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/mul-def-source-edition-2.md) | 212 | `result-track:77f6ba0dfe55020ba102eff8a3ed38a0dcb5042d4a624b20042fe6332af46113` |
| 26 | `theorem` | [one_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/one-def-source-edition-2.md) | 216 | `result-track:b6d3f30f4a30db34bb82c6d2801547144f8cb9abe96975e8dde82733c7bf10bc` |
| 27 | `theorem` | [inv_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/inv-def-source-edition-2.md) | 220 | `result-track:886f0ac89d8a3e78c833627e0f6d3108a81fe48baf1f2400acadfd3ce005e8a0` |
| 28 | `theorem` | [mul_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/mul-apply.md) | 225 | `result-track:5911551cb6edad9e2545ada72ad8ce65a054d569fb452f27aa6b0f5ccde05221` |
| 29 | `theorem` | [one_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/one-apply.md) | 230 | `result-track:69c3c56c54dd3eab95ae5672c246be98b1b38ed172d863d48af0b3d2b54ac534` |
| 30 | `theorem` | [apply_inv_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/apply-inv-self.md) | 235 | `result-track:7694f9fd3c09d99e48147108453451e83f074952c711d36dbb8a0c923804f081` |
| 31 | `theorem` | [inv_apply_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/inv-apply-self-source-edition-2.md) | 240 | `result-track:6796cffafb93bac0ad0e0e150975a39954ec4b790ee8c265be8cef1dc74deae5` |
| 32 | `def` | [toPerm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/toperm-source-edition-2.md) | 245 | `declaration-track:7d929648d046139aa24441815fa9bafa0fb212c5368201e138d02097f39d142a` |
| 33 | `instance` | [applyDistribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/applydistribmulaction.md) | 252 | `declaration-track:224ebd568f7da55507676d06632f1b993266fc9e609ded041a95c93779f8157e` |
| 34 | `theorem` | [smul_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/smul-def-source-edition-2.md) | 261 | `result-track:f3c81348d8ab47e09214e3a66d7653461d6ebcd975114adef950bc2709fb1be5` |
| 35 | `instance` | [apply_faithfulSMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/apply-faithfulsmul.md) | 266 | `declaration-track:79e7416781758e11d6376a583a4adaad8d01d4d4657e22538ebb6afd6fa19c29` |
| 36 | `def` | [conj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/conj-source-edition-2.md) | 273 | `declaration-track:c627bb9089df82960094f3771586ae172da47c88322ee407d7cc7e5ee6184dfb` |
| 37 | `theorem` | [conj_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/conj-apply.md) | 293 | `result-track:699d606cdaa6f39ff64acd6a26d9f7aea80150d46203cf08c7fd54d4b54b08e6` |
| 38 | `theorem` | [conj_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/conj-symm-apply-source-edition-2.md) | 298 | `result-track:f0593e54c9cf57dbfc236dd4fa36c7f10f39d78c50e9bec03ded933211fe53ea` |
| 39 | `theorem` | [conj_inv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAutNamespaced.lean/declarations/conj-inv-apply-source-edition-2.md) | 306 | `result-track:e5b9e9a225850873a940974d90ec56746ace319f0fec96f85a871fedd8e0b751` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e81cb283ef41b83b32c27ac942029cd21a66b1ecc4b41151ad9716c8d17411f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Aut/Variant97808f661761df439332bfb0b28756fca4d2ef5389bc9ead2171d002fdce452b.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Aut/Variant97808f661761df439332bfb0b28756fca4d2ef5389bc9ead2171d002fdce452b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
