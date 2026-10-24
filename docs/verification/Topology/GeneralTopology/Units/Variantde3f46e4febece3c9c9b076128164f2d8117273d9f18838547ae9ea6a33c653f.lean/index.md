# Verification target: GRWTSK.Topology.GeneralTopology.Units.Variantde3f46e4febece3c9c9b076128164f2d8117273d9f18838547ae9ea6a33c653f

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

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Units/Variantde3f46e4febece3c9c9b076128164f2d8117273d9f18838547ae9ea6a33c653f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Units/Variantde3f46e4febece3c9c9b076128164f2d8117273d9f18838547ae9ea6a33c653f.lean/source.md)

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

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitsLift](../../../../../mathematics/Topology/GeneralTopology/Units/Variantde3f46e4febece3c9c9b076128164f2d8117273d9f18838547ae9ea6a33c653f.lean/declarations/unitslift--e41e7914e99880c6beaa7b09.md) | 41 | `declaration-track:e41e7914e99880c6beaa7b0909e9a1a4ece73b53afe00b2fa64793d40999c08c` |
| 2 | `lemma` | [unitsLift_apply_inv_apply](../../../../../mathematics/Topology/GeneralTopology/Units/Variantde3f46e4febece3c9c9b076128164f2d8117273d9f18838547ae9ea6a33c653f.lean/declarations/unitslift-apply-inv-apply--eb3fdd5dd2a771542a55a351.md) | 58 | `result-track:eb3fdd5dd2a771542a55a351987b1ed1572c5eeaefa90e0b2b28f124b06acfce` |
| 3 | `lemma` | [unitsLift_symm_apply_apply_inv'](../../../../../mathematics/Topology/GeneralTopology/Units/Variantde3f46e4febece3c9c9b076128164f2d8117273d9f18838547ae9ea6a33c653f.lean/declarations/unitslift-symm-apply-apply-inv--2a5e0265f638fd45769ebfd6.md) | 63 | `result-track:2a5e0265f638fd45769ebfd65c1f5972e63d6fc2af5d881938885769aba0c197` |
| 4 | `theorem` | [continuous_isUnit_unit](../../../../../mathematics/Topology/GeneralTopology/Units/Variantde3f46e4febece3c9c9b076128164f2d8117273d9f18838547ae9ea6a33c653f.lean/declarations/continuous-isunit-unit--bd19d3453aa5545de4ee9cc0.md) | 73 | `result-track:bd19d3453aa5545de4ee9cc0764784e4d5637fe6dee8319a15f933447c725566` |
| 5 | `def` | [unitsOfForallIsUnit](../../../../../mathematics/Topology/GeneralTopology/Units/Variantde3f46e4febece3c9c9b076128164f2d8117273d9f18838547ae9ea6a33c653f.lean/declarations/unitsofforallisunit--4219a7698cff8a15d32620a3.md) | 87 | `declaration-track:4219a7698cff8a15d32620a3358bddc698cfc28123c3d68be1fcd38ffe59cdfb` |
| 6 | `instance` | [canLift](../../../../../mathematics/Topology/GeneralTopology/Units/Variantde3f46e4febece3c9c9b076128164f2d8117273d9f18838547ae9ea6a33c653f.lean/declarations/canlift--90e85ea37fa2ef049fa26619.md) | 91 | `declaration-track:90e85ea37fa2ef049fa26619e2f89205330210d69a2dbfdea0acdb4437d88916` |
| 7 | `theorem` | [isUnit_iff_forall_isUnit](../../../../../mathematics/Topology/GeneralTopology/Units/Variantde3f46e4febece3c9c9b076128164f2d8117273d9f18838547ae9ea6a33c653f.lean/declarations/isunit-iff-forall-isunit--8e72d05c9a9438bf0a4bea5f.md) | 96 | `result-track:8e72d05c9a9438bf0a4bea5f0bfe8b03a852f42dd1f59e9a1f16baeaea85ddbc` |
| 8 | `theorem` | [isUnit_iff_forall_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Units/Variantde3f46e4febece3c9c9b076128164f2d8117273d9f18838547ae9ea6a33c653f.lean/declarations/isunit-iff-forall-ne-zero--40d2b26a7084f51021309dcb.md) | 106 | `result-track:40d2b26a7084f51021309dcb9ad2773ff72193e322278b690411cf83038c5e9b` |
| 9 | `theorem` | [spectrum_eq_preimage_range](../../../../../mathematics/Topology/GeneralTopology/Units/Variantde3f46e4febece3c9c9b076128164f2d8117273d9f18838547ae9ea6a33c653f.lean/declarations/spectrum-eq-preimage-range--b1c2ee2904268759dea29fa3.md) | 109 | `result-track:b1c2ee2904268759dea29fa3dd9f18e6a92a12f8bf9b9632eaa0a43f78292bc4` |
| 10 | `theorem` | [spectrum_eq_range](../../../../../mathematics/Topology/GeneralTopology/Units/Variantde3f46e4febece3c9c9b076128164f2d8117273d9f18838547ae9ea6a33c653f.lean/declarations/spectrum-eq-range--a4da2e8d6e8132a8811140d8.md) | 117 | `result-track:a4da2e8d6e8132a8811140d88c776fbb8655016b6f8e648634184482a20a4a39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
