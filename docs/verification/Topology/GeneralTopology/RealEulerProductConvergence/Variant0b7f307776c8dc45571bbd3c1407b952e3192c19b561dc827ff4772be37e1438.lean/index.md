# Verification target: GRWTSK.Topology.GeneralTopology.RealEulerProductConvergence.Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3351d3df901566cd30c89a0a5c32242f7e43a83c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RealEulerProductConvergence/Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RealEulerProductConvergence/Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RealEulerProductConvergence/Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3351d3df901566cd30c89a0a5c32242f7e43a83c`.

Source path: `GRWTSK/Topology/GeneralTopology/RealEulerProductConvergence/Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RealEulerProductConvergence/Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.PrimeExhaustion` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.ZetaPartialSums` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.EulerProductApproximation` — import line 8; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.SmoothNumberReindexing` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaEulerApproxReal](../../../../../mathematics/Topology/GeneralTopology/RealEulerProductConvergence/Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438.lean/declarations/zetaeulerapproxreal--6792fac94b8202871bef038e.md) | 27 | `declaration-track:6792fac94b8202871bef038e2efc55ad9ad37a4dbf7fe9c325527def4db657f8` |
| 2 | `theorem` | [zetaEulerApproxReal_expands_boundedSmoothNumbers](../../../../../mathematics/Topology/GeneralTopology/RealEulerProductConvergence/Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438.lean/declarations/zetaeulerapproxreal-expands-boundedsmoothnumbers--3a40a06f1458a01d42284881.md) | 32 | `result-track:3a40a06f1458a01d4228488102bbe9b4c3c7fe887fdad1ee226f5abafc19142a` |
| 3 | `theorem` | [zetaPartialReal_le_zetaEulerApproxReal](../../../../../mathematics/Topology/GeneralTopology/RealEulerProductConvergence/Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438.lean/declarations/zetapartialreal-le-zetaeulerapproxreal--2dddf0f09b7edaa4dda7d897.md) | 44 | `result-track:2dddf0f09b7edaa4dda7d8975d208a0d007876979fbbcf6264261b6af9a00b58` |
| 4 | `theorem` | [sum_le_tsum_of_nonneg_summable](../../../../../mathematics/Topology/GeneralTopology/RealEulerProductConvergence/Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438.lean/declarations/sum-le-tsum-of-nonneg-summable--e754ba44a47766b281cc2ad8.md) | 55 | `result-track:e754ba44a47766b281cc2ad8a63e46d437a40b058e963f38a42affe343a5571e` |
| 5 | `theorem` | [zetaEulerApproxReal_le_zetaRealHalfPlane](../../../../../mathematics/Topology/GeneralTopology/RealEulerProductConvergence/Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438.lean/declarations/zetaeulerapproxreal-le-zetarealhalfplane--31d06433045458aaf3cb353f.md) | 63 | `result-track:31d06433045458aaf3cb353f248fe49d04c902b5ef9cdcb942145131deac20e2` |
| 6 | `theorem` | [zetaEulerApproxReal_pos](../../../../../mathematics/Topology/GeneralTopology/RealEulerProductConvergence/Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438.lean/declarations/zetaeulerapproxreal-pos--3712f0547592adbe1d0d7f10.md) | 75 | `result-track:3712f0547592adbe1d0d7f100eb7f14d8c15c3d5b9e1261e46a1fd8132c23b5a` |
| 7 | `theorem` | [zetaEulerApproxReal_ge_one](../../../../../mathematics/Topology/GeneralTopology/RealEulerProductConvergence/Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438.lean/declarations/zetaeulerapproxreal-ge-one--560018e3ce4a6e32fee82df9.md) | 84 | `result-track:560018e3ce4a6e32fee82df9edc5e2acd2cd1dad5072eec5d9714f57781a510b` |
| 8 | `theorem` | [tendsto_zetaEulerApproxReal](../../../../../mathematics/Topology/GeneralTopology/RealEulerProductConvergence/Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438.lean/declarations/tendsto-zetaeulerapproxreal--17c7a0dd760fdf806c1b6660.md) | 103 | `result-track:17c7a0dd760fdf806c1b66606e5e57bb87396c8e364dcff2f0c781e6b64c3cc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
