# Verification target: Error Transform

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d2d81f0377b870b5bffad6ff55eb643f2f20731",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/ErrorTransform/Variant9e85c27f7831484b2d87caabe15674790a3bd2bb79f2daa8510702b9b392af6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/ErrorTransform.lean/index.md) · [Full source](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/ErrorTransform.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d2d81f0377b870b5bffad6ff55eb643f2f20731`.

Source path: `GRWTSK/Topology/MetricTopology/ErrorTransform/Variant9e85c27f7831484b2d87caabe15674790a3bd2bb79f2daa8510702b9b392af6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/ErrorTransform/Variant9e85c27f7831484b2d87caabe15674790a3bd2bb79f2daa8510702b9b392af6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.MobiusOntology.ControlledMap` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ErrorFactor](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/ErrorTransform.lean/declarations/errorfactor.md) | 14 | `declaration-track:5af312a9968cf614e82765440d01304a608a0fea37ef0f6b73c92538f3103b7e` |
| 2 | `abbrev` | [ErrorTransform](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/ErrorTransform.lean/declarations/errortransform.md) | 15 | `declaration-track:3bda4b9818f2b2756d3e2a8af3f554b59cb34e5af378886a5bd102ac2560d535` |
| 3 | `def` | [identity](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/ErrorTransform.lean/declarations/identity.md) | 19 | `declaration-track:ef736e4592ad3fc83e7f87b5e96ce4a05c2594394a7072bd0eaec448a7ff341e` |
| 4 | `def` | [comp](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/ErrorTransform.lean/declarations/comp.md) | 22 | `declaration-track:79c7e7e5ee4e904cb80cd4322fd9f34ce8c11d70458be25971691eebc4f572dd` |
| 5 | `theorem` | [comp_assoc](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/ErrorTransform.lean/declarations/comp-assoc.md) | 25 | `result-track:ef1db589ab0342b949da89d06bae9fdc9ea75ae91476dc437aafd15248744308` |
| 6 | `def` | [toErrorTransform](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/ErrorTransform.lean/declarations/toerrortransform.md) | 34 | `declaration-track:388b268a0750a8c41bf263555d5f19525fdd463f949e4e3bbb5bc35b3e797231` |
| 7 | `theorem` | [toErrorTransform_comp](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/ErrorTransform.lean/declarations/toerrortransform-comp.md) | 41 | `result-track:918cca976b1af2b9f75eb0560ced4ef25d31e8f6451b0bd2365976baea137e46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=21b9a5c3fa6cbbef09570c4144d2f238a8104f54a0dc3677987b6846d71ecc0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/ErrorTransform/Variant9e85c27f7831484b2d87caabe15674790a3bd2bb79f2daa8510702b9b392af6f.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/ErrorTransform/Variant9e85c27f7831484b2d87caabe15674790a3bd2bb79f2daa8510702b9b392af6f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
