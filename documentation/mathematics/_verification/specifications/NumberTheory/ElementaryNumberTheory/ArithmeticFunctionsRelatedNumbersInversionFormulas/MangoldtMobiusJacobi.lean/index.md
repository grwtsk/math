# Verification target: Mangoldt Mobius Jacobi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f01a4b55d6db58d88e5439912839c3a06070537",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variantc018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f01a4b55d6db58d88e5439912839c3a06070537`.

Source path: `GRWTSK/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variantc018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variantc018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Block` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedDilation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/signeddilation.md) | 33 | `declaration-track:a74edd346ef1d1af2969b746ca786b79e2ed5b24a7bb713ce8429ad45f526002` |
| 2 | `def` | [jointVector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/jointvector.md) | 37 | `declaration-track:ff0646e02c3083a693bdd2f88a4b81a680ca3ffefb170bdd7e6fbce557c38a14` |
| 3 | `theorem` | [signedDilation_symmetric](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/signeddilation-symmetric.md) | 40 | `result-track:56e5a54b2d9a7429e4b459d99fbde775db067b72131ebdd4d0a9707f2a46c659` |
| 4 | `theorem` | [signedDilation_quadratic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/signeddilation-quadratic.md) | 45 | `result-track:c63c24fd5c97f73845900a27dc437f9eaca07307c03a003c099a3021c23411cd` |
| 5 | `theorem` | [signedDilation_quadratic_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/signeddilation-quadratic-sum.md) | 56 | `result-track:4ae21f36c8741af5b62933fc467110d18905a931fc9dac0c95117aac66e570ea` |
| 6 | `def` | [pairKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/pairkernel.md) | 72 | `declaration-track:d0691807e67bb217ca90ee8c9902eba7c130486cd8924f253ca9e27dfd7bfc10` |
| 7 | `theorem` | [pairKernel_covariance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/pairkernel-covariance.md) | 74 | `result-track:d4f41369bf03fd7ff6c4d3703829178d05af57fdbb8320a2be286b46cd079910` |
| 8 | `theorem` | [finiteMangoldtMobius_covariance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/finitemangoldtmobius-covariance.md) | 89 | `result-track:9af39c8aa1810f25a34d73a010b92577c22aa2eaf5e1c528617a5db896941995` |
| 9 | `def` | [SourceAtom](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/sourceatom.md) | 103 | `declaration-track:1f01b6702a281a16815470b14cb99be130c081278311ab880a2ab8ecd5ff2d98` |
| 10 | `instance` | [sourceAtomFintype](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/sourceatomfintype.md) | 107 | `declaration-track:15deebeb7aaed8acfc38de00309e9ab7c1575b297c3e4ca1abd923e4faaa835f` |
| 11 | `instance` | [sourceAtomDecidableEq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/sourceatomdecidableeq.md) | 111 | `declaration-track:67190656c063b63536184b7527b6482093c0050eae878a42b173957a6049216b` |
| 12 | `def` | [sourceMobiusRow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/sourcemobiusrow.md) | 115 | `declaration-track:18f6778dbe8d224e177139416a5fb68f40c59aa7a8bf0b70c4026881f649efc8` |
| 13 | `def` | [sourceLogRow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/sourcelogrow.md) | 119 | `declaration-track:8fb8b0a6340a1e294436272062ac4205b1aa139b3bb01b572c1c181522e4f6ef` |
| 14 | `def` | [sourceAtomWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/sourceatomweight.md) | 122 | `declaration-track:da89d8c693375f4601c004f535a2dc79ea8d2ee8d29cfedef747a6e78a8664ed` |
| 15 | `def` | [sourceSignedOperator](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/sourcesignedoperator.md) | 126 | `declaration-track:d341f5b8346dc7708f14a67d0e6ff756306e01cb5e932d8861db0e8269649bef` |
| 16 | `def` | [sourceJointVector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/sourcejointvector.md) | 131 | `declaration-track:df3a03fc43a84140f402d21e406f46aed4c3c451684bca9c3cad76606f443885` |
| 17 | `def` | [sourceOperatorValue](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/sourceoperatorvalue.md) | 135 | `declaration-track:c957f5d6fa2240531e8f73cfebbba55d3f28f1b6660b4467c625a904f16d5496` |
| 18 | `theorem` | [sourceOperatorValue_eq_twice_mobius](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/sourceoperatorvalue-eq-twice-mobius.md) | 139 | `result-track:ed616d20cf9ae836390eff5073bfbf07cc053fc48295820f2a6034d50a3f529b` |
| 19 | `theorem` | [sourceOperatorValue_eq_twice_residual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/sourceoperatorvalue-eq-twice-residual.md) | 162 | `result-track:27d2715939131351711bc635f9e40f0a9ddc5df78eca9d5e26214e018a5cc873` |
| 20 | `def` | [SignedOperatorTailUpperBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/signedoperatortailupperbound.md) | 168 | `declaration-track:f8b9102af04087e0d034f86c77224a1f0039f2dae38861793ed605c0214a1948` |
| 21 | `theorem` | [signedOperatorTail_iff_mertensResidualTail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/signedoperatortail-iff-mertensresidualtail.md) | 173 | `result-track:964b26569e12aca9916d60dca25107bc8ece349d2d0732d4048459485d159c85` |
| 22 | `theorem` | [estimate_of_signedOperatorTail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/estimate-of-signedoperatortail.md) | 189 | `result-track:f33ec7a143f23328de9de1900f91e9c8499b6a3ca399db06a04bc1ddff90b886` |
| 23 | `theorem` | [cancellation_fixture](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/cancellation-fixture.md) | 196 | `result-track:ea7fe29607d9f15c5e5876a03719977699745207b5363fee472e9ff3d267e11c` |
| 24 | `theorem` | [absolute_fixture](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/absolute-fixture.md) | 203 | `result-track:6f2e939cb447832d24380c6ca4480c06154ab75a96eede48ae7add2133ae2df8` |
| 25 | `theorem` | [unbounded_representation_fixture](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobi.lean/declarations/unbounded-representation-fixture.md) | 210 | `result-track:860f19e023c88a7b7f8dddf596645f2c5f331ed14b457cb0f094389d9b478947` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f068fee02b11fdb48b91c3b77ddaa75f178ad3a267b069daca3e4ca1ebb8526 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variantc018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variantc018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
