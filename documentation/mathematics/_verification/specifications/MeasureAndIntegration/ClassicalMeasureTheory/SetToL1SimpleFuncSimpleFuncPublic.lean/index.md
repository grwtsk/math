# Verification target: Set To L1 Simple Func Simple Func Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f6960348d93265cd0740b8ac3057820662352d3",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SimpleFunc/Variant65be1de468c02ef9df54fa766f1dd1a6519cfed732ddaf916cedc41c950cd5ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f6960348d93265cd0740b8ac3057820662352d3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SimpleFunc/Variant65be1de468c02ef9df54fa766f1dd1a6519cfed732ddaf916cedc41c950cd5ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SimpleFunc/Variant65be1de468c02ef9df54fa766f1dd1a6519cfed732ddaf916cedc41c950cd5ba.lean.json)

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
| 1 | `theorem` | [norm_eq_sum_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/norm-eq-sum-mul.md) | 37 | `result-track:92117b8a424bcf499a89667ed51737c84b95a3f6eeb4c9ffed0f6b55ea527955` |
| 2 | `def` | [setToL1S](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s.md) | 61 | `declaration-track:8692adf730bcb92cff4dad9bc351b65c7683fa285f99b4fcbe79580f263b4264` |
| 3 | `theorem` | [setToL1S_eq_setToSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-eq-settosimplefunc.md) | 64 | `result-track:32c1bc45b6a8937369247a731580139d272f9c0054da794cdc17edad35fa18fc` |
| 4 | `theorem` | [setToL1S_zero_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-zero-left.md) | 69 | `result-track:38301af683dcf03de6c43b8bf7cc2370d3d8b31a3f1ac6124bd025be300efc16` |
| 5 | `theorem` | [setToL1S_zero_left'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-zero-left-source-edition-2.md) | 72 | `result-track:7b6795396fb263afc21f88296b7d20bb1837a3b18effe74cf48145a9779af7fa` |
| 6 | `theorem` | [setToL1S_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-congr.md) | 76 | `result-track:71c617cd53a09ecef20bb6a845cb8fbc6ab38cafdb88e40e4502043430926010` |
| 7 | `theorem` | [setToL1S_congr_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-congr-left.md) | 81 | `result-track:25aeb12db4cb8698a68bbdb2930c42f3f25210b5431aa3a05836ce8673f68c80` |
| 8 | `theorem` | [setToL1S_congr_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-congr-measure.md) | 89 | `result-track:feed888a5bb42db844ec820cf8c41bf2cd3ef1d0925a99602583be723469072b` |
| 9 | `theorem` | [setToL1S_add_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-add-left-source-edition-2.md) | 99 | `result-track:1321ceb6bd414033779dfcdfd55c7e26314b39fc333e62c72c4ceff76381da8b` |
| 10 | `theorem` | [setToL1S_add_left'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-add-left.md) | 103 | `result-track:0a7d567bd4f1da5457b45c73332c2b0d4f1d50036465c4a1fe5bd1978bdf0103` |
| 11 | `theorem` | [setToL1S_smul_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-smul-left-source-edition-2.md) | 108 | `result-track:cab894eab405cab1c5703445bfc0b715aef28b5e9cb6c2d56f16831e4cf3cc80` |
| 12 | `theorem` | [setToL1S_smul_left'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-smul-left.md) | 112 | `result-track:51b4751245af70b2015538a2c114523f698e0aa1e6aa4d805e9cb0218ac976b1` |
| 13 | `theorem` | [setToL1S_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-add.md) | 117 | `result-track:0105f89331fdebec233f394b273151215b838736166a7d44cab56bce4231697e` |
| 14 | `theorem` | [setToL1S_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-neg.md) | 127 | `result-track:a95bcceefee2187cd35ff5042775919da482cb6edebcb67f26882821d1636d56` |
| 15 | `theorem` | [setToL1S_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-sub.md) | 135 | `result-track:d7f5b2e9ba5714c5979740079bcb336ceaaa5c726627db7296bca390d51472b3` |
| 16 | `theorem` | [setToL1S_smul_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-smul-real.md) | 140 | `result-track:8eebcbda3996c9c33b3a6f47b10db9a1b7a0a619b1f2bd836abc192ca17a62a4` |
| 17 | `theorem` | [setToL1S_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-smul.md) | 148 | `result-track:f49445edee465e9e614f3d5046054de370b321d9e661b502108182fe2b49636d` |
| 18 | `theorem` | [norm_setToL1S_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/norm-settol1s-le.md) | 157 | `result-track:84a87a51c58971dad75d06f1b381bd1e002773c0db36731e0fa6189c06117d10` |
| 19 | `theorem` | [setToL1S_indicatorConst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-indicatorconst.md) | 165 | `result-track:e65a0d431472da84ea9238b79bbd36b44288257ab34a32e6521d8d9c38756ef8` |
| 20 | `theorem` | [setToL1S_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-const.md) | 175 | `result-track:ea9bbcb25d63a7a8d4e56cd23d2798a0d4b1623b83904c5824f61894fa245a34` |
| 21 | `theorem` | [setToL1S_mono_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-mono-left-source-edition-2.md) | 187 | `result-track:23bfaad30d7a986d8caea6036cce092eec6bbc57c2d6f3d3a07a5363db91ecf4` |
| 22 | `theorem` | [setToL1S_mono_left'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-mono-left.md) | 191 | `result-track:0d2ae3a697a475c9c1056caf943664fd899af8db47ee647da4392ee0cf733c86` |
| 23 | `theorem` | [setToL1S_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-nonneg.md) | 197 | `result-track:2269100d00dae2c1183a86f1f0d46abf45d9760431246b02cece12cfe56fd76a` |
| 24 | `theorem` | [setToL1S_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1s-mono.md) | 209 | `result-track:175324c206bc2d8455f0648fb23e6b597008f79615a724a4e65a1f4c40ca54b2` |
| 25 | `def` | [setToL1SCLM'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1sclm-source-edition-2.md) | 223 | `declaration-track:dbb4d5f7497126717103503b53ccfd30434f1a9d3977e079a59d494f3e5a8b4b` |
| 26 | `def` | [setToL1SCLM](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1sclm.md) | 231 | `declaration-track:6378d95597c1372258ff31baf21fe82cd4cd15ab6542fc6db3484f77836fec5d` |
| 27 | `theorem` | [setToL1SCLM_zero_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1sclm-zero-left.md) | 242 | `result-track:2a1fbcc44eaf7e1acb9380f1c497ccbba3de4df620d487bf7291ac3a9b2011d7` |
| 28 | `theorem` | [setToL1SCLM_zero_left'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1sclm-zero-left-source-edition-2.md) | 246 | `result-track:708dda244b12b6d6c4789092dbf964a037c2f671195a48a96d121b6132742735` |
| 29 | `theorem` | [setToL1SCLM_congr_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1sclm-congr-left.md) | 251 | `result-track:1d9711e7cd005982416b9a77a50f44d2a1142399d895ee516b24ed8789cb6501` |
| 30 | `theorem` | [setToL1SCLM_congr_left'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1sclm-congr-left-source-edition-2.md) | 256 | `result-track:44341f0700e96d5645df20b51e62f376a2e82a45933d0556fc85b92b1fff6dd7` |
| 31 | `theorem` | [setToL1SCLM_congr_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1sclm-congr-measure.md) | 261 | `result-track:4158c9434f702c0e9cb5dae007a56c10d42f2bfed6e142acfe2ce172563d222b` |
| 32 | `theorem` | [setToL1SCLM_add_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1sclm-add-left.md) | 266 | `result-track:666842f1e5f1b77c35086193512413df5c956e2cbda4577bd280dbd5c3c15060` |
| 33 | `theorem` | [setToL1SCLM_add_left'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1sclm-add-left-source-edition-2.md) | 271 | `result-track:af0898c31c74e7905566afe40e342a9261b5cc0b8ee9fd8c831793d36d4ecb53` |
| 34 | `theorem` | [setToL1SCLM_smul_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1sclm-smul-left.md) | 277 | `result-track:3f04ee18c7c907831552b632a240667121c156c38837f3c9e316b71294357feb` |
| 35 | `theorem` | [setToL1SCLM_smul_left'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1sclm-smul-left-source-edition-2.md) | 281 | `result-track:c5d26bd076ddc0c29ad875bbe167cf62e808d2dc073f178e5051b2c6962673f7` |
| 36 | `theorem` | [norm_setToL1SCLM_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/norm-settol1sclm-le-source-edition-2.md) | 287 | `result-track:9b71adf0ab5afed9cd019faec363f79bbf6418b02f85f40fdd2a1aa4dadecb24` |
| 37 | `theorem` | [norm_setToL1SCLM_le'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/norm-settol1sclm-le.md) | 291 | `result-track:2ba139e1bf9fcfdaa08b6bf26a0616e8a804607165f0e46e3b771db71da8ee3c` |
| 38 | `theorem` | [setToL1SCLM_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1sclm-const.md) | 295 | `result-track:bf0fb98de8afeec67994162c606642b55660d59746d8ba38c9f9baca3d16011e` |
| 39 | `theorem` | [setToL1SCLM_mono_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1sclm-mono-left-source-edition-2.md) | 307 | `result-track:f458efe09f14c07999bcf8a127fa6fceb1ecefb0d83c16046c3548d008ddcec2` |
| 40 | `theorem` | [setToL1SCLM_mono_left'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1sclm-mono-left.md) | 313 | `result-track:c07002b298f2ab755f5a8ff8730a6f1dfc95ff262615f7afba70b9a90c1e9f28` |
| 41 | `theorem` | [setToL1SCLM_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1sclm-nonneg.md) | 320 | `result-track:f754afefec5c8f900b2bc1313f8736dba36257b66a733d4c5aac5daf12edccae` |
| 42 | `theorem` | [setToL1SCLM_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetToL1SimpleFuncSimpleFuncPublic.lean/declarations/settol1sclm-mono.md) | 325 | `result-track:eff528e196ffc31920b711d86f952a4efe4dda287916b4ab4466f64b4813da1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=955e8efe0eab8a62a1bfecce033e61c26e294473725c2e90eb294dec69248df9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SimpleFunc/Variant65be1de468c02ef9df54fa766f1dd1a6519cfed732ddaf916cedc41c950cd5ba.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SimpleFunc/Variant65be1de468c02ef9df54fa766f1dd1a6519cfed732ddaf916cedc41c950cd5ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
