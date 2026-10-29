# Verification target: Of Fn

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7030f2c9038b1db21ee29d97438a6a537b50dd23",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFn.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7030f2c9038b1db21ee29d97438a6a537b50dd23`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.ToFinsupp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFn](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFn.lean/declarations/tofn.md) | 30 | `declaration-track:8747f688876ee16a6547ca30b0f66aa5f7d2ddc500be62476219ab402c5f8ab5` |
| 2 | `theorem` | [toFn_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFn.lean/declarations/tofn-zero.md) | 32 | `result-track:210b9e8bea972b44601f02ad6f662a44ab76e931a831289a50d902537149f7f2` |
| 3 | `def` | [ofFn](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFn.lean/declarations/offn.md) | 40 | `declaration-track:5c35427aefd298b24aaa8eb8be3c87c32ee4899773bf75c83c7138656e634198` |
| 4 | `theorem` | [ofFn_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFn.lean/declarations/offn-zero.md) | 53 | `result-track:124afb26624c620e13fefcd8ef844892e1a807d575e1a5f7ec38c418dcb8f9b9` |
| 5 | `theorem` | [ofFn_zero'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFn.lean/declarations/offn-zero-source-edition-2.md) | 56 | `result-track:9638d32bdb4cb6950899c44565df8b23143d3cc72597d68215b46f29036f9344` |
| 6 | `lemma` | [ne_zero_of_ofFn_ne_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFn.lean/declarations/ne-zero-of-offn-ne-zero.md) | 58 | `result-track:2499685fbaf4a8bede337304d98776771f7fa38c924f99d3871804ebcf6e05c1` |
| 7 | `theorem` | [ofFn_coeff_eq_val_of_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFn.lean/declarations/offn-coeff-eq-val-of-lt.md) | 65 | `result-track:751dad81f5429400f3797c110896788a40f31c909f7705d23fd19ec45b67f3aa` |
| 8 | `theorem` | [ofFn_coeff_eq_zero_of_ge](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFn.lean/declarations/offn-coeff-eq-zero-of-ge.md) | 71 | `result-track:aae54fb0197e3ea536a0cbd5bd0a1c8068993772813d0ac77410f9a30013a8a7` |
| 9 | `theorem` | [ofFn_natDegree_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFn.lean/declarations/offn-natdegree-lt.md) | 75 | `result-track:6ae42b9292aa686e09496b72657515bbf85cbb6123022ce52cddc8ffa7479eac` |
| 10 | `theorem` | [ofFn_degree_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFn.lean/declarations/offn-degree-lt.md) | 80 | `result-track:e2bcda44d2e5480b774dbeb8edac546c79d0436b37f67aabf0c6467065d241eb` |
| 11 | `theorem` | [ofFn_eq_sum_monomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFn.lean/declarations/offn-eq-sum-monomial.md) | 87 | `result-track:db1b5997e4a791ffb4e80349fe28fc0538805cdeff7d0ed707f8ab0b296bf382` |
| 12 | `theorem` | [toFn_comp_ofFn_eq_id](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFn.lean/declarations/tofn-comp-offn-eq-id.md) | 95 | `result-track:a6d3eb759ebb9806136477f1ec08d87fbe8b8e708f8538b4568ec4f713f1d984` |
| 13 | `theorem` | [injective_ofFn](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFn.lean/declarations/injective-offn.md) | 98 | `result-track:f2a71c4a81dc8ee6965cda500cec4f02e33eb7f7b8ee6bcaaa8ea739f639c258` |
| 14 | `theorem` | [surjective_toFn](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFn.lean/declarations/surjective-tofn.md) | 102 | `result-track:741548eeba4ff5735fb3c32850d56f2cd55ed3bf3cc65e15d288cc8e645a43bb` |
| 15 | `theorem` | [ofFn_comp_toFn_eq_id_of_natDegree_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFn.lean/declarations/offn-comp-tofn-eq-id-of-natdegree-lt.md) | 106 | `result-track:4721faf0c6aed6f26449d32b68a2784eeaf96b9caa9f227a88f214db3e8df19f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f2227a990ecc0260796191c15cd3fa4e1b415b304a72d11362c8c23d9572bf0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
