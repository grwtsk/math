# Verification target: GRWTSK.Geometry.AlgebraicGeometry.SpecialValueClaim.Variant6e9280817edd0a2430aaa0c176595698dc1ffa90b7e3f91ab1c26d0cc44f7a49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b7ed7b3857b7806dc54351825d0ea0c4a1cba3d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/SpecialValueClaim/Variant6e9280817edd0a2430aaa0c176595698dc1ffa90b7e3f91ab1c26d0cc44f7a49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Geometry/AlgebraicGeometry/SpecialValueClaim/Variant6e9280817edd0a2430aaa0c176595698dc1ffa90b7e3f91ab1c26d0cc44f7a49.lean/index.md) · [Full source](../../../../../../Geometry/AlgebraicGeometry/SpecialValueClaim/Variant6e9280817edd0a2430aaa0c176595698dc1ffa90b7e3f91ab1c26d0cc44f7a49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b7ed7b3857b7806dc54351825d0ea0c4a1cba3d`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/SpecialValueClaim/Variant6e9280817edd0a2430aaa0c176595698dc1ffa90b7e3f91ab1c26d0cc44f7a49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/SpecialValueClaim/Variant6e9280817edd0a2430aaa0c176595698dc1ffa90b7e3f91ab1c26d0cc44f7a49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.LogicalStatus` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Determinant.Core` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SpecialValueClaim](../../../../../../Geometry/AlgebraicGeometry/SpecialValueClaim/Variant6e9280817edd0a2430aaa0c176595698dc1ffa90b7e3f91ab1c26d0cc44f7a49.lean/declarations/specialvalueclaim--97bf3abc2494b3d5e1155c46.md) | 30 | `declaration-track:97bf3abc2494b3d5e1155c469a591f266272292abbd7b8535155ce3004bf0a06` |
| 2 | `def` | [spec](../../../../../../Geometry/AlgebraicGeometry/SpecialValueClaim/Variant6e9280817edd0a2430aaa0c176595698dc1ffa90b7e3f91ab1c26d0cc44f7a49.lean/declarations/spec--55b065fc4db469c39a2a2951.md) | 48 | `declaration-track:55b065fc4db469c39a2a2951443859584089f2c0af8ef49cf4f97703e4666ce5` |
| 3 | `theorem` | [spec_apply](../../../../../../Geometry/AlgebraicGeometry/SpecialValueClaim/Variant6e9280817edd0a2430aaa0c176595698dc1ffa90b7e3f91ab1c26d0cc44f7a49.lean/declarations/spec-apply--f1083983278cd19df0b7fe70.md) | 54 | `result-track:f1083983278cd19df0b7fe7072c0405acff30f29d3c0c32e591c7fa594fe6eee` |
| 4 | `def` | [claim](../../../../../../Geometry/AlgebraicGeometry/SpecialValueClaim/Variant6e9280817edd0a2430aaa0c176595698dc1ffa90b7e3f91ab1c26d0cc44f7a49.lean/declarations/claim--bc30fe206e92a5447241546c.md) | 61 | `declaration-track:bc30fe206e92a5447241546cd5b9749045092e6932e7cd9efea90623aa0388f4` |
| 5 | `theorem` | [certificate](../../../../../../Geometry/AlgebraicGeometry/SpecialValueClaim/Variant6e9280817edd0a2430aaa0c176595698dc1ffa90b7e3f91ab1c26d0cc44f7a49.lean/declarations/certificate--4c0283c361698550226dd1c2.md) | 67 | `result-track:4c0283c361698550226dd1c2edf54d2c05d51e22021287f443d8d9e9859bd05f` |
| 6 | `def` | [conditionalCertificate](../../../../../../Geometry/AlgebraicGeometry/SpecialValueClaim/Variant6e9280817edd0a2430aaa0c176595698dc1ffa90b7e3f91ab1c26d0cc44f7a49.lean/declarations/conditionalcertificate--c803c845d08143fa39dbb698.md) | 74 | `declaration-track:c803c845d08143fa39dbb69858dc2af01ce47cdf69fdefa8209fc241e40dfb18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=134aee3953256ac3475887709b535d68a9d180ad218103a7464428f9ce5baa14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/SpecialValueClaim/Variant6e9280817edd0a2430aaa0c176595698dc1ffa90b7e3f91ab1c26d0cc44f7a49.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/SpecialValueClaim/Variant6e9280817edd0a2430aaa0c176595698dc1ffa90b7e3f91ab1c26d0cc44f7a49.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
