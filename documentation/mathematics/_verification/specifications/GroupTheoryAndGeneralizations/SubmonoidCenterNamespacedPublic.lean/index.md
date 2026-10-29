# Verification target: Submonoid Center Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7d029946be05f2316ba0bccb0367064d2ff9f50",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variant2931885645bfedc327868b751bd988cad7811bb9ed7d69d76b5a10ab0b99c578.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7d029946be05f2316ba0bccb0367064d2ff9f50`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variant2931885645bfedc327868b751bd988cad7811bb9ed7d69d76b5a10ab0b99c578.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variant2931885645bfedc327868b751bd988cad7811bb9ed7d69d76b5a10ab0b99c578.lean.json)

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
| 1 | `def` | [center](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/center.md) | 47 | `declaration-track:58e23db7aec60c5168cf2a79b3f06812f31e476ce571c6d6b406e299ff3e7fee` |
| 2 | `theorem` | [coe_center](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/coe-center.md) | 53 | `result-track:785c5c6dfd52da62710fff94ff9a645d5669acbaef55eeb8a16d74db0d80107d` |
| 3 | `theorem` | [center_toSubsemigroup](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/center-tosubsemigroup.md) | 57 | `result-track:a920c58caa4f9ef23af366661b14043b93417b38106cd4ed54dd4d13fd3ba0f6` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/instance.md) | 60 | `declaration-track:319f96a381bd252db79f8e771718da2a81f44eaff21d149bbb2aaadb1f1669b4` |
| 5 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 66 | `declaration-track:4bfaa31e07fa5da9ee5cae0d093e2e9b8a3016cb03a9cd3af15a50163713fc24` |
| 6 | `abbrev` | [center.commMonoid'](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/center-commmonoid.md) | 77 | `declaration-track:1a588cadcef4fc15c68a75647b3e78e667d4e87797ca59faab655e99c3b44b04` |
| 7 | `theorem` | [center_prod](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/center-prod.md) | 81 | `result-track:bd200480a180f1ea8abaf184a9e3d51f584802c7802bb05017087a12e47bca9f` |
| 8 | `theorem` | [center_pi](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/center-pi.md) | 86 | `result-track:c697a4c8be8138ea5a7d609fdb8e52292614991805bfd1d853cb227a996651d5` |
| 9 | `theorem` | [map_center_le_center](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/map-center-le-center.md) | 91 | `result-track:ed113405df41d0c6e67e73efc6a161928c7959bf53e61e81c494d0bf39be68b9` |
| 10 | `theorem` | [comap_center_le_center](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/comap-center-le-center.md) | 96 | `result-track:03dca765c8504832382a7ffefd88fe49539a205c11d22a6a0754c090abe8b7be` |
| 11 | `theorem` | [map_center_eq](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/map-center-eq.md) | 101 | `result-track:17f0ad6e673b94ae63c3e2d3db275d3b7044d3744d30bc35722aa64c2f3ccbc9` |
| 12 | `instance` | [center.commMonoid](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/center-commmonoid-source-edition-2.md) | 113 | `declaration-track:3fd09c1295840eeffc6d8d850ff2fe9439bc2c54c43ceb20b8f7ee5351668014` |
| 13 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/example-source-edition-2.md) | 117 | `declaration-track:7ede7a94f2b9fb3fe25935ada34afb6df1f176849d9e726be8fd6650f4c1caef` |
| 14 | `theorem` | [mem_center_iff](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/mem-center-iff.md) | 121 | `result-track:379ecfb702d4494fe70ba395522a6fef1ad1bb65ba2cf254791ac5dcda932de6` |
| 15 | `instance` | [decidableMemCenter](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/decidablememcenter.md) | 126 | `declaration-track:5a843f534e7b388483c21d72c7ae1fdd26abfb1ca0a011b61ff28ea17c8ee466` |
| 16 | `instance` | [center.smulCommClass_left](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/center-smulcommclass-left.md) | 130 | `declaration-track:b5dd4607f599e67523d793708fe49b0c3780e223d012da3d3aaa808ab20e02b3` |
| 17 | `instance` | [center.smulCommClass_right](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/center-smulcommclass-right.md) | 134 | `declaration-track:58ac9044816c6727eced53069783b600eeb945a30c3dc4aacd75a796d728c850` |
| 18 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/example.md) | 140 | `declaration-track:54f581ffbb1561d61d02b1ec87906d6b88fb04be9bdf338627b68215f9bccdfc` |
| 19 | `theorem` | [center_eq_top](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/center-eq-top.md) | 149 | `result-track:7463764352ae241e65440825bcabe8e70a0f9bf43c241fa1dd168fb2ef12f2c6` |
| 20 | `def` | [unitsCenterToCenterUnits](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/unitscentertocenterunits.md) | 163 | `declaration-track:3abbd054b139a8fcd398e216e3d6e19a93c5b174aa557703183a686101702a3f` |
| 21 | `theorem` | [unitsCenterToCenterUnits_injective](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/unitscentertocenterunits-injective.md) | 171 | `result-track:1b8cefe16e1765b8811f04aabeaf7339ca940456304e362a3b72b4629aac60bb` |
| 22 | `def` | [Subsemigroup.centerCongr](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/subsemigroup-centercongr.md) | 181 | `declaration-track:4fcf5c07ff0001288848827f298d30d974c27fa9865b7f2c8bfd0d84bc670424` |
| 23 | `def` | [Submonoid.centerCongr](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/submonoid-centercongr.md) | 190 | `declaration-track:02e1a1a6518da83cf2cea1cfd179901a5eb3f34956746eba17a61f86f061db85` |
| 24 | `theorem` | [MulOpposite.op_mem_center_iff](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/mulopposite-op-mem-center-iff.md) | 193 | `result-track:d1183843003c3517900ef3062dbb47d2db50c71ccff6c049fd9577c18d34cfa4` |
| 25 | `theorem` | [MulOpposite.unop_mem_center_iff](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/mulopposite-unop-mem-center-iff.md) | 197 | `result-track:53451c57cf94f75a82493b0028055e9c45503cb905dbae14f6d35d09239711ac` |
| 26 | `def` | [Subsemigroup.centerToMulOpposite](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/subsemigroup-centertomulopposite.md) | 204 | `declaration-track:a4bf3d41b72ac9502127d7b905fc1974cac1aad90addebba4e161ee3fc7122da` |
| 27 | `def` | [Submonoid.centerToMulOpposite](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterNamespacedPublic.lean/declarations/submonoid-centertomulopposite.md) | 212 | `declaration-track:395ac6c19fa328cc8311dcc134a29e768773f244f567e2b68a2d96c0913b4d8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20f8297e7dc31d5e5f82fbcc0fa21cde0d875d1dc75b8045cc9c95426983d27f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Center/Variant2931885645bfedc327868b751bd988cad7811bb9ed7d69d76b5a10ab0b99c578.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Center/Variant2931885645bfedc327868b751bd988cad7811bb9ed7d69d76b5a10ab0b99c578.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
