# Verification target: GRWTSK.Topology.GeneralTopology.SecondCountableSpace.Variantd7955ae2664d2556087872705526f8ed925a68be52e34f181fb0fd29345c7b89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75f7c6ad28e6a4748201ef8508e74c0d82fa9cc2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SecondCountableSpace/Variantd7955ae2664d2556087872705526f8ed925a68be52e34f181fb0fd29345c7b89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SecondCountableSpace/Variantd7955ae2664d2556087872705526f8ed925a68be52e34f181fb0fd29345c7b89.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SecondCountableSpace/Variantd7955ae2664d2556087872705526f8ed925a68be52e34f181fb0fd29345c7b89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75f7c6ad28e6a4748201ef8508e74c0d82fa9cc2`.

Source path: `GRWTSK/Topology/GeneralTopology/SecondCountableSpace/Variantd7955ae2664d2556087872705526f8ed925a68be52e34f181fb0fd29345c7b89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SecondCountableSpace/Variantd7955ae2664d2556087872705526f8ed925a68be52e34f181fb0fd29345c7b89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.CompactOpen` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [compactOpen_eq_generateFrom](../../../../../mathematics/Topology/GeneralTopology/SecondCountableSpace/Variantd7955ae2664d2556087872705526f8ed925a68be52e34f181fb0fd29345c7b89.lean/declarations/compactopen-eq-generatefrom--e9f0a24e179bfe03cc629d87.md) | 32 | `result-track:e9f0a24e179bfe03cc629d871505e28fe30150341e1ed06e0b4acafa1f6e8aa2` |
| 2 | `theorem` | [secondCountableTopology](../../../../../mathematics/Topology/GeneralTopology/SecondCountableSpace/Variantd7955ae2664d2556087872705526f8ed925a68be52e34f181fb0fd29345c7b89.lean/declarations/secondcountabletopology--89dc6d966334718b478982c1.md) | 76 | `result-track:89dc6d966334718b478982c1505ff83d9c704f629b99437e2aeb80cbda1675f7` |
| 3 | `instance` | [instSecondCountableTopology](../../../../../mathematics/Topology/GeneralTopology/SecondCountableSpace/Variantd7955ae2664d2556087872705526f8ed925a68be52e34f181fb0fd29345c7b89.lean/declarations/instsecondcountabletopology--2351d154595ed6b6d4364dbb.md) | 88 | `declaration-track:2351d154595ed6b6d4364dbb9bfa8a122c510d8c72f068ed15efc354cff4ff8e` |
| 4 | `instance` | [instSeparableSpace](../../../../../mathematics/Topology/GeneralTopology/SecondCountableSpace/Variantd7955ae2664d2556087872705526f8ed925a68be52e34f181fb0fd29345c7b89.lean/declarations/instseparablespace--6437ea9d497be612aedb8343.md) | 112 | `declaration-track:6437ea9d497be612aedb8343fada3355e8d42ce64ccfeb6354236bc950c14b2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
