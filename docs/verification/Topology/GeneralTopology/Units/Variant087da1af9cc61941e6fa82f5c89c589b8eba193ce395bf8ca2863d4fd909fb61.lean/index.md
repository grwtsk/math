# Verification target: GRWTSK.Topology.GeneralTopology.Units.Variant087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "841938dcf64fb27507c03e3319dca1fbe9ecb1fb",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Units/Variant087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Units/Variant087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Units/Variant087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `841938dcf64fb27507c03e3319dca1fbe9ecb1fb`.

Source path: `GRWTSK/Topology/GeneralTopology/Units/Variant087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Units/Variant087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitsLift](../../../../../mathematics/Topology/GeneralTopology/Units/Variant087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61.lean/declarations/unitslift--e244c098e281439d6b5af446.md) | 38 | `declaration-track:e244c098e281439d6b5af4461287864664e23227a29e5b70bad6ef50b3cce9a7` |
| 2 | `lemma` | [unitsLift_apply_inv_apply](../../../../../mathematics/Topology/GeneralTopology/Units/Variant087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61.lean/declarations/unitslift-apply-inv-apply--6a7ebf1b5f7d6e2235a1fe6a.md) | 53 | `result-track:6a7ebf1b5f7d6e2235a1fe6aa9317c041109f87bb2e147a60bb1a198ca4d03d6` |
| 3 | `lemma` | [unitsLift_symm_apply_apply_inv'](../../../../../mathematics/Topology/GeneralTopology/Units/Variant087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61.lean/declarations/unitslift-symm-apply-apply-inv--b00a0097cb4cf226023586ee.md) | 58 | `result-track:b00a0097cb4cf226023586ee7b75a3d3bd33e64564fb640081447b4d4eb8ca40` |
| 4 | `theorem` | [continuous_isUnit_unit](../../../../../mathematics/Topology/GeneralTopology/Units/Variant087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61.lean/declarations/continuous-isunit-unit--469287cb19afa67cac333158.md) | 68 | `result-track:469287cb19afa67cac3331583a8b26dd4876989e518b9451c6bea38983802480` |
| 5 | `def` | [unitsOfForallIsUnit](../../../../../mathematics/Topology/GeneralTopology/Units/Variant087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61.lean/declarations/unitsofforallisunit--9167885acb9d55012ebc2620.md) | 82 | `declaration-track:9167885acb9d55012ebc2620169596a7fd2d40eef9e7894119bf12318d5aa2b5` |
| 6 | `instance` | [canLift](../../../../../mathematics/Topology/GeneralTopology/Units/Variant087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61.lean/declarations/canlift--48d80ec7374cdfccb42837ff.md) | 86 | `declaration-track:48d80ec7374cdfccb42837ff1ad640b2052adf3c0b5422846be0bcc974e57eba` |
| 7 | `theorem` | [isUnit_iff_forall_isUnit](../../../../../mathematics/Topology/GeneralTopology/Units/Variant087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61.lean/declarations/isunit-iff-forall-isunit--084f20bd599ce4ae0d4ecfe5.md) | 91 | `result-track:084f20bd599ce4ae0d4ecfe5be75cfb5c5dd1de4b1a751b660a0b4ca351bbf6f` |
| 8 | `theorem` | [isUnit_iff_forall_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Units/Variant087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61.lean/declarations/isunit-iff-forall-ne-zero--5accd167b918f6cdc09a82d9.md) | 101 | `result-track:5accd167b918f6cdc09a82d955cfe36e56e92e99aa2e44118a67b14b3760de68` |
| 9 | `theorem` | [spectrum_eq_preimage_range](../../../../../mathematics/Topology/GeneralTopology/Units/Variant087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61.lean/declarations/spectrum-eq-preimage-range--8dcc4c46eb0f8de913e1d9e5.md) | 104 | `result-track:8dcc4c46eb0f8de913e1d9e569b21d392706a21de0b46a2b50927d64b938e9ad` |
| 10 | `theorem` | [spectrum_eq_range](../../../../../mathematics/Topology/GeneralTopology/Units/Variant087da1af9cc61941e6fa82f5c89c589b8eba193ce395bf8ca2863d4fd909fb61.lean/declarations/spectrum-eq-range--2e14b24bd7c92063c67fb0ef.md) | 112 | `result-track:2e14b24bd7c92063c67fb0ef09dd2b1b3e8109998dfd8c5575bbe32b43de422d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
