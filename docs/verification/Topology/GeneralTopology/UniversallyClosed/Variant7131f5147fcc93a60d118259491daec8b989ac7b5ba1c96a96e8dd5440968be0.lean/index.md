# Verification target: GRWTSK.Topology.GeneralTopology.UniversallyClosed.Variant7131f5147fcc93a60d118259491daec8b989ac7b5ba1c96a96e8dd5440968be0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34bbf67720e13c24502bdb1260b924f6425addf1",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniversallyClosed/Variant7131f5147fcc93a60d118259491daec8b989ac7b5ba1c96a96e8dd5440968be0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UniversallyClosed/Variant7131f5147fcc93a60d118259491daec8b989ac7b5ba1c96a96e8dd5440968be0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UniversallyClosed/Variant7131f5147fcc93a60d118259491daec8b989ac7b5ba1c96a96e8dd5440968be0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34bbf67720e13c24502bdb1260b924f6425addf1`.

Source path: `GRWTSK/Topology/GeneralTopology/UniversallyClosed/Variant7131f5147fcc93a60d118259491daec8b989ac7b5ba1c96a96e8dd5440968be0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniversallyClosed/Variant7131f5147fcc93a60d118259491daec8b989ac7b5ba1c96a96e8dd5440968be0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Maps.Proper.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.StoneCech` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isProperMap_iff_isClosedMap_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/UniversallyClosed/Variant7131f5147fcc93a60d118259491daec8b989ac7b5ba1c96a96e8dd5440968be0.lean/declarations/ispropermap-iff-isclosedmap-ultrafilter--8a9d5e891aaf54fb91aa1f49.md) | 21 | `result-track:8a9d5e891aaf54fb91aa1f49523cba454c144762bbec892eed0b085766e94aa8` |
| 2 | `theorem` | [isProperMap_iff_universally_closed](../../../../../mathematics/Topology/GeneralTopology/UniversallyClosed/Variant7131f5147fcc93a60d118259491daec8b989ac7b5ba1c96a96e8dd5440968be0.lean/declarations/ispropermap-iff-universally-closed--c324d2cb7438d09b32ad9111.md) | 49 | `result-track:c324d2cb7438d09b32ad9111b750b68968aea17d7f1681a45aaa5a27d0d26833` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
