# Verification target: GRWTSK.Topology.GeneralTopology.Subadditive.Variant77ead4b13ea5ab471a5b90a54cfaa7725507cd94be206f3c752fd41c96ac88fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba974e053708ea5147c49299accc5efe6a358fbd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Subadditive/Variant77ead4b13ea5ab471a5b90a54cfaa7725507cd94be206f3c752fd41c96ac88fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant77ead4b13ea5ab471a5b90a54cfaa7725507cd94be206f3c752fd41c96ac88fb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant77ead4b13ea5ab471a5b90a54cfaa7725507cd94be206f3c752fd41c96ac88fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba974e053708ea5147c49299accc5efe6a358fbd`.

Source path: `GRWTSK/Topology/GeneralTopology/Subadditive/Variant77ead4b13ea5ab471a5b90a54cfaa7725507cd94be206f3c752fd41c96ac88fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Subadditive/Variant77ead4b13ea5ab471a5b90a54cfaa7725507cd94be206f3c752fd41c96ac88fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Archimedean` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Real` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Subadditive](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant77ead4b13ea5ab471a5b90a54cfaa7725507cd94be206f3c752fd41c96ac88fb.lean/declarations/subadditive--6c706ea000ed42889d92fbdd.md) | 38 | `declaration-track:6c706ea000ed42889d92fbdda0d8ce7dd580ecbd960e7bcf931390087d4595fc` |
| 2 | `def` | [lim](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant77ead4b13ea5ab471a5b90a54cfaa7725507cd94be206f3c752fd41c96ac88fb.lean/declarations/lim--29e43e14da3980241b112057.md) | 48 | `declaration-track:29e43e14da3980241b11205727cf8908d9e1788e1811385744e2dc787d8ee3be` |
| 3 | `theorem` | [lim_le_div](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant77ead4b13ea5ab471a5b90a54cfaa7725507cd94be206f3c752fd41c96ac88fb.lean/declarations/lim-le-div--1fa0316a888a38c59764431e.md) | 51 | `result-track:1fa0316a888a38c59764431ecd898669a70b232f2d0c7b560eb22fbdb9f48af3` |
| 4 | `theorem` | [apply_mul_add_le](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant77ead4b13ea5ab471a5b90a54cfaa7725507cd94be206f3c752fd41c96ac88fb.lean/declarations/apply-mul-add-le--ffd4ff96c12df31f557f0d7a.md) | 57 | `result-track:ffd4ff96c12df31f557f0d7a19ed168333c9f6d82bb516c8c4127e65ce12f8ed` |
| 5 | `theorem` | [eventually_div_lt_of_div_lt](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant77ead4b13ea5ab471a5b90a54cfaa7725507cd94be206f3c752fd41c96ac88fb.lean/declarations/eventually-div-lt-of-div-lt--e574599703da3ffd00485d79.md) | 68 | `result-track:e574599703da3ffd00485d79840d955efb3f4a7c5bc299b21886ff5ab42d50fc` |
| 6 | `theorem` | [tendsto_lim](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant77ead4b13ea5ab471a5b90a54cfaa7725507cd94be206f3c752fd41c96ac88fb.lean/declarations/tendsto-lim--7436334d707e3b7f67f5fdf2.md) | 90 | `result-track:7436334d707e3b7f67f5fdf21b65ce23d30e2778dd07a37e238a6f91ef6a1384` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
