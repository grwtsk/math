# Verification target: PUnit Instances Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80cfc91074fb295e1168f567ec6b99484a2b53d5",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/PUnitInstances/Variant73566197a6eeb1c247209d59d6ac6bd0006bd0439fda5fd5b98c0230e2391efe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80cfc91074fb295e1168f567ec6b99484a2b53d5`.

Source path: `GRWTSK/Algebra/GroupTheory/PUnitInstances/Variant73566197a6eeb1c247209d59d6ac6bd0006bd0439fda5fd5b98c0230e2391efe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/PUnitInstances/Variant73566197a6eeb1c247209d59d6ac6bd0006bd0439fda5fd5b98c0230e2391efe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupRingAction.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteBooleanAlgebra` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [commGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/commgroup.md) | 34 | `declaration-track:8b12cccb1922dec64cc3c30a654d0402713095764cc21de048fc56a76764072e` |
| 2 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/instance-source-edition-4.md) | 48 | `declaration-track:3c3b4d2e2742a21fb9b4fa172af381e0c0dc5818eebcaff3e0e10f318589ecac` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/instance-source-edition-8.md) | 49 | `declaration-track:906512992ac1d7348c72770831379376a45ebf111ba8cb672edb74fe1ca47db5` |
| 4 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/instance-source-edition-6.md) | 50 | `declaration-track:7615b39cf562efb67d0be885013503caaabc344948a2fdefa0fad73ef3d99a08` |
| 5 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/instance-source-edition-2.md) | 51 | `declaration-track:1c2f5524db3997218b1e1731d3fb352dcd57675df1bda533bed8b399b6425e7d` |
| 6 | `theorem` | [one_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/one-eq.md) | 54 | `result-track:cb9d606b72f812592d8bf5c8c1c1b50554de0a35afe90cbd781c60d55072a81c` |
| 7 | `theorem` | [mul_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/mul-eq.md) | 61 | `result-track:7c2c0e414593de2c71e7859cb10692cbc03ce69b1e2a7ceacc7e77fbed09b1e5` |
| 8 | `theorem` | [div_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/div-eq.md) | 68 | `result-track:c45cfd0814aeca48f055006defcaf6d0e15ef8f80698b3717f20f2c4712cc296` |
| 9 | `theorem` | [inv_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/inv-eq.md) | 75 | `result-track:e4877e9a3d97a666b04be1ec743fe178e4a9b374a18149b8104c75155ebced55` |
| 10 | `instance` | [commRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/commring.md) | 80 | `declaration-track:63e0721bb6243e1d67b13c25182ef7190798314804a427da1683e50d106ff567` |
| 11 | `instance` | [cancelCommMonoidWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/cancelcommmonoidwithzero.md) | 89 | `declaration-track:ab1b3e37731adbbb9f910109b6b10583a5400c0122827126e7cb67f3c957b06e` |
| 12 | `instance` | [normalizedGCDMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/normalizedgcdmonoid.md) | 92 | `declaration-track:eaccf6a3c76c7acf137e95d8eb9d8e5b9e744ef20089dac1b0b9811f031f140d` |
| 13 | `theorem` | [gcd_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/gcd-eq.md) | 109 | `result-track:d0eb56e2b02c86af0f1417beae51410cd320342a7c8e22d8d01eb933c7bcebe7` |
| 14 | `theorem` | [lcm_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/lcm-eq.md) | 114 | `result-track:1b621119c684a6aa7ebb2e95d00d534e714cdb871f5c8f15457bd16a2633f753` |
| 15 | `theorem` | [norm_unit_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/norm-unit-eq.md) | 119 | `result-track:3a366ee53843782f580522299f130c162b1f8ca5295697da87e3e3a83159ef7b` |
| 16 | `instance` | [canonicallyOrderedAddMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/canonicallyorderedaddmonoid.md) | 123 | `declaration-track:464350279c2a87c22e18dd6e823231ec4989e0ef30b389d96a5d557c724c3de3` |
| 17 | `instance` | [linearOrderedCancelAddCommMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/linearorderedcanceladdcommmonoid.md) | 130 | `declaration-track:21651a4503b2625b12a57c124e45aabb6177fc64870795611e37b128b5161d62` |
| 18 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/instance-source-edition-3.md) | 136 | `declaration-track:3a53e849cadbb1232059e08ecd3df90b257fb2b0e02021b358b2836896e72453` |
| 19 | `instance` | [smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/smul.md) | 141 | `declaration-track:f3eebb6d28969965d95a3fb8a7bb9674e3d9ede29e2ff69c17122efba17f8857` |
| 20 | `theorem` | [smul_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/smul-eq.md) | 145 | `result-track:3a8315ac77ab5705d390335883b0b3fe944c278a70d616bd77e0cd22ef25229a` |
| 21 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/instance.md) | 151 | `declaration-track:1c0b246d94ce9d049df5a10335c2b813eba4622c0fda2b53fd7595b46fb0b113` |
| 22 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/instance-source-edition-7.md) | 155 | `declaration-track:905a196b92c5df7e162711c49a890dcc8a97a06a7e282cb8bb367bee41eebce1` |
| 23 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/instance-source-edition-5.md) | 159 | `declaration-track:687b35d92f498f5553ce20cca30f6e6e2ac5086b38cf609207a92e0dbeed88b5` |
| 24 | `instance` | [smulWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/smulwithzero.md) | 162 | `declaration-track:4bdfa30003187c452d79b1a98b5bf79062f161ac15e2f6c48675cd1971088af4` |
| 25 | `instance` | [mulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/mulaction.md) | 165 | `declaration-track:c87b14cafaa8e5ae0937b5fb0bc701c6c3602ad0ea8c0acd645b281266e3576f` |
| 26 | `instance` | [distribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/distribmulaction.md) | 168 | `declaration-track:0d889df96d56deb48d22d0581eea423e29a3a6283874a927b58ade74670d6c15` |
| 27 | `instance` | [mulDistribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/muldistribmulaction.md) | 171 | `declaration-track:9ef1812e20ac287f17f6bd933ec7cc82884612e7ef1b77ff7946c858a0bf8b2f` |
| 28 | `instance` | [mulSemiringAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/mulsemiringaction.md) | 174 | `declaration-track:374153f415c53bc59a465b6593e9659541ec5dd0905c11438aca82c975a40383` |
| 29 | `instance` | [mulActionWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/mulactionwithzero.md) | 177 | `declaration-track:0138e830a667585fc741ba59c099930addb5953a6198c8744cb9dc7dda9b96db` |
| 30 | `instance` | [module](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PUnitInstancesNamespaced.lean/declarations/module.md) | 180 | `declaration-track:989b8addccc116e682a4477e5408d509b909b7f85cfb4281903a78010ff6412f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b88066ae441c8b068f269327da212bbc0d4ea0b26b96604fce502f3fcbefa8db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/PUnitInstances/Variant73566197a6eeb1c247209d59d6ac6bd0006bd0439fda5fd5b98c0230e2391efe.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/PUnitInstances/Variant73566197a6eeb1c247209d59d6ac6bd0006bd0439fda5fd5b98c0230e2391efe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
