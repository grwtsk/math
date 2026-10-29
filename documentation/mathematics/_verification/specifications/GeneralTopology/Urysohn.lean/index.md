# Verification target: Urysohn

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d41da4d5bc284dac4100a56a142c4df1159375f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Urysohn/Variant7116fe9416f024677410d1cac68d86172437079a882d5631d9b2adc667e5f142.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/Urysohn.lean/index.md) · [Full source](../../../../GeneralTopology/Urysohn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d41da4d5bc284dac4100a56a142c4df1159375f`.

Source path: `GRWTSK/Topology/GeneralTopology/Urysohn/Variant7116fe9416f024677410d1cac68d86172437079a882d5631d9b2adc667e5f142.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Urysohn/Variant7116fe9416f024677410d1cac68d86172437079a882d5631d9b2adc667e5f142.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_isInducing_l_infty](../../../../GeneralTopology/Urysohn.lean/declarations/exists-isinducing-l-infty.md) | 35 | `result-track:c2b53c68ab82ed45df0e2058183e6479c2b3ab917a6a0fd911eed4d3d5b05c45` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/Urysohn.lean/declarations/instance.md) | 111 | `declaration-track:8cb81ef2ab6f4f417f896c5cccc2ba0751b4fcf7d9a963fc6a2d15bb5066b7d4` |
| 3 | `theorem` | [exists_embedding_l_infty](../../../../GeneralTopology/Urysohn.lean/declarations/exists-embedding-l-infty.md) | 121 | `result-track:e2e951ca794ec9be7da2bf9f16c5ed53b91592078d76ad6928650fa89bc1ce89` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/Urysohn.lean/declarations/instance-source-edition-2.md) | 127 | `declaration-track:bfbd871157f4c1d5f6fa00ddd23bd9083ec746060b8ce38b7cc658a915491e88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81b2fd1a93532cd1e9f3f294c03a0aa40078ac26b6b938f5cfb2373ddc90b2e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Urysohn/Variant7116fe9416f024677410d1cac68d86172437079a882d5631d9b2adc667e5f142.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Urysohn/Variant7116fe9416f024677410d1cac68d86172437079a882d5631d9b2adc667e5f142.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
