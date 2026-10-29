# Verification target: Orbit Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87b209d4a21d124ba65bd9c8fee8bc748c9a6458",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Orbit/Variant89dc4537a6ab114db1a89ba4dae1d7c9fe4b210e56095cd0b75e21ea17391372.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/OrbitPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/OrbitPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87b209d4a21d124ba65bd9c8fee8bc748c9a6458`.

Source path: `GRWTSK/Algebra/GroupTheory/Orbit/Variant89dc4537a6ab114db1a89ba4dae1d7c9fe4b210e56095cd0b75e21ea17391372.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Orbit/Variant89dc4537a6ab114db1a89ba4dae1d7c9fe4b210e56095cd0b75e21ea17391372.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [startsWith](../../../../GroupTheoryAndGeneralizations/OrbitPublic.lean/declarations/startswith.md) | 31 | `declaration-track:6aa9f0fefafa999d868de3af4532a862a513171f3d143deaa14f847da2566560` |
| 2 | `theorem` | [startsWith.ne_one](../../../../GroupTheoryAndGeneralizations/OrbitPublic.lean/declarations/startswith-ne-one.md) | 36 | `result-track:edad02fc95867ef827618690594fa44d0834851319e0a49c3f820556b71138c2` |
| 3 | `lemma` | [startsWith.disjoint_iff_ne](../../../../GroupTheoryAndGeneralizations/OrbitPublic.lean/declarations/startswith-disjoint-iff-ne.md) | 40 | `result-track:e4fd1ddd2902b3e70e3bd4d31c401c79de4e1c4e1d47576dfc218b7d5685306e` |
| 4 | `lemma` | [startsWith.Injective](../../../../GroupTheoryAndGeneralizations/OrbitPublic.lean/declarations/startswith-injective.md) | 46 | `result-track:4aa1190c4c3508aa9dcebeaf7ab5b981e7a5db47429e75839f5f7cdc3678f810` |
| 5 | `theorem` | [startsWith_mk_mul](../../../../GroupTheoryAndGeneralizations/OrbitPublic.lean/declarations/startswith-mk-mul.md) | 50 | `result-track:b26a5e28ef6d327b97dce3be0f7b41afdf734cfa3d8666244ff72a4cb124123a` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/OrbitPublic.lean/declarations/instance.md) | 62 | `declaration-track:efe2bce297f3590a15145de456dc9e836bdaad578eb17460d9d4c3432c054c77` |
| 7 | `lemma` | [startsWith.smul_def](../../../../GroupTheoryAndGeneralizations/OrbitPublic.lean/declarations/startswith-smul-def.md) | 66 | `result-track:00898bd582108d3cc80ea9b9c0dfc60fd138e827411b2c66a2dd574c25695789` |
| 8 | `theorem` | [Orbit.duplicate](../../../../GroupTheoryAndGeneralizations/OrbitPublic.lean/declarations/orbit-duplicate.md) | 74 | `result-track:82896f42041c81312e5d0f8b750e7d5dfea3a7106d8b402c4bf2b06b1f1cc6d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8ff4ffffc8f841ca4284480083084405d151fe7439a2e494340337af3646129 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Orbit/Variant89dc4537a6ab114db1a89ba4dae1d7c9fe4b210e56095cd0b75e21ea17391372.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Orbit/Variant89dc4537a6ab114db1a89ba4dae1d7c9fe4b210e56095cd0b75e21ea17391372.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
