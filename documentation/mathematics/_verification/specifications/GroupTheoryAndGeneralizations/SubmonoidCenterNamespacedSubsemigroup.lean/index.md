# Verification target: Submonoid Center Namespaced Subsemigroup

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0c682393ae6acc6158e370971b8769c58eb3e7c",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0c682393ae6acc6158e370971b8769c58eb3e7c`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Center` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/center.md) | 43 | `declaration-track:e0d9cd427bf5a08b73317254e34175250c6a30651c8618b44a1694fc8470a0ff` |
| 2 | `theorem` | [coe_center](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/coe-center.md) | 49 | `result-track:b46c17baf8de15d6d179419558467ddb80cb4365ab77f8586df05a03a68b3c34` |
| 3 | `theorem` | [center_toSubsemigroup](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/center-tosubsemigroup.md) | 53 | `result-track:e9a22b63aa4c06b1d1b72a1698e7975539fbbc0105b7eea1c3ba2a9b8ee02847` |
| 4 | `abbrev` | [center.commMonoid'](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/center-commmonoid-source-edition-2.md) | 63 | `declaration-track:d5c7c808b00038510904395ba2dffbdb97aa192051771f0d92210c819ed6ff81` |
| 5 | `instance` | [center.commMonoid](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/center-commmonoid.md) | 74 | `declaration-track:3c0e15acb58bdc043aff84c6c051e45597546e877a248d966ee9cf75cbeb238d` |
| 6 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/example.md) | 78 | `declaration-track:a1528b6cf8270c2dd8334bbcaeb74f433a8d1454ec1a819d11b846259f5bbbf4` |
| 7 | `theorem` | [mem_center_iff](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/mem-center-iff.md) | 82 | `result-track:2a93d91f792d6723db5b55c469da0268320589171ee138192aa00d61d8f6ab76` |
| 8 | `instance` | [decidableMemCenter](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/decidablememcenter.md) | 87 | `declaration-track:7977ff399aca4a6ccd5849a2c4ad509417f81168171482f27196ed0c639e9eba` |
| 9 | `instance` | [center.smulCommClass_left](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/center-smulcommclass-left.md) | 93 | `declaration-track:bee67743a62e4c7fe726fd1467705a7363a1d84a38c620b97b6f6746fa3d77ed` |
| 10 | `instance` | [center.smulCommClass_right](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/center-smulcommclass-right.md) | 97 | `declaration-track:5aa2e18c4e1c61bd61da419d85262b3bade3a45068428908d1668e74de4e8b62` |
| 11 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/example-source-edition-2.md) | 103 | `declaration-track:c7ebb6395c6a2c28f6f72761b01bf9ea88601f8ae37fd04adefb27138fcb6249` |
| 12 | `theorem` | [center_eq_top](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/center-eq-top.md) | 112 | `result-track:47adf89caf5c29d08575c64e21284682c5ad0dec1fc779c7af121ed90866df9d` |
| 13 | `def` | [unitsCenterToCenterUnits](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/unitscentertocenterunits.md) | 126 | `declaration-track:4a2fb9dd0753b1749f37f8b4db3bccc83981ed2af8aa973ad2c8a4100cfdb8ce` |
| 14 | `theorem` | [unitsCenterToCenterUnits_injective](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/unitscentertocenterunits-injective.md) | 134 | `result-track:ea294f41ea5114ac033ae696a40b5138dc0eb48b7f27ac731b2f0ca350abac35` |
| 15 | `theorem` | [Submonoid Center Namespaced Subsemigroup](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/apply-mem-center.md) | 142 | `result-track:52a0df6d057a288e5e99b34c94cb25891110f9f3dd87a62758a8011caf063653` |
| 16 | `theorem` | [Submonoid Center Namespaced Subsemigroup](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/apply-mem-center-iff.md) | 150 | `result-track:155f2303201d065b51225e21c2f555b34951f1f18ce9435872f64ff02e4e36ef` |
| 17 | `def` | [Subsemigroup.centerCongr](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/subsemigroup-centercongr.md) | 158 | `declaration-track:0f46ab9a251581e32bcea5df6f9be13ee2ab1b6dc5730cc38ce14c20c03653a9` |
| 18 | `def` | [Submonoid.centerCongr](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/submonoid-centercongr.md) | 167 | `declaration-track:9f24891fc18554dd15e616a2dd2d888d1e7163a1c67b1bb2641cba236062c223` |
| 19 | `theorem` | [MulOpposite.op_mem_center_iff](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/mulopposite-op-mem-center-iff.md) | 170 | `result-track:7a6569aa2f5b87d7b516fe21d9ad9947d342f8f4b38f653051b015e66840264d` |
| 20 | `theorem` | [MulOpposite.unop_mem_center_iff](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/mulopposite-unop-mem-center-iff.md) | 174 | `result-track:528503d70fe62af65a9463b8000899806903ae58dda77730ff4ef57860932f82` |
| 21 | `def` | [Subsemigroup.centerToMulOpposite](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/subsemigroup-centertomulopposite.md) | 181 | `declaration-track:ad9bece2f6d7b3009e7e7210e84b4d1867a95f7a2ea0fa96aa253196e5645d36` |
| 22 | `def` | [Submonoid.centerToMulOpposite](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedSubsemigroup.lean/declarations/submonoid-centertomulopposite.md) | 191 | `declaration-track:62cf43efa55d45da036a5dbd5c9c12c950a271df905a1b60d472f7251de44964` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b58acc256a2d297be84a2ea85c2f55f160f53b9505a7c661d0b851527abf2b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
