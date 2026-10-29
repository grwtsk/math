# Verification target: Graded Algebra Basic Coe Decompose Mul Of Left Mem Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d489f80f45eb204612b62a2bc3108996b5443a18",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantb7325d4f639fa59c3917a8c6c4402a58a327a2a8676eea4a558d4a95792a62d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/index.md) · [Full source](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d489f80f45eb204612b62a2bc3108996b5443a18`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variantb7325d4f639fa59c3917a8c6c4402a58a327a2a8676eea4a558d4a95792a62d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variantb7325d4f639fa59c3917a8c6c4402a58a327a2a8676eea4a558d4a95792a62d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Decomposition` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Internal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GradedRing](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/gradedring.md) | 63 | `declaration-track:cd257b597296736bbea83b949aafb69ddad250feb12b35e8e17f4f00308ffefa` |
| 2 | `def` | [decomposeRingEquiv](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/decomposeringequiv.md) | 71 | `declaration-track:65d7985a7f309541995dae173524041154e7ab053cbdafc5c6b72cc9656659f9` |
| 3 | `theorem` | [decompose_one](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/decompose-one.md) | 77 | `result-track:2553e272800f4d2f351ef7e8b0fae17c0af48a883f6143c03f8eb7abd6266dd8` |
| 4 | `theorem` | [decompose_symm_one](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/decompose-symm-one.md) | 81 | `result-track:0e4fad621dec78ccf1d484a11cd0e1ba280344cd9a128f2130946d26b28c2085` |
| 5 | `theorem` | [decompose_mul](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/decompose-mul.md) | 85 | `result-track:de28505bce4d713cbcb6bd2c53ec69bf217333103a7d6dbd7ea3475a11aa101a` |
| 6 | `theorem` | [decompose_symm_mul](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/decompose-symm-mul.md) | 89 | `result-track:907d3ad98d19863c2bee9d29fc67561ed15490446d7a19ecdd5f5fa768d9a8b2` |
| 7 | `def` | [GradedRing.proj](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/gradedring-proj.md) | 96 | `declaration-track:9ebd1cada6e934060fd7ed60b4fa6a17ddbcbf687668133cea07b86c2b86464b` |
| 8 | `theorem` | [GradedRing.proj_apply](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/gradedring-proj-apply.md) | 102 | `result-track:2a84df1e7b35d22ed226dc8aadd8a48615aa73e8acdd0f02a5939241963c38af` |
| 9 | `theorem` | [GradedRing.proj_recompose](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/gradedring-proj-recompose.md) | 106 | `result-track:46493f49c6b6faee3662dc28cff11bc321af52441e1312c7f4ce8448e54bb844` |
| 10 | `theorem` | [GradedRing.mem_support_iff](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/gradedring-mem-support-iff.md) | 110 | `result-track:4fcc7577d4be14c13d4999bb028e8f4d0fb9320b91a8ce3c8c43410a956b739b` |
| 11 | `theorem` | [coe_decompose_mul_add_of_left_mem](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/coe-decompose-mul-add-of-left-mem.md) | 125 | `result-track:e3c4c8722ce8e27e6293e0136d2da5bb4b61d7ee9d6ee26bbc03f75b37ff805e` |
| 12 | `theorem` | [coe_decompose_mul_add_of_right_mem](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/coe-decompose-mul-add-of-right-mem.md) | 130 | `result-track:b8a49972b0150c87cadbd537dc3039d03899bf8c0d2fc08f30999370fd61e773` |
| 13 | `theorem` | [decompose_mul_add_left](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/decompose-mul-add-left.md) | 135 | `result-track:79ce4a47821c0d7b3a501606603c69374d4699bbb7fd35e1e447a8dca089a070` |
| 14 | `theorem` | [decompose_mul_add_right](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/decompose-mul-add-right.md) | 140 | `result-track:856692474592faabc97164d0b2feadb27ba1eec568bf9795b80e85a4326ae941` |
| 15 | `theorem` | [coe_decompose_mul_of_left_mem_zero](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/coe-decompose-mul-of-left-mem-zero.md) | 145 | `result-track:d867eef7f3f6d1ae31557f9cd887fe2f353df6163da1b26a9f4cd91e7774b202` |
| 16 | `theorem` | [coe_decompose_mul_of_right_mem_zero](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/coe-decompose-mul-of-right-mem-zero.md) | 150 | `result-track:c4ed10c0eef014519713553734c44f8e8008aed28ba6ae624be0cb9b9d64e5a0` |
| 17 | `abbrev` | [GradedAlgebra](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/gradedalgebra.md) | 166 | `declaration-track:6789bc1d7c6b55e929a4a2811a4cf43307183a884427a8344f174353efa3ab6f` |
| 18 | `abbrev` | [GradedAlgebra.ofAlgHom](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/gradedalgebra-ofalghom.md) | 174 | `declaration-track:139a0b93d5aa2d7d2cb7da5d83df81b54f5c3ac7ef7367b55e370446edfca4b7` |
| 19 | `def` | [decomposeAlgEquiv](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/decomposealgequiv.md) | 192 | `declaration-track:3e655428ef7099c3ec56bea0777d6d985d6d33c639e7cec70f9ca912c477016d` |
| 20 | `lemma` | [decomposeAlgEquiv_apply](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/decomposealgequiv-apply.md) | 199 | `result-track:34d0fb06deb9eaa856baef0ff87be7eb81b2720b4f0dd6451dbfe4a840f0e6a2` |
| 21 | `lemma` | [decomposeAlgEquiv_symm_apply](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/decomposealgequiv-symm-apply.md) | 203 | `result-track:cb4a2d154b10147b29016056bd07c24309dc4f66e8ccdd12df96fc46eb2bd383` |
| 22 | `lemma` | [decompose_algebraMap](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/decompose-algebramap.md) | 207 | `result-track:c3cfaf6ac5d89e8718ec02014c7d7eadab450e04aab7cd84a70c02704c2c73a5` |
| 23 | `lemma` | [decompose_symm_algebraMap](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/decompose-symm-algebramap.md) | 212 | `result-track:fae03ebc793674ede5fb0a252d97b6ffb3383e17a0b04a10b8798cc071f8f1c7` |
| 24 | `def` | [GradedAlgebra.proj](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/gradedalgebra-proj.md) | 221 | `declaration-track:84d216aad25d0756c55e74d76fe2a97f40d3f5da275ee84285a6abfda3cc4b0a` |
| 25 | `theorem` | [GradedAlgebra.proj_apply](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/gradedalgebra-proj-apply.md) | 225 | `result-track:dbbbb3edfaf1d4f1e8c0f4bb9ed52fbe407519a8c47bfbef8d9fda4e60e757df` |
| 26 | `theorem` | [GradedAlgebra.proj_recompose](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/gradedalgebra-proj-recompose.md) | 229 | `result-track:5bcde7758a3ac1846452fe3bb4a3c8688e6266799b4fb697fd61460ba963af4d` |
| 27 | `theorem` | [GradedAlgebra.mem_support_iff](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/gradedalgebra-mem-support-iff.md) | 233 | `result-track:92815449e0a610bda664d8c0131d92560fe433efed71daa58fe1f83ace888dc9` |
| 28 | `def` | [GradedRing.projZeroRingHom](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/gradedring-projzeroringhom.md) | 251 | `declaration-track:410c1bb8a679a019fd244a4444bfabf3ea8fbd4570a58e9f36480e25acb66845` |
| 29 | `def` | [GradedRing.projZeroRingHom'](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/gradedring-projzeroringhom-source-edition-2.md) | 291 | `declaration-track:951dbb53da54b578452aea640f7b857ba619d4aac524be2c4b39368d455e5e9d` |
| 30 | `lemma` | [GradedRing.coe_projZeroRingHom'_apply](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/gradedring-coe-projzeroringhom-apply.md) | 295 | `result-track:3f8f34b9c4680f879e52948d0abf5d0b8cd91c0df69b7b155488f230dad84a50` |
| 31 | `lemma` | [GradedRing.projZeroRingHom'_apply_coe](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/gradedring-projzeroringhom-apply-coe.md) | 298 | `result-track:9b93e69425fcbd6734852f71c8ea799337e0c9060e2942114d635d9eb3d0ed4d` |
| 32 | `lemma` | [GradedRing.projZeroRingHom'_surjective](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/gradedring-projzeroringhom-surjective.md) | 303 | `result-track:2a858811ef6fe77bd0e0fc78bde5aabf916794df6d3aa979505181bcc650c75a` |
| 33 | `theorem` | [coe_decompose_mul_of_left_mem_of_not_le](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/coe-decompose-mul-of-left-mem-of-not-le.md) | 313 | `result-track:296cd3fdef0755f67e2ce751715bd475e0c5c45c2fcfb727370cba497f686e44` |
| 34 | `theorem` | [coe_decompose_mul_of_right_mem_of_not_le](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/coe-decompose-mul-of-right-mem-of-not-le.md) | 318 | `result-track:9597c9ea55d638e8da1099cd3870d503ad28dd18f1d23f5df59f00432ba69f19` |
| 35 | `theorem` | [coe_decompose_mul_of_left_mem_of_le](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/coe-decompose-mul-of-left-mem-of-le.md) | 325 | `result-track:007418bb1b87f477ebc04dba0575ba45435b76b1cde0ff7701585a9816ee1ae6` |
| 36 | `theorem` | [coe_decompose_mul_of_right_mem_of_le](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/coe-decompose-mul-of-right-mem-of-le.md) | 330 | `result-track:7f27b0b36ce3e068f58e92ca86e59031d8cac5f2573bf6947a03face3bc344a5` |
| 37 | `theorem` | [coe_decompose_mul_of_left_mem](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/coe-decompose-mul-of-left-mem.md) | 335 | `result-track:6d403f51d06a8c1681bd9c52d562dd478a501d3a9421efb0587a0bda58bd6385` |
| 38 | `theorem` | [coe_decompose_mul_of_right_mem](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/coe-decompose-mul-of-right-mem.md) | 340 | `result-track:b6261b8e9b40849d824e0a77e4bea9fe945bee696d07294a278b2c99d220c634` |
| 39 | `def` | [coeAlgEquiv](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/coealgequiv.md) | 357 | `declaration-track:647d463ff178b0367114e98b319565083d48d89846c700c2f2ed0cf8c1e83a46` |
| 40 | `def` | [gradedAlgebra](../../../../CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/declarations/gradedalgebra-source-edition-2.md) | 367 | `declaration-track:e9c1d78312df1536b491be08612e7984a2769166968ca943f7ccfe7ad3fc5d02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58c7fd06769dd003e5231f84bfa13f3cc1169db2f1c53b41986f915f6941aea5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variantb7325d4f639fa59c3917a8c6c4402a58a327a2a8676eea4a558d4a95792a62d3.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Basic/Variantb7325d4f639fa59c3917a8c6c4402a58a327a2a8676eea4a558d4a95792a62d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
