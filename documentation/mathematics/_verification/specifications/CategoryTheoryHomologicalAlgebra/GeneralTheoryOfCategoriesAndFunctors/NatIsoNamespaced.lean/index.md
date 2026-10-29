# Verification target: Nat Iso Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13f3ffb1ded20f3b6c4352fe813dee04dae330b5",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variant86dc63cc2db91f31416e7c7903503311b24dbae81e97507a9ab287afdb683902.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13f3ffb1ded20f3b6c4352fe813dee04dae330b5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variant86dc63cc2db91f31416e7c7903503311b24dbae81e97507a9ab287afdb683902.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variant86dc63cc2db91f31416e7c7903503311b24dbae81e97507a9ab287afdb683902.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Category` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Iso` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/app.md) | 59 | `declaration-track:301afcd52fb506394e5d5d500af0132d3b99aa4bcea0675e22fccf2143ddd13f` |
| 2 | `theorem` | [hom_inv_id_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/hom-inv-id-app.md) | 67 | `result-track:e8478497df19587bca1265c7b1beadb051f8fedea9a3fe91a9dc56f6f13b8548` |
| 3 | `theorem` | [inv_hom_id_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/inv-hom-id-app.md) | 72 | `result-track:347488ff3bb74862b76cb370c031d90091c1e473242a72c8750db2bd1993dddf` |
| 4 | `lemma` | [hom_inv_id_app_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/hom-inv-id-app-app.md) | 77 | `result-track:5cf66216e27fde787c40a8a55bf67bb024a842bdaec1ab95256a711d1d2c807b` |
| 5 | `lemma` | [inv_hom_id_app_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/inv-hom-id-app-app.md) | 82 | `result-track:e3391bcb20154227774b5ef5e20740e769499466d6331f4db2a892ddfa3ae559` |
| 6 | `lemma` | [hom_inv_id_app_app_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/hom-inv-id-app-app-app.md) | 87 | `result-track:96f8fd5b2caeb30bced579872f839001e25d8ded402e8d17403bf608b9f45d67` |
| 7 | `lemma` | [inv_hom_id_app_app_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/inv-hom-id-app-app-app.md) | 94 | `result-track:11b1722c096aa33d8e09e54490b99943ca7023ab7327461080ab13baa1e8d0bf` |
| 8 | `theorem` | [trans_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/trans-app.md) | 107 | `result-track:2e7cab2ac9d673c700e1c4c951dca51d3256ed301ce7caf7ec2ecf5e8f0d72c6` |
| 9 | `theorem` | [app_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/app-hom.md) | 112 | `result-track:f2e346ea912361ceb9a64f35094493b9c6d143ce796bc8c7f4ad6e40827ad246` |
| 10 | `theorem` | [app_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/app-inv.md) | 116 | `result-track:989de936c15ca40a42ae9f73f01992ef4d30e31af0f87f6ee5eef9e241cd0705` |
| 11 | `instance` | [hom_app_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/hom-app-isiso.md) | 121 | `declaration-track:44a7b826e39be2e008628a5978f98b2086106fa493c7178fc41bbc22b7a993c0` |
| 12 | `instance` | [inv_app_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/inv-app-isiso.md) | 125 | `declaration-track:f7887163c727e53d39c733af568c87122e18d9804e0b26d318586c1e013e36de` |
| 13 | `theorem` | [cancel_natIso_hom_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/cancel-natiso-hom-left.md) | 146 | `result-track:7fb1615f93b1499a841fe18536c90daa839a64d215b9753f01a71da0a5e5961f` |
| 14 | `theorem` | [cancel_natIso_inv_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/cancel-natiso-inv-left.md) | 150 | `result-track:4c9e2f8b4b2a154de652c3fcdd6bfe9afe27c2c2fb3c3f3f79476e24b8793066` |
| 15 | `theorem` | [cancel_natIso_hom_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/cancel-natiso-hom-right.md) | 154 | `result-track:3912a1f678dd6a48733beeac6fcd0b26adcc34da0a5100435d77732b5dbce2a3` |
| 16 | `theorem` | [cancel_natIso_inv_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/cancel-natiso-inv-right.md) | 158 | `result-track:0f7bfeffd61330c28928fdba04880ead5ea407bcdf242f3d4e40b3ac513f28ab` |
| 17 | `theorem` | [cancel_natIso_hom_right_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/cancel-natiso-hom-right-assoc.md) | 162 | `result-track:30422bdc32d173d713feba493faefa1354c4def7ed00486d0cc1ae0211e4e13a` |
| 18 | `theorem` | [cancel_natIso_inv_right_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/cancel-natiso-inv-right-assoc.md) | 168 | `result-track:e9a5a606f76651c726476343e6eefd801735ef960cd71ae03318dfb377692fa1` |
| 19 | `theorem` | [inv_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/inv-inv-app.md) | 174 | `result-track:56fb7a7212c5575c83250a5915032ed51649bd3253a763f489cff804399cf4a3` |
| 20 | `theorem` | [naturality_1](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/naturality-1.md) | 181 | `result-track:1e3d57b3bb07dae6531543bc10200205c177ecaa379185fae64cb6656af7a035` |
| 21 | `theorem` | [naturality_2](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/naturality-2.md) | 184 | `result-track:8ddae5c51c27b9339d64eaa81f23878c1e2773e99e0630abb88cbfa0a52edd63` |
| 22 | `theorem` | [naturality_1'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/naturality-1-source-edition-2.md) | 187 | `result-track:4fbf1d015949e09e625974df523d294cdedf767fb6d799fa2ddd78c694893c06` |
| 23 | `theorem` | [naturality_2'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/naturality-2-source-edition-2.md) | 191 | `result-track:c84feb0a8389912d19746f56ce754cb5e766f0b5d39a7a59572b2df05916bea0` |
| 24 | `instance` | [isIso_app_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/isiso-app-of-isiso.md) | 197 | `declaration-track:7a944344cb499d4fd1447551be55f5e49bb9c76127b19e3a74201eb72bdf6761` |
| 25 | `theorem` | [isIso_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/isiso-inv-app.md) | 203 | `result-track:b29da7c5b65b4d01bd70fb28414153ced2269fda47cffe5e9a69bca7039f91ab` |
| 26 | `theorem` | [inv_map_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/inv-map-inv-app.md) | 212 | `result-track:e216c2c6c0290802aee21d0b55aec353a0c63be4ada0e477e56c19bd1cbff1b2` |
| 27 | `def` | [ofComponents](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/ofcomponents.md) | 220 | `declaration-track:7654d83d9d0fabbd28591b9873f92e5419904cf5f9ea4b33ba7d35803ed38075` |
| 28 | `theorem` | [ofComponents.app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/ofcomponents-app.md) | 233 | `result-track:5e523c95b38014eaf1934ae4815c14d3591bc830ffe2530d80fdd62614acc763` |
| 29 | `theorem` | [isIso_of_isIso_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/isiso-of-isiso-app.md) | 239 | `result-track:ea265076692b91e9cf27e20c479ea1a0824ba2edef486bd9434850212e980d6a` |
| 30 | `def` | [hcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/hcomp.md) | 244 | `declaration-track:3acec37e2dff651bd6f01f413423ec58817d58d61fd7103abaf29b05c147dd4d` |
| 31 | `theorem` | [isIso_map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/isiso-map-iff.md) | 251 | `result-track:4851730651637186f0be7d2d1ef91ed04f3719fea8bc9e61d41d4963f563cfd4` |
| 32 | `lemma` | [NatTrans.isIso_iff_isIso_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/nattrans-isiso-iff-isiso-app.md) | 263 | `result-track:d383e03cc4b4ee9aa1570eac7d3af0efa0c9a510a5f13bdae007ee3359ec8625` |
| 33 | `def` | [copyObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/copyobj.md) | 275 | `declaration-track:615f57dc51f9b0621973dc849679a721b52ba9037cfceb2b9e3c8f644f93043e` |
| 34 | `def` | [isoCopyObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatIsoNamespaced.lean/declarations/isocopyobj.md) | 281 | `declaration-track:b140b4162ac3c7149aaca9e5849de991b99414838af9bbd4da2d6cb55118efb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a45d7e62a61367d4c4257886b43cafd2d4825649e7f18799892bf9b9d76d1b2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variant86dc63cc2db91f31416e7c7903503311b24dbae81e97507a9ab287afdb683902.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variant86dc63cc2db91f31416e7c7903503311b24dbae81e97507a9ab287afdb683902.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
