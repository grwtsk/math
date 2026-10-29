# Verification target: Continuous Map Units Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "005e060e8f803d9dbe16d5c0bd158b07aaaa9421",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Units/Variant1b73a417b8f89bd571b11ae8677e539a13917bea696c034b9ec869f827b4ce24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContinuousMapUnitsNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/ContinuousMapUnitsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `005e060e8f803d9dbe16d5c0bd158b07aaaa9421`.

Source path: `GRWTSK/Topology/GeneralTopology/Units/Variant1b73a417b8f89bd571b11ae8677e539a13917bea696c034b9ec869f827b4ce24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Units/Variant1b73a417b8f89bd571b11ae8677e539a13917bea696c034b9ec869f827b4ce24.lean.json)

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
| 1 | `def` | [unitsLift](../../../../GeneralTopology/ContinuousMapUnitsNamespacedPublic.lean/declarations/unitslift.md) | 46 | `declaration-track:0f7205587560d3cd472429ca44d1f2ff20045f1e3058216559305aaaf3cb2116` |
| 2 | `lemma` | [unitsLift_apply_inv_apply](../../../../GeneralTopology/ContinuousMapUnitsNamespacedPublic.lean/declarations/unitslift-apply-inv-apply.md) | 61 | `result-track:35a70f4ed320db85fcbaa438e8d4c7c1041849ae3186f1ac0f8d9a97fba40d95` |
| 3 | `lemma` | [unitsLift_symm_apply_apply_inv'](../../../../GeneralTopology/ContinuousMapUnitsNamespacedPublic.lean/declarations/unitslift-symm-apply-apply-inv.md) | 66 | `result-track:ac16f0911bd663fc3cbcd25695bf3532b6e75398ae148e3fcc3b0bece0d69a0f` |
| 4 | `theorem` | [continuous_isUnit_unit](../../../../GeneralTopology/ContinuousMapUnitsNamespacedPublic.lean/declarations/continuous-isunit-unit.md) | 76 | `result-track:129bc5d17fdc9c0888a349444f6ab1564aee204062eda8641681ba5d6ec67466` |
| 5 | `def` | [unitsOfForallIsUnit](../../../../GeneralTopology/ContinuousMapUnitsNamespacedPublic.lean/declarations/unitsofforallisunit.md) | 90 | `declaration-track:0a3f4655054b5964cb300c2b5d93814b3745964476628b6350d4b588c6637c17` |
| 6 | `instance` | [canLift](../../../../GeneralTopology/ContinuousMapUnitsNamespacedPublic.lean/declarations/canlift.md) | 94 | `declaration-track:86bce5181668ef6b939315c63622d0359be92a8156f277fe6d86bdb5224be64d` |
| 7 | `theorem` | [isUnit_iff_forall_isUnit](../../../../GeneralTopology/ContinuousMapUnitsNamespacedPublic.lean/declarations/isunit-iff-forall-isunit.md) | 99 | `result-track:2b6f624258dec198b3f76a6e82ba0ddf912c749d4b07b4201c31e1381ef1b457` |
| 8 | `theorem` | [isUnit_iff_forall_ne_zero](../../../../GeneralTopology/ContinuousMapUnitsNamespacedPublic.lean/declarations/isunit-iff-forall-ne-zero.md) | 109 | `result-track:30b695f62028323f7514f6e1804afcbe4c4fa60fd6e79e6fd9198b05a309d9d9` |
| 9 | `theorem` | [spectrum_eq_preimage_range](../../../../GeneralTopology/ContinuousMapUnitsNamespacedPublic.lean/declarations/spectrum-eq-preimage-range.md) | 112 | `result-track:d4569890601ba5a13580d4058cea902c98f4629e3ea5a07b36160a1302fae1c1` |
| 10 | `theorem` | [spectrum_eq_range](../../../../GeneralTopology/ContinuousMapUnitsNamespacedPublic.lean/declarations/spectrum-eq-range.md) | 120 | `result-track:8df242988c0872835901819c6fad1bf3eecbb4ca786db3e5ffbc187492b79a5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d96b9ab0d7ee3a4efd6643783391cddbf9d27f7808e8f00ca2acd425e9d8b7c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Units/Variant1b73a417b8f89bd571b11ae8677e539a13917bea696c034b9ec869f827b4ce24.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Units/Variant1b73a417b8f89bd571b11ae8677e539a13917bea696c034b9ec869f827b4ce24.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
