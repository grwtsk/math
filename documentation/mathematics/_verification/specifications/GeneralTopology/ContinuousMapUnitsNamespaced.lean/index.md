# Verification target: Continuous Map Units Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1df97af433ecf5444e0fe400f261c19d49e51442",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Units/Variantde3f46e4febece3c9c9b076128164f2d8117273d9f18838547ae9ea6a33c653f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContinuousMapUnitsNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ContinuousMapUnitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1df97af433ecf5444e0fe400f261c19d49e51442`.

Source path: `GRWTSK/Topology/GeneralTopology/Units/Variantde3f46e4febece3c9c9b076128164f2d8117273d9f18838547ae9ea6a33c653f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Units/Variantde3f46e4febece3c9c9b076128164f2d8117273d9f18838547ae9ea6a33c653f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Ring.Units` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Spectrum.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Algebra` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitsLift](../../../../GeneralTopology/ContinuousMapUnitsNamespaced.lean/declarations/unitslift.md) | 41 | `declaration-track:e41e7914e99880c6beaa7b0909e9a1a4ece73b53afe00b2fa64793d40999c08c` |
| 2 | `lemma` | [unitsLift_apply_inv_apply](../../../../GeneralTopology/ContinuousMapUnitsNamespaced.lean/declarations/unitslift-apply-inv-apply.md) | 58 | `result-track:eb3fdd5dd2a771542a55a351987b1ed1572c5eeaefa90e0b2b28f124b06acfce` |
| 3 | `lemma` | [unitsLift_symm_apply_apply_inv'](../../../../GeneralTopology/ContinuousMapUnitsNamespaced.lean/declarations/unitslift-symm-apply-apply-inv.md) | 63 | `result-track:2a5e0265f638fd45769ebfd65c1f5972e63d6fc2af5d881938885769aba0c197` |
| 4 | `theorem` | [continuous_isUnit_unit](../../../../GeneralTopology/ContinuousMapUnitsNamespaced.lean/declarations/continuous-isunit-unit.md) | 73 | `result-track:bd19d3453aa5545de4ee9cc0764784e4d5637fe6dee8319a15f933447c725566` |
| 5 | `def` | [unitsOfForallIsUnit](../../../../GeneralTopology/ContinuousMapUnitsNamespaced.lean/declarations/unitsofforallisunit.md) | 87 | `declaration-track:4219a7698cff8a15d32620a3358bddc698cfc28123c3d68be1fcd38ffe59cdfb` |
| 6 | `instance` | [canLift](../../../../GeneralTopology/ContinuousMapUnitsNamespaced.lean/declarations/canlift.md) | 91 | `declaration-track:90e85ea37fa2ef049fa26619e2f89205330210d69a2dbfdea0acdb4437d88916` |
| 7 | `theorem` | [isUnit_iff_forall_isUnit](../../../../GeneralTopology/ContinuousMapUnitsNamespaced.lean/declarations/isunit-iff-forall-isunit.md) | 96 | `result-track:8e72d05c9a9438bf0a4bea5f0bfe8b03a852f42dd1f59e9a1f16baeaea85ddbc` |
| 8 | `theorem` | [isUnit_iff_forall_ne_zero](../../../../GeneralTopology/ContinuousMapUnitsNamespaced.lean/declarations/isunit-iff-forall-ne-zero.md) | 106 | `result-track:40d2b26a7084f51021309dcb9ad2773ff72193e322278b690411cf83038c5e9b` |
| 9 | `theorem` | [spectrum_eq_preimage_range](../../../../GeneralTopology/ContinuousMapUnitsNamespaced.lean/declarations/spectrum-eq-preimage-range.md) | 109 | `result-track:b1c2ee2904268759dea29fa3dd9f18e6a92a12f8bf9b9632eaa0a43f78292bc4` |
| 10 | `theorem` | [spectrum_eq_range](../../../../GeneralTopology/ContinuousMapUnitsNamespaced.lean/declarations/spectrum-eq-range.md) | 117 | `result-track:a4da2e8d6e8132a8811140d88c776fbb8655016b6f8e648634184482a20a4a39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86b8d3c9d67ba9f8a3f4fcc7c2f7dd6ca18f803f96e2437dce69895685eaf093 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Units/Variantde3f46e4febece3c9c9b076128164f2d8117273d9f18838547ae9ea6a33c653f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Units/Variantde3f46e4febece3c9c9b076128164f2d8117273d9f18838547ae9ea6a33c653f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
