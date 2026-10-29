# Verification target: Rectangle Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8afe5c752e7ee61c4c9c658b1e153f47d630cba0",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variantdf9264753a2caa0cc0bd88c0d565855af85e93cc760c8c85169e3b225687b294.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/RectangleNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/RectangleNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8afe5c752e7ee61c4c9c658b1e153f47d630cba0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variantdf9264753a2caa0cc0bd88c0d565855af85e93cc760c8c85169e3b225687b294.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variantdf9264753a2caa0cc0bd88c0d565855af85e93cc760c8c85169e3b225687b294.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Hardy.EFContour.Poles` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.FullLine` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zc](../../../../RealFunctions/RectangleNamespaced.lean/declarations/zc.md) | 49 | `declaration-track:f1fd4481cb9247e5624c5e7e026bee8b9216fa4b7b709694c6d1ee529bfd2464` |
| 2 | `def` | [wc](../../../../RealFunctions/RectangleNamespaced.lean/declarations/wc.md) | 51 | `declaration-track:b5afb458517e9302b0b270863b93e9ec8c943cfbe2c098d8af5e78f595487021` |
| 3 | `lemma` | [zc_re](../../../../RealFunctions/RectangleNamespaced.lean/declarations/zc-re.md) | 53 | `result-track:a4052cb78588dc7c27b0bef9b8201a5a309f09e2e6b3939226d63577c70231df` |
| 4 | `lemma` | [zc_im](../../../../RealFunctions/RectangleNamespaced.lean/declarations/zc-im.md) | 54 | `result-track:2968f8298637fecbc3c5cb8a6d49f9f0714789bb856d95d6f18c8b616f5c163d` |
| 5 | `lemma` | [wc_re](../../../../RealFunctions/RectangleNamespaced.lean/declarations/wc-re.md) | 55 | `result-track:3e78d95f68f95233af0653a23723fa41986a7d029dd6ae267956ad1bf61d79e1` |
| 6 | `lemma` | [wc_im](../../../../RealFunctions/RectangleNamespaced.lean/declarations/wc-im.md) | 56 | `result-track:36219d5ec924c9eff29ba71c60638809467b79ed1e0a8976b65f02e46a3ab9de` |
| 7 | `lemma` | [mem_rect_iff](../../../../RealFunctions/RectangleNamespaced.lean/declarations/mem-rect-iff.md) | 58 | `result-track:7c75acb50a48832e35ebf417331a4816f3336e33902c6ee83c7b4b72e2f595e7` |
| 8 | `lemma` | [border_cases](../../../../RealFunctions/RectangleNamespaced.lean/declarations/border-cases.md) | 63 | `result-track:be04a9f2a846a42e46c123b8b87427b3aeb235428b755760c89af6f8352142da` |
| 9 | `lemma` | [zc_le_wc_re](../../../../RealFunctions/RectangleNamespaced.lean/declarations/zc-le-wc-re.md) | 78 | `result-track:89d038b0d835872297945d43568081b7bae00846a5d550bbd45f60d61ccb04e8` |
| 10 | `lemma` | [zc_le_wc_im](../../../../RealFunctions/RectangleNamespaced.lean/declarations/zc-le-wc-im.md) | 80 | `result-track:40ec613ff4da5e148fe3d0ed52b38ffeee24feac81c4d2e5f74be60dff56cbb0` |
| 11 | `lemma` | [re_bounds_of_mem](../../../../RealFunctions/RectangleNamespaced.lean/declarations/re-bounds-of-mem.md) | 83 | `result-track:b35a7252d599791a667dcecf1c0fe2fb09cd45e3603d19fd4a47454da0eb4dfa` |
| 12 | `lemma` | [border_ne_zero_one](../../../../RealFunctions/RectangleNamespaced.lean/declarations/border-ne-zero-one.md) | 88 | `result-track:b04c06625d784ace11c1e3a8cc84c92801b1919974bf4d17ee11b45563278cbb` |
| 13 | `lemma` | [mem_stripReg_of_border](../../../../RealFunctions/RectangleNamespaced.lean/declarations/mem-stripreg-of-border.md) | 92 | `result-track:1c4b8a57509e08c742b968410d225b8d1c6b336f2e65f971f94ca6a7dc5d3edd` |
| 14 | `lemma` | [zero_mem_rect](../../../../RealFunctions/RectangleNamespaced.lean/declarations/zero-mem-rect.md) | 97 | `result-track:c16f73fa913d89875abda5e1c0bc6dfcdacff4bc9676d6b605b5db7f4273cad7` |
| 15 | `lemma` | [one_mem_rect](../../../../RealFunctions/RectangleNamespaced.lean/declarations/one-mem-rect.md) | 100 | `result-track:9d0b0abb6d319c243d8f34796d0da473455df8d3b32266e3a48881380e6d9870` |
| 16 | `lemma` | [Gammaℝ_ne_zero_of_mem](../../../../RealFunctions/RectangleNamespaced.lean/declarations/gamma-ne-zero-of-mem.md) | 103 | `result-track:cb5e956b72703e2231226a1d320e911a045f002ff15ceee74453e6f788b5061b` |
| 17 | `lemma` | [Gammaℝ_one_sub_ne_zero_of_mem](../../../../RealFunctions/RectangleNamespaced.lean/declarations/gamma-one-sub-ne-zero-of-mem.md) | 106 | `result-track:21383df33109b2f71eed4972fd662c338034012a0d5424567525967e8076571a` |
| 18 | `lemma` | [Hfn_analyticOnNhd](../../../../RealFunctions/RectangleNamespaced.lean/declarations/hfn-analyticonnhd.md) | 118 | `result-track:71978df34f52b40e3138264f762e2e81743a6feb715f24d5ab003a9b5ac18e55` |
| 19 | `theorem` | [rect_invGammaℝ](../../../../RealFunctions/RectangleNamespaced.lean/declarations/rect-invgamma.md) | 121 | `result-track:0a0dedcd51c5f911734005373fdb724ccbc58b316276dab0a9b149a9da8b3250` |
| 20 | `theorem` | [rect_invGammaℝ_one_sub](../../../../RealFunctions/RectangleNamespaced.lean/declarations/rect-invgamma-one-sub.md) | 138 | `result-track:9de849445e50817a180b6578180441a0972d575f42a80de0c4016eeb0f3bd799` |
| 21 | `theorem` | [rect_mulSubOne](../../../../RealFunctions/RectangleNamespaced.lean/declarations/rect-mulsubone.md) | 158 | `result-track:8ae792b4fc162e298c4f44ba45231e7b5bf109bbeecc77d6e3212d3ef777043e` |
| 22 | `lemma` | [differentiable_subOne](../../../../RealFunctions/RectangleNamespaced.lean/declarations/differentiable-subone.md) | 182 | `result-track:1c2ac480612e9080218f0b816d7a5118a297dd852e29b9d220ccdb02aec046df` |
| 23 | `def` | [subOne](../../../../RealFunctions/RectangleNamespaced.lean/declarations/subone.md) | 185 | `declaration-track:ab14fb1d74e5f04d02290d08d5e4830ea4267485fed0fb673b662c691f61a10a` |
| 24 | `lemma` | [differentiable_subOne'](../../../../RealFunctions/RectangleNamespaced.lean/declarations/differentiable-subone-source-edition-2.md) | 188 | `result-track:a17d9c6ea02088a33b21849fbfdaac96ba23a132821d6116b450271d997de407` |
| 25 | `lemma` | [polarPoly_eq_mul](../../../../RealFunctions/RectangleNamespaced.lean/declarations/polarpoly-eq-mul.md) | 191 | `result-track:8864a82de2ddf8b3d1d84eabf8c921b9d2f57461de18bc5aa3b47e8c9388758f` |
| 26 | `lemma` | [analyticOrderAt_subOne_zero](../../../../RealFunctions/RectangleNamespaced.lean/declarations/analyticorderat-subone-zero.md) | 195 | `result-track:251c068dda73a01adb626687a053717e73ad8dd84a5904463ae223fad4caed01` |
| 27 | `lemma` | [analyticOrderAt_subOne_one](../../../../RealFunctions/RectangleNamespaced.lean/declarations/analyticorderat-subone-one.md) | 199 | `result-track:dd12c5e7216b545532b00590febd160a65684f6dde3c4f68e5d54d70a803c1f4` |
| 28 | `lemma` | [analyticOrderAt_of_nat](../../../../RealFunctions/RectangleNamespaced.lean/declarations/analyticorderat-of-nat.md) | 205 | `result-track:666042ccaeba679c2b6e312e3eec0dc73816e28b7cb598295b1f359f43ed12e8` |
| 29 | `lemma` | [differentiable_polarPoly](../../../../RealFunctions/RectangleNamespaced.lean/declarations/differentiable-polarpoly.md) | 214 | `result-track:6b721e3caf0136a65457b144c8b1caa3d4950e54c7f1bf56b72c0315b7d18c11` |
| 30 | `lemma` | [polarPoly_eq_zero_iff](../../../../RealFunctions/RectangleNamespaced.lean/declarations/polarpoly-eq-zero-iff.md) | 218 | `result-track:1ea82f4f2bf57aeca798251379b09a29ee0a192e3a3cfe29125c518f512b47bc` |
| 31 | `lemma` | [analyticOrderNatAt_polarPoly_zero](../../../../RealFunctions/RectangleNamespaced.lean/declarations/analyticordernatat-polarpoly-zero.md) | 222 | `result-track:1a9d5a03b045369ada90d7b716ba173839748c18f0e952fce4de746d2c32fb45` |
| 32 | `lemma` | [analyticOrderNatAt_polarPoly_one](../../../../RealFunctions/RectangleNamespaced.lean/declarations/analyticordernatat-polarpoly-one.md) | 229 | `result-track:8c74c8004c5c7002e9ee649ba73961a8cbf60b928c3ee3e3c6cfc13eabd2b9bc` |
| 33 | `theorem` | [rect_polarPoly](../../../../RealFunctions/RectangleNamespaced.lean/declarations/rect-polarpoly.md) | 236 | `result-track:aef4fac70b40a4ef3e87c1deb3f05cc1648038e72373f772a5d80a875f2142d5` |
| 34 | `theorem` | [rect_Wreg](../../../../RealFunctions/RectangleNamespaced.lean/declarations/rect-wreg.md) | 259 | `result-track:cc690dd6462f5f37875bd419a825ab1083f34661cfdda8557fccc69065385377` |
| 35 | `lemma` | [L2_border](../../../../RealFunctions/RectangleNamespaced.lean/declarations/l2-border.md) | 312 | `result-track:1a714315b3e7ed3a437dfa4bd404efcf5e1a3d3c0a481eb5cea9d8e68863225c` |
| 36 | `lemma` | [Lminus_border](../../../../RealFunctions/RectangleNamespaced.lean/declarations/lminus-border.md) | 323 | `result-track:75d8857f73439835060596122ef42b1560a8977a666f88bb4808c50dcf93f66c` |
| 37 | `lemma` | [FZ_border](../../../../RealFunctions/RectangleNamespaced.lean/declarations/fz-border.md) | 334 | `result-track:4f03fa751dceadc61a9e07c4ed29cd97098b5194a297a0baf9f75deda2ef9b4e` |
| 38 | `lemma` | [borderIntegrable_of_continuousOn](../../../../RealFunctions/RectangleNamespaced.lean/declarations/borderintegrable-of-continuouson.md) | 343 | `result-track:4e43d3124bea23d5b69fadf4e01e5637671d2c776d34b7c93fee3ee3c0c4d36e` |
| 39 | `lemma` | [continuousOn_logDeriv_border](../../../../RealFunctions/RectangleNamespaced.lean/declarations/continuouson-logderiv-border.md) | 350 | `result-track:71f081df7c73a283e88901bd3160e8a0dd95f7372ea8cfb2de7b1bc4dfc1bacc` |
| 40 | `lemma` | [rect'_lincomb](../../../../RealFunctions/RectangleNamespaced.lean/declarations/rect-lincomb.md) | 359 | `result-track:544ac92675f215bbebd9a81dcbdfeef62c3d1183a414be0287ae22c937e04b8f` |
| 41 | `theorem` | [rect_Lminus](../../../../RealFunctions/RectangleNamespaced.lean/declarations/rect-lminus.md) | 391 | `result-track:8a8b604dfc53c83dbecf2aee43e0f49073b368112140f69a5c7220dbb96e4d0b` |
| 42 | `theorem` | [rect_FZ](../../../../RealFunctions/RectangleNamespaced.lean/declarations/rect-fz.md) | 419 | `result-track:8d8a8b4d4870923d30e9c8fe485e0cfbcd2c57ec88711939b0ee7a10349404ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dba681cb31ec73bb0229c7b0d3aa24cf823babfeb5a897484c9e2ea833a73922 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variantdf9264753a2caa0cc0bd88c0d565855af85e93cc760c8c85169e3b225687b294.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variantdf9264753a2caa0cc0bd88c0d565855af85e93cc760c8c85169e3b225687b294.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
