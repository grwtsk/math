# Verification target: GRWTSK.Topology.MetricTopology.CantorScheme.Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79e2577d40e4f899c9a31e04ff40bc99e0fd35ce",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79e2577d40e4f899c9a31e04ff40bc99e0fd35ce`.

Source path: `GRWTSK/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.PiNat` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inducedMap](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean/declarations/inducedmap--9e8eb5e903bf5dd641a961b0.md) | 51 | `declaration-track:9e8eb5e903bf5dd641a961b02b0f9cea302153f40bb2792bd11fc31c1170e860` |
| 2 | `def` | [Antitone](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean/declarations/antitone--ab34ce93c075006b25d682fe.md) | 57 | `declaration-track:ab34ce93c075006b25d682fe7e65541fb516b04bf0da6ceb6699c0971dee7e4b` |
| 3 | `def` | [ClosureAntitone](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean/declarations/closureantitone--319a78af295a73b1a4f8632b.md) | 62 | `declaration-track:319a78af295a73b1a4f8632b04879b835b7bc7105a82014f6f645255a6334af1` |
| 4 | `def` | [Disjoint](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean/declarations/disjoint--07522d094256a2b6311ad07d.md) | 66 | `declaration-track:07522d094256a2b6311ad07d83413e53c22ec6cb4a17fa05a320c3d69eb928e2` |
| 5 | `theorem` | [map_mem](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean/declarations/map-mem--2787462e18075b31283a46f1.md) | 73 | `result-track:2787462e18075b31283a46f1b23a28beb4d3280dbc126ddbed5e9b0870220cf6` |
| 6 | `theorem` | [ClosureAntitone.antitone](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean/declarations/closureantitone-antitone--6e921218d5c36e6a19d9644f.md) | 78 | `result-track:6e921218d5c36e6a19d9644f46a786fb7b9cb849c0eefe41f6b1014ddaff0907` |
| 7 | `theorem` | [Antitone.closureAntitone](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean/declarations/antitone-closureantitone--b50309178990ce542751d70d.md) | 81 | `result-track:b50309178990ce542751d70dc6af60c44c9675a8016ef666c59240214e02261e` |
| 8 | `theorem` | [Disjoint.map_injective](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean/declarations/disjoint-map-injective--61e58561049a279319d645ce.md) | 86 | `result-track:61e58561049a279319d645cee1586d90b8418e6dceb8a9abe3a097ccfdabd0c5` |
| 9 | `def` | [VanishingDiam](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean/declarations/vanishingdiam--3491f5c704ec4798a862242f.md) | 113 | `declaration-track:3491f5c704ec4798a862242fb006542ba901ca460fb87456ed83507056f2ecfc` |
| 10 | `theorem` | [VanishingDiam.dist_lt](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean/declarations/vanishingdiam-dist-lt--bd874ba53e9ddb5bac87c1a5.md) | 118 | `result-track:bd874ba53e9ddb5bac87c1a5bef64171718dbfff80b21d05c17dd48de84b0e77` |
| 11 | `theorem` | [VanishingDiam.map_continuous](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean/declarations/vanishingdiam-map-continuous--ff0b48877083ba7f54721541.md) | 133 | `result-track:ff0b48877083ba7f54721541b6e918069f2c2f3e33fe92e4c7675fc0354c4cfc` |
| 12 | `theorem` | [ClosureAntitone.map_of_vanishingDiam](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean/declarations/closureantitone-map-of-vanishingdiam--679780e7d1a5289ddbc8df78.md) | 152 | `result-track:679780e7d1a5289ddbc8df7875351eb202e3a3616e2b38bf99edce92fe82d118` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
