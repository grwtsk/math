# Verification target: GRWTSK.Topology.GeneralTopology.Ultrafilter.Variante208017f87231d10b00fd44ce123c83fc6457673e16360840ec7c1852a702d08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "377bb1385ac7f748543a45dfd41ba63d8328eb9b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Ultrafilter/Variante208017f87231d10b00fd44ce123c83fc6457673e16360840ec7c1852a702d08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Ultrafilter/Variante208017f87231d10b00fd44ce123c83fc6457673e16360840ec7c1852a702d08.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Ultrafilter/Variante208017f87231d10b00fd44ce123c83fc6457673e16360840ec7c1852a702d08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `377bb1385ac7f748543a45dfd41ba63d8328eb9b`.

Source path: `GRWTSK/Topology/GeneralTopology/Ultrafilter/Variante208017f87231d10b00fd44ce123c83fc6457673e16360840ec7c1852a702d08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Ultrafilter/Variante208017f87231d10b00fd44ce123c83fc6457673e16360840ec7c1852a702d08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Ultrafilter.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Continuous` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ultrafilter.clusterPt_iff](../../../../../mathematics/Topology/GeneralTopology/Ultrafilter/Variante208017f87231d10b00fd44ce123c83fc6457673e16360840ec7c1852a702d08.lean/declarations/ultrafilter-clusterpt-iff--4249a4c79bb21e9cb55b1fa9.md) | 26 | `result-track:4249a4c79bb21e9cb55b1fa976460032c00068e2dde4e0c9f2bb6aa6741589b8` |
| 2 | `theorem` | [clusterPt_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/Ultrafilter/Variante208017f87231d10b00fd44ce123c83fc6457673e16360840ec7c1852a702d08.lean/declarations/clusterpt-iff-ultrafilter--d5e6032f3f88e5f3fbc2034f.md) | 29 | `result-track:d5e6032f3f88e5f3fbc2034f0da7b74564fa0eba27539db2f97f6e1c6c98d0aa` |
| 3 | `theorem` | [mapClusterPt_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/Ultrafilter/Variante208017f87231d10b00fd44ce123c83fc6457673e16360840ec7c1852a702d08.lean/declarations/mapclusterpt-iff-ultrafilter--f1f68a1ca117d1a601f02e3a.md) | 33 | `result-track:f1f68a1ca117d1a601f02e3a28b0fbc68820856dfc875f0ec32a80c05af4a913` |
| 4 | `theorem` | [isOpen_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/Ultrafilter/Variante208017f87231d10b00fd44ce123c83fc6457673e16360840ec7c1852a702d08.lean/declarations/isopen-iff-ultrafilter--a75cd39684e1ce9d08347a5a.md) | 38 | `result-track:a75cd39684e1ce9d08347a5a8614d0e1710ddc931a9e93feeb4cbc436423d446` |
| 5 | `theorem` | [mem_closure_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/Ultrafilter/Variante208017f87231d10b00fd44ce123c83fc6457673e16360840ec7c1852a702d08.lean/declarations/mem-closure-iff-ultrafilter--297b8b500b8d23567d2d270d.md) | 44 | `result-track:297b8b500b8d23567d2d270d16b2d518e3777e90edf1424226e782cb22ec7185` |
| 6 | `theorem` | [isClosed_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/Ultrafilter/Variante208017f87231d10b00fd44ce123c83fc6457673e16360840ec7c1852a702d08.lean/declarations/isclosed-iff-ultrafilter--868dd11646d057916041bfb4.md) | 48 | `result-track:868dd11646d057916041bfb45a5a8fecca21b55191524b69a67c618e7baad8f8` |
| 7 | `theorem` | [continuousAt_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/Ultrafilter/Variante208017f87231d10b00fd44ce123c83fc6457673e16360840ec7c1852a702d08.lean/declarations/continuousat-iff-ultrafilter--d3ea6613b196141ec9173773.md) | 54 | `result-track:d3ea6613b196141ec91737733f099e7784abcdbcf229f3470fc10725f2af82e1` |
| 8 | `theorem` | [continuous_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/Ultrafilter/Variante208017f87231d10b00fd44ce123c83fc6457673e16360840ec7c1852a702d08.lean/declarations/continuous-iff-ultrafilter--82b341e4b2752e4e42b25798.md) | 58 | `result-track:82b341e4b2752e4e42b257988b818f70c3503ab47a54ecef38280855692a89d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
