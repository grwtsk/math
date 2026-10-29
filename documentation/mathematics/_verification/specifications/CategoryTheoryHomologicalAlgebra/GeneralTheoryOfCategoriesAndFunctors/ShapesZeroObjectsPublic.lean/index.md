# Verification target: Shapes Zero Objects Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "313829cbd48dbb54d72a5fdf51811251b14dca5b",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant16dbf7daab126ea3d8e146745c02ea718895eedfa5c808e60836cab91266716a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `313829cbd48dbb54d72a5fdf51811251b14dca5b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant16dbf7daab126ea3d8e146745c02ea718895eedfa5c808e60836cab91266716a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant16dbf7daab126ea3d8e146745c02ea718895eedfa5c808e60836cab91266716a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/iszero.md) | 46 | `declaration-track:63a0cdae3223239686dd889ad6338f97f3ab7b4c81c2bad774766f4165d2ea21` |
| 2 | `def` | [to_](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/to.md) | 67 | `declaration-track:db3e64cb2603d152aa307008e169cc824675ad4b2b5fb059e4ef95e8f142657a` |
| 3 | `theorem` | [eq_to](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/eq-to.md) | 71 | `result-track:e0b190a9ae92490fc62cf5449132592e3c232b6a42cfbdb13af92aca56d2b49a` |
| 4 | `theorem` | [to_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/to-eq.md) | 75 | `result-track:ca3d4a69099cd6747b6187b09c54592b50e385aab18a8bff7e037c67eefd3215` |
| 5 | `theorem` | [eq_of_src](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/eq-of-src.md) | 79 | `result-track:60fb7707f882b69dc4525cc95f6770e14109ef49751cdcb1e0fbb36544eec4df` |
| 6 | `lemma` | [epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/epi.md) | 83 | `result-track:3ff1b77cb66c29c4200a93371479b1383d67d25f9699fbbd44d113b274e08b3c` |
| 7 | `def` | [iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/iso.md) | 87 | `declaration-track:06c688fa32506854934edc35a71024ce56890ceb630c28588add01469036b2ca` |
| 8 | `lemma` | [isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/isiso.md) | 94 | `result-track:8efbd0cb60e1c94f4693571f50141740ad4f45d15fa0400d93a4037c04026c06` |
| 9 | `def` | [isInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/isinitial.md) | 99 | `declaration-track:dd66c5552e822f7daf36bdc3457af7afbda795a8da007cd319ae8a4a6a9814c2` |
| 10 | `def` | [isoIsInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/isoisinitial.md) | 104 | `declaration-track:c5bd9445bfca0f5c4d46b71f6bc7ce93ca9ec48af5c0f5cdfdc991d9f0b9ec53` |
| 11 | `theorem` | [of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/of-iso.md) | 107 | `result-track:54ee6872c66a2194f7e3c05beeedf4a9ab595c9af62ed7d457e10b653aaafcdc` |
| 12 | `theorem` | [op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/op.md) | 115 | `result-track:3b1646c5c18e63f1c0ee24b381ab72a1c9943268c047a2949bd57943374b5f14` |
| 13 | `theorem` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/unop.md) | 119 | `result-track:d8de7aa4337441a4b205f27a05cb91a56f5d3dc3d0301c3ae31f79f374cab0a9` |
| 14 | `def` | [retract](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/retract.md) | 125 | `declaration-track:aa3c6b0e086be9debeef1de77e82cc466be16a41ab9c8c0cc559c4a48076e95b` |
| 15 | `theorem` | [Iso.isZero_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/iso-iszero-iff.md) | 136 | `result-track:3264e797a1d060e7f9cfb642563750dce75f1140adbfbc5c8478aa26aeeef33f` |
| 16 | `theorem` | [Functor.isZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/functor-iszero.md) | 139 | `result-track:b5cc89cc2459cf7f1f8e0a409c324e38dccc075a2bd80ef9ed9eae7246921b64` |
| 17 | `class` | [HasZeroObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/haszeroobject.md) | 163 | `declaration-track:7e05dbb712aa640929249b2e982c3f1393d75e7ad04a2512ec43700c2278930f` |
| 18 | `instance` | [hasZeroObject_pUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/haszeroobject-punit.md) | 167 | `declaration-track:d05dfbab89f0fb792423824ecdd29eaf6ee60685932b638d8dace910a6fd7556` |
| 19 | `def` | [HasZeroObject.zero'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/haszeroobject-zero.md) | 184 | `declaration-track:22b9d95d79639894e6826733c7fd307c813ca4f1a1b2fedb77ac5beadee3b6b2` |
| 20 | `theorem` | [isZero_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/iszero-zero.md) | 190 | `result-track:032a1dc5bcaa0e4fe5e69bdf1a50864501cb76bcb88bcefa1ec8509c607e3969` |
| 21 | `instance` | [hasZeroObject_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/haszeroobject-op.md) | 193 | `declaration-track:4f0aa492aac58d8f63a2e39d860a88358651aefdc5269c2fa802f1dde8597b07` |
| 22 | `theorem` | [hasZeroObject_unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/haszeroobject-unop.md) | 200 | `result-track:512e5bffb057cbd694bac34c756534bc2096254897cb3a2214e07827a0cdbbcb` |
| 23 | `theorem` | [IsZero.hasZeroObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/iszero-haszeroobject.md) | 205 | `result-track:48b04ab018014c3a6c3a36d5b377f37ddf2bc55ea109d69c616bb354e4d6af70` |
| 24 | `def` | [IsZero.isoZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/iszero-isozero.md) | 209 | `declaration-track:cb69e7ba0e0565521bae83f968fc1d70542770cb1627ca0c6b9533300b567dc4` |
| 25 | `theorem` | [IsZero.obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/iszero-obj.md) | 212 | `result-track:164027f0b1abb7001bbda732e5bff72fb5a085f51879e761bf13a86d41c20459` |
| 26 | `lemma` | [IsZero.of_full_of_faithful_of_isZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/iszero-of-full-of-faithful-of-iszero.md) | 218 | `result-track:f6e4bd8401afcd7168e53705ba58ddf69935bd705c2da19e5f7394773912e663` |
| 27 | `def` | [uniqueTo](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/uniqueto.md) | 233 | `declaration-track:0e2d265c1fea945be5ebf62206d2f2e70acc5478cfad67648dd78f800a809c55` |
| 28 | `theorem` | [to_zero_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/to-zero-ext.md) | 240 | `result-track:2a6ce5ba9edfaae4f6c703055f83456cf2bd7cec6e1dd98a1f3cb3601217b06e` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/instance-source-edition-5.md) | 243 | `declaration-track:e24b90d3f7110b1e395557816503e4504fd47f793bd5ec09231ec2639726ba86` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/instance.md) | 246 | `declaration-track:22e5210d620f657b64220cf2da9db202f45b5842b3059095874232a598197fd5` |
| 31 | `instance` | [zero_to_zero_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/zero-to-zero-isiso.md) | 248 | `declaration-track:1ca725caa34969e48363eba3caa74ab464cdd8a4bfd9c0e294bb5b1cc01343e1` |
| 32 | `def` | [zeroIsInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/zeroisinitial.md) | 254 | `declaration-track:b3b7f3c972824240ea8b237b85c5daff924d847b6cf4d7fabb68781efaafd76a` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/instance-source-edition-3.md) | 259 | `declaration-track:659ef5e96a5aa2cb469978b69cd0c4c0dbb81a1eb95c985c9cb2267c0ae86cca` |
| 34 | `def` | [zeroIsoIsInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/zeroisoisinitial.md) | 264 | `declaration-track:bfac565ccdbeae094995dc1a0b1ab322483c72e6b625be944e84c4277ed54d16` |
| 35 | `def` | [zeroIsoInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/zeroisoinitial.md) | 270 | `declaration-track:81a933233f8834a0cbd68b9409567cef080f8d8558fec6c21b053bbb234dce02` |
| 36 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/instance-source-edition-2.md) | 273 | `declaration-track:64167aff585b4fc57affc6704d22d7549f5912b605f4a9175e42f3323f935818` |
| 37 | `theorem` | [Functor.isZero_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/functor-iszero-iff.md) | 284 | `result-track:e5183ddd55fae4f63de8d123d7f2739600124e3850a62519dad5141fb0b81a5b` |
| 38 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroObjectsPublic.lean/declarations/instance-source-edition-4.md) | 288 | `declaration-track:bf6b8c47b41fa0b831b2cf2e2f3a49d7b6810c006ac32d97e1671b73b86629c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ac4b92f2d8329cc4ed6c1987db30733b4734a7633c0d7e6e06056ecbec2a4a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant16dbf7daab126ea3d8e146745c02ea718895eedfa5c808e60836cab91266716a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant16dbf7daab126ea3d8e146745c02ea718895eedfa5c808e60836cab91266716a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
