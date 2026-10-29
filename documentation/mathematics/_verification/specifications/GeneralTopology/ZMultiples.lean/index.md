# Verification target: ZMultiples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c174ce72b39f0bd279ff657205862746f488d59",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ZMultiples/Variant4de257d9c909e8fb7abda84a3b6788e79b579036630b13bde7ef56377e624595.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ZMultiples.lean/index.md) · [Full source](../../../../GeneralTopology/ZMultiples.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c174ce72b39f0bd279ff657205862746f488d59`.

Source path: `GRWTSK/Topology/GeneralTopology/ZMultiples/Variant4de257d9c909e8fb7abda84a3b6788e79b579036630b13bde7ef56377e624595.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ZMultiples/Variant4de257d9c909e8fb7abda84a3b6788e79b579036630b13bde7ef56377e624595.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Real` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/ZMultiples.lean/declarations/instance.md) | 32 | `declaration-track:c83644c165182b6c762073a92b38b2ce6808b495c823543c48d653b12bf3f244` |
| 2 | `theorem` | [tendsto_coe_cofinite](../../../../GeneralTopology/ZMultiples.lean/declarations/tendsto-coe-cofinite.md) | 43 | `result-track:f55afbd16e9ee255c8c6ad11f909035a443eb37ee0c351079c19fc4981185002` |
| 3 | `theorem` | [tendsto_zmultiplesHom_cofinite](../../../../GeneralTopology/ZMultiples.lean/declarations/tendsto-zmultipleshom-cofinite.md) | 50 | `result-track:639785f16eb934ef2a369d9a21824c066b5a08ceafc9f9751fbf3873b353004e` |
| 4 | `theorem` | [tendsto_zmultiples_subtype_cofinite](../../../../GeneralTopology/ZMultiples.lean/declarations/tendsto-zmultiples-subtype-cofinite.md) | 62 | `result-track:20d61a7bf29bafce983e1c10b5b483ebab2a8ad9f840f49475d63fd9c1902daf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c4f85635f4090d660a449d3c68c608e191b9680760e1ba7e4248f7017e51e9f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ZMultiples/Variant4de257d9c909e8fb7abda84a3b6788e79b579036630b13bde7ef56377e624595.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ZMultiples/Variant4de257d9c909e8fb7abda84a3b6788e79b579036630b13bde7ef56377e624595.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
