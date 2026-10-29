# Verification target: Algebra Polynomial Inductions Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3215b9b09b8cbc1a7138ee1db9827d6def02ebcf",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variant4318beccfd0106f1b891d3bbc2fc80a75b9376aa879b0d06d4b562a25becb0fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3215b9b09b8cbc1a7138ee1db9827d6def02ebcf`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variant4318beccfd0106f1b891d3bbc2fc80a75b9376aa879b0d06d4b562a25becb0fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Inductions/Variant4318beccfd0106f1b891d3bbc2fc80a75b9376aa879b0d06d4b562a25becb0fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Division` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Operations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.EraseLead` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divX](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/declarations/divx.md) | 44 | `declaration-track:3bcd34e5ce6885363452c8812eb1b6f5524d183fc1a83af5febb120d8343ad11` |
| 2 | `theorem` | [coeff_divX](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/declarations/coeff-divx.md) | 48 | `result-track:05c5674df67a16c1f3e65d858afe46ac7ced9934ea2d4b05c6e3b7bcb2626cff` |
| 3 | `theorem` | [divX_mul_X_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/declarations/divx-mul-x-add.md) | 51 | `result-track:a57a775539064f3a91a16f5fa76b70561119503a87f22d4d5b60fda8fe80448f` |
| 4 | `theorem` | [X_mul_divX_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/declarations/x-mul-divx-add.md) | 55 | `result-track:319223be4462726f75bdd36f9d51f4f150899a8061003ba62944f527e765ac14` |
| 5 | `theorem` | [divX_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/declarations/divx-c.md) | 59 | `result-track:c1ee8d491957ea2e1c39074a447bb8bac81fc10e51f987768c7f8acd884a8ae0` |
| 6 | `theorem` | [divX_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/declarations/divx-eq-zero-iff.md) | 62 | `result-track:26df85312e423ea29f2a35316763457bca16db44b7756a1a477392101d2c14dc` |
| 7 | `theorem` | [divX_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/declarations/divx-add.md) | 65 | `result-track:fe60d033a4107d9d7ab0a303afc683348dd5deabd52fe151ee3dd7732ce0eed3` |
| 8 | `theorem` | [divX_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/declarations/divx-zero.md) | 69 | `result-track:a9a329bf657ea6733da96a69afd17228e0180d7fe31597ead3e1ca60401dc6fa` |
| 9 | `theorem` | [divX_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/declarations/divx-one.md) | 72 | `result-track:009d7f73facf0dcc7d4a9878fd181b4713fbfeeda8ceb1440bfd2300f08dafa0` |
| 10 | `theorem` | [divX_C_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/declarations/divx-c-mul.md) | 77 | `result-track:f08e745fa4543f8c769ae8c553867ee7acafde5eaf9e737e34e0902ecb78b827` |
| 11 | `theorem` | [divX_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/declarations/divx-x-pow.md) | 81 | `result-track:daf9b4ea8e0d5f6d264f1ea1af0e9bbd6f40019cbe8dfbda77db91470ad6694c` |
| 12 | `def` | [divX_hom](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/declarations/divx-hom.md) | 89 | `declaration-track:379d2f91185fd7286d3bb7163226003dc6a4a915017e8d57f8b232819258faf7` |
| 13 | `theorem` | [divX_hom_toFun](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/declarations/divx-hom-tofun.md) | 94 | `result-track:4981f08b5e412bfba2b5ef5d733116fb3e2658b2d750fbed570f4e98a49dfc39` |
| 14 | `theorem` | [natDegree_divX_eq_natDegree_tsub_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/declarations/natdegree-divx-eq-natdegree-tsub-one.md) | 96 | `result-track:db848feef5e11026316b321f12bf0cbac26bab729b52924a1d34724dd38124ea` |
| 15 | `theorem` | [natDegree_divX_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/declarations/natdegree-divx-le.md) | 106 | `result-track:70b5f66481cfb580d4ba0836aab7ed9823d1ad68245c4dfb4da2dbaa3168e716` |
| 16 | `theorem` | [divX_C_mul_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/declarations/divx-c-mul-x-pow.md) | 109 | `result-track:6988d35b7b715890f70245ba81c91b045a57304062d80dabaa55c30e0d1eeacf` |
| 17 | `theorem` | [degree_divX_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/declarations/degree-divx-lt.md) | 112 | `result-track:a34a567c992377914c29f8274f7c7049977ad6da2b30dc3dbd4b48a4a5e0ec0a` |
| 18 | `def` | [recOnHorner](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/declarations/reconhorner.md) | 140 | `declaration-track:1953e220ae3d6663f102b231ffd6677824993052bc99b3099e032f7a23466770` |
| 19 | `theorem` | [degree_pos_induction_on](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/declarations/degree-pos-induction-on.md) | 169 | `result-track:cecc8cdc2328d13cdd576b83bbf359e332f1f1ae376343cbe1565706b051c930` |
| 20 | `theorem` | [natDegree_ne_zero_induction_on](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialInductionsNamespaced.lean/declarations/natdegree-ne-zero-induction-on.md) | 197 | `result-track:238d8cefff473751f58ace2f9cee2ee2cc0ffcbffaa643a46b1ab92b3ea3ff49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6bec773d8fe85a505ed21f50e4b6a1140e5bdfd5a1d7a28c84ad33f44f27fd8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variant4318beccfd0106f1b891d3bbc2fc80a75b9376aa879b0d06d4b562a25becb0fe.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Inductions/Variant4318beccfd0106f1b891d3bbc2fc80a75b9376aa879b0d06d4b562a25becb0fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
