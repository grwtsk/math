# Verification target: Morita Matrix Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbd3806641358a1b520ad3d2ee0b7fb338c309bf",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variantdb3d90ea181ebbeff30a98171840552266a3858b3cd905712c5430cd047bd06e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/MoritaMatrixPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/MoritaMatrixPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbd3806641358a1b520ad3d2ee0b7fb338c309bf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variantdb3d90ea181ebbeff30a98171840552266a3858b3cd905712c5430cd047bd06e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variantdb3d90ea181ebbeff30a98171840552266a3858b3cd905712c5430cd047bd06e.lean.json)

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
| 1 | `def` | [ModuleCat.toMatrixModCat](../../../../CommutativeAlgebra/MoritaMatrixPublic.lean/declarations/modulecat-tomatrixmodcat.md) | 41 | `declaration-track:eec0d5d19ec69452f754fd565a841c0744043faf6bb88a6dadcbacc2fcb0f49b` |
| 2 | `def` | [toModuleCatObj](../../../../CommutativeAlgebra/MoritaMatrixPublic.lean/declarations/tomodulecatobj.md) | 59 | `declaration-track:5d73509a3531489f00adf8664dc2de2f391ad79455241a83f8cf23c77caa2d1f` |
| 3 | `lemma` | [mem_toModuleCatObj](../../../../CommutativeAlgebra/MoritaMatrixPublic.lean/declarations/mem-tomodulecatobj.md) | 72 | `result-track:bf76a4d36c903f5e0b0228619eb2cdca4bea0dd665528ef8bfb2e671a825ffdc` |
| 4 | `def` | [fromMatrixLinear](../../../../CommutativeAlgebra/MoritaMatrixPublic.lean/declarations/frommatrixlinear.md) | 80 | `declaration-track:f5e07005024298ee50eab27a56bcf1b16da501a70926e5881fe3e3f002a1b0b5` |
| 5 | `lemma` | [MatrixModCat.isScalarTower_toModuleCat](../../../../CommutativeAlgebra/MoritaMatrixPublic.lean/declarations/matrixmodcat-isscalartower-tomodulecat.md) | 91 | `result-track:6b37fba5ac40d85a5fbee5115e9894da39c56e98f9cad46ad286696fe6a7808e` |
| 6 | `def` | [MatrixModCat.toModuleCat](../../../../CommutativeAlgebra/MoritaMatrixPublic.lean/declarations/matrixmodcat-tomodulecat.md) | 101 | `declaration-track:99e475a83a266b73eb6f7e8397b712919274842e77b018dd49bc90d523706ff4` |
| 7 | `def` | [fromModuleCatToModuleCatLinearEquivtoModuleCatObj](../../../../CommutativeAlgebra/MoritaMatrixPublic.lean/declarations/frommodulecattomodulecatlinearequivtomodulecatobj.md) | 112 | `declaration-track:1f8734ef1b3dc969332a05f4783c04091328cfb78864209b3ca7662fb72e623f` |
| 8 | `def` | [fromModuleCatToModuleCatLinearEquiv](../../../../CommutativeAlgebra/MoritaMatrixPublic.lean/declarations/frommodulecattomodulecatlinearequiv.md) | 121 | `declaration-track:4381992a5070ff6d824552da6a28ebf62b758e99ff86f415d09abaad49a22edc` |
| 9 | `def` | [MatrixModCat.unitIso](../../../../CommutativeAlgebra/MoritaMatrixPublic.lean/declarations/matrixmodcat-unitiso.md) | 135 | `declaration-track:8e927e2a835466682bed3b9ed6a06ae3ec3e2465131bbeddc3f56bdf3bf9e086` |
| 10 | `def` | [toModuleCatFromModuleCatLinearEquiv](../../../../CommutativeAlgebra/MoritaMatrixPublic.lean/declarations/tomodulecatfrommodulecatlinearequiv.md) | 144 | `declaration-track:f7610544df3bd5549f765732f1e9d3710b9214a70b5577ad3742f90e3abfb584` |
| 11 | `def` | [MatrixModCat.counitIso](../../../../CommutativeAlgebra/MoritaMatrixPublic.lean/declarations/matrixmodcat-counitiso.md) | 175 | `declaration-track:6c9d711452fc9bbae36b31aec46e0ba5978a4bf6516e945362a5d3bf4ca5cd48` |
| 12 | `def` | [ModuleCat.matrixEquivalence](../../../../CommutativeAlgebra/MoritaMatrixPublic.lean/declarations/modulecat-matrixequivalence.md) | 187 | `declaration-track:99525e735e99ebce3aa3fc3df9a3c377506cd334b7855b1ba212999cd3fbc390` |
| 13 | `def` | [moritaEquivalenceMatrix](../../../../CommutativeAlgebra/MoritaMatrixPublic.lean/declarations/moritaequivalencematrix.md) | 205 | `declaration-track:83499b1452fee3f0c89c5804fbc149c34d79aecdb38f8a26a8331ce4a5009d4f` |
| 14 | `theorem` | [IsMoritaEquivalent.matrix](../../../../CommutativeAlgebra/MoritaMatrixPublic.lean/declarations/ismoritaequivalent-matrix.md) | 218 | `result-track:fb3920c9ba17756bb17497f4015381aa80e0d1505514e317141bcd2d036cd8ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90730985cc51a376d0e615716d25bef0fd1f278fac46eb7dcc6a2cd9cbd04a86 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Matrix/Variantdb3d90ea181ebbeff30a98171840552266a3858b3cd905712c5430cd047bd06e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MatrixTheory/Variantdb3d90ea181ebbeff30a98171840552266a3858b3cd905712c5430cd047bd06e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
