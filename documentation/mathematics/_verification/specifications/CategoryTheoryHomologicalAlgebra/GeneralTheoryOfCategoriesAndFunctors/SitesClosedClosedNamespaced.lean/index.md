# Verification target: Sites Closed Closed Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e747bc9800c1664f63d0a2d294931606f5e88bc",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e747bc9800c1664f63d0a2d294931606f5e88bc`.

Source path: `GRWTSK/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.SheafOfTypes` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Closure` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [close](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/close.md) | 67 | `declaration-track:e797088122321ebf0e47ef893de1bb5c425f95fec12a8388a047fc2c385dc2b9` |
| 2 | `theorem` | [le_close](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/le-close.md) | 72 | `result-track:337e70cfae35e32505ad097a00d2911b225870d94c0f2672057b50e750b983a7` |
| 3 | `def` | [IsClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/isclosed.md) | 81 | `declaration-track:3ae9f2150f4d8bc79c57d92596a27f703c4c3316f624fd90d2877f7610e0bacd` |
| 4 | `theorem` | [covers_iff_mem_of_isClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/covers-iff-mem-of-isclosed.md) | 85 | `result-track:1f5aa282bedfe62406866fdaa4d604f315c5780268dbdcddcf50ca6d461eb5c4` |
| 5 | `theorem` | [isClosed_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/isclosed-pullback.md) | 90 | `result-track:6f836b5253825c1cec33390d71bfd1e0a3b8dff86c71de16bbc0b84de60579c3` |
| 6 | `theorem` | [le_close_of_isClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/le-close-of-isclosed.md) | 97 | `result-track:06146a8c8547af00874b1aab9b9c4b10b83e32bb27857f2260b03df4a02b0a9e` |
| 7 | `theorem` | [close_isClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/close-isclosed.md) | 102 | `result-track:acc13023ed11f765da19919d5069972a298b9442480fd04c88aa760750660b54` |
| 8 | `def` | [closureOperator](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/closureoperator.md) | 107 | `declaration-track:f7870be63957b4d5bc076e5b146843a2d5fa256b79ef07748594d2f00199deca` |
| 9 | `theorem` | [isClosed_iff_close_eq_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/isclosed-iff-close-eq-self.md) | 111 | `result-track:3e1aade7f8c1b7cb6be2e30d8a174ee6af16ae2a857992e00b11a3b318fa0222` |
| 10 | `theorem` | [close_eq_self_of_isClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/close-eq-self-of-isclosed.md) | 114 | `result-track:b497b79635b0fac1a280fa64532df66c0b9c6d4eb3fdeb43a4cefbe3f332e71e` |
| 11 | `theorem` | [pullback_close](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/pullback-close.md) | 118 | `result-track:1d852ce61c8de1d8f528c6eef84200e39c92e24e9f502c1e06d882c782f35748` |
| 12 | `theorem` | [monotone_close](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/monotone-close.md) | 129 | `result-track:6a5035dc449cfe4c7a6f3efc3f4a7a1fb2c1d8b1ac930f2202b7720194f24e38` |
| 13 | `theorem` | [close_close](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/close-close.md) | 133 | `result-track:6f27b1757430ea50fb7df918e6d0bc057fb573ff1811ceff0b187bd1a121d394` |
| 14 | `theorem` | [close_eq_top_iff_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/close-eq-top-iff-mem.md) | 140 | `result-track:28be78d2eeddec57c894918651ebe790c851e1d346a5a1eaaed16338530690c2` |
| 15 | `def` | [Functor.closedSieves](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/functor-closedsieves.md) | 159 | `declaration-track:75ccfb441e75595fe86331401ba3d40433c2ccd06f00263d394afa9c26887e06` |
| 16 | `theorem` | [classifier_isSheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/classifier-issheaf.md) | 166 | `result-track:f59442e3245a2061f58be3b8dd31c1f58736067dbab987d30f1f94b76bd001b5` |
| 17 | `theorem` | [le_topology_of_closedSieves_isSheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/le-topology-of-closedsieves-issheaf.md) | 219 | `result-track:c643704105223542faed6dd4bae687c737e490406f9ee98d1bdf56a82033f5b6` |
| 18 | `theorem` | [topology_eq_iff_same_sheaves](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/topology-eq-iff-same-sheaves.md) | 239 | `result-track:4c97d17123f482a437b54b9c8afaaafab31c681da2a1181203d44a15bb4b121e` |
| 19 | `def` | [topologyOfClosureOperator](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/topologyofclosureoperator.md) | 260 | `declaration-track:3c1d78d873f4ffe6aad6629dd23c875c796015e8ff8e116a61ee77a96e12ca28` |
| 20 | `theorem` | [topologyOfClosureOperator_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/topologyofclosureoperator-self.md) | 279 | `result-track:fcffbe69cfbefbe015c98b07ee95136d6396a5a8da458136030953086d358557` |
| 21 | `theorem` | [topologyOfClosureOperator_close](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesClosedClosedNamespaced.lean/declarations/topologyofclosureoperator-close.md) | 284 | `result-track:2ca7e51728afd6b8fbcd858741837f243d74f53300bc0f4ed0d0506d56441761` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06688a6230305639e76702a290e90eac0f0d35502ca8f4a899eef6b881628ae4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
