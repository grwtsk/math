# Verification target: Hilbert Theory Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cdda5ee69f08d3e77c9d1a9a523067f05bd15ed",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/HilbertTheory/Variantde1e1a63463f6add4a9eeec5037b72fc4d0a9563f870b26240ef56e37348e7f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cdda5ee69f08d3e77c9d1a9a523067f05bd15ed`.

Source path: `GRWTSK/Algebra/HilbertTheory/Variantde1e1a63463f6add4a9eeec5037b72fc4d0a9563f870b26240ef56e37348e7f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/HilbertTheory/Variantde1e1a63463f6add4a9eeec5037b72fc4d0a9563f870b26240ef56e37348e7f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsDecompositionField](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/isdecompositionfield.md) | 66 | `declaration-track:ef3d3f7d21fa260a36b7a3a40aa83fe1553560bb3a0e89cfac674062cbc415ad` |
| 2 | `instance` | [(anonymous)](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 69 | `declaration-track:13be5c3e4fba7d1714212462e03826f8d485e89dbae337f78662be5d68747296` |
| 3 | `class` | [IsInertiaField](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/isinertiafield.md) | 80 | `declaration-track:0f64bbd5be31bc9d54a199e511fb051d2a0f972d55ed88425a58ddb391f3946f` |
| 4 | `instance` | [(anonymous)](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/instance.md) | 83 | `declaration-track:0144bbc289daaa6ab94fb7eefef5c17300820a50369862991d95f7d4cddfd9bd` |
| 5 | `instance` | [(anonymous)](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 88 | `declaration-track:a7af79a8788c10f7b077f1324a56691659f2fba37134cc31daf3a00c121cea0e` |
| 6 | `instance` | [(anonymous)](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 92 | `declaration-track:02fb70244d4876db5dafc93f993413392ef9f1482a97a020138a154ad37fe9a5` |
| 7 | `theorem` | [IsDecompositionField.of_isGaloisGroup](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/isdecompositionfield-of-isgaloisgroup.md) | 107 | `result-track:abeaed6c360fde234eda1cba1e59133bb858bd6b380d21059bb869d08f2bd7ec` |
| 8 | `theorem` | [IsInertiaField.of_isGaloisGroup](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/isinertiafield-of-isgaloisgroup.md) | 121 | `result-track:86191e81be46918d1c8775f1e1b3bcb58d19147ef46ecad6342370d71809e4e6` |
| 9 | `def` | [IsDecompositionField.ringEquiv](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/isdecompositionfield-ringequiv.md) | 136 | `declaration-track:903e5ed7741917f1193d8590faf45a0c8f09fc35f6172e2508f5e131825c10f8` |
| 10 | `theorem` | [IsDecompositionField.algebraMap_ringEquiv_apply](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/isdecompositionfield-algebramap-ringequiv-apply.md) | 142 | `result-track:7ef8684a1a77b40da1208fa72ca21931e646561a4d3b33f2d7cab10213dcd013` |
| 11 | `theorem` | [IsDecompositionField.algebraMap_ringEquiv_symm_apply](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/isdecompositionfield-algebramap-ringequiv-symm-apply.md) | 148 | `result-track:1c753a0066b92c1ad35cb6e7c1d4c91d31f00827dc7b317c0350c8a92e61daad` |
| 12 | `def` | [IsInertiaField.ringEquiv](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/isinertiafield-ringequiv.md) | 154 | `declaration-track:c5c298079c716c37d114ba61738d2bb735bab730512b8180bb8d35df242231d1` |
| 13 | `theorem` | [IsInertiaField.algebraMap_ringEquiv_apply](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/isinertiafield-algebramap-ringequiv-apply.md) | 159 | `result-track:f35d5ee64cc5175aaae31d5777d3d6233e46e7af86113f05c6f82d85f55cdcea` |
| 14 | `theorem` | [IsInertiaField.algebraMap_ringEquiv_symm_apply](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/isinertiafield-algebramap-ringequiv-symm-apply.md) | 165 | `result-track:ae4fbafa3d08fffbb627c274af74393a737acbc0561127ec287e984c1510e753` |
| 15 | `theorem` | [IsDecompositionField.rank_left](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/isdecompositionfield-rank-left.md) | 188 | `result-track:c3bc4e22b29fb6da9c17e9dc5e6f5388c6558844fe5feca19580de5fd3819631` |
| 16 | `theorem` | [IsDecompositionField.rank_right](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/isdecompositionfield-rank-right.md) | 198 | `result-track:4dc252f17aff2cccb79e42eb38419dc0be1106de3646f46e383cc3e1f75e1f6e` |
| 17 | `theorem` | [IsInertiaField.rank_left](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/isinertiafield-rank-left.md) | 214 | `result-track:a51c1fff0b2e6cf4c75ef582cae120dfc333c90c75734286f8ddaf7203587d04` |
| 18 | `theorem` | [IsInertiaField.rank_right](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/isinertiafield-rank-right.md) | 224 | `result-track:ad246bf7afa8c53d123e9678b58331f4bea0575f7d136eeadc402078635cea14` |
| 19 | `theorem` | [IsInertiaField.rank_decompositionField](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/isinertiafield-rank-decompositionfield.md) | 238 | `result-track:0c43f396d9339d7591634a48aeffd6b2374999e0aa6324e3c5c2cf637d25cb7e` |
| 20 | `theorem` | [primesOver_eq_singleton](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/primesover-eq-singleton.md) | 266 | `result-track:ab20f363b3de07889cbdf81617d4a21796c3687f12e03d24e148739c326d2ba7` |
| 21 | `lemma` | [instances](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/instances.md) | 281 | `result-track:ff8e14a2f7a45d11a2802a8f9b7851f70f240b36560845b100fe7dcf08beaceb` |
| 22 | `lemma` | [ramificationIdxIn_eq_and_inertiaDegIn_eq](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/ramificationidxin-eq-and-inertiadegin-eq.md) | 296 | `result-track:448f034b0a83296a5c1d8708c186b8e55a392b6f126b4cc53c077c14009aab66` |
| 23 | `theorem` | [ramificationIdxIn_eq](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/ramificationidxin-eq.md) | 318 | `result-track:bae71935a79328be54af257b204cf5ccda974880fa9383392e7daacd73244e85` |
| 24 | `theorem` | [inertiaDegIn_eq](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/inertiadegin-eq.md) | 327 | `result-track:ef5cb7de2a863ea44bb6f326b62ca8cd7d483fae5f30668b321518639eba36f9` |
| 25 | `theorem` | [ramificationIdx_eq](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/ramificationidx-eq.md) | 336 | `result-track:b0ded2bdfb60d1fd44d7d7ee82e18200941bdd23baa3232fd67855b8d555303d` |
| 26 | `theorem` | [inertiaDeg_eq](../../../../NumberTheory/HilbertTheoryNamespacedPublic.lean/declarations/inertiadeg-eq.md) | 349 | `result-track:faca023c07bb96ecd84601787e5d3dbf0e6887fe4ac16a8e1eff2783e70574ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7da191413623e304487ad634e5d4df7ab69383e1be11b9a0241f9d07dcbf9d35 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/HilbertTheory/Variantde1e1a63463f6add4a9eeec5037b72fc4d0a9563f870b26240ef56e37348e7f6.lean","GRWTSK/_verification/specifications/Algebra/HilbertTheory/Variantde1e1a63463f6add4a9eeec5037b72fc4d0a9563f870b26240ef56e37348e7f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
