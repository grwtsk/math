# Verification target: Sign Ties And Optional Selection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d2bbfaf8e77f0c66beb6ee4e2bc10a0bdd3daa6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/RealFunctions/ExactRationalThresholdFunctions/Variant03d73452c99c6fd3/SignTiesAndOptionalSelection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/SignTiesAndOptionalSelection.lean/index.md) · [Full source](../../../../RealFunctions/SignTiesAndOptionalSelection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d2bbfaf8e77f0c66beb6ee4e2bc10a0bdd3daa6`.

Source path: `GRWTSK/Analysis/RealAnalysis/RealFunctions/ExactRationalThresholdFunctions/Variant03d73452c99c6fd3/SignTiesAndOptionalSelection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/RealFunctions/ExactRationalThresholdFunctions/Variant03d73452c99c6fd3/SignTiesAndOptionalSelection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.BitDocument` — import line 20; external provider; requires a separately pinned dependency.
- `BitMatrix.Core.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.GridCell` — import line 22; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.Stroke` — import line 23; external provider; requires a separately pinned dependency.
- `BitMatrix.Rhetorical.Core` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Floor` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TiePolicy](../../../../RealFunctions/SignTiesAndOptionalSelection.lean/declarations/tiepolicy.md) | 44 | `declaration-track:4bc361c6968e7ffe8420e1177ff1d7b529595d749c0ab21120286eafa3530bd8` |
| 2 | `structure` | [OwnershipTiePolicies](../../../../RealFunctions/SignTiesAndOptionalSelection.lean/declarations/ownershiptiepolicies.md) | 51 | `declaration-track:dd1802852bed68e642f51b3c7e5f032156f9b6705a75be69dbd9c137932bcedc` |
| 3 | `def` | [resolveThreshold](../../../../RealFunctions/SignTiesAndOptionalSelection.lean/declarations/resolvethreshold.md) | 57 | `declaration-track:98aab6518c70a91c717cbd5550b90b4e62fbd88fcac3f8e250e51bcb8295c5a8` |
| 4 | `theorem` | [resolveThreshold_positive_tie](../../../../RealFunctions/SignTiesAndOptionalSelection.lean/declarations/resolvethreshold-positive-tie.md) | 69 | `result-track:596c67ea05f3a8ee85ed1562e1c480bb77fffa0edda1c20c9827b9144de64a38` |
| 5 | `theorem` | [resolveThreshold_negative_tie](../../../../RealFunctions/SignTiesAndOptionalSelection.lean/declarations/resolvethreshold-negative-tie.md) | 75 | `result-track:2df9005114fac9cdbb4e6e57d878b76b90ff9877f426cc63d53a0c928cd2d08b` |
| 6 | `theorem` | [resolveThreshold_zero_tie](../../../../RealFunctions/SignTiesAndOptionalSelection.lean/declarations/resolvethreshold-zero-tie.md) | 81 | `result-track:d390c6dcd9e7a246ed0e77b89a32c9b19d542587626c1105320649ebcbf3d032` |
| 7 | `def` | [resolveRasterBit](../../../../RealFunctions/SignTiesAndOptionalSelection.lean/declarations/resolverasterbit.md) | 89 | `declaration-track:dfad8ce1f8cb6f85bc308114052319e4616be57275082af9bda63368f09f8285` |
| 8 | `theorem` | [resolveRasterBit_owner_tie](../../../../RealFunctions/SignTiesAndOptionalSelection.lean/declarations/resolverasterbit-owner-tie.md) | 96 | `result-track:35ba45654faae34261f9e392fc4ed874a3ba6c20175b33a8b27ab0b4ba25c740` |
| 9 | `theorem` | [resolveRasterBit_without_owner](../../../../RealFunctions/SignTiesAndOptionalSelection.lean/declarations/resolverasterbit-without-owner.md) | 102 | `result-track:56ccdae33eeb92bc92356c715958e2f6bdeb74a68be08e0c8911127bc6a8c3d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a4ab6488288f81e2df6a7c7dd1321432539657b43ffd4647ccb6dd5694bf2cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/RealFunctions/ExactRationalThresholdFunctions/Variant03d73452c99c6fd3/SignTiesAndOptionalSelection.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/RealFunctions/ExactRationalThresholdFunctions/Variant03d73452c99c6fd3/SignTiesAndOptionalSelection.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
