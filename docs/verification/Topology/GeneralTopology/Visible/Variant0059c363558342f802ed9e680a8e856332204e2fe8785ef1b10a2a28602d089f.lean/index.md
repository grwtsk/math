# Verification target: GRWTSK.Topology.GeneralTopology.Visible.Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d18bdd30c8fedeaf6f0ea307d691e93e5382f122",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d18bdd30c8fedeaf6f0ea307d691e93e5382f122`.

Source path: `GRWTSK/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Field` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Card` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Between` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Combination` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Affine` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Monotone` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsVisible](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean/declarations/isvisible--a2698f1790053337008d7362.md) | 42 | `declaration-track:a2698f1790053337008d7362999c37e4a71334612d4b05914c934ae92e300aad` |
| 2 | `lemma` | [IsVisible.rfl](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean/declarations/isvisible-rfl--bcb5f7fb0471d7b00b2216b6.md) | 45 | `result-track:bcb5f7fb0471d7b00b2216b65d89b287c05b68c62f636f3e111e8b36bd0c43e3` |
| 3 | `lemma` | [isVisible_comm](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean/declarations/isvisible-comm--c0e841b46f45786d4b070e2f.md) | 47 | `result-track:c0e841b46f45786d4b070e2f38d6039b046eb88c2a6946afdb2679876ef27acf` |
| 4 | `lemma` | [IsVisible.mono](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean/declarations/isvisible-mono--a0dbb6cf3335b1a4bc6745ca.md) | 53 | `result-track:a0dbb6cf3335b1a4bc6745ca6a4c3b51e46933fdbb0a391c124b70a700e4df0a` |
| 5 | `lemma` | [isVisible_iff_lineMap](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean/declarations/isvisible-iff-linemap--bcd874c44c10648a351aa7d7.md) | 56 | `result-track:bcd874c44c10648a351aa7d727382da457e211c066efd3c354bdf3c896e09d91` |
| 6 | `lemma` | [IsVisible.of_convexHull_of_pos](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean/declarations/isvisible-of-convexhull-of-pos--3c1d995315c590eb8ff55018.md) | 71 | `result-track:3c1d995315c590eb8ff55018956a8fce91a322f35b24bb84e3e643bc3cbab359` |
| 7 | `lemma` | [IsVisible.eq_of_mem_interior](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean/declarations/isvisible-eq-of-mem-interior--2bc72f17c08f11f99a244628.md) | 120 | `result-track:2bc72f17c08f11f99a24462897dcc6d8607a41e99870e8a059d6fee031001fb9` |
| 8 | `lemma` | [IsOpen.eq_of_isVisible_of_left_mem](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean/declarations/isopen-eq-of-isvisible-of-left-mem--5997b80e7bfaed5938871a54.md) | 130 | `result-track:5997b80e7bfaed5938871a5474310b719741e3c0aff355fa80b31fcbe13b22e8` |
| 9 | `lemma` | [IsVisible.mem_convexHull_isVisible](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean/declarations/isvisible-mem-convexhull-isvisible--b5954cd0a744d67c7222e7e4.md) | 143 | `result-track:b5954cd0a744d67c7222e7e440561994ca188d241c2a409664263db675edf7f2` |
| 10 | `lemma` | [IsClosed.exists_wbtw_isVisible](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean/declarations/isclosed-exists-wbtw-isvisible--36f574dff95634df47f40214.md) | 158 | `result-track:36f574dff95634df47f402145ee8824540083bb367933f0216f1df809fd48685` |
| 11 | `lemma` | [IsClosed.convexHull_subset_affineSpan_isVisible](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean/declarations/isclosed-convexhull-subset-affinespan-isvisible--eb1172f4acf43d291416c48d.md) | 178 | `result-track:eb1172f4acf43d291416c48d4cc19dad7228db7a0a8c132833457214afd8728a` |
| 12 | `lemma` | [rank_le_card_isVisible](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean/declarations/rank-le-card-isvisible--b22c9de760a167c9a63b43af.md) | 191 | `result-track:b22c9de760a167c9a63b43af51a3d7594f22ac3a532566b5c0f46135388da28d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
