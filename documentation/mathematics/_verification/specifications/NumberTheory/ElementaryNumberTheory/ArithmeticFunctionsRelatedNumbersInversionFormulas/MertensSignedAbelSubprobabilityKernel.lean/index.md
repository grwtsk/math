# Verification target: GRWTSK.NumberTheory.Moebius.MertensSignedAbelSubprobabilityKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60d8e7a6036e14738b9e87fca74f96dd3b50cf00",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelSubprobabilityKernel.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelSubprobabilityKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60d8e7a6036e14738b9e87fca74f96dd3b50cf00`.

Source path: `GRWTSK/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensSignedAbelNormalizedResponse`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelNormalizedResponse.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedSignedAbelShiftKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelSubprobabilityKernel.lean/declarations/normalizedsignedabelshiftkernel.md) | 21 | `declaration-track:4f8446ea775f15750be8fe4a08586f399ea71327a6c141cb22febd930efa7532` |
| 2 | `theorem` | [normalizedSignedAbelShiftKernel_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelSubprobabilityKernel.lean/declarations/normalizedsignedabelshiftkernel-nonneg.md) | 30 | `result-track:06bfe27372fe8104e0366de42cd8ee1c3f0f7133fbe5a13a67c59939aec852c8` |
| 3 | `def` | [normalizedSignedAbelShiftKernelMass](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelSubprobabilityKernel.lean/declarations/normalizedsignedabelshiftkernelmass.md) | 40 | `declaration-track:58c75e1da994594300dbf3bcf7e3ad61df0261c81f250d601655f866c3514392` |
| 4 | `theorem` | [normalizedSignedAbelShiftKernelMass_eq_scaledWeightMass](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelSubprobabilityKernel.lean/declarations/normalizedsignedabelshiftkernelmass-eq-scaledweightmass.md) | 50 | `result-track:937e8cf442c4f8088f2bb733ecb1025caf542412e59039119476c3b5e4792202` |
| 5 | `theorem` | [normalizedSignedAbelShiftKernelMass_le_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelSubprobabilityKernel.lean/declarations/normalizedsignedabelshiftkernelmass-le-one.md) | 75 | `result-track:37feeb2e9cc7accdc117b00a91261108e79254ad9076ed346554006f74973c8d` |
| 6 | `theorem` | [normalizedSignedAbelDepthShiftResponse_eq_kernelSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelSubprobabilityKernel.lean/declarations/normalizedsignedabeldepthshiftresponse-eq-kernelsum.md) | 96 | `result-track:095f67a27f552f1770fc4aa5f2bcec6ca73536050d4f11710d6d286e3c6a418a` |
| 7 | `theorem` | [weightedMertensDyadicSignedAbelDepthSlice_eq_kernelAutocorrelation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelSubprobabilityKernel.lean/declarations/weightedmertensdyadicsignedabeldepthslice-eq-kernelautocorrelation.md) | 116 | `result-track:64110996eb030a553be6370a4df3e7b1061c38db61e937895483e6f7b9975daa` |
| 8 | `def` | [NormalizedSignedAbelKernelSubprobability](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelSubprobabilityKernel.lean/declarations/normalizedsignedabelkernelsubprobability-source-edition-2.md) | 133 | `declaration-track:ebe352905e097cbfb9672d076bc6cd3ecf9d5e56ccfb631c65d14a89ccb2b5c9` |
| 9 | `theorem` | [normalizedSignedAbelKernelSubprobability](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSignedAbelSubprobabilityKernel.lean/declarations/normalizedsignedabelkernelsubprobability.md) | 140 | `result-track:2198a5b976e811c34dc10139b855fc39d33affbc92ef5c6df832e7a7b39800a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ea16abf3c4c362a7cdf50c2641e8aa4ca91240667e425fc10df6ff3f6f2d09a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
