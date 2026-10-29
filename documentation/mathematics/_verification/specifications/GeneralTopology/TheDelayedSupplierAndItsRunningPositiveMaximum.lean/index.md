# Verification target: The Delayed Supplier And Its Running Positive Maximum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "636e6f3ed096315dcf8504042f0f8a875d46557f",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/index.md) · [Full source](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `636e6f3ed096315dcf8504042f0f8a875d46557f`.

Source path: `GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Compact` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real.Lemmas` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [runningPositiveMaximum](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/runningpositivemaximum.md) | 35 | `declaration-track:b1a8f437a83ee76248658d0cfd6b107a9666b192515229430b337b731d602e87` |
| 2 | `theorem` | [runningPositiveMaximum_bddAbove](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/runningpositivemaximum-bddabove.md) | 38 | `result-track:f29f1524c2dd2b7aa66616b6de0cefa6f79ab5e90f6c0b1ff3cb4b4c4a82f95f` |
| 3 | `theorem` | [runningPositiveMaximum_nonneg](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/runningpositivemaximum-nonneg.md) | 42 | `result-track:b231369130c16a4caee3730739b406f5c50a3fe6c49fd06d91dda0657fc8fc19` |
| 4 | `theorem` | [le_runningPositiveMaximum](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/le-runningpositivemaximum.md) | 46 | `result-track:01cd958053615deb2229ea5a28f7da31465155dfba0b03690341d8c9a0af0878` |
| 5 | `theorem` | [runningPositiveMaximum_mono](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/runningpositivemaximum-mono.md) | 51 | `result-track:4b598cb578b26111433be025c15075efde6b737c206c669ca64379128dc43e17` |
| 6 | `theorem` | [runningPositiveMaximum_zero_or_record](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/runningpositivemaximum-zero-or-record.md) | 62 | `result-track:fb5fe8c5386605eab4677e357c6698d634cdb83e470a4840ea2417ab8b5f01ed` |
| 7 | `theorem` | [runningMaximum_recurrence](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/runningmaximum-recurrence.md) | 75 | `result-track:640b74402152d79e379c375a911b0a876ee150dc629b046f26d276f92e8abc61` |
| 8 | `def` | [supplierCoefficient](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/suppliercoefficient.md) | 128 | `declaration-track:458cc647dba97a7e91a22b262c2bd87be457f4a94684c623f504e5fca872e349` |
| 9 | `def` | [uniformContraction](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/uniformcontraction.md) | 132 | `declaration-track:29ba5a4f7fbbd22709ef8df3e2a617b703b59f7a7428248f949d784d8b5748d0` |
| 10 | `theorem` | [uniformContraction_pos](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/uniformcontraction-pos.md) | 134 | `result-track:2cbad43bed4070dfb64267d931d57668421b21c79f6d94934bf8cfec3e9591c7` |
| 11 | `theorem` | [uniformContraction_nonneg](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/uniformcontraction-nonneg.md) | 138 | `result-track:b7863baa23d44307753288c23167e9a0c6b82bb544c6bb8af2105b4170f31b9e` |
| 12 | `theorem` | [uniformContraction_lt_one](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/uniformcontraction-lt-one.md) | 142 | `result-track:9c40bcc47758d115f252f29a81e3d0aa7f6978bec65d3bc16534a9f2f7eb4d29` |
| 13 | `theorem` | [supplierCoefficient_nonneg](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/suppliercoefficient-nonneg.md) | 148 | `result-track:36e3cc3bac6d5914221abb9457401726c6e30a1e9b2511113b304724526ff6ed` |
| 14 | `theorem` | [supplierCoefficient_antitoneOn](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/suppliercoefficient-antitoneon.md) | 153 | `result-track:ea8dc1b0e22eba0268e706dfcf92dd41d306d3cf0a11df275e360dc0cc98bc0c` |
| 15 | `theorem` | [supplierCoefficient_le_uniformContraction](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/suppliercoefficient-le-uniformcontraction.md) | 165 | `result-track:55fb70f901e8c3a6725232496f82b446e49427b02474bf42bc1a37763006d2f5` |
| 16 | `theorem` | [supplier_runningMaximum_recurrence](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/supplier-runningmaximum-recurrence.md) | 177 | `result-track:ac779b4b4966d63512efd33995928dff64e39a260b8a65aa7a9d3d673b0c101c` |
| 17 | `theorem` | [supplier_runningMaximum_polynomial_recurrence](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/supplier-runningmaximum-polynomial-recurrence.md) | 201 | `result-track:a41106c3c80ad8ba0bf9691b1bbb9aaf2edda951227518e05aa8b1b9e035d92e` |
| 18 | `def` | [coefficientProduct](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/coefficientproduct.md) | 232 | `declaration-track:cc8d93c635665b969436bf030ded2e0cb3a5b1cef57908abe290953d779ff6ea` |
| 19 | `theorem` | [coefficientProduct_nonneg](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/coefficientproduct-nonneg.md) | 235 | `result-track:41f5dffe0d09000a834241cfa5aa660342abef8bbdaa899317e8a11bc336b3d4` |
| 20 | `theorem` | [coefficientProduct_succ](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/coefficientproduct-succ.md) | 239 | `result-track:4298c2b533bb7f98c9ad8afc3fab7cc8671c1c669c0c4ad9555b1468b8bf2026` |
| 21 | `theorem` | [coefficientProduct_le_geometric](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/coefficientproduct-le-geometric.md) | 243 | `result-track:209158ae9e48e756e3ab0481e75737b3e1a59eaea0b96167f089189fa2f865bb` |
| 22 | `theorem` | [finite_iteration](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/finite-iteration.md) | 253 | `result-track:d5910c6a7389d5b415e16058284d88ff4f066beeb56a94f81231e949e1279d7e` |
| 23 | `theorem` | [bound_of_iteration_and_vanishing_tail](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/bound-of-iteration-and-vanishing-tail.md) | 274 | `result-track:3e7ee0f588cb11d41aca39ac3819e757d5e77a33efb034bce23d190654085ef4` |
| 24 | `theorem` | [finite_delay_iteration](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/finite-delay-iteration.md) | 287 | `result-track:f5d7c5dce0ba07068fa77967dfc0b040a63823187ff2ab92aec12a0f46c6873d` |
| 25 | `theorem` | [polynomialEnvelope_of_recurrence_cost_and_tail](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/polynomialenvelope-of-recurrence-cost-and-tail.md) | 310 | `result-track:337d1f576c10a8945c99e858c338487f363fbfa286b70af67d344fac22d16681` |
| 26 | `theorem` | [summable_polynomial_geometric](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/summable-polynomial-geometric.md) | 339 | `result-track:fb4eedabe21fffc720f6ba857b36359f817c929daee5d20c4b8cca9c21c4a546` |
| 27 | `theorem` | [polynomial_weighted_cost](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/polynomial-weighted-cost.md) | 353 | `result-track:d98836deb136980959393f46fb576e84d0e37e1d66910232eb0c1af6dd921a8a` |
| 28 | `theorem` | [polynomialEnvelope_of_recurrence_and_tail](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/polynomialenvelope-of-recurrence-and-tail.md) | 394 | `result-track:85b9043fc64a422b37aa4e1fdab2a52da52febc0c5f3cf4a52fa8d123435720c` |
| 29 | `theorem` | [polynomialEnvelope_of_realAllowance_and_tail](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/polynomialenvelope-of-realallowance-and-tail.md) | 430 | `result-track:45decdfb4208eb3a0b2cc4fb4ca6fe7935f0f21edca3baedb1ba457c024eadb3` |
| 30 | `theorem` | [realPolynomial_weighted_cost](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/realpolynomial-weighted-cost.md) | 456 | `result-track:5bba7b60310cf6d90c08d2f3498b6c10e9d8104e3c2d5c69ed2919e8b52d08e6` |
| 31 | `theorem` | [exactPolynomialEnvelope_of_recurrence_and_tail](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/exactpolynomialenvelope-of-recurrence-and-tail.md) | 513 | `result-track:6da6d9693349a381a80cc0b901ec6ace5709888e9770c77338ec69be405b63cc` |
| 32 | `theorem` | [polynomialEnvelope_of_supplier_and_tail](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/polynomialenvelope-of-supplier-and-tail.md) | 542 | `result-track:334c3aa354ee84c203fb617d34ad65a4c2d6a8e5949eaf3e283e78b01bad5130` |
| 33 | `theorem` | [globalPolynomialEnvelope_of_eventual](../../../../GeneralTopology/TheDelayedSupplierAndItsRunningPositiveMaximum.lean/declarations/globalpolynomialenvelope-of-eventual.md) | 566 | `result-track:3544f25a31b9cbe17f171c197e56a78e64d18a5d9c1953011e76c51f144b7b98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c0a99973c436bc97cd614218f078cd2b65fdbcd834cf3ea5af4d0a5f404eb9c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean","GRWTSK/_verification/specifications/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
