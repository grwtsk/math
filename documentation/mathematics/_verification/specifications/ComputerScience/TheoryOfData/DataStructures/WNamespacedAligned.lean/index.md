# Verification target: WNamespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "308fc32a0e753757bf6e5a8b5a373051843a54f6",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant65b113bb112044a0cbf21d65137e523f11b82fef4625dca1a5431f2fb5da14d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `308fc32a0e753757bf6e5a8b5a373051843a54f6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant65b113bb112044a0cbf21d65137e523f11b82fef4625dca1a5431f2fb5da14d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant65b113bb112044a0cbf21d65137e523f11b82fef4625dca1a5431f2fb5da14d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [WPath](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wpath.md) | 68 | `declaration-track:7d4f907d1e214694a0713dddd1416712e5367cb5c63bfccea3351413894ab265` |
| 2 | `instance` | [WPath.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wpath-inhabited.md) | 75 | `declaration-track:284964fb22324d597bf7c8a859e8ef09e54b0d243e68c995b30cf7681a864f5f` |
| 3 | `def` | [wPathCasesOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wpathcaseson.md) | 83 | `declaration-track:607511c873856a12e388369180142b111216f6d1ba346ccfdf844b56fb5388a2` |
| 4 | `def` | [wPathDestLeft](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wpathdestleft.md) | 93 | `declaration-track:6460d01f913a1924cf6fd44f9aea3874df111c3fdd13567b8e22c48593465a92` |
| 5 | `def` | [wPathDestRight](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wpathdestright.md) | 99 | `declaration-track:5d32144954bbdcd8fef95a2813ee8a3385f8f2a101ff59f4447328959218af09` |
| 6 | `theorem` | [wPathDestLeft_wPathCasesOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wpathdestleft-wpathcaseson.md) | 105 | `result-track:5979850d1fb951aa72cf386d7bc3c88eaa8e7984471c130aa341e1f6f83f3ecd` |
| 7 | `theorem` | [wPathDestRight_wPathCasesOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wpathdestright-wpathcaseson.md) | 111 | `result-track:5607b9b4c21e752177757dd447fda00bc3bd635c6d6c542b4f8ac68f1dacaf1d` |
| 8 | `theorem` | [wPathCasesOn_eta](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wpathcaseson-eta.md) | 117 | `result-track:d6e6970592bc09a2c93bbe67a0a8c2e73764ba67c62c461e4c742eef71810a50` |
| 9 | `theorem` | [comp_wPathCasesOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/comp-wpathcaseson.md) | 123 | `result-track:223636cb9938a068fbc37bd7b167b6fc50c31d83d129ee6f6c40aaea3f685d7d` |
| 10 | `def` | [wp](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wp.md) | 134 | `declaration-track:0ac37911700ec862011e26c796d859536d247f67818953228ea16eabad51fec9` |
| 11 | `def` | [W](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/w.md) | 142 | `declaration-track:2dd18823fb3fc62544124d121d8c892ff12d5c3f0e5b38fb53bc1e7db02937a3` |
| 12 | `instance` | [mvfunctorW](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/mvfunctorw.md) | 147 | `declaration-track:dfbea89ef7ea6d0ce21e77051b476c91915a58d355d10a062a59ceac79aeb3b2` |
| 13 | `def` | [wpMk](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wpmk.md) | 157 | `declaration-track:df71fb4787a33316fe6ea0ee4d92c1f9923479da7c07a482cb0903ea7919b2ee` |
| 14 | `def` | [wpRec](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wprec.md) | 163 | `declaration-track:11be7e57067b8c9aa0edd463c62423e103f4b7fd4915b611d951a541b299de57` |
| 15 | `theorem` | [wpRec_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wprec-eq.md) | 170 | `result-track:58b53f2e0cd675f0120cfd21a7b0051b7d1ee4c4d695863f38ec43c22d97d2f4` |
| 16 | `theorem` | [wp_ind](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wp-ind.md) | 178 | `result-track:13e783827bfcc4bb81616d80b6b37d9176d72908006dd188e6bc63bd8b691f8b` |
| 17 | `def` | [wMk](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wmk.md) | 195 | `declaration-track:6afee15fd7498c4a3980a9aad44f1d82f71fcab5b479f26525b7762199f4619d` |
| 18 | `def` | [wRec](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wrec.md) | 203 | `declaration-track:16dcd017dcb3c524302028eda33726e517e8a0aa7fe85b6226b0c00a9ac741ab` |
| 19 | `theorem` | [wRec_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wrec-eq.md) | 214 | `result-track:9fe55e38467d4e6b1387944f466d8d1616af8254d2c8bdc07756f84c6d7aee0a` |
| 20 | `theorem` | [w_ind](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/w-ind.md) | 225 | `result-track:df455b229db0bc3b30c3b63e61222ac85432ec9ec74d7ad78c24e1e625e960db` |
| 21 | `theorem` | [w_cases](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/w-cases.md) | 240 | `result-track:56af4ab7b67c1782cbcde874714e904a8f039e92bb43984b3231b4ad1bec90fb` |
| 22 | `def` | [wMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wmap.md) | 247 | `declaration-track:9bde5ebb531fbe4e12b49fab4df856c11c3e68502ac163bdd51aea47b86a942f` |
| 23 | `theorem` | [wMk_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wmk-eq.md) | 251 | `result-track:73cbb5519ac3845b20912474551b8d302d1b672beca48ffaf77f6e56c445474f` |
| 24 | `theorem` | [w_map_wMk](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/w-map-wmk.md) | 257 | `result-track:4cb27a9f3f9e7aa86675a5393a1bfa71349529668efd13dbe5544d07bd4d6f62` |
| 25 | `def` | [objAppend1](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/objappend1.md) | 283 | `declaration-track:31f1afb037d0307c5f696d35aa42839043496e787bbc7eb47109777dc0718de2` |
| 26 | `theorem` | [map_objAppend1](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/map-objappend1.md) | 288 | `result-track:d476dd6fdbf9a66fbf86b57712a32f2dfa7282e3c902d840c2c0705340331c8c` |
| 27 | `def` | [wMk'](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wmk-source-edition-2.md) | 303 | `declaration-track:ec7b76f0b8ae075bcc584064612fb3cd4c2b692d72ec717545aa862538602914` |
| 28 | `def` | [wDest'](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wdest.md) | 309 | `declaration-track:1098c962eb4eb8430d25003ede313249714213ba0031f01cc24d9994ea6ccce6` |
| 29 | `theorem` | [wDest'_wMk](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wdest-wmk.md) | 314 | `result-track:e1d5bad34898974bb79f389c6bd92bd5249e878c0ed2aff53efce3a08350c912` |
| 30 | `theorem` | [wDest'_wMk'](../../../../../../ComputerScience/TheoryOfData/DataStructures/WNamespacedAligned.lean/declarations/wdest-wmk-source-edition-2.md) | 319 | `result-track:eae1241dc6124b7053964863a8efa73647a1b2a26be6f8d34a9c7d7228778ab8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6354a7b940d9537def75a081e008048cfa80d46da35a2dcd3726f8fdef752ff5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant65b113bb112044a0cbf21d65137e523f11b82fef4625dca1a5431f2fb5da14d7.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant65b113bb112044a0cbf21d65137e523f11b82fef4625dca1a5431f2fb5da14d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
