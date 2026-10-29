# Verification target: Monoidal Comon Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "552a4c1b13201e11e9a535544e6623b4747f6b97",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant3be49db30590d50774f87b84521624a71641eeb21296e301560f7696aede4d73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `552a4c1b13201e11e9a535544e6623b4747f6b97`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant3be49db30590d50774f87b84521624a71641eeb21296e301560f7696aede4d73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant3be49db30590d50774f87b84521624a71641eeb21296e301560f7696aede4d73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Mon_` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Braided.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Transport` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.CoherenceLemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Comon_Class](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/comon-class.md) | 46 | `declaration-track:24170472c2e0539a26cc3c0a2ffc218bb03e05b6b3d4ff9defec269c27e2044d` |
| 2 | `theorem` | [counit_comul](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/counit-comul.md) | 68 | `result-track:ede772b0c4c7bd84c366d36ea4f0cf8cb0c7aecbf9208237c310c67657915c5a` |
| 3 | `theorem` | [comul_counit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/comul-counit.md) | 71 | `result-track:e670e592c3670272e1cd628daaf89b3c9efebd2e7cb1562a3fe3727dad18f8c8` |
| 4 | `theorem` | [comul_assoc](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/comul-assoc.md) | 74 | `result-track:4ddc6d0bdd856774cee2628e571e4d2039d61a7f59602f00d618b6c27293b859` |
| 5 | `class` | [IsComon_Hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/iscomon-hom.md) | 85 | `declaration-track:4879dec08329ea538afe495cdbd0c93b96392fa2a57bed63cf1a561569692bbc` |
| 6 | `structure` | [Comon_](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/comon.md) | 97 | `declaration-track:b89460b8418bc81c2d793dc5ffb586988622abcd96fcd7fd463e6149c06a4e7f` |
| 7 | `def` | [mk'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/mk.md) | 118 | `declaration-track:915777364e60b82504f8f2ccfdaa57eab8c0a18eea79a821ae67386cc53bf165` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/instance-source-edition-6.md) | 123 | `declaration-track:cf5ac1ffe32e72a4fcc65711f62983790010da2517f35f54d41449b116a93b6b` |
| 9 | `def` | [trivial](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/trivial.md) | 135 | `declaration-track:878b6299bb5bcdd4a71511d8e2cd0e1ad4b15636bc0643bfc910d2525b7cedc2` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/instance-source-edition-4.md) | 143 | `declaration-track:8c18cba9c68505f8307eb29dc36bf5f04f07aa46fb86ddc5fe5ac377dcc32383` |
| 11 | `theorem` | [counit_comul_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/counit-comul-hom.md) | 150 | `result-track:ea7463c28a4cd34906a86a24c84b797e7c03fd3629e7f9146b5cee70f4675a24` |
| 12 | `theorem` | [comul_counit_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/comul-counit-hom.md) | 154 | `result-track:6800b8302ca6c5a32a826db6713a55a34269d02425a9027729322364bdbceb83` |
| 13 | `theorem` | [comul_assoc_flip](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/comul-assoc-flip.md) | 157 | `result-track:cd5054e540f784cc27dbb1a721a8b846a3ede685cdc61b348fb25d54ff7ad85e` |
| 14 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/hom.md) | 163 | `declaration-track:a71346efc3fc9da14507865fa76f7b823e2b1e16c2d79605bd9010cc20db0117` |
| 15 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/id.md) | 173 | `declaration-track:c678d26504594c099bd2a1dd39cbac5af178b80d91eca12fcf79a49c7786615a` |
| 16 | `instance` | [homInhabited](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/hominhabited.md) | 176 | `declaration-track:1adb0356ed0af54e56bd0fb86d64feb08bee764acac9af8366d60b8b41485b71` |
| 17 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/comp.md) | 181 | `declaration-track:5f1e82451e9a3ea8cf50f2a0253de4724c1af14c41f128e18a4b1a9575087129` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/instance-source-edition-7.md) | 184 | `declaration-track:e1a3fb5ad8d360037e90efe2e44353fb50ad615b287592e4f3b4de196d16ab08` |
| 19 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/ext.md) | 189 | `result-track:343f03304efce4ca51e7f801a9b4f2f245f1210798b3e84e48171a1a866f6bb7` |
| 20 | `theorem` | [id_hom'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/id-hom.md) | 191 | `result-track:98e5734c8f890029bb83e3fb69edb2d29b2ee374efb5d344113660d2c2b1269a` |
| 21 | `theorem` | [comp_hom'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/comp-hom.md) | 194 | `result-track:84cb867172ac74346a278c9e871426fe19e8c9d4e9c037ee90f6b0155089b17e` |
| 22 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/forget-source-edition-4.md) | 203 | `declaration-track:ce2fa4001c2b83d2bbaf330b6dab497a583b03175f663cdf3b40adea8ad4906b` |
| 23 | `instance` | [forget_faithful](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/forget-faithful.md) | 209 | `declaration-track:46f75ea8e2440d8159e26bc29daeecc0241522fd8a7b14e9ccc45cd1707c7fe2` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/instance-source-edition-5.md) | 211 | `declaration-track:9e3f846c383d8a181bb12e1f43223ef76c6a691a9caa17e354926831b93d9c01` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/instance-source-edition-8.md) | 214 | `declaration-track:e85e4f82c8de162dbfb9d2852391efccabde58e1f48ef8996d4c5ef987d3c74b` |
| 26 | `def` | [mkIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/mkiso.md) | 222 | `declaration-track:817544940629197cd376bae8184e33097879dacd681c938912c7544e01b55534` |
| 27 | `instance` | [uniqueHomToTrivial](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/uniquehomtotrivial.md) | 237 | `declaration-track:ca35b5cc076d1e725e312b0ee034852e14d0fa2f73b01ddb20d4b8800981f521` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/instance-source-edition-3.md) | 248 | `declaration-track:5e45e9944fed888bea625d551c2dda7c8b36138460a2759c498c9bc3bef01313` |
| 29 | `def` | [Comon_ToMon_OpOp_obj'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/comon-tomon-opop-obj.md) | 258 | `declaration-track:41b4235c897e3c7e3ce6743b838d6f1cd668008bd8e77912524b6ebd7aceed24` |
| 30 | `def` | [Comon_ToMon_OpOp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/comon-tomon-opop.md) | 276 | `declaration-track:79f0c41e923e16f00b8681a0496e4d3806785d5b002fe8d4505ce0a7359e45a5` |
| 31 | `def` | [Mon_OpOpToComon_obj'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/mon-opoptocomon-obj.md) | 286 | `declaration-track:387509f9157a12ff9c27e0732e0f30f77b6c1462ad8e685ecc16e5d963deb57d` |
| 32 | `def` | [Mon_OpOpToComon_](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/mon-opoptocomon.md) | 301 | `declaration-track:4ff2c58cda1630aa9e54547ebcba207b9e8d45726ed20f2192a6fb12ce66d156` |
| 33 | `def` | [Comon_EquivMon_OpOp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/comon-equivmon-opop.md) | 312 | `declaration-track:b3d7e2e585e26bbcb27acc2caf14fd59a80826037dbbf51651a7f28fb4b33750` |
| 34 | `instance` | [monoidal](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/monoidal.md) | 324 | `declaration-track:a778830ebe6264d408de1e4d7f4d4e0900da20f0aa9d367b06edaeab63b91a48` |
| 35 | `theorem` | [tensorObj_X](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/tensorobj-x.md) | 329 | `result-track:67c92b855f83467cec5623a5079af3ad2088b98f2863a239e20dcc29995053bf` |
| 36 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/instance-source-edition-2.md) | 331 | `declaration-track:35507a655cd289851b18002d0c6c9a7007a394357716b93169c2e2746f188438` |
| 37 | `theorem` | [tensorObj_counit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/tensorobj-counit.md) | 334 | `result-track:9726b55eb4f360ceaee732c1745eec525d048d3c2adb688e5652e6134db7af5a` |
| 38 | `theorem` | [tensorObj_comul'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/tensorobj-comul-source-edition-2.md) | 342 | `result-track:6ab2c7326b7201e6d57a1a15ac9e342a62fb991e22eb63a8595e96f76fce3ff3` |
| 39 | `theorem` | [tensorObj_comul](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/tensorobj-comul.md) | 352 | `result-track:4591084ab55e0ff6eb9ada9e49c6d2744f879f7c4080e94c50d00d09643b425e` |
| 40 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/instance.md) | 362 | `declaration-track:083236235e16b4f7f0b4d97d192ea4efdaa0c59b61470ea2fe5fa4c106a901ca` |
| 41 | `theorem` | [forget_ε](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/forget.md) | 369 | `result-track:2006ac8c1353baf9e59ce82a5505a0832f33cb59a2f3f4adfa45dfc07a04c274` |
| 42 | `theorem` | [forget_η](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/forget-source-edition-2.md) | 370 | `result-track:47281300d4e9eb13daedae26c0f1a8a085591f7e6f16fb45c28371ce7d4c6996` |
| 43 | `theorem` | [forget_μ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/forget-source-edition-3.md) | 371 | `result-track:b09b66d33b394990ee652925dab4c98ad5d97ebefd4cd9e76d46ac791735d310` |
| 44 | `theorem` | [forget_δ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/forget-source-edition-5.md) | 372 | `result-track:e8b402df1496c9985970ace0ca84d42ff12ea3196d66650be5f3f4fd2c012dfc` |
| 45 | `def` | [mapComon](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalComonNamespaced.lean/declarations/mapcomon.md) | 387 | `declaration-track:8f945b33b5202837d7626799f7ff97ce7d2c163d1fccb8deba6ba7286bb816c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d3b5aa9ed0564579c4ce0bc2febdb632a629f7bc983ec56ee3247e2614ca605 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant3be49db30590d50774f87b84521624a71641eeb21296e301560f7696aede4d73.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant3be49db30590d50774f87b84521624a71641eeb21296e301560f7696aede4d73.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
