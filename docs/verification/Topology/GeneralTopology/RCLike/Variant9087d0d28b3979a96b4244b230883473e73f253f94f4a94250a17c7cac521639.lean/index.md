# Verification target: GRWTSK.Topology.GeneralTopology.RCLike.Variant9087d0d28b3979a96b4244b230883473e73f253f94f4a94250a17c7cac521639

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae94e8c85478b336909d7480bb78501e8597c556",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RCLike/Variant9087d0d28b3979a96b4244b230883473e73f253f94f4a94250a17c7cac521639.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RCLike/Variant9087d0d28b3979a96b4244b230883473e73f253f94f4a94250a17c7cac521639.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RCLike/Variant9087d0d28b3979a96b4244b230883473e73f253f94f4a94250a17c7cac521639.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae94e8c85478b336909d7480bb78501e8597c556`.

Source path: `GRWTSK/Topology/GeneralTopology/RCLike/Variant9087d0d28b3979a96b4244b230883473e73f253f94f4a94250a17c7cac521639.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RCLike/Variant9087d0d28b3979a96b4244b230883473e73f253f94f4a94250a17c7cac521639.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_inverse_atTop_nhds_zero_nat](../../../../../mathematics/Topology/GeneralTopology/RCLike/Variant9087d0d28b3979a96b4244b230883473e73f253f94f4a94250a17c7cac521639.lean/declarations/tendsto-inverse-attop-nhds-zero-nat--6ad185aedd4908b6f1d2a073.md) | 21 | `result-track:6ad185aedd4908b6f1d2a073d1a6c43ab53bde7afb3218739912e468e2eb9cfc` |
| 2 | `theorem` | [tendsto_ofReal_cobounded_cobounded](../../../../../mathematics/Topology/GeneralTopology/RCLike/Variant9087d0d28b3979a96b4244b230883473e73f253f94f4a94250a17c7cac521639.lean/declarations/tendsto-ofreal-cobounded-cobounded--bf8e059a7c6d605285947c6c.md) | 26 | `result-track:bf8e059a7c6d605285947c6ca0d7084bd4b447a717f3fb8271b188a91b7e9bcf` |
| 3 | `theorem` | [tendsto_ofReal_atTop_cobounded](../../../../../mathematics/Topology/GeneralTopology/RCLike/Variant9087d0d28b3979a96b4244b230883473e73f253f94f4a94250a17c7cac521639.lean/declarations/tendsto-ofreal-attop-cobounded--f7502a40a641aecc4ac5dd5a.md) | 30 | `result-track:f7502a40a641aecc4ac5dd5abbf34c52ab8431dc2a84ee080db7f79c6bf07ce8` |
| 4 | `theorem` | [tendsto_ofReal_atBot_cobounded](../../../../../mathematics/Topology/GeneralTopology/RCLike/Variant9087d0d28b3979a96b4244b230883473e73f253f94f4a94250a17c7cac521639.lean/declarations/tendsto-ofreal-atbot-cobounded--da0edeae61d620c58d946292.md) | 34 | `result-track:da0edeae61d620c58d946292d03dbda69ce5ca35eb7fcf1fa8e42cade4905fa6` |
| 5 | `theorem` | [tendsto_add_mul_div_add_mul_atTop_nhds](../../../../../mathematics/Topology/GeneralTopology/RCLike/Variant9087d0d28b3979a96b4244b230883473e73f253f94f4a94250a17c7cac521639.lean/declarations/tendsto-add-mul-div-add-mul-attop-nhds--fd7c9de15f3db72f078d012f.md) | 40 | `result-track:fd7c9de15f3db72f078d012f56ce9011f64637c0a803775f9a83bfe8953133fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
