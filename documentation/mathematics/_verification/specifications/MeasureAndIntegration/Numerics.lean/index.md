# Verification target: Numerics

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a85bc847c2116f570fd8d80a980815efc3f61630",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Numerics/Variant816634cd449b7b82d2bafe8d29eac7109f8bd9299ac9cbdfb22e36f543315042.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Numerics.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Numerics.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a85bc847c2116f570fd8d80a980815efc3f61630`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Numerics/Variant816634cd449b7b82d2bafe8d29eac7109f8bd9299ac9cbdfb22e36f543315042.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Numerics/Variant816634cd449b7b82d2bafe8d29eac7109f8bd9299ac9cbdfb22e36f543315042.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.Integrate` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimize` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.RootFinding.Main` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalRefined` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [constOne](../../../../MeasureAndIntegration/Numerics.lean/declarations/constone.md) | 34 | `declaration-track:ab3cf508624567eb1690ef8968591b7c6d5e2d2fb97ae29241c132c566f46417` |
| 2 | `def` | [constOne_supported](../../../../MeasureAndIntegration/Numerics.lean/declarations/constone-supported.md) | 37 | `declaration-track:9ac95eb86bc50799ca6e15efe160e7385eb00176350622d9a55911700328de0a` |
| 3 | `def` | [identity](../../../../MeasureAndIntegration/Numerics.lean/declarations/identity.md) | 40 | `declaration-track:d64feaac8d5fcd810a8dbf9b2eae98f37b2da7d0f78d4965672ff9b4547ca783` |
| 4 | `def` | [identity_supported](../../../../MeasureAndIntegration/Numerics.lean/declarations/identity-supported.md) | 43 | `declaration-track:52c22ed62e2645c6ce3397364977b0f428371ce02c76f381417b6c66bbe84cde` |
| 5 | `def` | [xSquared](../../../../MeasureAndIntegration/Numerics.lean/declarations/xsquared.md) | 46 | `declaration-track:be482f5295c1ce5804cd72d853bcdd80498c6cef999bcc8d12a177e7a74f8d85` |
| 6 | `def` | [xSquared_supported](../../../../MeasureAndIntegration/Numerics.lean/declarations/xsquared-supported.md) | 49 | `declaration-track:03dc802dc282d28ae82682fd9581ac4e9991a7449fac9d4ce9ba6796688e36af` |
| 7 | `def` | [unitInterval](../../../../MeasureAndIntegration/Numerics.lean/declarations/unitinterval.md) | 53 | `declaration-track:85efe01b58c5b7924acafe8c6e7f33b26a9856f731bb499b107dbc714d9f64bf` |
| 8 | `def` | [constOne_integral_bound](../../../../MeasureAndIntegration/Numerics.lean/declarations/constone-integral-bound.md) | 65 | `declaration-track:5e7bf75f69d8a65623f28d7ca2a1387da067351e730055fc481b35efb9e01728` |
| 9 | `theorem` | [constOne_integral_verified](../../../../MeasureAndIntegration/Numerics.lean/declarations/constone-integral-verified.md) | 71 | `result-track:dcbb4272ee977150f57057cd7f4c6b6043d744d21701c326c212f8adeab725bf` |
| 10 | `def` | [xSquared_integral_bound](../../../../MeasureAndIntegration/Numerics.lean/declarations/xsquared-integral-bound.md) | 86 | `declaration-track:1dd3a6b26ddf91e1e88b55033f7c28241f564b3aa09add7ca65a0a28a9aacb7a` |
| 11 | `theorem` | [xSquared_integral_verified](../../../../MeasureAndIntegration/Numerics.lean/declarations/xsquared-integral-verified.md) | 90 | `result-track:b0f983b0d19a42e36dc572ba0c9178fc88db4325e3bae4e04531314f3556c045` |
| 12 | `def` | [exprSin](../../../../MeasureAndIntegration/Numerics.lean/declarations/exprsin.md) | 104 | `declaration-track:f5f6dc348e7b751df4d004c6c114e8fd74fd308ded2d599fe291c78729f3998d` |
| 13 | `def` | [exprSin_supported](../../../../MeasureAndIntegration/Numerics.lean/declarations/exprsin-supported.md) | 107 | `declaration-track:714d79102a50b35984ac32c046a138f4bc0e75e19103dcdb33c6678452352831` |
| 14 | `def` | [sin_integral_bound](../../../../MeasureAndIntegration/Numerics.lean/declarations/sin-integral-bound.md) | 111 | `declaration-track:b5b55ce32503fef79c5d1bfd4de11be5ae34fbb1766b6304381a20fe21d25d96` |
| 15 | `theorem` | [sin_integral_verified](../../../../MeasureAndIntegration/Numerics.lean/declarations/sin-integral-verified.md) | 115 | `result-track:dcc56be041b1af85002261730ca4701d2c76fed493bc21639636ec58d70e5b03` |
| 16 | `def` | [quadratic](../../../../MeasureAndIntegration/Numerics.lean/declarations/quadratic.md) | 129 | `declaration-track:4692f91090b8309be84be9830bae3e3c742727f127fc8f6f8d568b0db2ccc4d6` |
| 17 | `def` | [xSquaredMinus2](../../../../MeasureAndIntegration/Numerics.lean/declarations/xsquaredminus2.md) | 141 | `declaration-track:e682da724da38c33cc536a85dccd82b120ed736e16a461e5e42e799fc1e6525e` |
| 18 | `def` | [searchInterval](../../../../MeasureAndIntegration/Numerics.lean/declarations/searchinterval.md) | 145 | `declaration-track:b68c44a8f9292a17d638955042634e2a53fe033236e6e018c52fa47b18ba1798` |
| 19 | `def` | [xSquaredMinus2_supported](../../../../MeasureAndIntegration/Numerics.lean/declarations/xsquaredminus2-supported.md) | 148 | `declaration-track:57ec0da03a9e3d58d8919e8392c18c29f383998e4b8deaa91b9e1f2e8340883e` |
| 20 | `def` | [sqrt2_bisect_result](../../../../MeasureAndIntegration/Numerics.lean/declarations/sqrt2-bisect-result.md) | 160 | `declaration-track:b64cac42bcafd2b4b5c5dded48a8eae15efb0a9892e999b8b2400dc47911f4f5` |
| 21 | `theorem` | [xSquaredMinus2_continuous](../../../../MeasureAndIntegration/Numerics.lean/declarations/xsquaredminus2-continuous.md) | 164 | `result-track:f3e6ea6b6dc6f18e2040f82c9bb2b7e4f9f98f0ee9f6ccbfbf16ce3e430673c1` |
| 22 | `theorem` | [sqrt2_bisect_hasRoot_correct](../../../../MeasureAndIntegration/Numerics.lean/declarations/sqrt2-bisect-hasroot-correct.md) | 175 | `result-track:951c2774e0fbafccfc32a7db754432d616a89d49d042418cf6bdc55c61cee7e1` |
| 23 | `def` | [quadratic_supported](../../../../MeasureAndIntegration/Numerics.lean/declarations/quadratic-supported.md) | 189 | `declaration-track:f90130ed6c9f31ad45afa8a91cffce97b54684462185bbf0cf03caebc7a7435c` |
| 24 | `def` | [I02](../../../../MeasureAndIntegration/Numerics.lean/declarations/i02.md) | 197 | `declaration-track:b00afabefc494e29f7b5ab5110e7ede56dc376d2dd0bf18bdafdbcd0640e4713` |
| 25 | `def` | [quad_min_result](../../../../MeasureAndIntegration/Numerics.lean/declarations/quad-min-result.md) | 200 | `declaration-track:13d9f85512c96c1ef566c83a3d25d4fafbe18688de14c33fff8f4ab9b7318d07` |
| 26 | `def` | [quadratic_var0](../../../../MeasureAndIntegration/Numerics.lean/declarations/quadratic-var0.md) | 204 | `declaration-track:650454cd9ccb53af221e4b54de584cc5127d05e390c8a58f3adcb7a70a5f8f7c` |
| 27 | `theorem` | [quad_min_correct](../../../../MeasureAndIntegration/Numerics.lean/declarations/quad-min-correct.md) | 217 | `result-track:56ced4e07ef3e9f4b7e5ae123d22531e26004db06b72e29cc56fcd981c021a7b` |
| 28 | `def` | [invX](../../../../MeasureAndIntegration/Numerics.lean/declarations/invx.md) | 228 | `declaration-track:97e8372e8abd83cd7fd0f92be2d4e354a6a0fd867b3a47273daf86d760a5a312` |
| 29 | `def` | [invX_supported](../../../../MeasureAndIntegration/Numerics.lean/declarations/invx-supported.md) | 231 | `declaration-track:41565990362ce3aa4b54bcd94eb69791160824bfe91c47b6598b073304794247` |
| 30 | `def` | [I12](../../../../MeasureAndIntegration/Numerics.lean/declarations/i12.md) | 235 | `declaration-track:4cb7e0f514353935d6067cf5aefa1cb6caf59112e431940f56cfacfac2c00020` |
| 31 | `theorem` | [I12_excludes_zero](../../../../MeasureAndIntegration/Numerics.lean/declarations/i12-excludes-zero.md) | 238 | `result-track:cbbff4fea8bc436b6dfbd79e7a95d7f3a6ca9b27f4bb092d53a6f0f28cf1d30e` |
| 32 | `theorem` | [invX_eval_some](../../../../MeasureAndIntegration/Numerics.lean/declarations/invx-eval-some.md) | 244 | `result-track:8d5bbfd70356c470805750c4d63b542b09a4ea973ebd2f4dc6aad5148a5c3d83` |
| 33 | `theorem` | [invX_eval_succeeds](../../../../MeasureAndIntegration/Numerics.lean/declarations/invx-eval-succeeds.md) | 249 | `result-track:396d42fa0f7985764e270f5655f62a584ee7fb0120e281c0584eb85d5ceef543` |
| 34 | `def` | [invX_bound](../../../../MeasureAndIntegration/Numerics.lean/declarations/invx-bound.md) | 254 | `declaration-track:1e02abd69b8fd945a58d7cb10c3ad619d4b1d1e5fa9e58eafec9cf13a670201b` |
| 35 | `theorem` | [invX_correct](../../../../MeasureAndIntegration/Numerics.lean/declarations/invx-correct.md) | 261 | `result-track:99ddf39fbac458fd0c4e5b619bbc7108ea504c63af016e2c0124cd33353cf8ee` |
| 36 | `def` | [sinSmall_refined](../../../../MeasureAndIntegration/Numerics.lean/declarations/sinsmall-refined.md) | 272 | `declaration-track:23de557c3cbf4299157094a735452edf904e7a9e23d034d162aaee79a987d3da` |
| 37 | `theorem` | [sinSmall_refined_correct](../../../../MeasureAndIntegration/Numerics.lean/declarations/sinsmall-refined-correct.md) | 276 | `result-track:6364f11221c1b1092f228b28155efd5c5fa55433de3c6db2e121ec2e0786570e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=456c765db5310881ce95956ad39c24a47a19e0455c2a0f5f7792d45ed57aa942 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Numerics/Variant816634cd449b7b82d2bafe8d29eac7109f8bd9299ac9cbdfb22e36f543315042.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Numerics/Variant816634cd449b7b82d2bafe8d29eac7109f8bd9299ac9cbdfb22e36f543315042.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
