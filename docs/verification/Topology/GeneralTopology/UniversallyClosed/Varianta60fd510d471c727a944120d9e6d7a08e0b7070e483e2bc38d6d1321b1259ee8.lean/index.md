# Verification target: GRWTSK.Topology.GeneralTopology.UniversallyClosed.Varianta60fd510d471c727a944120d9e6d7a08e0b7070e483e2bc38d6d1321b1259ee8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0563b96a95c11bfb0010be423fb2ffc9da2cb0da",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniversallyClosed/Varianta60fd510d471c727a944120d9e6d7a08e0b7070e483e2bc38d6d1321b1259ee8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UniversallyClosed/Varianta60fd510d471c727a944120d9e6d7a08e0b7070e483e2bc38d6d1321b1259ee8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UniversallyClosed/Varianta60fd510d471c727a944120d9e6d7a08e0b7070e483e2bc38d6d1321b1259ee8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0563b96a95c11bfb0010be423fb2ffc9da2cb0da`.

Source path: `GRWTSK/Topology/GeneralTopology/UniversallyClosed/Varianta60fd510d471c727a944120d9e6d7a08e0b7070e483e2bc38d6d1321b1259ee8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniversallyClosed/Varianta60fd510d471c727a944120d9e6d7a08e0b7070e483e2bc38d6d1321b1259ee8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Maps.Proper.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.StoneCech` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isProperMap_iff_isClosedMap_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/UniversallyClosed/Varianta60fd510d471c727a944120d9e6d7a08e0b7070e483e2bc38d6d1321b1259ee8.lean/declarations/ispropermap-iff-isclosedmap-ultrafilter--3f5aa6ea65f1a24333f620e4.md) | 29 | `result-track:3f5aa6ea65f1a24333f620e40678fe36f4da73d03633597f3c6a4d1d8a3c6e19` |
| 2 | `theorem` | [isProperMap_iff_universally_closed](../../../../../mathematics/Topology/GeneralTopology/UniversallyClosed/Varianta60fd510d471c727a944120d9e6d7a08e0b7070e483e2bc38d6d1321b1259ee8.lean/declarations/ispropermap-iff-universally-closed--6dcb87735de0b4d4e9e7273c.md) | 57 | `result-track:6dcb87735de0b4d4e9e7273cfd2224753310813eab6df0ed9f82f7d9246da95d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
