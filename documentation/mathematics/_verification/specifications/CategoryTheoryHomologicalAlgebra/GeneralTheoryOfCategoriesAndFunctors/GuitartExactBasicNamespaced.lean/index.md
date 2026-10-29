# Verification target: Guitart Exact Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dabc4d762b3a4cf5806e97013a0af8cbe587671b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant951b72a43de27eb039ff551948567d39da5253383302ec4189053d88d6a15053.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dabc4d762b3a4cf5806e97013a0af8cbe587671b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant951b72a43de27eb039ff551948567d39da5253383302ec4189053d88d6a15053.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant951b72a43de27eb039ff551948567d39da5253383302ec4189053d88d6a15053.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Final` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.TwoSquare` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [costructuredArrowRightwards](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/costructuredarrowrightwards.md) | 74 | `declaration-track:ebabf607935d5d85350a0cc0ede809392213ac1386a1f99ed05e0e84724c2a27` |
| 2 | `def` | [structuredArrowDownwards](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/structuredarrowdownwards.md) | 82 | `declaration-track:e8d8528c8fabb993cc98613ce8ca29f2f92e7b1390a12164ea529f3503aebe2f` |
| 3 | `abbrev` | [StructuredArrowRightwards](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/structuredarrowrightwards.md) | 101 | `declaration-track:c5f8d9df489443f89a93e1e51b5c8fd97728cc56f9c0ea584a0d7283fec6d22f` |
| 4 | `abbrev` | [CostructuredArrowDownwards](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/costructuredarrowdownwards.md) | 107 | `declaration-track:6f806d637a53e09c843086e881c9a991a7a8a818b8e9b3d5ce0b43e5226ab1c1` |
| 5 | `abbrev` | [StructuredArrowRightwards.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/structuredarrowrightwards-mk.md) | 115 | `declaration-track:634343f0b83c5692f3f4c0bc318686e06599fc3b495f1aab4ea808493b1a5e73` |
| 6 | `abbrev` | [CostructuredArrowDownwards.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/costructuredarrowdownwards-mk.md) | 120 | `declaration-track:f82985222c32508c1e26c17a28896b00111c3f9fe5b86dcc48b06689ffc24f90` |
| 7 | `lemma` | [StructuredArrowRightwards.mk_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/structuredarrowrightwards-mk-surjective.md) | 127 | `result-track:4d07c28941c17f024187ed3a5c200e68a90d108a94dfbf88095cb0645c4e9b15` |
| 8 | `lemma` | [CostructuredArrowDownwards.mk_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/costructuredarrowdownwards-mk-surjective.md) | 136 | `result-track:a6605be15ff076c2ae895c39227c7ac35fdda94521b9e3c4c765e3e413d17044` |
| 9 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/functor.md) | 152 | `declaration-track:c3dd2f25281c93638fe3eed98087f2883d31001575c08fc2e598ca95f9e4b795` |
| 10 | `def` | [inverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/inverse.md) | 165 | `declaration-track:f69050185a14f01a91145df3a930a48be749763ac7e39ca61d9a1247d392deac` |
| 11 | `def` | [equivalenceJ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/equivalencej.md) | 181 | `declaration-track:adbbdeaa81402de145cce02d0d3c5d5d7b4c3bd848a73f8a2ad861c8a9d6df3b` |
| 12 | `lemma` | [isConnected_rightwards_iff_downwards](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/isconnected-rightwards-iff-downwards.md) | 187 | `result-track:3e9bef09d6865ee56bdc85fe454330255ce7524c308ec0f4da6f162904a2b1c3` |
| 13 | `def` | [costructuredArrowDownwardsPrecomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/costructuredarrowdownwardsprecomp.md) | 198 | `declaration-track:63ec7d922f23d1809c05f40bd4a982325c693b8ed5bee056a65504bc5cf1d166` |
| 14 | `class` | [GuitartExact](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/guitartexact.md) | 223 | `declaration-track:6889e517b2bfc1bfe20b13546b0758eca2a7a3c7be486c96d499fd86f229c154` |
| 15 | `lemma` | [guitartExact_iff_isConnected_rightwards](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/guitartexact-iff-isconnected-rightwards.md) | 227 | `result-track:255cda7c8bf596771d35dd31d40ec55d8f83c694306b784107c9d44050b2226a` |
| 16 | `lemma` | [guitartExact_iff_isConnected_downwards](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/guitartexact-iff-isconnected-downwards.md) | 232 | `result-track:c8b9ab1c8cd5c83ce62a5ab955cbad25a1682aac1e4f2fe68e8d55550266ef29` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 238 | `declaration-track:5219b17c32fbd77588f2b089cf3c08798f394b8c1e61f619a34f03f994178458` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/instance.md) | 243 | `declaration-track:1f25e76eee0f990c32ca30319dc1a8b1bbdae0bf35438421325878d0602c6c42` |
| 19 | `lemma` | [guitartExact_iff_final](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/guitartexact-iff-final.md) | 248 | `result-track:005490c4233ceca5d63cce37cb50446d9f88e4fef9c8f9cd2734d7ed39093380` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 252 | `declaration-track:5fd1442fe7e28fa19c484ba982c76bc1b63db2d7ac5b5c8c5217725543a9562a` |
| 21 | `lemma` | [guitartExact_iff_initial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/guitartexact-iff-initial.md) | 257 | `result-track:a483392cb8452604ed27ea154068cf461c3cd8357f131b64c78ac6a1187be1db` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 264 | `declaration-track:45293394e6b015616371b0a7302a47690c05c764b8b8f6f4105f326fc11f734a` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 271 | `declaration-track:acd8fc156b44a96dbb96593153a9423ca83ee2a91d4cccf9c0053a8c1c8bb44a` |
| 24 | `instance` | [guitartExact_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GuitartExactBasicNamespaced.lean/declarations/guitartexact-id.md) | 282 | `declaration-track:d5f9b4b732702a6921e07042e1c4d8d492f50589bde8a57a97132fe7690fc2fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=980c7d241641f7ebd3b6e8744db2f827dde467efb11fafdfcf7d7192701a651f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant951b72a43de27eb039ff551948567d39da5253383302ec4189053d88d6a15053.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant951b72a43de27eb039ff551948567d39da5253383302ec4189053d88d6a15053.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
