# Verification target: GRWTSK.Topology.MetricTopology.Contracting.Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06fbb34930ba5071bfda1dbe4ad79edcaa6229f3",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06fbb34930ba5071bfda1dbe4ad79edcaa6229f3`.

Source path: `GRWTSK/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContractingWith](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/contractingwith--e295bea535b62e4727a910db.md) | 42 | `declaration-track:e295bea535b62e4727a910db0d08665488698be867d58ab4d6adfc2787517e9d` |
| 2 | `theorem` | [toLipschitzWith](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/tolipschitzwith--4573514f768e3789cd4a7e44.md) | 51 | `result-track:4573514f768e3789cd4a7e44730904b92db3d0386e697958268668998f479df4` |
| 3 | `theorem` | [one_sub_K_pos'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/one-sub-k-pos--7a414c69a139312056f030ae.md) | 53 | `result-track:7a414c69a139312056f030ae883d98be9921669d5db4ef82cd0b2e6d3b8d2c04` |
| 4 | `theorem` | [one_sub_K_ne_zero](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/one-sub-k-ne-zero--5bfa40bbf0453fb6a4986afd.md) | 55 | `result-track:5bfa40bbf0453fb6a4986afd1190a0e668bf9d1200dbcb48e756f7ed4c48969f` |
| 5 | `theorem` | [one_sub_K_ne_top](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/one-sub-k-ne-top--b05326f542025563b9ba85c5.md) | 58 | `result-track:b05326f542025563b9ba85c53fb0a2215649a880b10ff509cf35ee5bd62987f7` |
| 6 | `theorem` | [edist_inequality](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/edist-inequality--59dc6325940b1b96f8b8dbbc.md) | 62 | `result-track:59dc6325940b1b96f8b8dbbcb5cb988b21d323c603c0baf5e17a331ccfbc6a45` |
| 7 | `theorem` | [edist_le_of_fixedPoint](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/edist-le-of-fixedpoint--1d78d901573ea9b3dcbfc499.md) | 72 | `result-track:1d78d901573ea9b3dcbfc4996665f645f9c018d1f7b6435f08f70227eda36f01` |
| 8 | `theorem` | [eq_or_edist_eq_top_of_fixedPoints](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/eq-or-edist-eq-top-of-fixedpoints--b1d13b0517ae26debe2692ba.md) | 76 | `result-track:b1d13b0517ae26debe2692ba9f9df810f070e6a92e1997a16b7aa2b4309abec5` |
| 9 | `theorem` | [restrict](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/restrict--d16e78aed630fafb34722eac.md) | 83 | `result-track:d16e78aed630fafb34722eac171f532e262ceb2c1f5de13bd2eed3e63bc769d9` |
| 10 | `theorem` | [exists_fixedPoint](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/exists-fixedpoint--997903e7662872d586a87708.md) | 97 | `result-track:997903e7662872d586a877085f131c579b20c06ceacdb47dc46a0569207e7a52` |
| 11 | `def` | [efixedPoint](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/efixedpoint--9e8bb5986a19bad421664132.md) | 113 | `declaration-track:9e8bb5986a19bad4216641323f60218e85e1477cbcf32cecb799d6bf434fba04` |
| 12 | `theorem` | [efixedPoint_isFixedPt](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/efixedpoint-isfixedpt--c517687b79d716765be07b9e.md) | 116 | `result-track:c517687b79d716765be07b9e31f5b6bc0d5e482bf195d4d578c471c88b9a60a3` |
| 13 | `theorem` | [tendsto_iterate_efixedPoint](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/tendsto-iterate-efixedpoint--ac0f877fb2bc0abe17c50b24.md) | 120 | `result-track:ac0f877fb2bc0abe17c50b24ed7a88fe5c3866bd337cd94c8859eceb7e92a98d` |
| 14 | `theorem` | [apriori_edist_iterate_efixedPoint_le](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/apriori-edist-iterate-efixedpoint-le--2fd671a76018aa4f29bed1dc.md) | 124 | `result-track:2fd671a76018aa4f29bed1dc45af351d1ec36819e0c094cbb458c7f310ede556` |
| 15 | `theorem` | [edist_efixedPoint_le](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/edist-efixedpoint-le--c201fc8ccd77c3c5b7cfdd91.md) | 129 | `result-track:c201fc8ccd77c3c5b7cfdd916c51f5ba22c342fca3917096f98abcd43f8c3a70` |
| 16 | `theorem` | [edist_efixedPoint_lt_top](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/edist-efixedpoint-lt-top--183f8f8395bf06325d5dda58.md) | 134 | `result-track:183f8f8395bf06325d5dda5841b22baab5537e5f6d039304df6c93be0a1619ca` |
| 17 | `theorem` | [efixedPoint_eq_of_edist_lt_top](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/efixedpoint-eq-of-edist-lt-top--d43bb181a0229635a100a18c.md) | 139 | `result-track:d43bb181a0229635a100a18c587fa83733dd334d5c4605854d4997bd55a42dc1` |
| 18 | `theorem` | [exists_fixedPoint'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/exists-fixedpoint--7f6304d562c485dc5d7f731a.md) | 154 | `result-track:7f6304d562c485dc5d7f731a614497009bc32e848392e91bd01b4c0b9d7f4914` |
| 19 | `def` | [efixedPoint'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/efixedpoint--003d983c9bd455d16878bc72.md) | 172 | `declaration-track:003d983c9bd455d16878bc7215de5491463180efa24ee3d84732fb945836ad00` |
| 20 | `theorem` | [efixedPoint_mem'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/efixedpoint-mem--f00e5fb4bb59972d0e9ad98e.md) | 177 | `result-track:f00e5fb4bb59972d0e9ad98e9466a7b4381f529ce58ccdd12c3b46c1446db9b3` |
| 21 | `theorem` | [efixedPoint_isFixedPt'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/efixedpoint-isfixedpt--09ea4f7d97a10afbb2a3d4b4.md) | 182 | `result-track:09ea4f7d97a10afbb2a3d4b44ef86d3c162f1365c3e2abafdd021456623299e1` |
| 22 | `theorem` | [tendsto_iterate_efixedPoint'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/tendsto-iterate-efixedpoint--edac70d532ae31762e7342c2.md) | 187 | `result-track:edac70d532ae31762e7342c204b2df179edfaf0eb505a35bdf915b60cf846666` |
| 23 | `theorem` | [apriori_edist_iterate_efixedPoint_le'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/apriori-edist-iterate-efixedpoint-le--8d41bdb7b4b35f2fa3b26be5.md) | 192 | `result-track:8d41bdb7b4b35f2fa3b26be5b2c756a7443e101cebe9b278c30dfb7c0b7cc1b2` |
| 24 | `theorem` | [edist_efixedPoint_le'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/edist-efixedpoint-le--29c89945b5669df154d6a27f.md) | 199 | `result-track:29c89945b5669df154d6a27fdae5b04536706e4e89444aca165ea4f58de93d23` |
| 25 | `theorem` | [edist_efixedPoint_lt_top'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/edist-efixedpoint-lt-top--e0ad50bd6121bd79a17df50a.md) | 205 | `result-track:e0ad50bd6121bd79a17df50a91c9e84175d9bc77ec1722f74ee589070c5daee8` |
| 26 | `theorem` | [efixedPoint_eq_of_edist_lt_top'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/efixedpoint-eq-of-edist-lt-top--137c22eed6af5911ab289f58.md) | 217 | `result-track:137c22eed6af5911ab289f5806a162adc60e1504b1656fe9547937326860c641` |
| 27 | `theorem` | [one_sub_K_pos](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/one-sub-k-pos--92a97bffbc67c74abe7386cc.md) | 239 | `result-track:92a97bffbc67c74abe7386cc487709d681a3d6ea2711f8efa767d49254ee54a1` |
| 28 | `theorem` | [dist_le_mul](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/dist-le-mul--69ed5e6ee950a4993d332902.md) | 246 | `result-track:69ed5e6ee950a4993d332902181780848f881f5b8fd1e510e8be23b0373c1081` |
| 29 | `theorem` | [dist_inequality](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/dist-inequality--d910aaafcff3c1249157f3f5.md) | 249 | `result-track:d910aaafcff3c1249157f3f5f031a0f6c257e3ccc2ca5e2df870bb2f1c4d6fbc` |
| 30 | `theorem` | [dist_le_of_fixedPoint](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/dist-le-of-fixedpoint--b4ebe1366fa953b62c353428.md) | 256 | `result-track:b4ebe1366fa953b62c353428b2bd2f854a60c80d6c2e4ac919182ea766c0627d` |
| 31 | `theorem` | [fixedPoint_unique'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/fixedpoint-unique--8ea98d9c6f4f60c52c269960.md) | 259 | `result-track:8ea98d9c6f4f60c52c2699608dbb61155438c9b694a7318874b55fb8fef0a65b` |
| 32 | `theorem` | [dist_fixedPoint_fixedPoint_of_dist_le'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/dist-fixedpoint-fixedpoint-of-dist-le--24fe6c27486ecc4bc571b0a5.md) | 264 | `result-track:24fe6c27486ecc4bc571b0a5c68d86af0da3965bc778cb3a1912bd170b9d4eb5` |
| 33 | `def` | [fixedPoint](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/fixedpoint--39b7fcfe463f4ebb18462b4b.md) | 276 | `declaration-track:39b7fcfe463f4ebb18462b4bd31d5043afcdd1b6407712b0584d5b2f76c9a952` |
| 34 | `theorem` | [fixedPoint_isFixedPt](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/fixedpoint-isfixedpt--01bd7245951f718a2a0f43dd.md) | 280 | `result-track:01bd7245951f718a2a0f43dd6ea5f9d51fad63ba8ef7aa3c5107416f3e27c876` |
| 35 | `theorem` | [fixedPoint_unique](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/fixedpoint-unique--aa47d0ee07d052fb285c8a23.md) | 283 | `result-track:aa47d0ee07d052fb285c8a234666af7ac344aeb88ef55b42329e59dfaa30b2a4` |
| 36 | `theorem` | [dist_fixedPoint_le](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/dist-fixedpoint-le--ba0a8423bf6f4b23b9f8a976.md) | 286 | `result-track:ba0a8423bf6f4b23b9f8a976eea36591970c920b182438b4f4bba1233fd4cb63` |
| 37 | `theorem` | [aposteriori_dist_iterate_fixedPoint_le](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/aposteriori-dist-iterate-fixedpoint-le--520aa297cc62275995140771.md) | 290 | `result-track:520aa297cc62275995140771879caf3efd4c3b9b3118c1a082e294a713026871` |
| 38 | `theorem` | [apriori_dist_iterate_fixedPoint_le](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/apriori-dist-iterate-fixedpoint-le--c53b4e48666b39fd0697e095.md) | 295 | `result-track:c53b4e48666b39fd0697e0957050b1d1acf8d94e93e2a1f3b1c64a4df45ad23e` |
| 39 | `theorem` | [tendsto_iterate_fixedPoint](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/tendsto-iterate-fixedpoint--072af51f754d1e5bbd9580bc.md) | 302 | `result-track:072af51f754d1e5bbd9580bcbeeb4427525bb18245526c154cd895a33d23f1f2` |
| 40 | `theorem` | [fixedPoint_lipschitz_in_map](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/fixedpoint-lipschitz-in-map--a06395a5e794ddf691a44d1f.md) | 308 | `result-track:a06395a5e794ddf691a44d1ff07622241f91d6e335d4c933d22b69876316ae75` |
| 41 | `theorem` | [isFixedPt_fixedPoint_iterate](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/declarations/isfixedpt-fixedpoint-iterate--acb491156da23292af2bb94f.md) | 318 | `result-track:acb491156da23292af2bb94ff05ff3f77ec31124ec650c4231293cb8d4e028d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
