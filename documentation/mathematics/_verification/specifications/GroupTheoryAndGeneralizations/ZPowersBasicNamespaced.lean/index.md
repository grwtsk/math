# Verification target: ZPowers Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fe35d28b310e538521d8ab4faadd2c7f3e32771",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant6e6d3595753d585c1046d79e49bb3a3164d9918fbae7bf3b2e02765169adfb57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fe35d28b310e538521d8ab4faadd2c7f3e32771`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant6e6d3595753d585c1046d79e49bb3a3164d9918fbae7bf3b2e02765169adfb57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant6e6d3595753d585c1046d79e49bb3a3164d9918fbae7bf3b2e02765169adfb57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Map` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zpowers](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/zpowers.md) | 34 | `declaration-track:e393c51bcb7e5c48e57c85be87526f2077f9dca62b60db65093158232c9c677d` |
| 2 | `theorem` | [mem_zpowers](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/mem-zpowers.md) | 41 | `result-track:666ae623e4749b79c2e401f358ef034b469d8e28a90e59347f6736d7d3562b21` |
| 3 | `theorem` | [coe_zpowers](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/coe-zpowers.md) | 45 | `result-track:438fb647b23047988f2c8000ce5cfa3498755b7cdf3acf41ccfb85ef416d192d` |
| 4 | `instance` | [decidableMemZPowers](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/decidablememzpowers.md) | 49 | `declaration-track:abd7e1a29ed965e051a7adf822ef5da22e9ecf980eecd45f8e67a883e461bd78` |
| 5 | `theorem` | [zpowers_eq_closure](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/zpowers-eq-closure.md) | 53 | `result-track:a89b119250da5f8229277e4f760ea9f485a64cd9be918832149e1d30e2683a96` |
| 6 | `theorem` | [mem_zpowers_iff](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/mem-zpowers-iff.md) | 58 | `result-track:df1e9315a7ba60ef6d76f8677bfa70862b456b5e82a247b764b969adeb07751a` |
| 7 | `theorem` | [zpow_mem_zpowers](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/zpow-mem-zpowers.md) | 62 | `result-track:8cd223b8b28a4984767dc18f50f4705a6c650a89232aa3685e564669b1492a64` |
| 8 | `theorem` | [npow_mem_zpowers](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/npow-mem-zpowers.md) | 66 | `result-track:c07b3d7d22d26fe39cc67c019bc251c956ec77d89614df64cfe098008e298966` |
| 9 | `theorem` | [forall_zpowers](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/forall-zpowers.md) | 71 | `result-track:b1a3fadb901b609e64654d4b0dfa76cce86c2ecc437edf64e2ca630e8f7d0a09` |
| 10 | `theorem` | [exists_zpowers](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/exists-zpowers.md) | 76 | `result-track:8be8f907cc11667fc2645db3e95f291a4597839f77395e267341c92295dd0618` |
| 11 | `theorem` | [forall_mem_zpowers](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/forall-mem-zpowers.md) | 80 | `result-track:ee8604ff98fc9779456b3e824eb5530919039e97d566127d2e0e167d7fb8f629` |
| 12 | `theorem` | [exists_mem_zpowers](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/exists-mem-zpowers.md) | 84 | `result-track:8deeb1a5490b68a31e4dfd7febeaf8cba92d40568ea88782394055ce4b729b5b` |
| 13 | `theorem` | [MonoidHom.map_zpowers](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/monoidhom-map-zpowers.md) | 90 | `result-track:fa3e039bdfef2b96ba4ac859d5fe559a74edca5cec08a7c22f7ec7a88b302065` |
| 14 | `theorem` | [Int.mem_zmultiples_iff](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/int-mem-zmultiples-iff.md) | 94 | `result-track:295c1f5e50c45ccfff3c7baf33de7383b9d2b6d142d0405e5319f7df9f535281` |
| 15 | `lemma` | [Int.zmultiples_one](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/int-zmultiples-one.md) | 98 | `result-track:2ad1f19ebe180f750d96529921e41b010439b002ab11a82a395974551f9bad51` |
| 16 | `theorem` | [ofMul_image_zpowers_eq_zmultiples_ofMul](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/ofmul-image-zpowers-eq-zmultiples-ofmul.md) | 102 | `result-track:12956fe213d573159b9f179ec82b2e1f13f6bbd649f3a9df26c4c6b523387a2b` |
| 17 | `theorem` | [ofAdd_image_zmultiples_eq_zpowers_ofAdd](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/ofadd-image-zmultiples-eq-zpowers-ofadd.md) | 114 | `result-track:6f124a9ac21b42e15ebc7799e8c374024d5998c7954d8afbc4299a70f3fedece` |
| 18 | `instance` | [zpowers_isMulCommutative](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/zpowers-ismulcommutative.md) | 126 | `declaration-track:a1742a9995c758f4249d90ab3e81f7de5d2fc42f6986d8d07f525520b05dc555` |
| 19 | `theorem` | [zpowers_le](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/zpowers-le.md) | 136 | `result-track:dd7c8c344a1ceb102ba62fdd06b3742d889566d10b8602020d51d586c952a253` |
| 20 | `theorem` | [zpowers_eq_bot](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/zpowers-eq-bot.md) | 146 | `result-track:85a0f5dd4fffb49850aa7aacad0f52d3a2d8b984bef0d527db14776a41dd6629` |
| 21 | `theorem` | [zpowers_ne_bot](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/zpowers-ne-bot.md) | 149 | `result-track:859bfccf6291c8f615524e4ff0d77eaa4f4980eb626902d96103734ebe94c005` |
| 22 | `theorem` | [zpowers_one_eq_bot](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/zpowers-one-eq-bot.md) | 153 | `result-track:243f3eda5beb8ab6620b9320dd22ca662a29a6c1d2c4b6c6b7286fb2115801b9` |
| 23 | `theorem` | [zpowers_inv](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/zpowers-inv.md) | 157 | `result-track:ef60621a506d5398e5c94994eb2490d3fc0c44a516a7748b6be682b960cffefc` |
| 24 | `theorem` | [Int.zmultiples_natAbs](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/int-zmultiples-natabs.md) | 162 | `result-track:be5c2daf0f4e6b864b5cfce61aceae5029c0dcb10b10f40707a891ec657666f1` |
| 25 | `lemma` | [AddSubgroup.closure_singleton_int_one_eq_top](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/addsubgroup-closure-singleton-int-one-eq-top.md) | 166 | `result-track:52707476247c7720eb2445574ac177f1f13c7a600810c25a0a562168b15564b8` |
| 26 | `lemma` | [AddSubgroup.zmultiples_one_eq_top](../../../../GroupTheoryAndGeneralizations/ZPowersBasicNamespaced.lean/declarations/addsubgroup-zmultiples-one-eq-top.md) | 170 | `result-track:0ef56d69316cad40452ccf5a5883005de46dddb12d74ce3df8e74cf0b11eb33a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=357756176517cde3fdca4bc07e59335bc69fa35f0cfa2e7b5afb6d1d46f36c49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant6e6d3595753d585c1046d79e49bb3a3164d9918fbae7bf3b2e02765169adfb57.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant6e6d3595753d585c1046d79e49bb3a3164d9918fbae7bf3b2e02765169adfb57.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
