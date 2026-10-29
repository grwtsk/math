# Verification target: Charpoly Basic Namespaced Charmatrix Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76b609b58c5df1f9e6f04b48f42b50f85a435dc9",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variante37203fa2f4201fd7900628cf66f499769c0c65e70408407d40c97c7ea337284.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76b609b58c5df1f9e6f04b48f42b50f85a435dc9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variante37203fa2f4201fd7900628cf66f499769c0c65e70408407d40c97c7ea337284.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variante37203fa2f4201fd7900628cf66f499769c0c65e70408407d40c97c7ea337284.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Adjugate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Block` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MatrixPolynomialAlgebra` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [charmatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charmatrix.md) | 52 | `declaration-track:0b1542c829ddebd304fc5587162d76ae1e99c2ca9a2641a79b87bbc7092caad3` |
| 2 | `theorem` | [charmatrix_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charmatrix-apply.md) | 55 | `result-track:90d1b2f31660ec00d95b2bf51f8484987731ce633ef093b08e2da7512970ac1a` |
| 3 | `theorem` | [charmatrix_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charmatrix-apply-eq.md) | 60 | `result-track:08bd4da5268584d6d60030920f7c3553ac6ecc517240039a8bac939dcb232340` |
| 4 | `theorem` | [charmatrix_apply_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charmatrix-apply-ne.md) | 65 | `result-track:2c1c4ed8a95af09be19a166af4707590224cd04ec00b229e35d4cb8ba4f93427` |
| 5 | `theorem` | [charmatrix_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charmatrix-zero.md) | 70 | `result-track:080b091cfa1f915b5266954231557a511d1a487147b0bc8cc72c0f9a2b42e1b0` |
| 6 | `theorem` | [charmatrix_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charmatrix-diagonal.md) | 74 | `result-track:ad207ac30c968b4a2188ec598e2921be47a129f7d561d31319fc6809850300e1` |
| 7 | `theorem` | [charmatrix_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charmatrix-one.md) | 79 | `result-track:bdc1d7e1dcf195796246f3f68febc3e1c7597bee1ab59528052b9b8c2f199dcf` |
| 8 | `theorem` | [charmatrix_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charmatrix-natcast.md) | 83 | `result-track:4ae18d682ba66c10829fc0f3e05dd83004422e9376c3950357955c6d628d8d02` |
| 9 | `theorem` | [charmatrix_ofNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charmatrix-ofnat.md) | 88 | `result-track:3555beed446ed625fe203a70fe1d788cbf29f4d3515e09539d11d434c7d9b0c7` |
| 10 | `theorem` | [charmatrix_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charmatrix-transpose.md) | 93 | `result-track:2620c6d37861ee7471ba75fa048c8c03e824e0b603597255c863d89c0dbd27e4` |
| 11 | `theorem` | [matPolyEquiv_charmatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/matpolyequiv-charmatrix.md) | 96 | `result-track:b0c8af10e926887e22f8c65f21d04c37f76b369a0a609dbea4c4b544c7fe85a7` |
| 12 | `theorem` | [charmatrix_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charmatrix-reindex.md) | 107 | `result-track:cac2fd1328161eefad8a590ea16e670c1ba4f769c00b7dd2574f2075ab699a7c` |
| 13 | `lemma` | [charmatrix_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charmatrix-map.md) | 113 | `result-track:dac94337c3f13684ac508fe2e1850751cb0d706d7e513c22c14d143e7c741b54` |
| 14 | `lemma` | [charmatrix_fromBlocks](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charmatrix-fromblocks.md) | 118 | `result-track:0ee630a914c4ed76b6e6b30ee39104a33897b83211f61d69f6de02873b5bf7df` |
| 15 | `lemma` | [charmatrix_blockTriangular_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charmatrix-blocktriangular-iff.md) | 127 | `result-track:71a1452a4d02cce31ea3827f045065a8cc2291cac2214d206d0302482d2092f9` |
| 16 | `def` | [charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charpoly.md) | 135 | `declaration-track:aa203c91e70cbba8b6c0a3164690bcd6445170bf70b9c34e7bbdcfbdb78e38b9` |
| 17 | `theorem` | [eval_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/eval-charpoly.md) | 138 | `result-track:1674e9a177f84e08a44e8d72df6521ed58c564aba8b864a3aa57c6d6b3674006` |
| 18 | `theorem` | [charpoly_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charpoly-zero.md) | 146 | `result-track:ccd028c01ae62b040d3ddeaa18eb9366a57f6b1a0dc2612a38446fa38e79df13` |
| 19 | `theorem` | [charpoly_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charpoly-diagonal.md) | 149 | `result-track:d217edc1f3eacd79d2ab13fe5f906f1b9d3cf0507834d255267300937e96afb0` |
| 20 | `theorem` | [charpoly_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charpoly-one.md) | 152 | `result-track:40c8ec81fdf41c559f9af004cbef6f2d1fce1b4da780258a8e94da44ab1dcc5f` |
| 21 | `theorem` | [charpoly_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charpoly-natcast.md) | 155 | `result-track:394befc88afe4f7a4b582e305650d0585173c84ca1d587575b336b1e16b04061` |
| 22 | `theorem` | [charpoly_ofNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charpoly-ofnat.md) | 159 | `result-track:a922b82535d3b71365b78829906e7c294fab970c1ce4b4160ca6f8544b52e698` |
| 23 | `theorem` | [charpoly_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charpoly-transpose.md) | 164 | `result-track:a0033dd45dadbc012ba46624908a6d391b80c32ff5f2e05a6eaafb25e62f0ca4` |
| 24 | `theorem` | [charpoly_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charpoly-reindex.md) | 167 | `result-track:6671a8f1ff70b6af635426fb8b35d9d4a7062b6f1f49652e16d7e46109387f89` |
| 25 | `lemma` | [charpoly_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charpoly-map.md) | 172 | `result-track:c78a2a45dc295cc5afdca736672898a7bb88ed3aabef27e4fa5de5674193afbb` |
| 26 | `lemma` | [charpoly_fromBlocks_zero₁₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charpoly-fromblocks-zero-source-edition-2.md) | 178 | `result-track:b920aed84ec0a4abc9317fa21860b14bb07d24985498f3aeed22f84696c2f811` |
| 27 | `lemma` | [charpoly_fromBlocks_zero₂₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charpoly-fromblocks-zero.md) | 184 | `result-track:0b086be2e9b9f609c6c38987aa143aba8585dd4f46114344478d5b43021b1bd5` |
| 28 | `lemma` | [charmatrix_toSquareBlock](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charmatrix-tosquareblock.md) | 189 | `result-track:acd251baacc595680ccb3337ea1b0d05b8e857f19b54b74287451972587149d0` |
| 29 | `lemma` | [BlockTriangular.charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/blocktriangular-charpoly.md) | 194 | `result-track:557db5b038fbbb4b1dda836c00a23c63dcf0d22099c945e84113b25257d1025c` |
| 30 | `lemma` | [charpoly_of_upperTriangular](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/charpoly-of-uppertriangular.md) | 198 | `result-track:d5b49f340bd09bf771edc5533eb6780878c1b87b83f2e95b3e04f812ec0b413a` |
| 31 | `theorem` | [aeval_self_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicNamespacedCharmatrixZero.lean/declarations/aeval-self-charpoly.md) | 210 | `result-track:1a17fafefa4382b2738ce4a1cc3a296dee5d72e4d43bae6a9b397c897e36d806` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0bb5fa19281dd2f80188fc69027ebbe28d8a29bdb53326d49d3d5c7801ffee36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variante37203fa2f4201fd7900628cf66f499769c0c65e70408407d40c97c7ea337284.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variante37203fa2f4201fd7900628cf66f499769c0c65e70408407d40c97c7ea337284.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
