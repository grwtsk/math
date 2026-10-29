# Verification target: Lie Matrix Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "600cc77f1444d47ed4621ee90432147faffb36b2",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variantb6b0034b2680a7b9e690d00509b434c67447582d1680d1839d2631a5a63d50ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieMatrixPublic.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieMatrixPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `600cc77f1444d47ed4621ee90432147faffb36b2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variantb6b0034b2680a7b9e690d00509b434c67447582d1680d1839d2631a5a63d50ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variantb6b0034b2680a7b9e690d00509b434c67447582d1680d1839d2631a5a63d50ca.lean.json)

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
| 1 | `def` | [lieEquivMatrix'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieMatrixPublic.lean/declarations/lieequivmatrix.md) | 46 | `declaration-track:1f5b6d5b727db3943cfc2eb5ec60f2ed1358ddb56ae2804fbd70e4ed6dc5ea33` |
| 2 | `theorem` | [lieEquivMatrix'_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieMatrixPublic.lean/declarations/lieequivmatrix-apply.md) | 55 | `result-track:b2cebcb773face5b89acab7a17a7b81c856c46ba73431141bef3432dbbc61e8e` |
| 3 | `theorem` | [lieEquivMatrix'_symm_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieMatrixPublic.lean/declarations/lieequivmatrix-symm-apply.md) | 60 | `result-track:f254c6ea4e783bf042fe423dcc3c74a0897b4c2a7f62b5b1b7ec448da09ab62b` |
| 4 | `def` | [lieConj](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieMatrixPublic.lean/declarations/lieconj.md) | 67 | `declaration-track:72cb4d2ca0aac1541e609e96bf5b8e504cb68f2ee16470340c3fce13e03648a8` |
| 5 | `theorem` | [lieConj_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieMatrixPublic.lean/declarations/lieconj-apply.md) | 71 | `result-track:e1333ecbb468c858ab70d454d64af046dd32e443223153f83b91bddcd9d556a1` |
| 6 | `theorem` | [lieConj_symm_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieMatrixPublic.lean/declarations/lieconj-symm-apply.md) | 77 | `result-track:d973d7e3f25f2ffadc16860f5b6e0ad5c439ada3ac79c9a54600004a2940d41f` |
| 7 | `def` | [reindexLieEquiv](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieMatrixPublic.lean/declarations/reindexlieequiv.md) | 86 | `declaration-track:f93226ec0fab1281cd5e7ac32a5d33b6d42975daa5e765a8d877d4ad0bf2b781` |
| 8 | `theorem` | [reindexLieEquiv_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieMatrixPublic.lean/declarations/reindexlieequiv-apply.md) | 94 | `result-track:39cee08d87343f57348d7e7e8a85b2b5077101ad2a756e48a1690dc11580a16e` |
| 9 | `theorem` | [reindexLieEquiv_symm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieMatrixPublic.lean/declarations/reindexlieequiv-symm.md) | 99 | `result-track:da48d3bbb515a0e82ddbd2367ed8ea93f32872e2c1700c0de098b60c43af26bb` |
| 10 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieMatrixPublic.lean/declarations/instance-source-edition-3.md) | 103 | `declaration-track:ba88d7a197ad706c10034f62cd92cb0104d2499786b61e66aa9e6057d4426272` |
| 11 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieMatrixPublic.lean/declarations/instance.md) | 109 | `declaration-track:248fee039ee4be0ca7481d22eaface941045042e25a012197b6fa1459f037b1f` |
| 12 | `lemma` | [lie_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieMatrixPublic.lean/declarations/lie-apply.md) | 113 | `result-track:2e24c38b45e9300d9ad272684b7b6d21693bc44b87fa6dc42bc654441b34b3b3` |
| 13 | `theorem` | [toEnd_matrix](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieMatrixPublic.lean/declarations/toend-matrix.md) | 120 | `result-track:c63153e5f7153f7d83ccf732b19bf9b35350938aa6a33c9c083482ac9166606d` |
| 14 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieMatrixPublic.lean/declarations/instance-source-edition-2.md) | 124 | `declaration-track:58d335588d89572785d3625c67c40cd143ae6113ddb5d749f9ac9042f6dfaab0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ae397a2932fadd0657d837da44454d42c810f4bc76cb225a497201da0ec2df8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Matrix/Variantb6b0034b2680a7b9e690d00509b434c67447582d1680d1839d2631a5a63d50ca.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MatrixTheory/Variantb6b0034b2680a7b9e690d00509b434c67447582d1680d1839d2631a5a63d50ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
