# Verification target: Sobolev Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "675dc93f16d8b1a2bd23fe52e0dca7b8567fd25f",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `675dc93f16d8b1a2bd23fe52e0dca7b8567fd25f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.SchwartzSpace.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ZeroAndBoundedAtFilter` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CS](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/cs.md) | 18 | `declaration-track:800e9f2dd794615d0102ccfe6a4aa5ed85e083597eaabb8802f8acaf256e6bd9` |
| 2 | `structure` | [trunc](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/trunc.md) | 23 | `declaration-track:08be7980dff4e5c7b07dbfab56ba342a9b24e1aeb9d5e396cec2feaa5b4ed133` |
| 3 | `structure` | [W1](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/w1.md) | 27 | `declaration-track:a23dbdc69b2f7d54a22b048f593898fc1af1443bfd9e00c9b58d28176f206013` |
| 4 | `abbrev` | [W21](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/w21.md) | 32 | `declaration-track:125102b3aa18f2b1c7ad785574130a8ae001eb8530fa93a46e7417780e7c4b8f` |
| 5 | `def` | [funscale](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/funscale.md) | 36 | `declaration-track:1889114b1ae27806de0188c501dc2bb865a6515668f3b765437944f0f336d574` |
| 6 | `lemma` | [contDiff_ofReal](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/contdiff-ofreal.md) | 38 | `result-track:2f0d4d70f7d4a18ab7d4e4980cdab8650eded7be9df6365045706fc5a235923c` |
| 7 | `lemma` | [tendsto_funscale](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/tendsto-funscale.md) | 45 | `result-track:9850aff61d9fac43054faf3db125006f8aa223dea348070058a20fbb54f15d5e` |
| 8 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/instance-source-edition-4.md) | 55 | `declaration-track:43808d92e5a2405eb572d50ce383923aa9e4323bee715b096dfdb82233cd64a5` |
| 9 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/instance-source-edition-3.md) | 57 | `declaration-track:190295af459b95e48ccff6730360f56086ffb4d0d2c32c8001af5bed516e293e` |
| 10 | `def` | [neg](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/neg.md) | 60 | `declaration-track:76ecd06d5c4fbf22649a7ec10eb7771b9e1dbe6b010d0368ccee0d856c85bd45` |
| 11 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/instance-source-edition-6.md) | 65 | `declaration-track:4fa49087a88ce9251c01964c06de4f1f588d0ec17300b401535206d603fdc694` |
| 12 | `lemma` | [neg_apply](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/neg-apply.md) | 67 | `result-track:22705ad530b32d756dcf6dc9bd8cf6e8f6c370f3b9010d722a3e4afff140f5ea` |
| 13 | `def` | [smul](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/smul.md) | 69 | `declaration-track:1d0840b58b8f5648cc3093706336c484294e72acd4eb5d44ee25b59ac99323f2` |
| 14 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/instance-source-edition-7.md) | 71 | `declaration-track:5be7500ecbd2eb6386409e1f07671c0176f912184a217d34a464e2ef4b5c6a4d` |
| 15 | `lemma` | [smul_apply](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/smul-apply.md) | 73 | `result-track:afef18e916d984e1166f283125884bb8d0eac6e5bd881b41d44e2e204e91602d` |
| 16 | `lemma` | [continuous](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/continuous-source-edition-2.md) | 75 | `result-track:a91ea51548538a9e3324ce2c204d8d3118b5da790b5261974e9f1277940cd433` |
| 17 | `def` | [deriv](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/deriv.md) | 77 | `declaration-track:6d27fcfdd8025f0fd198cbadc23d410ea9c27d5fc104f27e7d0922b0c07985a3` |
| 18 | `lemma` | [hasDerivAt](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/hasderivat-source-edition-2.md) | 82 | `result-track:2eeae935dd0e89d4ab85757fe9357008bd1eee7c91fd250bac2121441dcac987` |
| 19 | `lemma` | [deriv_apply](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/deriv-apply.md) | 85 | `result-track:1d6a1dbdd2849ab75c33db047485c22f33a3cfdb7978decaa146824637219a2a` |
| 20 | `lemma` | [deriv_smul](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/deriv-smul.md) | 87 | `result-track:e25cd3d6bed868433f6dd145ca5daa38e4adea4e43dedccfeb776023de0ad294` |
| 21 | `def` | [scale](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/scale.md) | 90 | `declaration-track:5b378c712ca3975a46a1d095a325f6088ae4c2465ed11a5a69aac097e120279d` |
| 22 | `lemma` | [deriv_scale](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/deriv-scale-source-edition-2.md) | 97 | `result-track:975e968023bcfe3cfa2300f8d6783fa63d0e6d0d92b8ee9a7cfb93c7e3ec9cb4` |
| 23 | `lemma` | [deriv_scale'](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/deriv-scale.md) | 104 | `result-track:618c628be674c706251d1fadb85d522372607f17e08ac51923d2ffe897ca3a2f` |
| 24 | `lemma` | [hasDerivAt_scale](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/hasderivat-scale.md) | 109 | `result-track:287c3e8e168bc8287b514af1584511f5314e60686313771bc671b7924840074f` |
| 25 | `lemma` | [tendsto_scale](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/tendsto-scale.md) | 113 | `result-track:6c71114d0fc3c5ff0a1d7092ea95eef6f2a3f538fae87a0829f1eaccda1470ce` |
| 26 | `lemma` | [bounded](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/bounded.md) | 117 | `result-track:d01c5d62ae95fb77774a15337712505647723ef738e14e8551be55ec02b626fd` |
| 27 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/instance-source-edition-13.md) | 126 | `declaration-track:ebc8daba0c925b500784fa115a2e13b3e3dedf6d0a0f01c5ce376b49fe235385` |
| 28 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/instance-source-edition-8.md) | 128 | `declaration-track:611a0923aa37bbe2066f8e455895c76d073167a313755e08ad3bdcb203c3b957` |
| 29 | `lemma` | [nonneg](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/nonneg.md) | 130 | `result-track:1265a0904205c936395c67c6406876556e98448547f0d6df2c15ab6228c37d53` |
| 30 | `lemma` | [le_one](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/le-one.md) | 132 | `result-track:baa352386dc34de1356d0c116e62e2ec92f655f37f5a0ccd169e64b2a4d55a1b` |
| 31 | `lemma` | [zero](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/zero.md) | 135 | `result-track:826aac29232cf46a52f1dddc1e8f61d16bf62263c597ca5f2dccf5bb5a345f5a` |
| 32 | `lemma` | [zero_at](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/zero-at.md) | 139 | `result-track:3e4f2b93a8fd7a4e321a6aeeb23be85dd51d6f010cea1715c67532967c6540a4` |
| 33 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/instance-source-edition-2.md) | 145 | `declaration-track:0f468d703508a5f7b3c2c815a73de0747589c569dad47c8556519683792db3a1` |
| 34 | `lemma` | [continuous](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/continuous.md) | 147 | `result-track:846fc2770e7bd18e1a37e56457819ee016b837f50344ffb817ce1a9a5507838b` |
| 35 | `lemma` | [differentiable](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/differentiable.md) | 149 | `result-track:faf23076e68c3ffe74198945ceeacdff795d77e6c8bc0e10ecd4c593a4fee31c` |
| 36 | `lemma` | [iteratedDeriv_sub](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/iteratedderiv-sub.md) | 152 | `result-track:ff9268a3d691813e431b44d1ab65979ed68387f5be9b00bf5195e747cd79cd03` |
| 37 | `def` | [deriv](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/deriv-source-edition-2.md) | 165 | `declaration-track:bbb25f88c74533125954082db3d71d48716ba14fda4325e0ebc2afa576e9d289` |
| 38 | `lemma` | [hasDerivAt](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/hasderivat.md) | 171 | `result-track:0a0d1182877349c48bbcc103fc1259c64cdeedd7b3b2ff22d148bb741df857e1` |
| 39 | `def` | [sub](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/sub.md) | 174 | `declaration-track:88211a08015b76e755c7cf2d8ae4953bea2355c322f8498c15d22e0315e42678` |
| 40 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/instance.md) | 182 | `declaration-track:05032e489e34a5ed39376142d03c82040b59438321dd5ccaa5684eebabb4caba` |
| 41 | `lemma` | [integrable_iteratedDeriv_Schwarz](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/integrable-iteratedderiv-schwarz.md) | 184 | `result-track:b5bf26335bf1fd57fedfc0f3fcc92b3e7d8653b334356fe5c09831c44391ef6c` |
| 42 | `def` | [of_Schwartz](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/of-schwartz.md) | 189 | `declaration-track:e3fa03d448897555278555d49faea42b308f55ed23380b24e7be3024ad891f43` |
| 43 | `def` | [norm](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/norm.md) | 200 | `declaration-track:f157c481f3fb92bc06056135e27566679a587643569f1d26e06d66567ab40a6b` |
| 44 | `lemma` | [norm_nonneg](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/norm-nonneg.md) | 203 | `result-track:36feef947221f7e87c9f7a2bb944e21d08dcdbc00d917c3510d18aaf34954ed8` |
| 45 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/instance-source-edition-9.md) | 207 | `declaration-track:81d43c3c502a2b0d50ab9804d2815a9b8ca57e4f17df601568cc7bc84de9aff1` |
| 46 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/instance-source-edition-5.md) | 209 | `declaration-track:48ec01402a89b40236ca577a37ebade8576f3c92ed89be77ad59f6ba58bf1acc` |
| 47 | `def` | [ofCS2](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/ofcs2.md) | 211 | `declaration-track:8bd2c1e7e139b83a0bc8a87116fbe5d16a09dce0a64376db524721a6261b42a6` |
| 48 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/instance-source-edition-12.md) | 218 | `declaration-track:e6186854c27c5b9463df12f9c8dd8d7711e7886d9e72ee194664f7fd139689ec` |
| 49 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/instance-source-edition-11.md) | 220 | `declaration-track:c0b007abdd36c2c5c4d728248539e3aa77bf61cbae3cbdab734039626892d541` |
| 50 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/instance-source-edition-10.md) | 223 | `declaration-track:857722930c3e2ff9ec48d300183a9f79f74132269f45b441fa883d1ed1587ea0` |
| 51 | `lemma` | [hf](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/hf-source-edition-2.md) | 225 | `result-track:2d4b20fa5be3ceefaf55f5dc0f81fac56de2e057eeb9208addf3d30fcc62e253` |
| 52 | `lemma` | [hf'](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/hf.md) | 227 | `result-track:1675c5ff6b71c704f21e9e4e211d1ae6492bcf902e54d52e582a0fc65ec92415` |
| 53 | `lemma` | [hf''](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/hf-source-edition-3.md) | 230 | `result-track:7bba3340dca2a257eebcd1cc37a0873cdd059cebdd08a2d36c4468d06d6c04c9` |
| 54 | `theorem` | [W21_approximation](../../../../MeasureAndIntegration/SobolevNamespacedEdition1.lean/declarations/w21-approximation.md) | 235 | `result-track:aa98405f0ca4f65a81cc6350a941032b49db8f4f533f4b4995c1fd22dd1e2dc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9977defef7455971844fee66bb1c5182fa01cdfda33e9ea12d79a35e3cfde84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
