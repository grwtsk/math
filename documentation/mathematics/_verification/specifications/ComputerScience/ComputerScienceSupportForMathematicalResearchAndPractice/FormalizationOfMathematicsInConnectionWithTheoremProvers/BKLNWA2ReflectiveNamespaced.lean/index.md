# Verification target: BKLNWA2 Reflective Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a951f62d1abcb4990748d33045f140ff5fff57f",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BKLNWA2Reflective/Variant8c60bd4fce197edde3f2f1475939a105fff7e21f150f2255633d286bbb5cd77f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a951f62d1abcb4990748d33045f140ff5fff57f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BKLNWA2Reflective/Variant8c60bd4fce197edde3f2f1475939a105fff7e21f150f2255633d286bbb5cd77f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BKLNWA2Reflective/Variant8c60bd4fce197edde3f2f1475939a105fff7e21f150f2255633d286bbb5cd77f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.ReflectiveSum` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Examples.BKLNW_a2_bounds` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bklnwF_eq_engine](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/bklnwf-eq-engine.md) | 46 | `result-track:56d1f66e3c97d039aba0f6b92f9ca2ab674db9d0453e56f39ac44c810600ad08` |
| 2 | `lemma` | [one_plus_alpha_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/one-plus-alpha-eq.md) | 50 | `result-track:2eecd804b45545a982b5bf67e23993bc243cab01064e8879efcef8e683574170` |
| 3 | `lemma` | [f_to_engine](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/f-to-engine.md) | 57 | `result-track:044256a47cf1a5f8d694d2db2546f636760321b7cafcd124567243719114a3f5` |
| 4 | `def` | [proofConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/proofconfig.md) | 65 | `declaration-track:0eb706eea10b85cc7041882280c99b4cf3ba7a055576585b3fcf952f82155ae7` |
| 5 | `lemma` | [alpha_lower_bridge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/alpha-lower-bridge.md) | 75 | `result-track:f580440b9c95e9d8685ca6cfe0b49ba1222cd52cce1375a00a902c4b60577482` |
| 6 | `lemma` | [alpha_upper_bridge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/alpha-upper-bridge.md) | 86 | `result-track:b40cc3468a770bd8ef4e33546725ff18181b862551255639401277e89006d925` |
| 7 | `theorem` | [a2_20_exp_lower](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-20-exp-lower.md) | 99 | `result-track:052de3b073905e034084118c2370bbb56b6d37bc3b70f3819c9bdf81ca222ccb` |
| 8 | `theorem` | [a2_20_exp_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-20-exp-upper.md) | 106 | `result-track:8eb238053efc5eff2e0ecbf4d29a394387c3a3ae4f327378975af84dd4d4d15f` |
| 9 | `theorem` | [a2_25_exp_lower](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-25-exp-lower.md) | 115 | `result-track:c9c70099ce4036aca063b6b364c2e9f347e19eae431361467b6d3a4e53b7bdec` |
| 10 | `theorem` | [a2_25_exp_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-25-exp-upper.md) | 122 | `result-track:c38e88066dcd35324abc62f149859639b1ba3a34802270aba5c31195b9ea308c` |
| 11 | `theorem` | [a2_30_exp_lower](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-30-exp-lower.md) | 131 | `result-track:7b78f1b70cbf904f1643059e88d5d4ab5bb85490005c35f0720c8e909be40115` |
| 12 | `theorem` | [a2_30_exp_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-30-exp-upper.md) | 138 | `result-track:1ebf564825cff5249cabff465faeac691e34b06e8d40b8f98c317980d7acf4a4` |
| 13 | `theorem` | [a2_35_exp_lower](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-35-exp-lower.md) | 147 | `result-track:bca87e4a135d37498cfc1defa714cdd2c57d4afc4ca654dde6ddd1fbf7b589b7` |
| 14 | `theorem` | [a2_35_exp_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-35-exp-upper.md) | 154 | `result-track:c198e2fdcda83f6a038c8405f7dc0597e08ca0a35ea25cc6dd1097945d9e9e36` |
| 15 | `theorem` | [a2_40_exp_lower](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-40-exp-lower.md) | 163 | `result-track:6f77ddd40438d69e02de719a89720f22e6dfa94ba817ac27dcd7420c0ca2e018` |
| 16 | `theorem` | [a2_40_exp_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-40-exp-upper.md) | 170 | `result-track:e9c1cc9fcd955e739e32c7f5aedd6a5c83bbf06ac160e36cae2c746bcbd55092` |
| 17 | `theorem` | [a2_43_exp_lower](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-43-exp-lower.md) | 179 | `result-track:70266d56bd687571ec548dc68cb5d7c2c5c6bc31c6365f572f6684d2e9ef86b2` |
| 18 | `theorem` | [a2_43_exp_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-43-exp-upper.md) | 186 | `result-track:1f63a490a1c313a8861bf742a555783b0fc6b1620649efe18a49ba99df8f0a2a` |
| 19 | `theorem` | [a2_100_exp_lower](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-100-exp-lower.md) | 195 | `result-track:5f86c515143ef07e97b3fbabad0dac64e6de8335c8e2eddb95d34989af13347f` |
| 20 | `theorem` | [a2_100_exp_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-100-exp-upper.md) | 202 | `result-track:4487e7d243f66682904ba0ae91317734c9cb23d1c285e10d6f9d32862c764c15` |
| 21 | `theorem` | [a2_150_exp_lower](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-150-exp-lower.md) | 211 | `result-track:919f8f77110a7fd2509dcf7d482f1906ebc31eaa60570f9e1de3c5386e0a5880` |
| 22 | `theorem` | [a2_150_exp_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-150-exp-upper.md) | 218 | `result-track:633234508003c155d640407fd82945ce170a72af499423e927ef0a679586e269` |
| 23 | `theorem` | [a2_200_exp_lower](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-200-exp-lower.md) | 227 | `result-track:7adbd85aaf8b42a8b32c09dc12635775b818059faf76f04dea69a5e8e6098366` |
| 24 | `theorem` | [a2_200_exp_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-200-exp-upper.md) | 234 | `result-track:c7165b327f9e558c82201c8bc8fc084e0e03c667d9411d9244f68fbbdf0086ee` |
| 25 | `theorem` | [a2_250_exp_lower](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-250-exp-lower.md) | 243 | `result-track:46595769fc67c7fd9e66bfd3ea8a161e52464b8373f1e180eb2170fa36ef865c` |
| 26 | `theorem` | [a2_250_exp_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-250-exp-upper.md) | 250 | `result-track:1ee436cbc32bf7d91d98443e51f58feadad4e0f0e2b8aef1716e5f59e9614f63` |
| 27 | `theorem` | [a2_300_exp_lower](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-300-exp-lower.md) | 259 | `result-track:915de5611a786cb16223b1f8452cc0a87b3623f17c3c1ec5f862ce242bb4819d` |
| 28 | `theorem` | [a2_300_exp_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/a2-300-exp-upper.md) | 266 | `result-track:b028338ea5ec76b4d20f101654b8c0ef482c559e04202fbebc3aa19decf68b1b` |
| 29 | `lemma` | [f_pow_to_engine](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/f-pow-to-engine.md) | 279 | `result-track:1ab17fa2845a84fb7e0b24a3bb81311ca126d0e48f8ca924b982805e48de2903` |
| 30 | `lemma` | [alpha_pow_upper_bridge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/alpha-pow-upper-bridge.md) | 287 | `result-track:f1eca03188def79896fd241e171750de559c601857871bb7a9d8403ed5cfd7ce` |
| 31 | `theorem` | [pow145_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/pow145-upper.md) | 295 | `result-track:1966e2ffe6f735c718cb237f982c786b0413ec3c66ac333de7ae4657c6c821e1` |
| 32 | `theorem` | [pow217_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/pow217-upper.md) | 302 | `result-track:ef628eea2b563ad6a4d5294f5e71032b26952f09f5338ffc6db2c02c5a6cf85b` |
| 33 | `theorem` | [pow289_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/pow289-upper.md) | 309 | `result-track:d34cf409edd42607538bf2d967e8a2210364b4f8839062463d22d1766e7ab80f` |
| 34 | `theorem` | [pow361_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/pow361-upper.md) | 316 | `result-track:5313b040421b5b05f42bafe4113173d7316f0d160447b9d7c6ab6421bc0086e1` |
| 35 | `theorem` | [pow433_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BKLNWA2ReflectiveNamespaced.lean/declarations/pow433-upper.md) | 323 | `result-track:49dd9a54d89b2fdf25eaadcb9fe2bf9d9278fa9183c93308a00adb4f437819c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4de17cc4e5d3a5681a992a4819ee0434677f1ebf14314a45c8da1b08ffe69d60 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BKLNWA2Reflective/Variant8c60bd4fce197edde3f2f1475939a105fff7e21f150f2255633d286bbb5cd77f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BKLNWA2Reflective/Variant8c60bd4fce197edde3f2f1475939a105fff7e21f150f2255633d286bbb5cd77f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
