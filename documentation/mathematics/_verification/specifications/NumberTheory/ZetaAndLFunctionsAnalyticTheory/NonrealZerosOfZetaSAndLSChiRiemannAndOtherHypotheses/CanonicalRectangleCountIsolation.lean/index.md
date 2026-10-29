# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleCountIsolation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f91ce48dd90bb849bddb1a5c01f10a18ba20354",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleCountIsolation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f91ce48dd90bb849bddb1a5c01f10a18ba20354`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleCountIsolation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalRectangleCountIsolation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.AdmissibleRectangles`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/AdmissibleRectangles.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightSymmetricCount`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositiveHeightSymmetricCount.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalPositiveHeightCountIsolation`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPositiveHeightCountIsolation.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bottomPoint](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/bottompoint.md) | 52 | `declaration-track:6cd955faf12cc96de825ee17b8770cbb269aaacd6eeada4915777096a1bf7847` |
| 2 | `def` | [rightPoint](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/rightpoint.md) | 56 | `declaration-track:6e4215eb0dbf68cfb21d37bce28f6d17e46348e1064bcea88193823f9744d212` |
| 3 | `def` | [topPoint](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/toppoint.md) | 60 | `declaration-track:13fefc49517044653d2e6c79f1011b4b16211e7cf471f57abdf699cea54796e4` |
| 4 | `def` | [rectangleLeftPoint](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/rectangleleftpoint.md) | 64 | `declaration-track:6102bfdefaf50de13c2f920aa03f061e5ec2a75b329403c1ea36a8bea5bf57d9` |
| 5 | `theorem` | [bottomPoint_re](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/bottompoint-re.md) | 67 | `result-track:42586db01f5212c56733d7137cfacd4a195e4c681581e17703068eab833b92bf` |
| 6 | `theorem` | [bottomPoint_im](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/bottompoint-im.md) | 71 | `result-track:b2fa6121a946791f827acdbf293bf19ec89482a908f1e93f5c0e553056231277` |
| 7 | `theorem` | [topPoint_re](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/toppoint-re.md) | 75 | `result-track:a73bf06a1238be8939f62579c3547328eb5054ab8827621b95d9fa4472c13f83` |
| 8 | `theorem` | [topPoint_im](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/toppoint-im.md) | 79 | `result-track:c5513ed6f1f6b34c21993c04acf8090dbabd5b2a2698361b922db2eca59b69e1` |
| 9 | `theorem` | [rightPoint_re](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/rightpoint-re.md) | 83 | `result-track:6a136ea3aa801297e2f6185f7cbad3255e2291111238d9fe580df58d1a9402c6` |
| 10 | `theorem` | [rightPoint_im](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/rightpoint-im.md) | 87 | `result-track:564ea8c34a8d1633bed967ab38ed91d778dd4b365da362cb076c29ae144946bc` |
| 11 | `theorem` | [rectangleLeftPoint_re](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/rectangleleftpoint-re.md) | 91 | `result-track:085d3eb9e3b3e29624f450d6d6f5cba1aed5c6943290a41ff78ca5a6208fc411` |
| 12 | `theorem` | [rectangleLeftPoint_im](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/rectangleleftpoint-im.md) | 95 | `result-track:e1441558123b77bf4fa3b5986d99e56cf84adf4434c39d3ce4590dcc636b376b` |
| 13 | `theorem` | [bottomPoint_mem_boundary](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/bottompoint-mem-boundary.md) | 100 | `result-track:c98cd6b3644db2ebf8c114caedbc261c61cd5f2b9576b42e47d3bdc13b599880` |
| 14 | `theorem` | [topPoint_mem_boundary](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/toppoint-mem-boundary.md) | 109 | `result-track:bde01e765407a238203cfe38612024f95649369291680845161f8d71a03b416e` |
| 15 | `theorem` | [rightPoint_mem_boundary](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/rightpoint-mem-boundary.md) | 118 | `result-track:e08a558d2642b6d068c716fa58f594d7da431f5403024071815f7800e456253b` |
| 16 | `theorem` | [rectangleLeftPoint_mem_boundary](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/rectangleleftpoint-mem-boundary.md) | 126 | `result-track:d5a6d5d6986d5131574e57a3469a18452512464924866ab27d64d5706d831b66` |
| 17 | `theorem` | [zeta_ne_zero_bottom](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/zeta-ne-zero-bottom.md) | 134 | `result-track:fc724068ee9486e9c0dc6285bf1982c6f26261f00925f46e0428ac90c67e9e69` |
| 18 | `theorem` | [zeta_ne_zero_top](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/zeta-ne-zero-top.md) | 139 | `result-track:4d18873e9058ac90f49519fb809b81a2d6ea17d7a7959ffc22ceac9908405d86` |
| 19 | `theorem` | [zeta_ne_zero_right](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/zeta-ne-zero-right.md) | 144 | `result-track:081904ffaf90d88b1ca132f58bfe19f86daa5154d2182f068b8db0296226b70e` |
| 20 | `theorem` | [zeta_ne_zero_left](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/zeta-ne-zero-left.md) | 149 | `result-track:85b70717587e4988b332858985d7aabec9573cdf7ef3258e5a0048d8b943f468` |
| 21 | `theorem` | [bottomPoint_ne_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/bottompoint-ne-one.md) | 155 | `result-track:fc7d64691dc79fcbb0564efcaee337e725d07a85baee0afe3a32a7b149983a3e` |
| 22 | `theorem` | [topPoint_ne_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/toppoint-ne-one.md) | 159 | `result-track:8d5bd77adb57a3b8726750819941d23ac8e3390790fef158b030f4e6a2967306` |
| 23 | `theorem` | [rightPoint_ne_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/rightpoint-ne-one.md) | 163 | `result-track:781cf405edee88942743d9fdd99880abc13038016b1b6439a7131b4a06385cd0` |
| 24 | `theorem` | [rectangleLeftPoint_ne_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/rectangleleftpoint-ne-one.md) | 168 | `result-track:817b0f25b0ccc86993ac543c93cc5fe404a60b137849986fa1aaf45d9ca05775` |
| 25 | `def` | [rectangleLogDerivativeIntegral](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/rectanglelogderivativeintegral.md) | 176 | `declaration-track:9f84d10b61344ee070e0593d496eac4211c2b6ab3434d2fd1b8d5f1bd5496081` |
| 26 | `def` | [normalizedRectangleIndex](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/normalizedrectangleindex.md) | 187 | `declaration-track:74be5f4c8e0b5577631f2821dca35e433ad8a575cfc776ceab639d2047c8348d` |
| 27 | `def` | [expectedRectangleIndex](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/expectedrectangleindex.md) | 194 | `declaration-track:b6a15a3977688d3cd8d2e7d6ebd77a42041a4ba56cb1793aa661eb673a5b3afe` |
| 28 | `theorem` | [expectedRectangleIndex_eq_two_positive_add_trivial_sub_pole](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/expectedrectangleindex-eq-two-positive-add-trivial-sub-pole.md) | 198 | `result-track:0535c8f574eb5c86326c374471308b856750d9de511a3bfe70cb3e4202c3fdba` |
| 29 | `def` | [recoverPositiveCount](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/recoverpositivecount.md) | 208 | `declaration-track:7ecc10af6d1b1cd874156394be70652eb2d9095ee5e0b75cb80c45311283b2d3` |
| 30 | `theorem` | [recoverPositiveCount_expected](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/recoverpositivecount-expected.md) | 211 | `result-track:f8a0032082529c8752b64b6ab1366a4271d7207bf113be549c23ccf5262eb76e` |
| 31 | `def` | [positiveCountInterval](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/positivecountinterval.md) | 219 | `declaration-track:ebefc2a5dd5444d30ee2155bf1a31ec9cfd4fb39758818c20069c5298535d781` |
| 32 | `theorem` | [cast_positiveCountInterval_lower](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/cast-positivecountinterval-lower.md) | 227 | `result-track:f26f198764d7743f1ae62d74972e3e90efa566a85431c7c2c2c1ad5ec19cf5c6` |
| 33 | `theorem` | [cast_positiveCountInterval_upper](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/cast-positivecountinterval-upper.md) | 233 | `result-track:3b4f3dc283429c803d9e14d69e03eb96219c04f6735c787c24816aa9fa2d214f` |
| 34 | `structure` | [CanonicalRectangleIndexEnclosure](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/canonicalrectangleindexenclosure.md) | 244 | `declaration-track:5a6deb3527d1d24a739ca9dbde109b7ed85e0f45a5269ce5a660a9156d911be3` |
| 35 | `theorem` | [normalized_re_eq_expected](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/normalized-re-eq-expected.md) | 253 | `result-track:f81def90fab3b624a7f0d32464ffc17ea78d6a844126402620217a989a526cf6` |
| 36 | `theorem` | [normalized_im_eq_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/normalized-im-eq-zero.md) | 260 | `result-track:41a96806d6409ce5df3e371fea850454a7313b1cb0bb8592a98484299b29d1e6` |
| 37 | `def` | [toCanonicalCountEnclosure](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/tocanonicalcountenclosure.md) | 267 | `declaration-track:2e12bd9ec8343fb903aa789bd1893321acbc7bce70c5ffbe959740d479996020` |
| 38 | `def` | [accepts](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/accepts.md) | 284 | `declaration-track:69b0aa7d74a4e92480a243f7da083e70131c0370789262ffb5d75918148650a4` |
| 39 | `theorem` | [accepts_iff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/accepts-iff.md) | 288 | `result-track:83dc9888e24345f4229437a8810e241ade1e79df27d6ed5c3cbe15946132c604` |
| 40 | `theorem` | [exact_positive_count_of_accepts](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/exact-positive-count-of-accepts.md) | 298 | `result-track:9f8767eec590d9e11a5950f0b2eb9e267fe7445d3de35825726b6ff3a439c195` |
| 41 | `theorem` | [accepted_count_unique](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/accepted-count-unique.md) | 305 | `result-track:72a58d125a1224339d606c51e7fe88b977943780d2a694cda42a56ab3f1e6904` |
| 42 | `theorem` | [pole_trivial_two_sign_correction_fixture](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/pole-trivial-two-sign-correction-fixture.md) | 316 | `result-track:2a7088fd71c0ab566ba00792666bc06dda9bb8a4bd4eeb94061e432258e1f9a8` |
| 43 | `theorem` | [omitted_pole_shifts_by_half_fixture](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/declarations/omitted-pole-shifts-by-half-fixture.md) | 321 | `result-track:85adaa463b7889ff1e2fe002923561036d20522e6b60f51301ed8d043d8a573a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e8d082220a06c7da5fb47725e763dccbe470e81b878ac03b42bfd36b0c15e73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleCountIsolation.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CanonicalRectangleCountIsolation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
