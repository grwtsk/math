# Verification target: Coherent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "857b5f500901b3939a77225fea8259075f53b339",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Coherent/Variantea8efda42b10309891a71ccacb19340b0decf1c59c8fdfc3e24c74f38563cfb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/Coherent.lean/index.md) · [Full source](../../../../GeneralTopology/Coherent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `857b5f500901b3939a77225fea8259075f53b339`.

Source path: `GRWTSK/Topology/GeneralTopology/Coherent/Variantea8efda42b10309891a71ccacb19340b0decf1c59c8fdfc3e24c74f38563cfb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Coherent/Variantea8efda42b10309891a71ccacb19340b0decf1c59c8fdfc3e24c74f38563cfb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Defs.Sequences` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Compact` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isOpen_iff](../../../../GeneralTopology/Coherent.lean/declarations/isopen-iff.md) | 42 | `result-track:4d88387877f7d08caf579c8c4629c3e05151837775aa834ee9eb9eb2d3cb26fa` |
| 2 | `theorem` | [isClosed_iff](../../../../GeneralTopology/Coherent.lean/declarations/isclosed-iff.md) | 46 | `result-track:f0abd947f51b1e5c8a0346d7d8a58bb1bb8ce0f48f50cb1ee0100a9669c85444` |
| 3 | `theorem` | [continuous_iff](../../../../GeneralTopology/Coherent.lean/declarations/continuous-iff.md) | 50 | `result-track:3a7739d3d8cfc4b0ce36efc4a53eaed9bf3e708d8da6acd5d51965d3e7f0a5f2` |
| 4 | `theorem` | [of_continuous_prop](../../../../GeneralTopology/Coherent.lean/declarations/of-continuous-prop.md) | 56 | `result-track:4e68d8283c6717eedaad81baff92373d0d49fa8ec52a165af9bd7305bea8b99e` |
| 5 | `theorem` | [of_isClosed](../../../../GeneralTopology/Coherent.lean/declarations/of-isclosed.md) | 62 | `result-track:6f6ea6090a7498861ccde79a3350f5842c854320f15d7d93e1225b289d721dfe` |
| 6 | `theorem` | [enlarge](../../../../GeneralTopology/Coherent.lean/declarations/enlarge.md) | 66 | `result-track:0b0a122b5ae1f1b2367bc1fd13dbf55b6026762f956af91316508e92cca716db` |
| 7 | `theorem` | [mono](../../../../GeneralTopology/Coherent.lean/declarations/mono.md) | 71 | `result-track:cbe56d87062cd671c59f8e9c241f05027473350d47b151d367632c2975593e63` |
| 8 | `lemma` | [of_seq](../../../../GeneralTopology/Coherent.lean/declarations/of-seq.md) | 78 | `result-track:1770966b75b279cc8b784315155897394f1baef3a0187f9996bf1045b13da561` |
| 9 | `lemma` | [isCompact_of_seq](../../../../GeneralTopology/Coherent.lean/declarations/iscompact-of-seq.md) | 90 | `result-track:bb9d7f024539ec89770d79632ba575d9533fae82918cff301ceadb82438904a2` |
| 10 | `lemma` | [of_nhds](../../../../GeneralTopology/Coherent.lean/declarations/of-nhds.md) | 95 | `result-track:51075cee23af33f004ad1758a55cb7b3c214cf63e90c02956c62cb72155290c1` |
| 11 | `lemma` | [isCompact_of_weaklyLocallyCompact](../../../../GeneralTopology/Coherent.lean/declarations/iscompact-of-weaklylocallycompact.md) | 101 | `result-track:d92ce4e3db8250c4601bc4f286174d96028fa2c295590874a671b2a0a710133c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc372d9e36601b1a908c028e3e8895dcd9299e53447bdafa5b3ead308de2e2e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Coherent/Variantea8efda42b10309891a71ccacb19340b0decf1c59c8fdfc3e24c74f38563cfb7.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Coherent/Variantea8efda42b10309891a71ccacb19340b0decf1c59c8fdfc3e24c74f38563cfb7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
