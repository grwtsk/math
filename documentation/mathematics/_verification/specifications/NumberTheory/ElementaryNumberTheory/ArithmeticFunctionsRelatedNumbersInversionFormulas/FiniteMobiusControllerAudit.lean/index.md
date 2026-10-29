# Verification target: Finite Mobius Controller Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "369295883a9dbfe08d70cdf6a3dcc54e3f73712f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantee0ddf1d6056c8262ae3c8013668b6f48280aa728877f783e8033e99d81feab7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerAudit.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `369295883a9dbfe08d70cdf6a3dcc54e3f73712f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantee0ddf1d6056c8262ae3c8013668b6f48280aa728877f783e8033e99d81feab7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantee0ddf1d6056c8262ae3c8013668b6f48280aa728877f783e8033e99d81feab7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceControllerPoleConstraint` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [causalShift](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerAudit.lean/declarations/causalshift.md) | 21 | `declaration-track:5fd089a423069c7368f1e5d54d5322694fa0568b63624eafbd7739ff9f8bfa71` |
| 2 | `theorem` | [causalShift_ae](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerAudit.lean/declarations/causalshift-ae.md) | 25 | `result-track:4ba8316571a87ac225bfa20cc55d4118671d1f143971d1259c27789c9dbe7906` |
| 3 | `theorem` | [causalShift_norm_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerAudit.lean/declarations/causalshift-norm-le.md) | 36 | `result-track:39ad3cbe140383fb8a256ebcd446bb6cc58106ee72e10b19b424dcd7a246efe0` |
| 4 | `theorem` | [causalShift_exponential_inner](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerAudit.lean/declarations/causalshift-exponential-inner.md) | 41 | `result-track:887590bf6c71adbe24ee5e9caad5d01bb43b698020bc41ab5a24e44c9daa46a7` |
| 5 | `def` | [mobiusReciprocalSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerAudit.lean/declarations/mobiusreciprocalsum.md) | 50 | `declaration-track:e24e374be4539dd2529b878a58963c6860a1ff0b110b0c99b832f697643e7fae` |
| 6 | `def` | [finiteMobiusController](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerAudit.lean/declarations/finitemobiuscontroller.md) | 54 | `declaration-track:6d0a4618f062bc47e8272246762bd34ad7403eb4ad43184e8fc777ae114d136f` |
| 7 | `theorem` | [causalShift_half_inner](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerAudit.lean/declarations/causalshift-half-inner.md) | 62 | `result-track:46edcf87ae333bddaf9ec5169aeec38dedb24d77ec1cc39a3653499bcd3da0ab` |
| 8 | `theorem` | [finiteMobiusController_half_inner](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerAudit.lean/declarations/finitemobiuscontroller-half-inner.md) | 79 | `result-track:0f9fed4e8c3822eba5d2063b82a10706c37f39d38119742d6838a912ba8fe4ce` |
| 9 | `theorem` | [finiteMobiusController_residual_sq_ge](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerAudit.lean/declarations/finitemobiuscontroller-residual-sq-ge.md) | 117 | `result-track:d2714361a16eb46b66a1a47c38a1af79e02f4a47d49cd108e371e7bd38d1d46c` |
| 10 | `theorem` | [finiteMobiusController_full_energy_ge](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerAudit.lean/declarations/finitemobiuscontroller-full-energy-ge.md) | 122 | `result-track:bc83dabc02857c90b95c046f1217914d7b39a0651cf17932b6831cb4be96e5a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ec8cb58b3254f7eea088f0049bf61ddcf160c814944a04a1699851d662c8f2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantee0ddf1d6056c8262ae3c8013668b6f48280aa728877f783e8033e99d81feab7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantee0ddf1d6056c8262ae3c8013668b6f48280aa728877f783e8033e99d81feab7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
