# Verification target: Log

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d5475ad3cd6c5c66bacb7f6840f303e4525ff30",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Log/Variant05ea3bba2e7f3effd44eb27f4f233ef3a4fec6fdd6d0685cf2e7ce9b7cc3c08f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/Log.lean/index.md) · [Full source](../../../../SpecialFunctions/Log.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d5475ad3cd6c5c66bacb7f6840f303e4525ff30`.

Source path: `GRWTSK/Topology/GeneralTopology/Log/Variant05ea3bba2e7f3effd44eb27f4f233ef3a4fec6fdd6d0685cf2e7ce9b7cc3c08f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Log/Variant05ea3bba2e7f3effd44eb27f4f233ef3a4fec6fdd6d0685cf2e7ce9b7cc3c08f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.Arg` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log](../../../../SpecialFunctions/Log.lean/declarations/log.md) | 29 | `declaration-track:f242689be0a8ef8cd74713cb3800e27398e2724db25dffc62c8d531ba1e780d1` |
| 2 | `theorem` | [log_re](../../../../SpecialFunctions/Log.lean/declarations/log-re.md) | 33 | `result-track:c7f7e84320ba2481b450e064976a9c94e8fd6b87326bf7c5b5d3e6ce8a20b49d` |
| 3 | `theorem` | [log_im](../../../../SpecialFunctions/Log.lean/declarations/log-im.md) | 36 | `result-track:7b8a133622945ad77040f160122e3e644ac27289d4735c09771667978f8cb4f6` |
| 4 | `theorem` | [neg_pi_lt_log_im](../../../../SpecialFunctions/Log.lean/declarations/neg-pi-lt-log-im.md) | 39 | `result-track:0d5162127aa1bf5f88c53e9d28f5f5c29d070b6524d571bb7ee39a02f06c106b` |
| 5 | `theorem` | [log_im_le_pi](../../../../SpecialFunctions/Log.lean/declarations/log-im-le-pi.md) | 42 | `result-track:6e87ad698d13a33ce66da27b1371ccccfce11a3f6314c2125b8182f6681a29f7` |
| 6 | `theorem` | [exp_log](../../../../SpecialFunctions/Log.lean/declarations/exp-log.md) | 45 | `result-track:1b311304b06275debe43135db89105c853fd9fc719e659f7675d8e7f5638f3dc` |
| 7 | `theorem` | [range_exp](../../../../SpecialFunctions/Log.lean/declarations/range-exp.md) | 53 | `result-track:a806aad4cd6b08342121650ed3c96919736aac6c1c45be82877eb0e42d26730c` |
| 8 | `theorem` | [log_exp](../../../../SpecialFunctions/Log.lean/declarations/log-exp.md) | 60 | `result-track:cc76a0aebac57b6a0bc1f3acfdbca62455441dc5df0b68d72381e496f95b86d9` |
| 9 | `theorem` | [exp_inj_of_neg_pi_lt_of_le_pi](../../../../SpecialFunctions/Log.lean/declarations/exp-inj-of-neg-pi-lt-of-le-pi.md) | 65 | `result-track:704b60c64dbfa3283fa2dafc93a2dc74a49b1f49c1d6ac1b643d71954b826226` |
| 10 | `theorem` | [ofReal_log](../../../../SpecialFunctions/Log.lean/declarations/ofreal-log.md) | 70 | `result-track:44417e78f40faa96904026ef18c43fc053abac04a6a37f34bdf33c3551d622b3` |
| 11 | `theorem` | [log_ofReal_re](../../../../SpecialFunctions/Log.lean/declarations/log-ofreal-re.md) | 75 | `result-track:6e7ff5c33522fc4ec2464df7f0a17e54573584c121ba3b5049f3d03c485ea2fa` |
| 12 | `theorem` | [log_ofReal_mul](../../../../SpecialFunctions/Log.lean/declarations/log-ofreal-mul.md) | 78 | `result-track:b06679b9f343497cacd8cba8e04d55e5dd842d3c7772d36cb070432cc3acba05` |
| 13 | `theorem` | [log_mul_ofReal](../../../../SpecialFunctions/Log.lean/declarations/log-mul-ofreal.md) | 85 | `result-track:a21ecacf3cd781a3c3f317d1d7b7532c2461dc5623733d10a4f4394186b630f7` |
| 14 | `theorem` | [log_zero](../../../../SpecialFunctions/Log.lean/declarations/log-zero.md) | 90 | `result-track:5f64774814496c40de1bb6bc7b567c2678595923988f878a194bb7fae9e5c67f` |
| 15 | `theorem` | [log_one](../../../../SpecialFunctions/Log.lean/declarations/log-one.md) | 94 | `result-track:1d8ed9417dcf5b3ae963cad68fdefeaf30085b8b8a380e0829c0490ce743b2de` |
| 16 | `theorem` | [log_neg_one](../../../../SpecialFunctions/Log.lean/declarations/log-neg-one.md) | 97 | `result-track:0436e711fde7cb1e07662423d240238c88fc5d5ffac2ce40872d3611421b14e9` |
| 17 | `theorem` | [log_I](../../../../SpecialFunctions/Log.lean/declarations/log-i.md) | 100 | `result-track:45b989c13b6f2d8230adb3e466d2d270aedb57b93cbb08e69da83f1da624a1d0` |
| 18 | `theorem` | [log_neg_I](../../../../SpecialFunctions/Log.lean/declarations/log-neg-i.md) | 104 | `result-track:715839132dadf9cea4c64d204474b961fee71d13a70ab07a39b4324baafa3a6b` |
| 19 | `theorem` | [log_conj_eq_ite](../../../../SpecialFunctions/Log.lean/declarations/log-conj-eq-ite.md) | 108 | `result-track:7eb6f7cd6df2e4a15a8339105408d0baf198ff161aec9ed34374dcc07f30938b` |
| 20 | `theorem` | [log_conj](../../../../SpecialFunctions/Log.lean/declarations/log-conj.md) | 115 | `result-track:556e1619a5ceadd2dfc614111f8dfa86fcddd31acbe037eac6edf5b8d368632a` |
| 21 | `theorem` | [log_inv_eq_ite](../../../../SpecialFunctions/Log.lean/declarations/log-inv-eq-ite.md) | 119 | `result-track:bca1a1fa0c817c8b525b60bc92b43d03467f2b3cfc7a0f5b0aff19217c1c25b7` |
| 22 | `theorem` | [log_inv](../../../../SpecialFunctions/Log.lean/declarations/log-inv.md) | 133 | `result-track:5afef343dd6e4824c537c8412cccafea107fc15f641b8456af789163f38c366c` |
| 23 | `theorem` | [two_pi_I_ne_zero](../../../../SpecialFunctions/Log.lean/declarations/two-pi-i-ne-zero.md) | 136 | `result-track:f9eec8661d468ce8582417ade4f4ff7538007f930ca7945ec74a99bbed20cab6` |
| 24 | `theorem` | [exp_eq_one_iff](../../../../SpecialFunctions/Log.lean/declarations/exp-eq-one-iff.md) | 140 | `result-track:1d97dfda7427f1b60349a7309f43b376277581db3ba0fd433ad25b538e41c7ac` |
| 25 | `theorem` | [exp_eq_exp_iff_exp_sub_eq_one](../../../../SpecialFunctions/Log.lean/declarations/exp-eq-exp-iff-exp-sub-eq-one.md) | 152 | `result-track:c3425597b8beb4e5ea34d3733e9bb3db4b3f031e01ad8ef28c7618f574a5cc7a` |
| 26 | `theorem` | [exp_eq_exp_iff_exists_int](../../../../SpecialFunctions/Log.lean/declarations/exp-eq-exp-iff-exists-int.md) | 156 | `result-track:fbb81fdac82effda3e4d37d56f0a1358ff7843e3a990503888243d82b4496f5e` |
| 27 | `theorem` | [countable_preimage_exp](../../../../SpecialFunctions/Log.lean/declarations/countable-preimage-exp.md) | 161 | `result-track:618e2d5135b0193b6ea3af1777c602b0402ad8228170449c20b4a9b7e18fb284` |
| 28 | `theorem` | [tendsto_log_nhdsWithin_im_neg_of_re_neg_of_im_zero](../../../../SpecialFunctions/Log.lean/declarations/tendsto-log-nhdswithin-im-neg-of-re-neg-of-im-zero.md) | 179 | `result-track:1128f024c6726f614813604df3e2b1a74c9ea49942c77cc675c0dff7c86b4c36` |
| 29 | `theorem` | [continuousWithinAt_log_of_re_neg_of_im_zero](../../../../SpecialFunctions/Log.lean/declarations/continuouswithinat-log-of-re-neg-of-im-zero.md) | 192 | `result-track:7db0085d2a4bbab23755b4cacdac6fddb38436d7b5cff8d0d6eea6d31f1e76fb` |
| 30 | `theorem` | [tendsto_log_nhdsWithin_im_nonneg_of_re_neg_of_im_zero](../../../../SpecialFunctions/Log.lean/declarations/tendsto-log-nhdswithin-im-nonneg-of-re-neg-of-im-zero.md) | 205 | `result-track:bd52d4cc29751b94dc359744cbe45154938f0ef5676848051581077581fbb7ea` |
| 31 | `theorem` | [map_exp_comap_re_atBot](../../../../SpecialFunctions/Log.lean/declarations/map-exp-comap-re-atbot.md) | 212 | `result-track:9bdc4ba615e1de151d21f0ee22090ab4e53eac6cb3524e810f0e599c0cfd8aff` |
| 32 | `theorem` | [map_exp_comap_re_atTop](../../../../SpecialFunctions/Log.lean/declarations/map-exp-comap-re-attop.md) | 217 | `result-track:4457eb08c9898545041dec8bad0e4a30b71f5190a921c00c4e381d16e69b1a2b` |
| 33 | `theorem` | [continuousAt_clog](../../../../SpecialFunctions/Log.lean/declarations/continuousat-clog.md) | 232 | `result-track:c8056e34d1243930b4ad8214fb075494b42c96ce193aca7838ce983c1f26a586` |
| 34 | `theorem` | [_root_.Filter.Tendsto.clog](../../../../SpecialFunctions/Log.lean/declarations/root-filter-tendsto-clog.md) | 244 | `result-track:6dc511c2c34f46098dcdda9c79098deff7ee47bf1799ee91dcb87011e16a751d` |
| 35 | `theorem` | [_root_.ContinuousAt.clog](../../../../SpecialFunctions/Log.lean/declarations/root-continuousat-clog.md) | 252 | `result-track:debd17b86d95bcbb6fbefbf4e41ef74cd9f1c563863d18b035d7a6323e7f655a` |
| 36 | `theorem` | [_root_.ContinuousWithinAt.clog](../../../../SpecialFunctions/Log.lean/declarations/root-continuouswithinat-clog.md) | 258 | `result-track:afee2e0cc3d2855aa872695b81d06f63bd68f03ff40ebb81977bfc71bda44330` |
| 37 | `theorem` | [_root_.ContinuousOn.clog](../../../../SpecialFunctions/Log.lean/declarations/root-continuouson-clog.md) | 265 | `result-track:dbacdd05d31c9bc1f181d1ec553895c230d42576a160109bcdfc73fe96dec37a` |
| 38 | `theorem` | [_root_.Continuous.clog](../../../../SpecialFunctions/Log.lean/declarations/root-continuous-clog.md) | 271 | `result-track:7b9ccf10bb50110c9fa8027d7e0d2b7ec9645fa89d94dcb8cfbe472ae7c9de92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6431021a6fae63aebed0fb39fcec441c6ee685dac73ec7d420e48ebea3b8a99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Log/Variant05ea3bba2e7f3effd44eb27f4f233ef3a4fec6fdd6d0685cf2e7ce9b7cc3c08f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Log/Variant05ea3bba2e7f3effd44eb27f4f233ef3a4fec6fdd6d0685cf2e7ce9b7cc3c08f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
