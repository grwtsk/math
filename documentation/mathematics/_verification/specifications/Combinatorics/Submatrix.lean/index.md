# Verification target: Submatrix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9ee3123f42a1a2955379f193b980a44fd3266e6",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/Submatrix.lean/index.md) · [Full source](../../../../Combinatorics/Submatrix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9ee3123f42a1a2955379f193b980a44fd3266e6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GlobalProjection` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extractSubmatrix](../../../../Combinatorics/Submatrix.lean/declarations/extractsubmatrix.md) | 21 | `declaration-track:60ce3a27ed0be47081faa324e89193cda3690b87d668921af79e14a253b847c3` |
| 2 | `theorem` | [extractSubmatrix_apply](../../../../Combinatorics/Submatrix.lean/declarations/extractsubmatrix-apply.md) | 26 | `result-track:f38e2436abf77e4835625b6c5179ea7ba6e606fdf6e9d79b0b847efdd0160403` |
| 3 | `def` | [implantSubmatrix](../../../../Combinatorics/Submatrix.lean/declarations/implantsubmatrix-source-edition-2.md) | 33 | `declaration-track:87cf7387dd8dde0b239eaf102b5bdd91f42cd931bb32c26aeb59f6019d4d35db` |
| 4 | `theorem` | [implantSubmatrix_inside](../../../../Combinatorics/Submatrix.lean/declarations/implantsubmatrix-inside.md) | 42 | `result-track:827fa384a54e642f999b9d307deaad9146f866ab1b493eedb0fdda8ecb091986` |
| 5 | `theorem` | [extractSubmatrix_implantSubmatrix](../../../../Combinatorics/Submatrix.lean/declarations/extractsubmatrix-implantsubmatrix.md) | 52 | `result-track:caa41daeaab80fa487f4977c4c6ae070bb20e70bc9b9b3429ed4c07132a476f1` |
| 6 | `theorem` | [implantSubmatrix_extractSubmatrix](../../../../Combinatorics/Submatrix.lean/declarations/implantsubmatrix-extractsubmatrix.md) | 62 | `result-track:7b1313689b727856f61da87448bc29d5af13474734bd795d6c923347888703c6` |
| 7 | `theorem` | [implantSubmatrix_outside](../../../../Combinatorics/Submatrix.lean/declarations/implantsubmatrix-outside.md) | 82 | `result-track:54e268f163544509a7670e400d8507edccc81799882f7f5b78656568827b4233` |
| 8 | `theorem` | [implantSubmatrix_overwrite](../../../../Combinatorics/Submatrix.lean/declarations/implantsubmatrix-overwrite.md) | 98 | `result-track:7b946841e8e71427b195ffaf5edce1d8049b78bd834183f0099eccfb6811f2d8` |
| 9 | `def` | [differenceSupport](../../../../Combinatorics/Submatrix.lean/declarations/differencesupport.md) | 109 | `declaration-track:ce15ab736937c8297e037bf1ff4ba576c10988e959939c89006b0e3dda28054a` |
| 10 | `theorem` | [mem_differenceSupport_iff](../../../../Combinatorics/Submatrix.lean/declarations/mem-differencesupport-iff.md) | 112 | `result-track:5f05f28acfe84b0dd753c7d2ce3681cdf66a6d8f216d205371c0edcad7050047` |
| 11 | `theorem` | [implant_differenceSupport_inside](../../../../Combinatorics/Submatrix.lean/declarations/implant-differencesupport-inside.md) | 117 | `result-track:7d5d6aed8079a618daef1e317015755865915f3736a42b62107a6c2f569f2e3e` |
| 12 | `def` | [RowUnique](../../../../Combinatorics/Submatrix.lean/declarations/rowunique.md) | 131 | `declaration-track:214ec3b71c3dca53c06ba7e5800126437056e85f10fd284a9e6344a149c08e9e` |
| 13 | `def` | [ColumnUnique](../../../../Combinatorics/Submatrix.lean/declarations/columnunique.md) | 135 | `declaration-track:cfb0b6d6389c157f4383a007c43723c5f1481d11ce0a90de23d33087ca63db71` |
| 14 | `structure` | [SubmatrixSurgery](../../../../Combinatorics/Submatrix.lean/declarations/submatrixsurgery.md) | 145 | `declaration-track:cd2d2b0cf7e913a648b5c15c66d319a5a8ee45b0513e02448b4122c9cacbabcb` |
| 15 | `def` | [replace](../../../../Combinatorics/Submatrix.lean/declarations/replace.md) | 159 | `declaration-track:4259ecb8cd39d9337cfdb8ad98b8b5eb2e3d65e316941e602196b5984476fa46` |
| 16 | `theorem` | [replace_result](../../../../Combinatorics/Submatrix.lean/declarations/replace-result.md) | 169 | `result-track:2fa958c74f8dbb06c6c0a5214064dd2f134d6a723847a206f37277d2b1cf8cb1` |
| 17 | `theorem` | [difference_support_inside](../../../../Combinatorics/Submatrix.lean/declarations/difference-support-inside.md) | 175 | `result-track:548e2838c38ca708b432f1e5d54a7f694ab31fe456c6a0fb953a0c748d074a03` |
| 18 | `structure` | [CertifiedActionMatrixSurgery](../../../../Combinatorics/Submatrix.lean/declarations/certifiedactionmatrixsurgery.md) | 186 | `declaration-track:eb8c2b0bf44e3977b90ad1a59b6196ac833b2ae1db1d68162e9b29ba8ece0a1b` |
| 19 | `def` | [ofMatrix](../../../../Combinatorics/Submatrix.lean/declarations/ofmatrix.md) | 207 | `declaration-track:623bc429d80d4959edf4cff0194f65b47091922a8f9881393ba21fcb0453e08f` |
| 20 | `theorem` | [toMatrix_ofMatrix](../../../../Combinatorics/Submatrix.lean/declarations/tomatrix-ofmatrix.md) | 211 | `result-track:b4abc1cc0ec42bea614998fb72ae88a6fadc1e74dd664406d3ef5e6ff01d28f2` |
| 21 | `def` | [implantSubmatrix](../../../../Combinatorics/Submatrix.lean/declarations/implantsubmatrix.md) | 222 | `declaration-track:3807c48cfcd582b31c0cf99e1bda35d446a4185daca88615b6cff4849dc94022` |
| 22 | `theorem` | [implantSubmatrix_spec](../../../../Combinatorics/Submatrix.lean/declarations/implantsubmatrix-spec.md) | 229 | `result-track:a30a99e4e621d8633d5074197301f48ae935b03e0f7090f37d64c5da3606d7c9` |
| 23 | `structure` | [BitMatrix.Surgery.ArrayBackedRefinement](../../../../Combinatorics/Submatrix.lean/declarations/bitmatrix-surgery-arraybackedrefinement.md) | 244 | `declaration-track:d575f5d83478201f5c35f8b6d5c47f51d8dea3fe2750c530472ad357c793bcfa` |
| 24 | `def` | [replace](../../../../Combinatorics/Submatrix.lean/declarations/replace-source-edition-2.md) | 259 | `declaration-track:e50a7541a9f61d6a8b852edf2088b934cc86837f9f75667a068b71789c2f1481` |
| 25 | `theorem` | [replace_result_refines](../../../../Combinatorics/Submatrix.lean/declarations/replace-result-refines.md) | 272 | `result-track:240f875079322e29f5367640c7c55f2e533c695d0778ad4b6dde67752e6a7d86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8dbb52a1da85932dcfcd2296ee3f56bb1751260d15bfaeebb6d7d51dd915f32 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
