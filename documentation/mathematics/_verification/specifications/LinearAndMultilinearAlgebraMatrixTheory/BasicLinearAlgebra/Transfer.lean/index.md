# Verification target: Transfer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "469a31ec055d6db903e9095cdca737f5b904f019",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `469a31ec055d6db903e9095cdca737f5b904f019`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Transfer.Inputs` — import line 43; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Transfer.Abstract` — import line 44; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Transfer.Dependence` — import line 45; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideA.Bridge` — import line 46; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HatNegligible](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/hatnegligible.md) | 63 | `declaration-track:34c28b0509db466e2521632faf47f590b823431c159efa62ee5a161deebcd177` |
| 2 | `lemma` | [hat_sub'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/hat-sub.md) | 69 | `result-track:37713244d37c7f05e780343820fa3f12e704a8a4d0d07871a57f54d0627e2dea` |
| 3 | `lemma` | [hat_add'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/hat-add.md) | 73 | `result-track:5fe4f9ae55f722e43aabd47b4b147c74b20850ecc9173f8f5b1b70088d22e20a` |
| 4 | `theorem` | [HatNegligible.add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/hatnegligible-add.md) | 81 | `result-track:f6ed81640da50f196b9614b06c3f8a15a76bda8fba741af57ca550aff0e649fe` |
| 5 | `theorem` | [HatNegligible.congr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/hatnegligible-congr.md) | 118 | `result-track:0199c8a6cd1275282dc0202309c13898b089fb9212990255ce8aa1436d74756d` |
| 6 | `theorem` | [xiTraceTransfer_of_negligible₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/xitracetransfer-of-negligible.md) | 127 | `result-track:1b7a63d3d3402a006437a2c980f20b80292b4639156b5ad78f3707ab8171d4a8` |
| 7 | `theorem` | [xiTraceTransfer_of_negligible](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/xitracetransfer-of-negligible-source-edition-2.md) | 162 | `result-track:41d4a39d31df0a040fcbe4d7fdcc30c543cb7037649ffff2a6d593a93ffb90f3` |
| 8 | `lemma` | [fam_L](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/fam-l.md) | 206 | `result-track:be1cc56dbce2dc2acf15be85c515517b43e754e0028b0a881dc9e7282c9e9a96` |
| 9 | `lemma` | [fam_d](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/fam-d.md) | 208 | `result-track:048829cdd66f626a8add4588486b8f8a0a4895e481c77e8a418bc87b120985d6` |
| 10 | `lemma` | [fam_hgrid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/fam-hgrid.md) | 210 | `result-track:1baedad6d88325ded185868516b33c942c11f164495e38855efb4def26e987d6` |
| 11 | `lemma` | [fam_tau](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/fam-tau.md) | 213 | `result-track:37506573da26639900fa1ed4a21a040d1f50a7fad82aa33e45bbbca1aa68de6f` |
| 12 | `lemma` | [fam_X](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/fam-x.md) | 216 | `result-track:dad71e96269d81194ec84c51eae87a05e6ca7c046e84985eb0fe6d8778edc694` |
| 13 | `lemma` | [tau_sub_tau](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/tau-sub-tau.md) | 221 | `result-track:add7bc6c56741ea3a3c7c26cc31abe0c260d7ce81588a5370e0910410af94977` |
| 14 | `lemma` | [d_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/d-le.md) | 225 | `result-track:01e29808560a42977590ee907ddd7fc5157419af5542230a57ba332ca56138f4` |
| 15 | `theorem` | [entryError_bounds](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/entryerror-bounds.md) | 231 | `result-track:bf96774d6691244ee8bda24bd8adc97531148e4ed60d722b4a71459c9f71949f` |
| 16 | `lemma` | [rtrace_hat'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/rtrace-hat.md) | 288 | `result-track:27cc90ce9c6425a796d7a12f747d99651957212784a403eef81906979e5ed6b8` |
| 17 | `lemma` | [frobSq_hat'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/frobsq-hat.md) | 292 | `result-track:4e133e027e12d11be3a696ed4b7fd44c231645ab092732531010692a1d43f30d` |
| 18 | `theorem` | [hatNegligible_of_entryBound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/hatnegligible-of-entrybound.md) | 299 | `result-track:459938df3de5d8134a877982862e3e0158a8e02ba80c1c232967f2fb794397c2` |
| 19 | `theorem` | [hatNegligible_entryError](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/hatnegligible-entryerror.md) | 428 | `result-track:38ad18e6d2695e1de292ef793aa2a8a1f3dfca65117cdfbd01a9380a1a1a21c8` |
| 20 | `lemma` | [Lstar_eq_LT_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/lstar-eq-lt-add.md) | 443 | `result-track:eb18c3ec3f12b7cc520d4dfa91d657f2d5e561aa5eecf2987c1b2d201c07f185` |
| 21 | `lemma` | [tau_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/tau-pos.md) | 451 | `result-track:f1af391d244a0c4c5e19b725db9e6469ef8f1efb86d3955c46ddbf4ece5fd014` |
| 22 | `lemma` | [tau_ge_T](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/tau-ge-t.md) | 454 | `result-track:371dff0253d2b82628420e7f0bbfcf4ba2881e452061c1888ff2060a490960ab` |
| 23 | `lemma` | [d_mul_hgrid_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/d-mul-hgrid-le.md) | 458 | `result-track:37aeb83f8f7f402fa0efd420fbbcf4cf5e0d9177b8c6c3c376e9b3fca981e739` |
| 24 | `lemma` | [tau_lt_two_T](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/tau-lt-two-t.md) | 465 | `result-track:3daf86070ade8daa6af3f0245a63ee579337ba57cfc7a0882da59c1fd5388798` |
| 25 | `lemma` | [deltaKL_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/deltakl-mem.md) | 473 | `result-track:1a3bc4e5a2fe0423842b41e3d97a244355108eec08ee70f000cdd3010209ee16` |
| 26 | `lemma` | [tauStar_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/taustar-pos.md) | 492 | `result-track:67b353d94bf35d29d4ec11a17cdb2f8ed7720ec034c0c33c71302afac401e34f` |
| 27 | `lemma` | [deltaKL_diag_monotone](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/deltakl-diag-monotone.md) | 499 | `result-track:6def12a12aac3269d5534f5f6ece663ac48e4e903a1947c006dbabda4731a0e1` |
| 28 | `lemma` | [tendsto_lpow_mul_X_div](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/tendsto-lpow-mul-x-div.md) | 511 | `result-track:0f8c44806050e8a9c2aa2d9750386e33afca95b02e4461876aba9121d938620f` |
| 29 | `structure` | [ReexpansionAt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/reexpansionat.md) | 536 | `declaration-track:0a67de5a2044bdb6821caa7c3249f6b1f55ccda94c6a02485942cb301c8d1271` |
| 30 | `theorem` | [Reexpansion.toAt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/reexpansion-toat.md) | 547 | `result-track:f18f48d6efc15cd18799bf859e9ebf4fd1a866d263df0c8776a034242ed10df3` |
| 31 | `structure` | [ReexpansionGeom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/reexpansiongeom.md) | 557 | `declaration-track:80d173cdf006f8896b9e6abf17f3f73a25529ead0333059a5d81ea6bdcee8e45` |
| 32 | `lemma` | [Gp1_sub_GpC_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/gp1-sub-gpc-apply.md) | 572 | `result-track:5d409acee20e3a873b6e6b12ab58c776aeeca914b90f5b712e668dd5a3187387` |
| 33 | `theorem` | [hatNegligible_of_geom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/hatnegligible-of-geom.md) | 588 | `result-track:af5a08ccc674b45d5554233af6a086ce582394f33a1e9434b568a5d9f9b1ba8d` |
| 34 | `theorem` | [hatNegligible_entryDependence](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/hatnegligible-entrydependence.md) | 787 | `result-track:90b84bfeb4a946721eb7d276e09b4143a3076f4b714b11336e1228ee24f4d3fe` |
| 35 | `lemma` | [sum_fin_fin_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/sum-fin-fin-eq.md) | 812 | `result-track:12ce5a4206e4f756148098ae2b91954fedcb71c8c4a71f25e79343d1eeebfbce` |
| 36 | `theorem` | [reexpansionGeom_of](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/reexpansiongeom-of.md) | 822 | `result-track:0d23df093b94e5c64f9d549019f2256cd94b1a5de3e64701d3e37d13defc21ae` |
| 37 | `theorem` | [xiTraceTransfer_of](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/xitracetransfer-of.md) | 1006 | `result-track:aed7afde3164768758f688e35efcadd7a228cb475bb3ba24d03c5193921b874a` |
| 38 | `theorem` | [xiTraceTransfer_of_flat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Transfer.lean/declarations/xitracetransfer-of-flat.md) | 1024 | `result-track:22a616d90c19ad9f9f9ce2678a4a55f21d765c2e02431c0d5f320c0ad52e0ca3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0b89a7520034eb74795b4aecf0049a6dd9db115ed3ecfa7f42484aad3bbbc8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
