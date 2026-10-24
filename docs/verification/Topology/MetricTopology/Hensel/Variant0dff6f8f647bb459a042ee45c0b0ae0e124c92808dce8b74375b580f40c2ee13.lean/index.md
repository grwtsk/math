# Verification target: GRWTSK.Topology.MetricTopology.Hensel.Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93100e44f9fba70e86180de79bca45d6e90b826b",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93100e44f9fba70e86180de79bca45d6e90b826b`.

Source path: `GRWTSK/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Identities` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicIntegers` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.CauSeqFilter` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [padic_polynomial_dist](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/padic-polynomial-dist--24fd793f30aa4284ff14bbfa.md) | 42 | `result-track:24fd793f30aa4284ff14bbfa297c8b8f70f1392c42d73b8f8f0b0b5f7b3671c2` |
| 2 | `theorem` | [comp_tendsto_lim](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/comp-tendsto-lim--b22e87857142b75eb1365e43.md) | 54 | `result-track:b22e87857142b75eb1365e43462420263d61dcc111b34c6843fb56477db3ddda` |
| 3 | `theorem` | [ncs_tendsto_const](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/ncs-tendsto-const--2211f851c137a952df3fa67d.md) | 64 | `result-track:2211f851c137a952df3fa67dd2ef949c726e31f92c3a37d054f97952b54e3dd5` |
| 4 | `theorem` | [ncs_tendsto_lim](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/ncs-tendsto-lim--7dd043cc73581448951718f4.md) | 68 | `result-track:7dd043cc73581448951718f427589e1434b4662ede4bd31af7c11bb27988f8af` |
| 5 | `theorem` | [norm_deriv_eq](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/norm-deriv-eq--72ab48d4202c645155187009.md) | 72 | `result-track:72ab48d4202c6451551870090ed69c3ab0132241f814481a833e51c90eb049bd` |
| 6 | `theorem` | [tendsto_zero_of_norm_tendsto_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/tendsto-zero-of-norm-tendsto-zero--92d4924ea4f5c7957843dd86.md) | 83 | `result-track:92d4924ea4f5c7957843dd86daadabfd19375a62fc18e625e652bc517c4fc293` |
| 7 | `theorem` | [limit_zero_of_norm_tendsto_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/limit-zero-of-norm-tendsto-zero--d18b66b67a2d49f29c235611.md) | 86 | `result-track:d18b66b67a2d49f29c235611369a6da4d4f2cb0ea8d20d6f9d5eb652be9e23fb` |
| 8 | `def` | [T_gen](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/t-gen--9255cc1806a99ccd11e0a58f.md) | 102 | `declaration-track:9255cc1806a99ccd11e0a58f27049ac547932c55d36f4f325e63511c4b8482b8` |
| 9 | `theorem` | [deriv_sq_norm_pos](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/deriv-sq-norm-pos--e236ff692d12c13e1a1062b3.md) | 108 | `result-track:e236ff692d12c13e1a1062b311bcc307c7fd2b725f46dc218c9155c461c72b34` |
| 10 | `theorem` | [deriv_sq_norm_ne_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/deriv-sq-norm-ne-zero--7096906b910d1db128a3025f.md) | 111 | `result-track:7096906b910d1db128a3025f6bf3c48c846fab3a25837d03d9efa026fcc3ad4a` |
| 11 | `theorem` | [deriv_norm_ne_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/deriv-norm-ne-zero--87f36c303c30e08d9217ab62.md) | 114 | `result-track:87f36c303c30e08d9217ab62810ee28b2d6a37562406140c65e44b5ec4f595f6` |
| 12 | `theorem` | [deriv_norm_pos](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/deriv-norm-pos--34a4b4efdfd12aaab01c2ffa.md) | 117 | `result-track:34a4b4efdfd12aaab01c2ffafb9ce800f7bfe49829ad1ff189ccdb68a7841444` |
| 13 | `theorem` | [deriv_ne_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/deriv-ne-zero--b0d7157b6583ce47a782f437.md) | 120 | `result-track:b0d7157b6583ce47a782f437566d8944fe2b8c7b16cf57d03fc647b5c5299f8c` |
| 14 | `theorem` | [T_def](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/t-def--31e101042a03a55ac949bda9.md) | 123 | `result-track:31e101042a03a55ac949bda9cc80174d676e84b4a235045307882ccd489a3610` |
| 15 | `theorem` | [T_lt_one](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/t-lt-one--372894773bf7c8a5c5e3a336.md) | 126 | `result-track:372894773bf7c8a5c5e3a336445dbe873441991af4e8808cfcef6a6bab66dece` |
| 16 | `theorem` | [T_nonneg](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/t-nonneg--c6d365b51618f0de3bd279ad.md) | 130 | `result-track:c6d365b51618f0de3bd279addddabce8843ab1094155d2efd345f77f2b06ff4e` |
| 17 | `theorem` | [T_pow_nonneg](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/t-pow-nonneg--88c039e54a5b654ca2bacfa8.md) | 132 | `result-track:88c039e54a5b654ca2bacfa8088169b59c3e411bf223fae3bc97970c1546c91c` |
| 18 | `theorem` | [T_pow](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/t-pow--a99dddcf13ea0b8fae222cbb.md) | 134 | `result-track:a99dddcf13ea0b8fae222cbb669f3b9a6e675d093617019584d746ae3987bdad` |
| 19 | `theorem` | [T_pow'](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/t-pow--e6e760981f40f6733aa82dae.md) | 136 | `result-track:e6e760981f40f6733aa82dae3b06e99cc5ace146f632e8c5aa4a21db91ca2249` |
| 20 | `def` | [ih_gen](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/ih-gen--dba323e341b92671d698b9e3.md) | 140 | `declaration-track:dba323e341b92671d698b9e383d90feb1fd9037d73bc87d12a6af3126ccaae00` |
| 21 | `theorem` | [ih_0](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/ih-0--5501e8985b75f8d1279045d2.md) | 145 | `result-track:5501e8985b75f8d1279045d282ef7a62d284624e7a2efa379f598ec60ba8cd8c` |
| 22 | `theorem` | [calc_norm_le_one](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/calc-norm-le-one--8a28096d3222fcd73327446e.md) | 148 | `result-track:8a28096d3222fcd73327446ed0ed309985ea007277e13cf36a74a4ce7902ba30` |
| 23 | `theorem` | [calc_deriv_dist](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/calc-deriv-dist--3957a5ce1c409fb87c2189ca.md) | 162 | `result-track:3957a5ce1c409fb87c2189ca8ac64598b8231591addc8b570c3bb14a0e78e8d0` |
| 24 | `def` | [calc_eval_z'](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/calc-eval-z--97f565cbf16283c08875cda7.md) | 177 | `declaration-track:97f565cbf16283c08875cda7785e3abbba40b37daf512aba87ff972f3f291f22` |
| 25 | `def` | [calc_eval_z'_norm](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/calc-eval-z-norm--f807ff41ae78f301a44e4d25.md) | 200 | `declaration-track:f807ff41ae78f301a44e4d25ba8d44624dc4ba707248ae70105f5d46bfa225d1` |
| 26 | `def` | [ih_n](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/ih-n--f4e716ffc085b1cff926a61d.md) | 221 | `declaration-track:f4e716ffc085b1cff926a61d8a96aa8c2cb685ae3196ebcab13535a0494920ea` |
| 27 | `def` | [newton_seq_aux](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/newton-seq-aux--ebf4451ec415e6fc25064cb8.md) | 240 | `declaration-track:ebf4451ec415e6fc25064cb8a2352d816e6433aa3619cd023757ac10846a6911` |
| 28 | `def` | [newton_seq_gen](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/newton-seq-gen--55c3cdf22b80cdd77c398c79.md) | 245 | `declaration-track:55c3cdf22b80cdd77c398c7921566d833e876e75e8aeb8242ca203fce4bccf37` |
| 29 | `theorem` | [newton_seq_deriv_norm](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/newton-seq-deriv-norm--788f14102df356132e23f299.md) | 250 | `result-track:788f14102df356132e23f299fa7c538c5091be8fb295fba7ae4710ecb73cbae2` |
| 30 | `theorem` | [newton_seq_norm_le](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/newton-seq-norm-le--b125a2c7079aa8752b687e80.md) | 254 | `result-track:b125a2c7079aa8752b687e80bc1d8070264064ba553f40e14cf04aa661b0a9b8` |
| 31 | `theorem` | [newton_seq_norm_eq](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/newton-seq-norm-eq--9947609b4ca3029cf946da71.md) | 258 | `result-track:9947609b4ca3029cf946da7152ed5b9e35674ebaaa38eaee49aa2cae5f846c4b` |
| 32 | `theorem` | [newton_seq_succ_dist](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/newton-seq-succ-dist--b9359d4fe078c37b2f94ad71.md) | 264 | `result-track:b9359d4fe078c37b2f94ad71abe89abf900e2c7800ae1f581f4a9bb1a60a4d49` |
| 33 | `theorem` | [T_pos](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/t-pos--cbff9645645585217491493a.md) | 275 | `result-track:cbff9645645585217491493ab8285c405fa0ab76dda4be8e57c7bbeeee452645` |
| 34 | `theorem` | [newton_seq_succ_dist_weak](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/newton-seq-succ-dist-weak--88e517d8c83c65bcb472fea4.md) | 279 | `result-track:88e517d8c83c65bcb472fea4836e2b6347b15cb32a4d215accfc183ca9287bed` |
| 35 | `theorem` | [newton_seq_dist_aux](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/newton-seq-dist-aux--3867631e31501e5bb27ad386.md) | 299 | `result-track:3867631e31501e5bb27ad386019c9fd61d602ee387a69420a5988b0dfc44287f` |
| 36 | `theorem` | [newton_seq_dist](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/newton-seq-dist--679251bd3cd16ec093a1f59e.md) | 322 | `result-track:679251bd3cd16ec093a1f59eb01c415231123468e07ad7354402abcbd78bed1b` |
| 37 | `theorem` | [newton_seq_dist_to_a](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/newton-seq-dist-to-a--54b8e129d70b36ae3fcb5db1.md) | 328 | `result-track:54b8e129d70b36ae3fcb5db144e813c9dd6016baf44b62a00505be3215159b6d` |
| 38 | `theorem` | [bound'](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/bound--a166d43924c5a979280dd5c5.md) | 346 | `result-track:a166d43924c5a979280dd5c526177e8310f3f749632c0aecdb68948bd6465d5e` |
| 39 | `theorem` | [bound](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/bound--97741b4e4b25d789fbad042a.md) | 353 | `result-track:97741b4e4b25d789fbad042a4635e725e7ffa5364a00d591cbf49f6a7f0b93cc` |
| 40 | `theorem` | [bound'_sq](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/bound-sq--718e52ab36c99aaebb76bbff.md) | 362 | `result-track:718e52ab36c99aaebb76bbff3dfa5686939b040b42c05c0b8b05eabda9cfb434` |
| 41 | `theorem` | [newton_seq_is_cauchy](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/newton-seq-is-cauchy--9cc3086c4ab161e2fab9c476.md) | 371 | `result-track:9cc3086c4ab161e2fab9c4762903f8071e3aba2fcaa8f32a0ae3a7abbbff0964` |
| 42 | `def` | [newton_cau_seq](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/newton-cau-seq--5d126eaa9e81c597af630429.md) | 381 | `declaration-track:5d126eaa9e81c597af63042904d78c3b1e377c5478baed225f9174ce7c108597` |
| 43 | `def` | [soln_gen](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/soln-gen--0890d5867b5a66b67b4743e0.md) | 384 | `declaration-track:0890d5867b5a66b67b4743e06a7fa52750949c443564f6658e4b4a136b985614` |
| 44 | `theorem` | [soln_spec](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/soln-spec--5c0fd542aa72eb830f4dc88d.md) | 388 | `result-track:5c0fd542aa72eb830f4dc88dd2ae7ba4b0f20a066c6af21808f9ce586f222b8e` |
| 45 | `theorem` | [soln_deriv_norm](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/soln-deriv-norm--f2539f4ed0e67005b269f6cf.md) | 392 | `result-track:f2539f4ed0e67005b269f6cfc232fb59fcb2a543000ebbb02c3a983ae31d3a1d` |
| 46 | `theorem` | [newton_seq_norm_tendsto_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/newton-seq-norm-tendsto-zero--9359d81eaed1fb9f56b5c880.md) | 395 | `result-track:9359d81eaed1fb9f56b5c8805f8e2d62257f095ec577e83eb690f208cf46b760` |
| 47 | `theorem` | [newton_seq_dist_tendsto](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/newton-seq-dist-tendsto--6dcdb9cf22bd1b35bb69c3dc.md) | 399 | `result-track:6dcdb9cf22bd1b35bb69c3dc2f5564e217f88b812517932c12d9a38223061394` |
| 48 | `theorem` | [newton_seq_dist_tendsto'](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/newton-seq-dist-tendsto--3d4f2f4bd5e50a77906a9ed1.md) | 405 | `result-track:3d4f2f4bd5e50a77906a9ed19072377b20f5ea7638d0db775dbdfedcc24e5886` |
| 49 | `theorem` | [soln_dist_to_a](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/soln-dist-to-a--12edc0c8f514a2d9b0e65389.md) | 409 | `result-track:12edc0c8f514a2d9b0e65389d2df72861476932c6749a5b0eff5e1467a2497bd` |
| 50 | `theorem` | [soln_dist_to_a_lt_deriv](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/soln-dist-to-a-lt-deriv--356e7f908399d93b4b65693a.md) | 412 | `result-track:356e7f908399d93b4b65693aacfce422c8523215786153eb0dd7afc53489102e` |
| 51 | `theorem` | [eval_soln](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/eval-soln--04bf592b5e034add2b6a28ea.md) | 419 | `result-track:04bf592b5e034add2b6a28ea856c085de58e9ae2cb21b782df606e007759aee9` |
| 52 | `theorem` | [soln_unique](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/soln-unique--f205b48b54a42d317250b9c9.md) | 422 | `result-track:f205b48b54a42d317250b9c938a5958eba515233ba43394997ad065d59c23b9a` |
| 53 | `theorem` | [a_soln_is_unique](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/a-soln-is-unique--a1afdb113b4c9ed35630b470.md) | 460 | `result-track:a1afdb113b4c9ed35630b4704ef25d66d2b00f2de76cd20b5e69014f536d8149` |
| 54 | `theorem` | [a_is_soln](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/a-is-soln--8bea24d63fe2608fcbff1203.md) | 486 | `result-track:8bea24d63fe2608fcbff1203a911b70163e54b68cca413e7c41553319f6e4c7d` |
| 55 | `theorem` | [hensels_lemma](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/declarations/hensels-lemma--c7824a4fad5e1e5f52af6cc9.md) | 493 | `result-track:c7824a4fad5e1e5f52af6cc9403b2f5942342a16f8271db3d62633828b294d63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
