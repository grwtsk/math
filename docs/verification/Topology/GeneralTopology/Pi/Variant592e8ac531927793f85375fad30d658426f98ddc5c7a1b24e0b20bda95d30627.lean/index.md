# Verification target: GRWTSK.Topology.GeneralTopology.Pi.Variant592e8ac531927793f85375fad30d658426f98ddc5c7a1b24e0b20bda95d30627

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b5b47cbad99167804935e812ddde0d06ff67d00",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pi/Variant592e8ac531927793f85375fad30d658426f98ddc5c7a1b24e0b20bda95d30627.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant592e8ac531927793f85375fad30d658426f98ddc5c7a1b24e0b20bda95d30627.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant592e8ac531927793f85375fad30d658426f98ddc5c7a1b24e0b20bda95d30627.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b5b47cbad99167804935e812ddde0d06ff67d00`.

Source path: `GRWTSK/Topology/GeneralTopology/Pi/Variant592e8ac531927793f85375fad30d658426f98ddc5c7a1b24e0b20bda95d30627.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pi/Variant592e8ac531927793f85375fad30d658426f98ddc5c7a1b24e0b20bda95d30627.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unique` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Spectrum.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.StarAlgHom` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cfcₙ_map_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant592e8ac531927793f85375fad30d658426f98ddc5c7a1b24e0b20bda95d30627.lean/declarations/cfc-map-pi--57290ef32ab6fe61457520dd.md) | 46 | `result-track:57290ef32ab6fe61457520dde5f928dd600c84b85f7888b89dd397101ba9c0f8` |
| 2 | `lemma` | [cfcₙ_map_prod](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant592e8ac531927793f85375fad30d658426f98ddc5c7a1b24e0b20bda95d30627.lean/declarations/cfc-map-prod--b0e991fabc18272cfb467465.md) | 77 | `result-track:b0e991fabc18272cfb46746541a604295b5fa7056463f842a51dec801a8e0650` |
| 3 | `lemma` | [cfc_map_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant592e8ac531927793f85375fad30d658426f98ddc5c7a1b24e0b20bda95d30627.lean/declarations/cfc-map-pi--a1b950c7b3c13f99901d8cba.md) | 108 | `result-track:a1b950c7b3c13f99901d8cba0846537ea2b5ea1b74eab03d5cfe580885a42add` |
| 4 | `lemma` | [cfc_map_prod](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant592e8ac531927793f85375fad30d658426f98ddc5c7a1b24e0b20bda95d30627.lean/declarations/cfc-map-prod--d14a96109c47fe96a320cb2c.md) | 131 | `result-track:d14a96109c47fe96a320cb2cf2d347d8a1816f68c199deb6f653fbb2218ae6d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
