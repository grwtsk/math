# Verification target: Deligne Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da96f09ae001c43f6fa2f609f78cd49cc11775ea",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Deligne/Variant9ac22a842f71ca7979c4857376e2a6e3fce73328ae56c8cc8e864408a41e1f95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/DeligneNamespaced.lean/index.md) · [Full source](../../../../SpecialFunctions/DeligneNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da96f09ae001c43f6fa2f609f78cd49cc11775ea`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Deligne/Variant9ac22a842f71ca7979c4857376e2a6e3fce73328ae56c8cc8e864408a41e1f95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Deligne/Variant9ac22a842f71ca7979c4857376e2a6e3fce73328ae56c8cc8e864408a41e1f95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma.Beta` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Gammaℝ](../../../../SpecialFunctions/DeligneNamespaced.lean/declarations/gamma.md) | 48 | `declaration-track:06b35f5f162783ac139658ad0186fd5676f0a131c0924bfd4354f497dd9a2d58` |
| 2 | `lemma` | [Gammaℝ_def](../../../../SpecialFunctions/DeligneNamespaced.lean/declarations/gamma-def-source-edition-2.md) | 50 | `result-track:be73619684ad92db02eb64260af66488baedd5a96d9410bc0f3ffde86d128293` |
| 3 | `def` | [Gammaℂ](../../../../SpecialFunctions/DeligneNamespaced.lean/declarations/gamma-source-edition-2.md) | 56 | `declaration-track:cc6619a8f62a8a5ee40e2e9697bb7f243cdcdf04a39a1f60c02a822a573f6e5c` |
| 4 | `lemma` | [Gammaℂ_def](../../../../SpecialFunctions/DeligneNamespaced.lean/declarations/gamma-def.md) | 58 | `result-track:5d7f78478c3b2f8b2089a003e9a3fc93560fcf0603596c383400e5a72d2ab6b9` |
| 5 | `lemma` | [Gammaℝ_add_two](../../../../SpecialFunctions/DeligneNamespaced.lean/declarations/gamma-add-two.md) | 60 | `result-track:45c4de65c7081411f074d5279a31219b1248259bff75cf09f7b2fb427f2145db` |
| 6 | `lemma` | [Gammaℂ_add_one](../../../../SpecialFunctions/DeligneNamespaced.lean/declarations/gamma-add-one.md) | 67 | `result-track:206771a7708296f3ec818f518fe95f7a855e14bdcc4e23e960d6a4a34d58c1db` |
| 7 | `lemma` | [Gammaℝ_ne_zero_of_re_pos](../../../../SpecialFunctions/DeligneNamespaced.lean/declarations/gamma-ne-zero-of-re-pos.md) | 73 | `result-track:b2aac2bca5ab9570033d84ca3949ddee2953cf63adb1605c0a6e5b86cb338f1b` |
| 8 | `lemma` | [Gammaℝ_eq_zero_iff](../../../../SpecialFunctions/DeligneNamespaced.lean/declarations/gamma-eq-zero-iff.md) | 80 | `result-track:e177d1ca4fa9a2ba6eeef07c365775fa912c8c6ae845dc896fe59e3210ef270c` |
| 9 | `lemma` | [Gammaℝ_one](../../../../SpecialFunctions/DeligneNamespaced.lean/declarations/gamma-one-source-edition-2.md) | 84 | `result-track:a744f5dabe263f49ea6c90e97acf50f7ed66225b7d8be763bf466449dd5cb35f` |
| 10 | `lemma` | [Gammaℂ_one](../../../../SpecialFunctions/DeligneNamespaced.lean/declarations/gamma-one.md) | 89 | `result-track:0d4c3022e3acd5197873a6cc6b4d45a20c95886da287faf70f5273d689a7d617` |
| 11 | `lemma` | [differentiable_Gammaℝ_inv](../../../../SpecialFunctions/DeligneNamespaced.lean/declarations/differentiable-gamma-inv.md) | 95 | `result-track:bbe131437a8c31f124d066824ebc07a8276074dc3a478406eadb4d212369b7cf` |
| 12 | `lemma` | [Gammaℝ_residue_zero](../../../../SpecialFunctions/DeligneNamespaced.lean/declarations/gamma-residue-zero.md) | 102 | `result-track:55b916f9e2f56ddbb1e22bbe6732e4d2a54de7316ef0a69ed32c7b9f5e2028b8` |
| 13 | `lemma` | [Gammaℝ_mul_Gammaℝ_add_one](../../../../SpecialFunctions/DeligneNamespaced.lean/declarations/gamma-mul-gamma-add-one.md) | 122 | `result-track:9d3e2fbfe1b5c4f22793f89a38ed4d9b6d3bc4fe5076fdbd32f2131ed15367aa` |
| 14 | `lemma` | [Gammaℝ_one_sub_mul_Gammaℝ_one_add](../../../../SpecialFunctions/DeligneNamespaced.lean/declarations/gamma-one-sub-mul-gamma-one-add.md) | 138 | `result-track:51f84f5c0b2e7028bec70be7a3fb9531f5a6c411073ca0e5127007cf967539fe` |
| 15 | `lemma` | [Gammaℝ_div_Gammaℝ_one_sub](../../../../SpecialFunctions/DeligneNamespaced.lean/declarations/gamma-div-gamma-one-sub.md) | 155 | `result-track:7af4385cb54f6635c7a1b469cc975597edabe6cf0bb2de4236505eec490e7844` |
| 16 | `lemma` | [inv_Gammaℝ_one_sub](../../../../SpecialFunctions/DeligneNamespaced.lean/declarations/inv-gamma-one-sub.md) | 170 | `result-track:9a4fef6844a43604eb2cf834fb5b3527f0d2c6a2ed726db8a74524e110f44677` |
| 17 | `lemma` | [inv_Gammaℝ_two_sub](../../../../SpecialFunctions/DeligneNamespaced.lean/declarations/inv-gamma-two-sub.md) | 185 | `result-track:1e044dea3374012036351377560a636a9d7981c478d60a9c38a2e5dc820c2331` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=77e01d75ea0cf759fd14ce0b7ee90d11638a1cf4b3a54f886efe96a828a86716 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/Deligne/Variant9ac22a842f71ca7979c4857376e2a6e3fce73328ae56c8cc8e864408a41e1f95.lean","GRWTSK/_verification/specifications/Analysis/SpecialFunctions/Deligne/Variant9ac22a842f71ca7979c4857376e2a6e3fce73328ae56c8cc8e864408a41e1f95.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
