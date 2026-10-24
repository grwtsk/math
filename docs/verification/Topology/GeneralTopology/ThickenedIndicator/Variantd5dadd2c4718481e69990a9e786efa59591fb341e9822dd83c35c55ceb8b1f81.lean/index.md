# Verification target: GRWTSK.Topology.GeneralTopology.ThickenedIndicator.Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53f462b5b3df883526f3ba4dda6e1167eb2edefb",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53f462b5b3df883526f3ba4dda6e1167eb2edefb`.

Source path: `GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENNReal.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Thickening` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thickenedIndicatorAux](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/thickenedindicatoraux--89bfae18d387b7a6d39a74bf.md) | 56 | `declaration-track:89bfae18d387b7a6d39a74bf6d889d3d829bb29dd957de22de1454b31844c6da` |
| 2 | `theorem` | [continuous_thickenedIndicatorAux](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/continuous-thickenedindicatoraux--a7fa00f9daf6c00898a452f0.md) | 59 | `result-track:a7fa00f9daf6c00898a452f08f801dada7b1993e0f18688280d232843ce5f133` |
| 3 | `theorem` | [thickenedIndicatorAux_le_one](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/thickenedindicatoraux-le-one--27b13c8077455ef2f53468ea.md) | 69 | `result-track:27b13c8077455ef2f53468ea253115cc41d0d40391c34078f4d658a80adc6a65` |
| 4 | `theorem` | [thickenedIndicatorAux_lt_top](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/thickenedindicatoraux-lt-top--459998aba3eaa7c6912295ae.md) | 73 | `result-track:459998aba3eaa7c6912295ae8315a39eef391f888e8b95061a9d5d1175726acd` |
| 5 | `theorem` | [thickenedIndicatorAux_closure_eq](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/thickenedindicatoraux-closure-eq--09ea5b978b19c5ae6bf659ee.md) | 77 | `result-track:09ea5b978b19c5ae6bf659ee5a71d6d1130f880b997728c36427b39c6eb3008c` |
| 6 | `theorem` | [thickenedIndicatorAux_one](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/thickenedindicatoraux-one--9baf55d13223e4cd3cd76cb5.md) | 81 | `result-track:9baf55d13223e4cd3cd76cb55da948207bf442da09df1adb459e13ac3c1ed883` |
| 7 | `theorem` | [thickenedIndicatorAux_one_of_mem_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/thickenedindicatoraux-one-of-mem-closure--d4129582156725e951a9b947.md) | 85 | `result-track:d4129582156725e951a9b9470b225a684562f4665f2446b94a988c333a4ec6db` |
| 8 | `theorem` | [thickenedIndicatorAux_zero](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/thickenedindicatoraux-zero--dc1ec4c31fde4bf1f47f2d32.md) | 89 | `result-track:dc1ec4c31fde4bf1f47f2d32344907a6d4a20d01edd77d5406d695423bc34f09` |
| 9 | `theorem` | [thickenedIndicatorAux_mono](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/thickenedindicatoraux-mono--c2e218525aaaba66ac353054.md) | 99 | `result-track:c2e218525aaaba66ac353054185855970b9f57bacbe0c388f14939b89cae1a39` |
| 10 | `theorem` | [indicator_le_thickenedIndicatorAux](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/indicator-le-thickenedindicatoraux--290b265ced699fb1f622e0c1.md) | 103 | `result-track:290b265ced699fb1f622e0c17999e9e82692f22cc07685729e8a27ffe6e2d270` |
| 11 | `theorem` | [thickenedIndicatorAux_subset](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/thickenedindicatoraux-subset--9f1ef4946fec40e55fd95310.md) | 110 | `result-track:9f1ef4946fec40e55fd953100551e91446242bfc1db35c5934702d485553f607` |
| 12 | `theorem` | [thickenedIndicatorAux_tendsto_indicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/thickenedindicatoraux-tendsto-indicator-closure--33ff16840d89804464afba37.md) | 121 | `result-track:33ff16840d89804464afba37948e1fe43f1488659848c2ec1f7b6c1dcfcbeb43` |
| 13 | `def` | [thickenedIndicator](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/thickenedindicator--9b788ad3e999de61fbd30818.md) | 153 | `declaration-track:9b788ad3e999de61fbd3081887bedcb91ba793790f83333abe821a3bc6591d2b` |
| 14 | `theorem` | [thickenedIndicator.coeFn_eq_comp](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/thickenedindicator-coefn-eq-comp--4bdf2714c55e163583ec7103.md) | 171 | `result-track:4bdf2714c55e163583ec710362a613980c7e510d9c106a665397fed6e706ae71` |
| 15 | `theorem` | [thickenedIndicator_le_one](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/thickenedindicator-le-one--c3a008bf87daf8147b29d8f0.md) | 175 | `result-track:c3a008bf87daf8147b29d8f0a773e10a9bdebdbacc3073ff8133678a5ff236f5` |
| 16 | `theorem` | [thickenedIndicator_one_of_mem_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/thickenedindicator-one-of-mem-closure--53dd41f3ab0b6119e9971ada.md) | 181 | `result-track:53dd41f3ab0b6119e9971ada42d40396fe3feead57ce897b5ecb57e9b8da69bf` |
| 17 | `lemma` | [one_le_thickenedIndicator_apply'](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/one-le-thickenedindicator-apply--8da2a203338cd4016b8a595e.md) | 185 | `result-track:8da2a203338cd4016b8a595e0664ab48d45d8751f269f3b0d4a4964821f2dbf5` |
| 18 | `lemma` | [one_le_thickenedIndicator_apply](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/one-le-thickenedindicator-apply--e568d6870a743509bdc2154b.md) | 190 | `result-track:e568d6870a743509bdc2154b36ef8cc9310a8149a70988b5169614bfe947510a` |
| 19 | `theorem` | [thickenedIndicator_one](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/thickenedindicator-one--05d12132cb7bf2d182167442.md) | 195 | `result-track:05d12132cb7bf2d182167442bce9d76adddd76133faae3bf8830e5ce7fafcf12` |
| 20 | `theorem` | [thickenedIndicator_zero](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/thickenedindicator-zero--2e23ecc22861070661e7ee63.md) | 199 | `result-track:2e23ecc22861070661e7ee6339f8c87e2fcdd132b68081ad4865170a5c438ac4` |
| 21 | `theorem` | [indicator_le_thickenedIndicator](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/indicator-le-thickenedindicator--07227c1f108581d982a841dc.md) | 203 | `result-track:07227c1f108581d982a841dc6bace485177e330bf747e00415c623b78cd1123d` |
| 22 | `theorem` | [thickenedIndicator_mono](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/thickenedindicator-mono--15a7197e6d728c0b5d1c5c56.md) | 210 | `result-track:15a7197e6d728c0b5d1c5c567bb3fc1a2b64341336cc1ddf75f6812785f745fd` |
| 23 | `theorem` | [thickenedIndicator_subset](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/thickenedindicator-subset--e09207afbb2e9b118c560399.md) | 216 | `result-track:e09207afbb2e9b118c560399b8a845165bf6e94aee9f58ac70d54a1fd545052b` |
| 24 | `theorem` | [thickenedIndicator_tendsto_indicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/thickenedindicator-tendsto-indicator-closure--4a23dbaf56c8fa2de0b5f127.md) | 227 | `result-track:4a23dbaf56c8fa2de0b5f1275fa4224a88582ff36d0f2a9f8b53f4b891c08155` |
| 25 | `lemma` | [mulIndicator_thickening_eventually_eq_mulIndicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/mulindicator-thickening-eventually-eq-mulindicator-closure--e9290ce4e14233d2b52d4387.md) | 250 | `result-track:e9290ce4e14233d2b52d438767aa5ccf3518e73c39ab2cb8948ed4002c6ec0a2` |
| 26 | `lemma` | [mulIndicator_cthickening_eventually_eq_mulIndicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/mulindicator-cthickening-eventually-eq-mulindicator-closure--eb3cd176e33b48148432a13e.md) | 265 | `result-track:eb3cd176e33b48148432a13e6e6682f496ff50369054c1c28657cfb301973f4c` |
| 27 | `lemma` | [tendsto_mulIndicator_thickening_mulIndicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/tendsto-mulindicator-thickening-mulindicator-closure--42b152914a536840f1395ba6.md) | 281 | `result-track:42b152914a536840f1395ba6a3fdc404912dc07c274c8be97b5936964484a4dc` |
| 28 | `lemma` | [tendsto_mulIndicator_cthickening_mulIndicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantd5dadd2c4718481e69990a9e786efa59591fb341e9822dd83c35c55ceb8b1f81.lean/declarations/tendsto-mulindicator-cthickening-mulindicator-closure--75f8e53694f85cbbee92001f.md) | 293 | `result-track:75f8e53694f85cbbee92001f9904c30e7c020f1701296f10177372e9c522f87d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
