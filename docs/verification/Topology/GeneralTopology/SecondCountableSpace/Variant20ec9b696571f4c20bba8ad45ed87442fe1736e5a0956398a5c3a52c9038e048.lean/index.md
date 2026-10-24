# Verification target: GRWTSK.Topology.GeneralTopology.SecondCountableSpace.Variant20ec9b696571f4c20bba8ad45ed87442fe1736e5a0956398a5c3a52c9038e048

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb4cfa177bb13121a73c3a576e96276533e946fc",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SecondCountableSpace/Variant20ec9b696571f4c20bba8ad45ed87442fe1736e5a0956398a5c3a52c9038e048.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SecondCountableSpace/Variant20ec9b696571f4c20bba8ad45ed87442fe1736e5a0956398a5c3a52c9038e048.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SecondCountableSpace/Variant20ec9b696571f4c20bba8ad45ed87442fe1736e5a0956398a5c3a52c9038e048.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb4cfa177bb13121a73c3a576e96276533e946fc`.

Source path: `GRWTSK/Topology/GeneralTopology/SecondCountableSpace/Variant20ec9b696571f4c20bba8ad45ed87442fe1736e5a0956398a5c3a52c9038e048.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SecondCountableSpace/Variant20ec9b696571f4c20bba8ad45ed87442fe1736e5a0956398a5c3a52c9038e048.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.CompactOpen` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [compactOpen_eq_generateFrom](../../../../../mathematics/Topology/GeneralTopology/SecondCountableSpace/Variant20ec9b696571f4c20bba8ad45ed87442fe1736e5a0956398a5c3a52c9038e048.lean/declarations/compactopen-eq-generatefrom--eca0781aa97e20e58e9f1aa2.md) | 24 | `result-track:eca0781aa97e20e58e9f1aa22ff623cc0205c05f7b2c8cc730eb7bbd75c4b774` |
| 2 | `theorem` | [secondCountableTopology](../../../../../mathematics/Topology/GeneralTopology/SecondCountableSpace/Variant20ec9b696571f4c20bba8ad45ed87442fe1736e5a0956398a5c3a52c9038e048.lean/declarations/secondcountabletopology--ce2dcfe80b7a09335a5f5fdf.md) | 68 | `result-track:ce2dcfe80b7a09335a5f5fdf34dcf637242e8260ea81a6456af03806095c430a` |
| 3 | `instance` | [instSecondCountableTopology](../../../../../mathematics/Topology/GeneralTopology/SecondCountableSpace/Variant20ec9b696571f4c20bba8ad45ed87442fe1736e5a0956398a5c3a52c9038e048.lean/declarations/instsecondcountabletopology--375a36c79fd52bffb2e9cb66.md) | 80 | `declaration-track:375a36c79fd52bffb2e9cb66c0a34523da9eee650cd3c97f83899674fe83d2be` |
| 4 | `instance` | [instSeparableSpace](../../../../../mathematics/Topology/GeneralTopology/SecondCountableSpace/Variant20ec9b696571f4c20bba8ad45ed87442fe1736e5a0956398a5c3a52c9038e048.lean/declarations/instseparablespace--6591c0d323186ec97db752c5.md) | 104 | `declaration-track:6591c0d323186ec97db752c50b7612be398246f1906a1981b84f3df5f106732e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
