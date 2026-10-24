# Verification target: GRWTSK.Topology.GeneralTopology.Residual.Variant9a1139872058309f072cba3d70eb6ff41d893f1fd338fc60ba28c0ebefb01c2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e0a1708f7d47f8ee39e99195da2d893e81415ad",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Residual/Variant9a1139872058309f072cba3d70eb6ff41d893f1fd338fc60ba28c0ebefb01c2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Residual/Variant9a1139872058309f072cba3d70eb6ff41d893f1fd338fc60ba28c0ebefb01c2b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Residual/Variant9a1139872058309f072cba3d70eb6ff41d893f1fd338fc60ba28c0ebefb01c2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e0a1708f7d47f8ee39e99195da2d893e81415ad`.

Source path: `GRWTSK/Topology/GeneralTopology/Residual/Variant9a1139872058309f072cba3d70eb6ff41d893f1fd338fc60ba28c0ebefb01c2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Residual/Variant9a1139872058309f072cba3d70eb6ff41d893f1fd338fc60ba28c0ebefb01c2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Transcendental.Liouville.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Baire.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Baire.LocallyCompactRegular` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Irrational` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [setOf_liouville_eq_iInter_iUnion](../../../../../mathematics/Topology/GeneralTopology/Residual/Variant9a1139872058309f072cba3d70eb6ff41d893f1fd338fc60ba28c0ebefb01c2b.lean/declarations/setof-liouville-eq-iinter-iunion--ce8fc01692b58f5baf3ed3fb.md) | 31 | `result-track:ce8fc01692b58f5baf3ed3fb55ffd1a062dd71b181ee19ba3cf7c8716fd76187` |
| 2 | `theorem` | [IsGδ.setOf_liouville](../../../../../mathematics/Topology/GeneralTopology/Residual/Variant9a1139872058309f072cba3d70eb6ff41d893f1fd338fc60ba28c0ebefb01c2b.lean/declarations/isg-setof-liouville--6b808018172db518503c2d62.md) | 39 | `result-track:6b808018172db518503c2d629e49e3dd87313ffec83fc9d3e90f62f11772536d` |
| 3 | `theorem` | [setOf_liouville_eq_irrational_inter_iInter_iUnion](../../../../../mathematics/Topology/GeneralTopology/Residual/Variant9a1139872058309f072cba3d70eb6ff41d893f1fd338fc60ba28c0ebefb01c2b.lean/declarations/setof-liouville-eq-irrational-inter-iinter-iunion--377dba3776f573582ae27621.md) | 46 | `result-track:377dba3776f573582ae2762119c385869231acd2962bbf1cb3209ee13dfdf469` |
| 4 | `theorem` | [eventually_residual_liouville](../../../../../mathematics/Topology/GeneralTopology/Residual/Variant9a1139872058309f072cba3d70eb6ff41d893f1fd338fc60ba28c0ebefb01c2b.lean/declarations/eventually-residual-liouville--0cc17aaac75ba4b6188329bc.md) | 60 | `result-track:0cc17aaac75ba4b6188329bc2d32c2d2bed9f0b6a69970704681515e7e24600e` |
| 5 | `theorem` | [dense_liouville](../../../../../mathematics/Topology/GeneralTopology/Residual/Variant9a1139872058309f072cba3d70eb6ff41d893f1fd338fc60ba28c0ebefb01c2b.lean/declarations/dense-liouville--c401f8f47b25737a53ab6b97.md) | 81 | `result-track:c401f8f47b25737a53ab6b9716108602144edd66f61f9723dad907fc49f1f934` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
