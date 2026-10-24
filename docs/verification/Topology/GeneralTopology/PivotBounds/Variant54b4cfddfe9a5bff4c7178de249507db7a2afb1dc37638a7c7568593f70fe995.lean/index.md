# Verification target: GRWTSK.Topology.GeneralTopology.PivotBounds.Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0f0ba302aff47a11fd33db86e8caaba2364f70d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0f0ba302aff47a11fd33db86e8caaba2364f70d`.

Source path: `GRWTSK/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotTransitions` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Matrix` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [orderedPivotFintype](../../../../../mathematics/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/declarations/orderedpivotfintype--12d593851c1398b6ad71ac6b.md) | 36 | `declaration-track:12d593851c1398b6ad71ac6b881a3fd98855e9452ba873ca9c030aa9cf7f1dc4` |
| 2 | `theorem` | [card_orderedPivots](../../../../../mathematics/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/declarations/card-orderedpivots--c710657752029ebb27c577d2.md) | 40 | `result-track:c710657752029ebb27c577d24d01fd1e8c6b11550cb47c2b1d3a3725b1cf9174` |
| 3 | `def` | [orderedPermutationEquiv](../../../../../mathematics/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/declarations/orderedpermutationequiv--31a60ab9a88fd332f4cd46fb.md) | 46 | `declaration-track:31a60ab9a88fd332f4cd46fbf371a26306305d0ab0b7fb3c3b1a52d1f61b7a81` |
| 4 | `theorem` | [columnMinor_comp_perm_sq](../../../../../mathematics/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/declarations/columnminor-comp-perm-sq--2c6ba16987a1e7d1af4af7a3.md) | 71 | `result-track:2c6ba16987a1e7d1af4af7a3fd33e73142fa366c39bbe870617759f0d81349b0` |
| 5 | `theorem` | [sum_columnMinor_sq](../../../../../mathematics/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/declarations/sum-columnminor-sq--d54efaa906165c9c39f51252.md) | 82 | `result-track:d54efaa906165c9c39f512521e2832f04e9250b63871d92d410a1379be258370` |
| 6 | `theorem` | [sum_orderedMinor_sq_eq_one](../../../../../mathematics/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/declarations/sum-orderedminor-sq-eq-one--9a59b528d5a3ddb4b0279803.md) | 104 | `result-track:9a59b528d5a3ddb4b02798034bcb7a1985cde6fc44cdea64f2db579a869a0de3` |
| 7 | `theorem` | [exists_orderedMinor_sq_margin](../../../../../mathematics/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/declarations/exists-orderedminor-sq-margin--5a27ae7e55e3b3e6cb13da42.md) | 118 | `result-track:5a27ae7e55e3b3e6cb13da42ec9a1a9578de3cdce5e758cf3e497f55545ab983` |
| 8 | `theorem` | [exists_orderedMinor_margin](../../../../../mathematics/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/declarations/exists-orderedminor-margin--d60cbfc503e9e75632b4af84.md) | 140 | `result-track:d60cbfc503e9e75632b4af8403c0b2abd70857f877c7d5851355b70a3c7fef93` |
| 9 | `theorem` | [abs_columnMinor_mul_left](../../../../../mathematics/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/declarations/abs-columnminor-mul-left--6883586272c1807872697781.md) | 153 | `result-track:6883586272c18078726977816d50615d62c6da9cf830cc3f1164c4a0828ddb9a` |
| 10 | `theorem` | [orthonormalRows_dimension_le](../../../../../mathematics/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/declarations/orthonormalrows-dimension-le--581432c0eb288d5f3fb5a9b0.md) | 160 | `result-track:581432c0eb288d5f3fb5a9b030178030da766e892dea2b20bebf973f8f69b1f9` |
| 11 | `def` | [controlledPivotThreshold](../../../../../mathematics/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/declarations/controlledpivotthreshold--cd7765907bfa3787b1b14af2.md) | 166 | `declaration-track:cd7765907bfa3787b1b14af25e79e3cf0e628bc763235a94be586c2e14e7ae0e` |
| 12 | `def` | [controlledPivotDomain](../../../../../mathematics/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/declarations/controlledpivotdomain--3ba85ff9f4e2241172e5a50e.md) | 170 | `declaration-track:3ba85ff9f4e2241172e5a50ee64dbdced3c093e686d71a32944457e83638649f` |
| 13 | `theorem` | [isOpen_controlledPivotDomain](../../../../../mathematics/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/declarations/isopen-controlledpivotdomain--a74f9d5270e386a683f081be.md) | 174 | `result-track:a74f9d5270e386a683f081be0f2d94ae1c3853585d97b441faa9c23e1c84f5f5` |
| 14 | `theorem` | [controlledPivotDomain_cover](../../../../../mathematics/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/declarations/controlledpivotdomain-cover--8de3bfa2b40650f1d7978bad.md) | 183 | `result-track:8de3bfa2b40650f1d7978badfc857991b75b3f91d443703f11eb0e8bbc091c73` |
| 15 | `theorem` | [abs_det_eq_one_of_orthogonal](../../../../../mathematics/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/declarations/abs-det-eq-one-of-orthogonal--338a06709425d21289b709e5.md) | 197 | `result-track:338a06709425d21289b709e52257adca7f0228cf983922f9c1dedf2b76fb872f` |
| 16 | `theorem` | [controlledPivotDomain_orthogonal_iff](../../../../../mathematics/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/declarations/controlledpivotdomain-orthogonal-iff--2f9507502c98b30712cc2a05.md) | 205 | `result-track:2f9507502c98b30712cc2a05c95c5b4b419b3c82ba7388bc8542f180ceb7f28f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
