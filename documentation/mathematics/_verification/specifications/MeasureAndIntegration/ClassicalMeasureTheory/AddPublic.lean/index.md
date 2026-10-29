# Verification target: Add Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88c83bebbb2afb93da4842a5e0ccc24646769e6d",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Add/Variant0c26250535b5b1f627534e54df1f4b540099b82040ce1db3b2c9bbb659d42e8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88c83bebbb2afb93da4842a5e0ccc24646769e6d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Add/Variant0c26250535b5b1f627534e54df1f4b540099b82040ce1db3b2c9bbb659d42e8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Add/Variant0c26250535b5b1f627534e54df1f4b540099b82040ce1db3b2c9bbb659d42e8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_iSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-isup.md) | 36 | `result-track:191becfbccc2ac79f144d02a14a1c7ae3e5114c0fb17c651e84fde7d509bc2e1` |
| 2 | `theorem` | [lintegral_iSup'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-isup-source-edition-2.md) | 98 | `result-track:9bc05dc38f9676ced29c7e388b75a11a8b5cd86b5be3eb47e4e775a840d0a94b` |
| 3 | `theorem` | [lintegral_tendsto_of_tendsto_of_monotone](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-tendsto-of-tendsto-of-monotone.md) | 115 | `result-track:bd3f21cbf16df61c3136041749c8a8d9ae4a4acd8766e6c92324b10c2a0cb586` |
| 4 | `theorem` | [lintegral_iSup_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-isup-ae.md) | 130 | `result-track:98d4699a1d38dc3357aed50fb499a12feebed0ae1e35b54adf8adfc7167f3f99` |
| 5 | `theorem` | [lintegral_iSup_directed_of_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-isup-directed-of-measurable.md) | 154 | `result-track:aec5e29b93deb09d9439e0494cd73327b38a50054accbd43158a7c227cae5b37` |
| 6 | `theorem` | [lintegral_iSup_directed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-isup-directed.md) | 176 | `result-track:35665e2ead52fb5ac1738a9bff8cc030a990611fe1c5546f299aa5090142e66d` |
| 7 | `theorem` | [lintegral_liminf_nat_le'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-liminf-nat-le.md) | 204 | `result-track:e08cb812ab0555344ca27c58f8ed5accfb6fe7513477c838ec0ef05fb504dbbd` |
| 8 | `theorem` | [lintegral_liminf_le'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-liminf-le.md) | 216 | `result-track:7e8f1600b89586021024c1eec6d645fd039aa41d8f67c6e7d1bf8b3c8426c514` |
| 9 | `theorem` | [lintegral_liminf_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-liminf-le-source-edition-2.md) | 233 | `result-track:c2bec21e8833dd744397c7468a75738cc2efff156aa5d3878e8413588e25922d` |
| 10 | `theorem` | [lintegral_eq_iSup_eapprox_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-eq-isup-eapprox-lintegral.md) | 242 | `result-track:17ab6f6035582115fa70f6cf5362533c39d7e53e73f729aa4f026cc4ea8ddefa` |
| 11 | `theorem` | [lintegral_eq_iSup_eapprox_lintegral'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-eq-isup-eapprox-lintegral-source-edition-2.md) | 256 | `result-track:d63d3af6801e917cf7de76156332956165f63bfe5e917a85719466ac2eb130d4` |
| 12 | `lemma` | [lintegral_eapprox_le_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-eapprox-le-lintegral.md) | 260 | `result-track:2350ab3d03db9e86047ac3a63fea06abba244c47392262f2e6e6890edab183ee` |
| 13 | `lemma` | [measure_support_eapprox_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/measure-support-eapprox-lt-top.md) | 265 | `result-track:2c96e4bce91dd2679d74416118ce9c8099aeeb733c671c70d3b0a515ab8c1972` |
| 14 | `theorem` | [le_lintegral_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/le-lintegral-add.md) | 273 | `result-track:70e959999a4ec5c27e850c429205f8703c8976ba4061fd6ebd8d62d28b713c53` |
| 15 | `theorem` | [lintegral_add_aux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-add-aux.md) | 281 | `result-track:69a41c39007eb4561011d691a675d3d7cd6012d0effe43b2bf6f726f1de49eb9` |
| 16 | `theorem` | [lintegral_add_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-add-left-source-edition-2.md) | 316 | `result-track:5c5c7215856f842fb35fbf55971dff19328d55a4ec326973875fe6835cf0d971` |
| 17 | `theorem` | [lintegral_add_left'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-add-left.md) | 326 | `result-track:2858669fec61affad34343d8e8ae61b79f543937f7b49f67d56ba7f3938573b3` |
| 18 | `theorem` | [lintegral_add_right'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-add-right-source-edition-2.md) | 331 | `result-track:c7bbe8c4a97c030ea0b5b506ac41a62fa983f0d6518c8a8b341d890b4270a8b4` |
| 19 | `theorem` | [lintegral_add_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-add-right.md) | 339 | `result-track:43749dde02f21461f3c9e96f0f7c1a8210369530e3a127918a4b2cc33c921ca9` |
| 20 | `theorem` | [lintegral_finsetSum'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-finsetsum-source-edition-2.md) | 343 | `result-track:a71a1b159cfead1d538081c86cde89b80674144beb59a3b417a92a21a6801385` |
| 21 | `theorem` | [lintegral_finsetSum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-finsetsum.md) | 356 | `result-track:a15f8750f860c29c61eafea3b2bd10e570c3a90a196e0b33dcc8f49520582d5f` |
| 22 | `theorem` | [lintegral_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-tsum.md) | 362 | `result-track:d424c6e8ac4942e4a5c20aad97e09c85ae585132cbea4061857d925583e836d6` |
| 23 | `theorem` | [lintegral_const_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-const-mul-source-edition-3.md) | 381 | `result-track:cd11563335eb21d6688a614d92b02338748b5e065a9ed80ff50e666c90db43e3` |
| 24 | `theorem` | [lintegral_const_mul''](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-const-mul-source-edition-2.md) | 402 | `result-track:7d2b2e397f7ac8d192e358b398f2f549c112c98e1d8ba7e3a37f4906cda349dd` |
| 25 | `theorem` | [lintegral_const_mul_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-const-mul-le.md) | 409 | `result-track:10f54c9266a69c3cb4108f23d7f5d7f3ec8e12351a4d838b9eb5862c03503291` |
| 26 | `theorem` | [lintegral_const_mul'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-const-mul.md) | 420 | `result-track:012a64f0dabc21cb725029079baf5a1e777bcf4884d1436e1af0a16d64deee0a` |
| 27 | `theorem` | [lintegral_mul_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-mul-const-source-edition-3.md) | 433 | `result-track:ed3113fec2cc90ae0e33bffb6fb8bb1d2e4484f66500e1e970cf59601b22082d` |
| 28 | `theorem` | [lintegral_mul_const''](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-mul-const.md) | 436 | `result-track:02050a5119258a02f87c96996ca88586b350dfc7c33aff9bd44f8957a7041e11` |
| 29 | `theorem` | [lintegral_mul_const_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-mul-const-le.md) | 439 | `result-track:2f0985717490a302d9b474439876c544b7652b9be2776301d3d4804b6405e819` |
| 30 | `theorem` | [lintegral_mul_const'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-mul-const-source-edition-2.md) | 443 | `result-track:598ea9389f0724123813fe81363eea0a347832efd8ef05877ffe8170afada81a` |
| 31 | `theorem` | [lintegral_lintegral_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-lintegral-mul.md) | 448 | `result-track:36119df743e639af718c548f331827324c774d098e0578ceecee2e794a78884b` |
| 32 | `theorem` | [lintegral_lintegral_mul_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-lintegral-mul-le.md) | 453 | `result-track:04dfdbe976d0b598dd895eebba6c26cbd1be73955b42a9702a258a0953b452b6` |
| 33 | `theorem` | [lintegral_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-trim.md) | 466 | `result-track:d9be2a16b14570667622328f3c2795703f022244b7b0d12e55b26e28e6e3e99c` |
| 34 | `theorem` | [lintegral_trim_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/lintegral-trim-ae.md) | 485 | `result-track:d251870db58fbd59a829442c4c9a9a46772e076b124673f63302635ee94ce37c` |
| 35 | `theorem` | [setLIntegral_trim_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/setlintegral-trim-ae.md) | 490 | `result-track:cf31feb1e29000685615b3f91d59df6835fded33b34ae21b732bf859e4e54cb8` |
| 36 | `theorem` | [setLIntegral_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AddPublic.lean/declarations/setlintegral-trim.md) | 497 | `result-track:73a6d8de1b857c4b06449a567b5ca328b8be5bdb0418ff46b9e80960d7c09241` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c38ebd1e32600faa836c05bab64b4419038da7a3eb72d97821e465678440dad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Add/Variant0c26250535b5b1f627534e54df1f4b540099b82040ce1db3b2c9bbb659d42e8e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Add/Variant0c26250535b5b1f627534e54df1f4b540099b82040ce1db3b2c9bbb659d42e8e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
