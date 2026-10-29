# Verification target: Intermediate Field Algebraic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0017b353da7cd9de50a4de45066de620150a455d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebraic/Variantd784c409b09ba3e25bf057ccd7513bc45a9c3c5fc3e506d3e9b25aea5a6f125c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0017b353da7cd9de50a4de45066de620150a455d`.

Source path: `GRWTSK/Algebra/Algebraic/Variantd784c409b09ba3e25bf057ccd7513bc45a9c3c5fc3e506d3e9b25aea5a6f125c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebraic/Variantd784c409b09ba3e25bf057ccd7513bc45a9c3c5fc3e506d3e9b25aea5a6f125c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IntermediateField.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Tower` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Integral` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IntermediateField.coe_isIntegral_iff](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/intermediatefield-coe-isintegral-iff.md) | 21 | `result-track:42de7dd9146e4a92f2ca94bf955417d714bde1bb85c244aa71e5bb6358f412da` |
| 2 | `def` | [Subalgebra.IsAlgebraic.toIntermediateField](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/subalgebra-isalgebraic-tointermediatefield.md) | 26 | `declaration-track:5a8eab69a299b359288915dd3f673c8a50af383ee9415a22af1aa9355ac509b6` |
| 3 | `abbrev` | [Algebra.IsAlgebraic.toIntermediateField](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/algebra-isalgebraic-tointermediatefield.md) | 33 | `declaration-track:4c9fe87ce7a2c8da515a91fa4553b660565815060a4a7eb0005008db98862057` |
| 4 | `instance` | [isAlgebraic_tower_bot](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/isalgebraic-tower-bot.md) | 38 | `declaration-track:5b29eaba218998f42b631efc6bb37d4d9523f35cdd391fcff4a2563ca61f7763` |
| 5 | `instance` | [isAlgebraic_tower_top](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/isalgebraic-tower-top.md) | 41 | `declaration-track:4fd2811d4f8f3c04b81f6f85cedc3f864cd1b9645dc8aa6c3ae2b5d7d662a8fd` |
| 6 | `instance` | [finiteDimensional_left](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/finitedimensional-left.md) | 48 | `declaration-track:f89365959f16094d0262c98e9082a426c89ea71eec69e2c770a200701feaa937` |
| 7 | `instance` | [finiteDimensional_right](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/finitedimensional-right.md) | 49 | `declaration-track:d2a61aa543960031c27eeb1fe1eabd7826216850b80ccd2441d1bab35664fc52` |
| 8 | `theorem` | [rank_eq_rank_subalgebra](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/rank-eq-rank-subalgebra.md) | 52 | `result-track:fbcb0e7aa3932e1cc91852a04e2a6e4593c25d96f5477dd902c097aa0869999f` |
| 9 | `theorem` | [finrank_eq_finrank_subalgebra](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/finrank-eq-finrank-subalgebra.md) | 56 | `result-track:797545a2bb31ccef328a4a403315645f73611dfbd912c16c94cb6216f76e2c2b` |
| 10 | `theorem` | [eq_of_le_of_finrank_le](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/eq-of-le-of-finrank-le-source-edition-2.md) | 63 | `result-track:b22bb5e55420d99b8e75403b3fb8cf1711190a26697d1b6932e1ebf386f41843` |
| 11 | `theorem` | [eq_of_le_of_finrank_eq](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/eq-of-le-of-finrank-eq.md) | 70 | `result-track:c3e98eac468ef1ae9db9b67232f6b04e16d7a8b12a850c53392ba0894d6fae02` |
| 12 | `theorem` | [eq_of_le_of_finrank_le''](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/eq-of-le-of-finrank-le.md) | 78 | `result-track:4e1996edcc78fa61ad456424e6da8c0120d59223cd66fc3937ae5c270578a876` |
| 13 | `theorem` | [eq_of_le_of_finrank_le'](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/eq-of-le-of-finrank-le-source-edition-3.md) | 88 | `result-track:e9c0c57c4c548c7c80f8c289ac132a35c7ca1c6245cc55e735f3d6ead13460b8` |
| 14 | `theorem` | [eq_of_le_of_finrank_eq'](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/eq-of-le-of-finrank-eq-source-edition-2.md) | 96 | `result-track:d3213b63b32a45247946ab7aea6f00f8439a0260825c239f52a9339759339d7a` |
| 15 | `instance` | [finiteDimensional_map](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/finitedimensional-map.md) | 102 | `declaration-track:f59e7c913af624f4043c05ac39de1c6b73c0c66b9580ef980389d4a44fa70649` |
| 16 | `theorem` | [isAlgebraic_iff](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/isalgebraic-iff.md) | 111 | `result-track:cc1c15353ac914aab19aeecd466040ce6bf7970d33c8c145528a897063aededf` |
| 17 | `theorem` | [isIntegral_iff](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/isintegral-iff.md) | 114 | `result-track:37ddb0a11eeda8d3b6e2fe5f7722392254150b9313bd0f24606c41d780c44ffe` |
| 18 | `theorem` | [minpoly_eq](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/minpoly-eq.md) | 117 | `result-track:e8ef4cf9aff00e529b1f6df5aaae814ee8dd0f33686a72e1d7046c2c92569f75` |
| 19 | `def` | [subalgebraEquivIntermediateField](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/subalgebraequivintermediatefield.md) | 123 | `declaration-track:9246f55251fac6111d4068cce1d1f35908d73ce253b8bc33faf20ee5dacdd5de` |
| 20 | `theorem` | [mem_subalgebraEquivIntermediateField](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/mem-subalgebraequivintermediatefield.md) | 133 | `result-track:3be186cf560d13bcf8ca53a6630947eb8b99c1318209c704ffcc06216546d61a` |
| 21 | `theorem` | [mem_subalgebraEquivIntermediateField_symm](../../../../FieldTheoryAndPolynomials/IntermediateFieldAlgebraic.lean/declarations/mem-subalgebraequivintermediatefield-symm.md) | 138 | `result-track:a0f8a8531fefac2e7d8d51d3723dc54cf5fac402a407786727ccf362413b7dfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef64d08054620f8bad2fd8d77449f7a16c5c932bf3c3b61e9024a6b31221b3ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Algebraic/Variantd784c409b09ba3e25bf057ccd7513bc45a9c3c5fc3e506d3e9b25aea5a6f125c.lean","GRWTSK/_verification/specifications/Algebra/Algebraic/Variantd784c409b09ba3e25bf057ccd7513bc45a9c3c5fc3e506d3e9b25aea5a6f125c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
