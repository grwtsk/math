# Verification target: Mon Cat Filtered Colimits Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a47a409c0f731058b79a778e4061a696dd9a7653",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant5ed1c7bb5f7f0da6ee31d1e7a44e981fdfbb67616dcc3e6dd13521b64bd95fb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a47a409c0f731058b79a778e4061a696dd9a7653`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant5ed1c7bb5f7f0da6ee31d1e7a44e981fdfbb67616dcc3e6dd13521b64bd95fb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant5ed1c7bb5f7f0da6ee31d1e7a44e981fdfbb67616dcc3e6dd13521b64bd95fb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Filtered` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [M](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/m.md) | 62 | `declaration-track:3fcf2ee71f8f5ad5412c5836bb15911b90fa010321222061491efc7aaada0467` |
| 2 | `abbrev` | [M.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/m-mk.md) | 69 | `declaration-track:c82e371aca7771c27d29175f10786a7f8db0d55d867c0edcf0edca11f1ec125e` |
| 3 | `theorem` | [M.mk_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/m-mk-eq.md) | 75 | `result-track:257f5b9659a85659363597fe62d30c5f0c3406f82eebc49048a7b1ca9398778b` |
| 4 | `instance` | [colimitOne](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/colimitone.md) | 90 | `declaration-track:35ea74d76f987ff45efbcf133d141029d60d61fd5a7fb89810fac811084813b5` |
| 5 | `theorem` | [colimit_one_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/colimit-one-eq.md) | 103 | `result-track:9db9248e032bca1cf88ac5055ab6d42bcc7a4874dc0c27b314e679d8a0ff5908` |
| 6 | `def` | [colimitMulAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/colimitmulaux.md) | 118 | `declaration-track:ce58de6c87fca19e9c14bdf76dcf0b81193dfefd9298d57b8d300c221702ca0d` |
| 7 | `theorem` | [colimitMulAux_eq_of_rel_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/colimitmulaux-eq-of-rel-left.md) | 126 | `result-track:fd694bd1b345687f82bfac4e4709df21d10c667be5aad9d820aac18fb6814a9e` |
| 8 | `theorem` | [colimitMulAux_eq_of_rel_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/colimitmulaux-eq-of-rel-right.md) | 151 | `result-track:228ebc5793f1b691bd99519a27e65a8527f21a4ffc5f6b62333a87ab04cafa1f` |
| 9 | `instance` | [colimitMul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/colimitmul.md) | 176 | `declaration-track:1d714bf275b6604ab898809d37f8deee379f43dab396ef9826b5ee392ea0cbcc` |
| 10 | `theorem` | [colimit_mul_mk_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/colimit-mul-mk-eq.md) | 198 | `result-track:418abb2e37dd508f120ebe0cd70c10bd767b26c444f972547d2d69af54787e2f` |
| 11 | `instance` | [colimitMulOneClass](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/colimitmuloneclass.md) | 215 | `declaration-track:bf75ea1bd83adc79e4ae5da201ab7cae63b7d3a65306893fd7b21ff8c436d4de` |
| 12 | `instance` | [colimitMonoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/colimitmonoid.md) | 236 | `declaration-track:33cfb43b76299a20ef0403ea46918cf73c39634cd2fedc55b622379eb9fcdc06` |
| 13 | `def` | [colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/colimit.md) | 266 | `declaration-track:59fc09a0a1312983a22385cf673f07a6184adcbf3c9bf0640a43d6e9ffa179ff` |
| 14 | `def` | [coconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/coconemorphism.md) | 275 | `declaration-track:5b20715bc1b2474eb53aef1180250923d55de53c5a8a3e59f0647cd6f7a0dcc4` |
| 15 | `theorem` | [cocone_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/cocone-naturality.md) | 286 | `result-track:cba4e7a08eb2ea2cfb97031271f204725c784806632dcf1b4e62e0110026edce` |
| 16 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/colimitcocone.md) | 294 | `declaration-track:0ef4dc598df850f4a307fc817abeb1744bc1148d8068aa8230a3c36c55ec8647` |
| 17 | `def` | [colimitDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/colimitdesc.md) | 309 | `declaration-track:42e5267fc358a4320877f78bd028cc52e4f987c33946b8f6b8da03d6b5647c71` |
| 18 | `def` | [colimitCoconeIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/colimitcoconeiscolimit-source-edition-2.md) | 333 | `declaration-track:3520202c8a4478bd622a2aa45ea4a6d4fabd2908f34a749b1aa64f72cce86465` |
| 19 | `instance` | [forgetPreservesFilteredColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/forgetpreservesfilteredcolimits.md) | 345 | `declaration-track:a29bedb22b2a2ac8e32901c6c600612b88d1929a11e3e1fdb9fc6cfa28ee260c` |
| 20 | `abbrev` | [M](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/m-source-edition-2.md) | 370 | `declaration-track:d2f0aea1be41fb61d096be063df41de91e19b5ef99cff09bb49abdcbdb37751f` |
| 21 | `instance` | [colimitCommMonoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/colimitcommmonoid.md) | 376 | `declaration-track:a034d8b7ab09b3db332e9f05f312bab05162b219385945fb4fe2726bdf19af43` |
| 22 | `def` | [colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/colimit-source-edition-2.md) | 394 | `declaration-track:ae0e8761d539f1ba8089d62d68dc1179e7a970a32936fc1470c1b5d7bfd0dec3` |
| 23 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/colimitcocone-source-edition-2.md) | 401 | `declaration-track:22e32043c68a6c98deb7a72a19e6d99138b5e0e1c63696673e7addf11c6e3344` |
| 24 | `def` | [colimitCoconeIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/colimitcoconeiscolimit.md) | 410 | `declaration-track:0049bd91c5ea098f4782ae6d1379120dcf66bb73f70d3751d91d453d4b7527de` |
| 25 | `instance` | [forget₂MonPreservesFilteredColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/forget-monpreservesfilteredcolimits.md) | 428 | `declaration-track:9e452ce8484aef02399608ada075ca7f4107ef80401c06a2e8abc9d349053cfc` |
| 26 | `instance` | [forgetPreservesFilteredColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedAligned.lean/declarations/forgetpreservesfilteredcolimits-source-edition-2.md) | 437 | `declaration-track:a8c188f72c0b4f62c0f5cc004038ea3c35b8127fd4aefd315f6e443c9f703b9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=46423e00d897c9634239033c16c3cb584f2f6879d223d036e83b20d2e6ba7a0d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant5ed1c7bb5f7f0da6ee31d1e7a44e981fdfbb67616dcc3e6dd13521b64bd95fb7.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant5ed1c7bb5f7f0da6ee31d1e7a44e981fdfbb67616dcc3e6dd13521b64bd95fb7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
