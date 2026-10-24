# Verification target: GRWTSK.Topology.GeneralTopology.Pi.Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7924ecda19d13ed569b6afb5547fa1ba20f0c310",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7924ecda19d13ed569b6afb5547fa1ba20f0c310`.

Source path: `GRWTSK/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Piecewise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Tendsto` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Bases.Finite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_eval_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/tendsto-eval-pi--d3cd8ca1f176a0d461ad223d.md) | 34 | `result-track:d3cd8ca1f176a0d461ad223dd3a9afa89164deca69224174ec43ea603bb53884` |
| 2 | `theorem` | [tendsto_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/tendsto-pi--3ac9b035bea15690a829676b.md) | 37 | `result-track:3ac9b035bea15690a829676b6efa66e42aa7990c90e8fd1399515f7335cbfc7d` |
| 3 | `theorem` | [le_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/le-pi--a066fc442a8043ee335dacb6.md) | 46 | `result-track:a066fc442a8043ee335dacb63d618c73ef15e66de62b0254e76a4d779119105b` |
| 4 | `theorem` | [pi_mono](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/pi-mono--fa30002971f2836856d02fff.md) | 50 | `result-track:fa30002971f2836856d02fff8629220cb97e1c4b748533d24553ddb221db6ecb` |
| 5 | `theorem` | [mem_pi_of_mem](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/mem-pi-of-mem--980ed02a8c108ebb824865e3.md) | 53 | `result-track:980ed02a8c108ebb824865e3e72fd9c46b3f7e285b9d34084d5bcc438594cd6c` |
| 6 | `theorem` | [pi_mem_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/pi-mem-pi--7375f656dd1f0ede41cd8dae.md) | 56 | `result-track:7375f656dd1f0ede41cd8daebc363c3488ee2766e772505449e7a4425336eb73` |
| 7 | `theorem` | [mem_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/mem-pi--2fe9888c4879602147d977de.md) | 61 | `result-track:2fe9888c4879602147d977de3cbb4fc8cf4a709579f8f7d6923ff7d739ef963c` |
| 8 | `theorem` | [mem_pi'](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/mem-pi--6bbc615e299c8cec8567a1f8.md) | 71 | `result-track:6bbc615e299c8cec8567a1f8340707ba2401c853455b549a8e66ca224a2b085f` |
| 9 | `theorem` | [mem_of_pi_mem_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/mem-of-pi-mem-pi--bf39196705160c401781f2df.md) | 75 | `result-track:bf39196705160c401781f2dff7cc7620433dae15f292725d7db1085eaa2eaa30` |
| 10 | `theorem` | [pi_mem_pi_iff](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/pi-mem-pi-iff--75aca4f09d5366691f2400b9.md) | 87 | `result-track:75aca4f09d5366691f2400b9f26a56d3d42ac16b744d9082c16a7aa4931c40aa` |
| 11 | `theorem` | [Eventually.eval_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/eventually-eval-pi--92152961f5b3d0713faa9cbb.md) | 91 | `result-track:92152961f5b3d0713faa9cbb5a6cf1ec256b0eaa76919c6c562b3e973703f0dc` |
| 12 | `theorem` | [eventually_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/eventually-pi--e96477a4df35700e21c2d615.md) | 94 | `result-track:e96477a4df35700e21c2d61594be1b9c7e33d5184b88f5863cbb851950b8787f` |
| 13 | `theorem` | [hasBasis_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/hasbasis-pi--3cefa1a87c3fdde51d3cc364.md) | 97 | `result-track:3cefa1a87c3fdde51d3cc36476ea55cca9c6c37fb2b1ce1a6672cc69e4bb59e1` |
| 14 | `theorem` | [hasBasis_pi_same_index](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/hasbasis-pi-same-index--d96a93870beb04ba94e534e6.md) | 103 | `result-track:d96a93870beb04ba94e534e67ccd9d4a87fc149027c56f2905f4ff24fcf11b50` |
| 15 | `theorem` | [HasBasis.pi_self](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/hasbasis-pi-self--e9fce097699665d37275888a.md) | 116 | `result-track:e9fce097699665d37275888afed627d87838d6cefdfabf4429bc8742d15ce884` |
| 16 | `theorem` | [le_pi_principal](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/le-pi-principal--f36acec098a9f1c68d6a5762.md) | 125 | `result-track:f36acec098a9f1c68d6a5762c5dfb9f0d136899480b212978a629a6c2f90a00b` |
| 17 | `theorem` | [pi_principal](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/pi-principal--5524626c18e829fc093a3f22.md) | 134 | `result-track:5524626c18e829fc093a3f22e740a5f6e1c453269e19d73a9325064e6d9193a2` |
| 18 | `theorem` | [mem_pi_principal](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/mem-pi-principal--a23126bbdd69a63ba2f64b78.md) | 143 | `result-track:a23126bbdd69a63ba2f64b78dac1f1d61edf836b36cb7bf2dbc52e89d03a79e8` |
| 19 | `theorem` | [hasBasis_pi_principal](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/hasbasis-pi-principal--66f90af73cc0ed2cf955deac.md) | 152 | `result-track:66f90af73cc0ed2cf955deac47d36512880b886b62dfd3def9c4e77b9b663241` |
| 20 | `theorem` | [pi_pure](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/pi-pure--678471d5aa86672d04ec7dd5.md) | 160 | `result-track:678471d5aa86672d04ec7dd58c7f94913775eeca527d9313104926aa11f2177a` |
| 21 | `theorem` | [mem_pi_pure](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/mem-pi-pure--4141c1e279a0253d76138aeb.md) | 168 | `result-track:4141c1e279a0253d76138aeb19a2ae319dd36b6392c832fb8d714322dd196356` |
| 22 | `theorem` | [hasBasis_pi_pure](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/hasbasis-pi-pure--deb82fceeff87f3f8de769a8.md) | 178 | `result-track:deb82fceeff87f3f8de769a8d0ef61811b6da78a061f68ccb7c4d4740d416533` |
| 23 | `theorem` | [pi_inf_principal_univ_pi_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/pi-inf-principal-univ-pi-eq-bot--3e5af3d63fa4e8a31297795e.md) | 183 | `result-track:3e5af3d63fa4e8a31297795e6aac28141e38f87c15acef53910b8721d69ddcb0` |
| 24 | `theorem` | [pi_inf_principal_pi_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/pi-inf-principal-pi-eq-bot--a059372d74f58c6668a0a808.md) | 197 | `result-track:a059372d74f58c6668a0a808d19f0a3d180d8f4c4253c6b8c73b6489aa6fef68` |
| 25 | `theorem` | [pi_inf_principal_univ_pi_neBot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/pi-inf-principal-univ-pi-nebot--21fa2e0f79692452b6ddedcc.md) | 205 | `result-track:21fa2e0f79692452b6ddedcc9ec46c9c75303658e4013990f6637ab92c30178b` |
| 26 | `theorem` | [pi_inf_principal_pi_neBot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/pi-inf-principal-pi-nebot--a8638f1ff872f6fcc8016a68.md) | 209 | `result-track:a8638f1ff872f6fcc8016a68b515082c8aaf25b31b00370d2ac14853868c1e10` |
| 27 | `instance` | [PiInfPrincipalPi.neBot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/piinfprincipalpi-nebot--49675a61e03916347301bba5.md) | 212 | `declaration-track:49675a61e03916347301bba5e1cf66cc1cf967ab9a83275bd2f5406665af00d3` |
| 28 | `theorem` | [pi_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/pi-eq-bot--641ecbf5c642839f4caa2f76.md) | 218 | `result-track:641ecbf5c642839f4caa2f76fef2f1ab101aa835db19f1cd0c2709cea0455486` |
| 29 | `theorem` | [pi_neBot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/pi-nebot--c0ba73811c0b33f370c8f537.md) | 222 | `result-track:c0ba73811c0b33f370c8f5373e40790bf90e464f2a8243e5f3bf101903cf3ca0` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/instance--7cd17ae364c767db09adc6e2.md) | 224 | `declaration-track:7cd17ae364c767db09adc6e2430e395a69d7204655722742c31e6eb1b951351a` |
| 31 | `theorem` | [map_eval_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/map-eval-pi--25ef973566eabeb051a6d2c0.md) | 228 | `result-track:25ef973566eabeb051a6d2c07357ed2f597cbcb670dacefdc1bea3f7d32252ff` |
| 32 | `theorem` | [pi_le_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/pi-le-pi--2537535fa024b117429dc9be.md) | 237 | `result-track:2537535fa024b117429dc9be51812dbdcfa08deede5a721e9f6d7fc6097ded8a` |
| 33 | `theorem` | [pi_inj](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/pi-inj--ebf1a3d297adf427c032b14b.md) | 241 | `result-track:ebf1a3d297adf427c032b14b5bdbda496d135a945f30ed0364841338f22f74fb` |
| 34 | `theorem` | [tendsto_piMap_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/tendsto-pimap-pi--d5f9978130f698672e7366e1.md) | 247 | `result-track:d5f9978130f698672e7366e1119bb489de76b5fbf044b3ba7ef1e188bc40a3e7` |
| 35 | `def` | [coprodᵢ](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/coprod--5e54d36d4b06f5f2cd2d2729.md) | 261 | `declaration-track:5e54d36d4b06f5f2cd2d2729e597f768f643f001b9dbac3cfb35dcd6c535913a` |
| 36 | `theorem` | [mem_coprodᵢ_iff](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/mem-coprod-iff--b6713593d72901f409d791d3.md) | 264 | `result-track:b6713593d72901f409d791d38650cc93846e9a37574c8f89ff7b2d99edb8d407` |
| 37 | `theorem` | [compl_mem_coprodᵢ](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/compl-mem-coprod--1509c0de722988a4fa5d17a4.md) | 267 | `result-track:1509c0de722988a4fa5d17a4c20d1c4dea7132e7c5b52a977c8d152eae6a73a8` |
| 38 | `theorem` | [coprodᵢ_neBot_iff'](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/coprod-nebot-iff--2b342a72606e15fa2f91d5eb.md) | 271 | `result-track:2b342a72606e15fa2f91d5ebaaaeec45758c33a9705e1ee560393997c3385a6f` |
| 39 | `theorem` | [coprodᵢ_neBot_iff](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/coprod-nebot-iff--e896040ece1c4e7413d482a6.md) | 276 | `result-track:e896040ece1c4e7413d482a666063184c6c5bdf63eb934b43beed02c96efefb9` |
| 40 | `theorem` | [coprodᵢ_eq_bot_iff'](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/coprod-eq-bot-iff--94a5cc6c0f9affb4677a3a38.md) | 279 | `result-track:94a5cc6c0f9affb4677a3a38f5ee99bd15e11914514f5ba34e811d66c9f05d76` |
| 41 | `theorem` | [coprodᵢ_eq_bot_iff](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/coprod-eq-bot-iff--b6c448ed4d5c688068c4037f.md) | 284 | `result-track:b6c448ed4d5c688068c4037f291493766bf0f2f369990882340b1749546dbc30` |
| 42 | `theorem` | [coprodᵢ_bot'](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/coprod-bot--1ab368791312f02cec5d7814.md) | 287 | `result-track:1ab368791312f02cec5d7814200db2eb994eb6635e4cd667b1c8ada86a72eb75` |
| 43 | `theorem` | [coprodᵢ_bot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/coprod-bot--2318e5ef7122c379409c90a9.md) | 291 | `result-track:2318e5ef7122c379409c90a967b18c008104b6e72045e79aeed6a394c4a5cdaa` |
| 44 | `theorem` | [NeBot.coprodᵢ](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/nebot-coprod--797a77719f0d6a9c97e60ca2.md) | 294 | `result-track:797a77719f0d6a9c97e60ca20960d1e8bc98007e7a60b835f96734ed5e1e6ba3` |
| 45 | `theorem` | [coprodᵢ_neBot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/coprod-nebot--c6c198b6197757764404d8da.md) | 298 | `result-track:c6c198b6197757764404d8daffee7774082142d98d78deff523a736b18d916fa` |
| 46 | `theorem` | [coprodᵢ_mono](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/coprod-mono--bf9615da10ca46a1c8804673.md) | 303 | `result-track:bf9615da10ca46a1c880467374fd74df6723bb7ed71ab3ae2da1fffbb6fb89c6` |
| 47 | `theorem` | [map_pi_map_coprodᵢ_le](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/map-pi-map-coprod-le--5b612e7756eac0b86a8cb3e4.md) | 308 | `result-track:5b612e7756eac0b86a8cb3e4b856dfcd2b3e52c6195e9d912e954e0c26d4b72d` |
| 48 | `theorem` | [Tendsto.pi_map_coprodᵢ](../../../../../mathematics/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/declarations/tendsto-pi-map-coprod--067ec04a9580294d259e7beb.md) | 316 | `result-track:067ec04a9580294d259e7beb69861a970f7f63f98651efefb341d8442fcd34f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
