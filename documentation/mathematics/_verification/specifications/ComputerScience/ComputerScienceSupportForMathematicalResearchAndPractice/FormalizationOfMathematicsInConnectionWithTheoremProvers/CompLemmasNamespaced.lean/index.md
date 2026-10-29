# Verification target: Comp Lemmas Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17b6e48c65317fc5858a4f2db7e634fc3824d047",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompLemmas/Variant066cea1febf8e7eeff124de5f8dfc951187d6f593ee9fb04b33961d6a91450dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17b6e48c65317fc5858a4f2db7e634fc3824d047`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompLemmas/Variant066cea1febf8e7eeff124de5f8dfc951187d6f593ee9fb04b33961d6a91450dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompLemmas/Variant066cea1febf8e7eeff124de5f8dfc951187d6f593ee9fb04b33961d6a91450dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Int.Order` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ne_neg_of_ne](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/ne-neg-of-ne.md) | 29 | `result-track:ebaf1f9fd1dc81d3f9f0077bffe699bfb15bf7624d46369787b0d5080b866fed` |
| 2 | `theorem` | [neg_ne_zero_of_ne](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/neg-ne-zero-of-ne.md) | 33 | `result-track:cebede7bacd6ce47c744445f318f06266ceba165af8dfe4b3631ebd6de523510` |
| 3 | `theorem` | [zero_ne_neg_of_ne](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/zero-ne-neg-of-ne.md) | 39 | `result-track:aa7fcaf1cd953d4dc7791472eef8a01caa65ac31c264b7c3888487f558b35858` |
| 4 | `theorem` | [neg_ne_of_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/neg-ne-of-pos.md) | 43 | `result-track:b573dbb19a00bcbc7d1c098d323b2c4cccecb8ee98e5ec8943b6d8733af962c0` |
| 5 | `theorem` | [ne_neg_of_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/ne-neg-of-pos.md) | 48 | `result-track:3fddadf3899ec682d1ca947af45cd148423e2587f05291172a2fbe1622530a96` |
| 6 | `theorem` | [one_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/one-pos.md) | 55 | `result-track:9d98cb6e3ddf8cbb68648d054ad58d24cf27f4ed22e8a25cb96cc84f802826e3` |
| 7 | `theorem` | [bit0_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/bit0-pos.md) | 61 | `result-track:ee409bb217c6f93ddf8c2be555cf6b49c1b5582d7303bdb5c369911afc1e62b1` |
| 8 | `theorem` | [bit1_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/bit1-pos.md) | 66 | `result-track:e12cb98fc2b8676e056e41707607d6668528fa9b11976ed2af0f5f4d40056ef8` |
| 9 | `theorem` | [zero_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/zero-nonneg.md) | 70 | `result-track:d18bcb584485050732a44c1173b110bceaa31090bf5b0d8296dca34fca15848a` |
| 10 | `theorem` | [one_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/one-nonneg.md) | 74 | `result-track:ef1f0ab0dafa6048b88869582b3a22a8a7be2e535c0f9554883b408ae19b8834` |
| 11 | `theorem` | [bit0_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/bit0-nonneg.md) | 80 | `result-track:96727aff8c06dc45b7218cde8054a7f4d64f3a5e126a2cb7a2b90394f51a3799` |
| 12 | `theorem` | [bit1_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/bit1-nonneg.md) | 85 | `result-track:ea6f1fd4a5eb9b5ee41eabbed9a52dc3aaa845eeb7f0f06e33d2fe8fd1577f6d` |
| 13 | `theorem` | [nonneg_of_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/nonneg-of-pos.md) | 88 | `result-track:21bc35dd4e237d3bed107b64924fff5a8530ec3dcbd9554cbe560d6b275045ee` |
| 14 | `theorem` | [zero_le_ofNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/zero-le-ofnat.md) | 97 | `result-track:e0699f68b735060cb1741931fbcf1c5fa1ab0b59effc49754bee67f0af550afc` |
| 15 | `theorem` | [ne_of_natAbs_ne_natAbs_of_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/ne-of-natabs-ne-natabs-of-nonneg.md) | 103 | `result-track:78fb4ea61bcf03d4f12544acc9abde60f804c7153db93cec7589e817db93e1f4` |
| 16 | `theorem` | [ne_of_nat_ne_nonneg_case](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/ne-of-nat-ne-nonneg-case.md) | 111 | `result-track:4f0825cb390ffc6b655876a9c49e325f2742cd584a6269ad68b26b0d61fc88ae` |
| 17 | `theorem` | [natAbs_ofNat_core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/natabs-ofnat-core.md) | 122 | `result-track:f9990aac3082409ee22a6b0737d517f9e3ffe313f4708c0bf39027c08a29b23c` |
| 18 | `theorem` | [natAbs_of_negSucc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/natabs-of-negsucc.md) | 126 | `result-track:8969190d79d8240fdb0e90f1d32227fd5195c917feb140eb08dcea19c2442f28` |
| 19 | `theorem` | [natAbs_add_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/natabs-add-nonneg.md) | 130 | `result-track:6c21d3f5f5cc26b891c0eac8f9b68ba4e44378fb49e729748528941549f80ff6` |
| 20 | `theorem` | [natAbs_add_neg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/natabs-add-neg.md) | 138 | `result-track:4519cdd0c31608598955bfc703ec5f5adf73112f9285df1587ae16013131b158` |
| 21 | `theorem` | [natAbs_bit0](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/natabs-bit0.md) | 146 | `result-track:e7941dcdec525121d14cb6e15461a94266dd2d9f6fa2fc619448ad6bf9d97e2c` |
| 22 | `theorem` | [natAbs_bit0_step](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/natabs-bit0-step.md) | 153 | `result-track:8e7fa5b16ebb8e593725d3bba1ffd6562b08094695bc57b58ceee351f28f985e` |
| 23 | `theorem` | [natAbs_bit1_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/natabs-bit1-nonneg.md) | 159 | `result-track:693345490a8ab5153c0778191ace81947221aff1c8cd2f9ad3adc048366b4282` |
| 24 | `theorem` | [natAbs_bit1_nonneg_step](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompLemmasNamespaced.lean/declarations/natabs-bit1-nonneg-step.md) | 166 | `result-track:9568a95cf0334232d9cd77a794939286062dff4e095d4a32b97a0751f39840eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37ed2a0f4396401496a762036951b6bf296880ab490d3a1f044b6d221c2e271d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompLemmas/Variant066cea1febf8e7eeff124de5f8dfc951187d6f593ee9fb04b33961d6a91450dc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompLemmas/Variant066cea1febf8e7eeff124de5f8dfc951187d6f593ee9fb04b33961d6a91450dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
