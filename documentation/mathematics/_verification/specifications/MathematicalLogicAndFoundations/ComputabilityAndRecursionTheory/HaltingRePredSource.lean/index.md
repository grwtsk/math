# Verification target: Halting Re Pred Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f08c76313733e88b4b39468797625604e61eb647",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Variant716976bd142081d8a7cc25583eaf399a1c85679cf25cc60e0b045e8f30234007.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f08c76313733e88b4b39468797625604e61eb647`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Variant716976bd142081d8a7cc25583eaf399a1c85679cf25cc60e0b045e8f30234007.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/Halting/Variant716976bd142081d8a7cc25583eaf399a1c85679cf25cc60e0b045e8f30234007.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.PartrecCode` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [merge'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/merge-source-edition-2.md) | 27 | `result-track:5cd4e4c39af5905907ac6beebda5b94bc63d560ee058cad9b0679f885e4c23d4` |
| 2 | `theorem` | [merge'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/merge-source-edition-3.md) | 74 | `result-track:d60aed97f943eca1acf330f82f5d53c0def52ad6153aa359bb6f9a219b57a112` |
| 3 | `theorem` | [merge](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/merge.md) | 101 | `result-track:597f0b7e5ae7f2e4260fbb249a870c5ab3227bfebea9b150025e06e2c6039f12` |
| 4 | `theorem` | [cond](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/cond.md) | 116 | `result-track:b88f6d1913c6f6d8ec730c5ae904e68dc0da740cc4479005624f5d50be9606c4` |
| 5 | `theorem` | [sum_casesOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/sum-caseson.md) | 125 | `result-track:506a41fab8c0ed27c9cb56d69351334f7cea1e53ad4b9256b6fbf568ed3e296e` |
| 6 | `def` | [ComputablePred](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/computablepred.md) | 137 | `declaration-track:becb7a8753a06a53cd9dbb9ac675f328e1de7a5de9663c6155d0eb4329a9381f` |
| 7 | `def` | [RePred](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/repred.md) | 143 | `declaration-track:306864d2bf0fdbf01400a06b17a61a48170025516dd1e3b81d12431dee492ddf` |
| 8 | `theorem` | [RePred.of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/repred-of-eq.md) | 147 | `result-track:e07c7fb5b4dbfa4365fb59de05845d129fe67a1103e90c837f84d8b4f18118b0` |
| 9 | `theorem` | [Partrec.dom_re](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/partrec-dom-re.md) | 152 | `result-track:94409fe2c3cb99ab40d579713470f9a115e1887933f78ff091deaa005ddea7eb` |
| 10 | `theorem` | [ComputablePred.of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/computablepred-of-eq.md) | 157 | `result-track:72aa95d6a7a601b0daac88177e30a735addce4590435c34d5ef3b58f638a4d6a` |
| 11 | `theorem` | [computable_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/computable-iff.md) | 172 | `result-track:9d53aeec72c3d1aa3ac50df8cead7c63eb9071ead753d40565e284cd478a68cd` |
| 12 | `theorem` | [not](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/not.md) | 178 | `result-track:a4d08741dd69218b2169771d0b8e7d5923fa7a2d27a4ac5497fb8e627c4be1cb` |
| 13 | `theorem` | [to_re](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/to-re.md) | 187 | `result-track:3726299fb6269a6193ae586eeb7b2404738029867e0b4b38b753bf4c4cddfa62` |
| 14 | `theorem` | [rice](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/rice.md) | 197 | `result-track:6ea7e51c969be53dc3e9477e82a3e0fdc32accb948b95f6070fb4c2c504e2bd7` |
| 15 | `theorem` | [rice₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/rice-source-edition-2.md) | 214 | `result-track:f260db1ffc7734b40e687320a4cbc05c66ee6d60d8dd1c1f6f208ec251871ca2` |
| 16 | `theorem` | [halting_problem_re](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/halting-problem-re.md) | 232 | `result-track:352f9da59e1c58967dc73490d2634f75968db87141c0a9ec4b121298ca422fc6` |
| 17 | `theorem` | [halting_problem](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/halting-problem.md) | 236 | `result-track:eaa286ef90153ae6e4cfa3a1c543482edd6f828b0e3688e841c859ad8fd651da` |
| 18 | `theorem` | [computable_iff_re_compl_re](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/computable-iff-re-compl-re-source-edition-2.md) | 244 | `result-track:82b4f1cccf725e4fa2f83f1c68eb07f19e99a4623d9a8107c6092e85f9b3fae0` |
| 19 | `theorem` | [computable_iff_re_compl_re'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/computable-iff-re-compl-re.md) | 260 | `result-track:31f8e6e02b8c4180c205ab1dca9f5d20cd0bee42a47c8f253a8b607488166955` |
| 20 | `theorem` | [halting_problem_not_re](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/halting-problem-not-re.md) | 265 | `result-track:553ec8cd4eb096a96f733789f136f13846c06cf873f8e70d58fed44a617d7546` |
| 21 | `inductive` | [Partrec'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/partrec.md) | 276 | `declaration-track:8892a1be82c2c660dba481e3667edffc649610e2819da6efd228583e11d07bdd` |
| 22 | `theorem` | [to_part](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/to-part.md) | 294 | `result-track:f64603471321abaf4d988d374e148493d268c914c07ee4e5f09caf2b7257a5b0` |
| 23 | `theorem` | [of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/of-eq.md) | 306 | `result-track:d70636ad2511194526f008906f8ef155e33c5c21f44c76112076f25ac54078c2` |
| 24 | `theorem` | [of_prim](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/of-prim.md) | 310 | `result-track:075034185bba59f176f44e805a0b12a63e6628fb0c5cc416e758995d3472d5b1` |
| 25 | `theorem` | [head](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/head.md) | 314 | `result-track:817a28a14704e072c6091374f4a6d0d08e225d06e150ed6599029a784e629c5a` |
| 26 | `theorem` | [tail](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/tail.md) | 318 | `result-track:15d71e39e4bb39269c51883e29ebd0417853e6681add7d368d4c01e11f89de81` |
| 27 | `theorem` | [bind](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/bind.md) | 323 | `result-track:0f0644255f9c123574ebc6ea46434205eceb271095e1a5841972848ebc385209` |
| 28 | `theorem` | [map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/map.md) | 331 | `result-track:6d6745316cd9c99f908c10827b52422c4320d8adcd0831329d1818896095230f` |
| 29 | `def` | [Vec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/vec.md) | 338 | `declaration-track:5ada7a1b20fe1b7f05b0dd7ddfc8d362051a9484a7b1e84c81e3f06669954df6` |
| 30 | `theorem` | [Vec.prim](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/vec-prim.md) | 342 | `result-track:af94499fb674763c91ee4a560d2708d58621cfe3c2ca3c9aec5d4947f70ba7ec` |
| 31 | `theorem` | [nil](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/nil.md) | 345 | `result-track:5610b62665f084358e79afdf1bb4b981a6c9a199552589708dea71e86b0983be` |
| 32 | `theorem` | [cons](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/cons.md) | 348 | `result-track:2f9c99ca6dcfb8082d95b2aec140830dd02b0c6720d27b5de6dcd11609619486` |
| 33 | `theorem` | [idv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/idv.md) | 353 | `result-track:50824fa4ce4bbfd126a4ab98cc2afd9a56e174292588099424900f41e511e711` |
| 34 | `theorem` | [comp'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/comp.md) | 357 | `result-track:d2167c363a7029e0873a8e8235f6629880d87e38739a0765f83654b4f67319e2` |
| 35 | `theorem` | [comp₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/comp-source-edition-2.md) | 361 | `result-track:fa0df581d65fdc3663527159ea910a911cccdf8c6d97ead8ffd82fa2a9fecc22` |
| 36 | `theorem` | [rfindOpt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/rfindopt.md) | 366 | `result-track:cdcb18c38ef78a4282a7eaa26ab071c79240869734d96b33a019cf21a580571f` |
| 37 | `theorem` | [of_part](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/of-part.md) | 391 | `result-track:c03e23df223d8ab3daa8c3c9a320fafd24bee3563addf19b13bafdaa92461ffe` |
| 38 | `theorem` | [part_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/part-iff-source-edition-3.md) | 409 | `result-track:ee2a2b5fccc523ca093af7882274b5dcf8430a35dc2dbe506052a42d951b7641` |
| 39 | `theorem` | [part_iff₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/part-iff-source-edition-2.md) | 413 | `result-track:c05d29ba3abd0a620977f421168470708b9dfad8c02ae82b60491025d5e27b2d` |
| 40 | `theorem` | [part_iff₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/part-iff.md) | 421 | `result-track:2b1b9ae81f5d2143fdfb39500ec37954ce36831e4976c0ca13a8111bad683445` |
| 41 | `theorem` | [vec_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/HaltingRePredSource.lean/declarations/vec-iff.md) | 429 | `result-track:738eaadbae83e9eae8c6e6e433796cdeb533885a8cab9be3ab6c7e6f56f2cd7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c76ace935fa2b2ce0cee6b11f31df8f5666033937d2117a31aefffd94460480a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Variant716976bd142081d8a7cc25583eaf399a1c85679cf25cc60e0b045e8f30234007.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/Halting/Variant716976bd142081d8a7cc25583eaf399a1c85679cf25cc60e0b045e8f30234007.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
