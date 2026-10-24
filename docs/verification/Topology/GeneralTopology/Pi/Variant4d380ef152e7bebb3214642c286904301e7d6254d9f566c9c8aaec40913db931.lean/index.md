# Verification target: GRWTSK.Topology.GeneralTopology.Pi.Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52ad9b936e2f72838e0aaf51c79725941fe8b9bf",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52ad9b936e2f72838e0aaf51c79725941fe8b9bf`.

Source path: `GRWTSK/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Piecewise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Tendsto` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Bases.Finite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_eval_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/tendsto-eval-pi--811e154fc1c3f02eda13450a.md) | 42 | `result-track:811e154fc1c3f02eda13450a8d40ff7398f753f2ddd5a921937d4d6d072caadd` |
| 2 | `theorem` | [tendsto_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/tendsto-pi--438625863f61374ab4f04aaa.md) | 45 | `result-track:438625863f61374ab4f04aaa4817a6b313f269547dc2e19e9ad71d7f4d68ced6` |
| 3 | `theorem` | [le_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/le-pi--9cca5c466e698537202446b0.md) | 54 | `result-track:9cca5c466e698537202446b0236427787da304a6941335d7bbcb7508dde6efbc` |
| 4 | `theorem` | [pi_mono](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/pi-mono--9cf93001341fa40c515c69f1.md) | 58 | `result-track:9cf93001341fa40c515c69f1d6c85f2d63756a4000123db1b1095cc962bc3825` |
| 5 | `theorem` | [mem_pi_of_mem](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/mem-pi-of-mem--0edbe5264ad600b6e9470c66.md) | 61 | `result-track:0edbe5264ad600b6e9470c66aba4cf438020d5ff475de28e5f8f14ad32212868` |
| 6 | `theorem` | [pi_mem_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/pi-mem-pi--f5d8c6c2f5d38de4ccc148ad.md) | 64 | `result-track:f5d8c6c2f5d38de4ccc148adfb5e75d50f2557864ec9f2f16531bcb9e302f9f2` |
| 7 | `theorem` | [mem_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/mem-pi--97eeac3e43a0473661a09353.md) | 69 | `result-track:97eeac3e43a0473661a0935373d000452e61ea1217ac2ecf6f89756899efaf12` |
| 8 | `theorem` | [mem_pi'](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/mem-pi--371734236af6ae5cc35729f7.md) | 79 | `result-track:371734236af6ae5cc35729f7f6192c1c47113248286c2ae0e969abdd7500474f` |
| 9 | `theorem` | [mem_of_pi_mem_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/mem-of-pi-mem-pi--86862805de6e4765b4c14a3c.md) | 83 | `result-track:86862805de6e4765b4c14a3cb78dca09cb0caece9c130ba1cf3b8e3906220e1f` |
| 10 | `theorem` | [pi_mem_pi_iff](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/pi-mem-pi-iff--18db538768822e51252016e6.md) | 95 | `result-track:18db538768822e51252016e6df4940c24b61be95c3afe5462e109fccd1bbc029` |
| 11 | `theorem` | [Eventually.eval_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/eventually-eval-pi--84c93f74a9711f495d665393.md) | 99 | `result-track:84c93f74a9711f495d6653935eab994dab9af60b4fe51c579ffa3daf886ba041` |
| 12 | `theorem` | [eventually_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/eventually-pi--883bdf06ab59141c284dc1ab.md) | 102 | `result-track:883bdf06ab59141c284dc1ab1301dabd97245e04aa36ac0eaff4450b4bd88671` |
| 13 | `theorem` | [hasBasis_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/hasbasis-pi--bcbae4bf14a8ed499b37bf0c.md) | 105 | `result-track:bcbae4bf14a8ed499b37bf0cd87e5aacedf14a4f19c8a5e1aba1b7abbcffb58a` |
| 14 | `theorem` | [hasBasis_pi_same_index](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/hasbasis-pi-same-index--cffcb2a2d2ae539c23a134fe.md) | 111 | `result-track:cffcb2a2d2ae539c23a134feea0f7e4dbfd6e8eaff0baf8a7a2dc038a532ca0f` |
| 15 | `theorem` | [HasBasis.pi_self](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/hasbasis-pi-self--ced4fd38ca135bac3bf3a5c5.md) | 124 | `result-track:ced4fd38ca135bac3bf3a5c53a58afd9d49c51e6cc46e249c9f4773631c58d0b` |
| 16 | `theorem` | [le_pi_principal](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/le-pi-principal--bbc443bd58f6132a74258b49.md) | 133 | `result-track:bbc443bd58f6132a74258b4992a2a211a559a0cc0cdbf56efb41e78265607e02` |
| 17 | `theorem` | [pi_principal](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/pi-principal--815b898bdf339d8a2fee9f43.md) | 142 | `result-track:815b898bdf339d8a2fee9f43c27b0221784e51710fd931daebf0189218180cc1` |
| 18 | `theorem` | [mem_pi_principal](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/mem-pi-principal--bbfef4aa80dca50deab8203a.md) | 151 | `result-track:bbfef4aa80dca50deab8203aba80603e8a90bca4f745faca7d699c43dbc1b14c` |
| 19 | `theorem` | [hasBasis_pi_principal](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/hasbasis-pi-principal--4e5ced911401bfd36fd2e159.md) | 160 | `result-track:4e5ced911401bfd36fd2e159b7ece91e4816e826b08e2726b8cc20dec7e0d582` |
| 20 | `theorem` | [pi_pure](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/pi-pure--eeccb64f463faeb315a7eb54.md) | 168 | `result-track:eeccb64f463faeb315a7eb54ea3a2f0c0efde71117d4cb0994c101ec313d113b` |
| 21 | `theorem` | [mem_pi_pure](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/mem-pi-pure--c3369cf49c269129bf42d9fe.md) | 176 | `result-track:c3369cf49c269129bf42d9fe42cc0aeae9141123be44bd2760514e0ab47209ec` |
| 22 | `theorem` | [hasBasis_pi_pure](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/hasbasis-pi-pure--c96e4f83fde19eee16bba6e4.md) | 186 | `result-track:c96e4f83fde19eee16bba6e4369f727923ae98732efcfd206da430467fdd3a26` |
| 23 | `theorem` | [pi_inf_principal_univ_pi_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/pi-inf-principal-univ-pi-eq-bot--20963a21e6a8e9ec58347b9e.md) | 191 | `result-track:20963a21e6a8e9ec58347b9e0420c623b3c9a1939085a6efce2507324b3c3e55` |
| 24 | `theorem` | [pi_inf_principal_pi_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/pi-inf-principal-pi-eq-bot--cc1ab47ceb2ba660fdf6c0d7.md) | 205 | `result-track:cc1ab47ceb2ba660fdf6c0d7db27f4ce9789c536d60c6fdcf70f6bc6ac1af29e` |
| 25 | `theorem` | [pi_inf_principal_univ_pi_neBot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/pi-inf-principal-univ-pi-nebot--c180edb41253f925d14f8254.md) | 213 | `result-track:c180edb41253f925d14f8254c575493c01f0698b652d55915ef01977e76487fe` |
| 26 | `theorem` | [pi_inf_principal_pi_neBot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/pi-inf-principal-pi-nebot--0f3b5a1909099907a5ae414e.md) | 217 | `result-track:0f3b5a1909099907a5ae414e249fc533266802cb4a6edd164456b2e5d8a79572` |
| 27 | `instance` | [PiInfPrincipalPi.neBot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/piinfprincipalpi-nebot--ff7d314eb661ec156f343705.md) | 220 | `declaration-track:ff7d314eb661ec156f343705f4cbd6f1282ce0a6ed7376fd2157cea745fb1a54` |
| 28 | `theorem` | [pi_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/pi-eq-bot--44f8d99d819b368defe0e145.md) | 226 | `result-track:44f8d99d819b368defe0e1457e53c1553ce6d58b19a839bccccef1ee833fbaa5` |
| 29 | `theorem` | [pi_neBot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/pi-nebot--66c7c6a9acf2c30b465a0f5c.md) | 230 | `result-track:66c7c6a9acf2c30b465a0f5c81a3cda697037bae4cd52d8bc72c52207a63050e` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/instance--6d352d172b43c33e861127fb.md) | 232 | `declaration-track:6d352d172b43c33e861127fb5ecd48f6f198d2d23b4071b77570cd7431338969` |
| 31 | `theorem` | [map_eval_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/map-eval-pi--ef2ea5d4931ee804b65d8ee5.md) | 236 | `result-track:ef2ea5d4931ee804b65d8ee5bb337aa580057f1de366a2b355010f648421abfe` |
| 32 | `theorem` | [pi_le_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/pi-le-pi--568a5931245cb58dfe251c07.md) | 245 | `result-track:568a5931245cb58dfe251c074a396c05d6b0aa3a693b1aa63bd35fa8e33ff53b` |
| 33 | `theorem` | [pi_inj](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/pi-inj--53e843ed0231679ba1bdff1b.md) | 249 | `result-track:53e843ed0231679ba1bdff1b7c13f89961b04b6024f8a2561aa97f9688bddbb4` |
| 34 | `theorem` | [tendsto_piMap_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/tendsto-pimap-pi--f4c8ac065c5873796f562c00.md) | 255 | `result-track:f4c8ac065c5873796f562c000dcd49562e8b595f666c5f28835dfda3e765da0f` |
| 35 | `def` | [coprodᵢ](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/coprod--bb64b1bec7a1e70e10cf251a.md) | 269 | `declaration-track:bb64b1bec7a1e70e10cf251ae1c01b49962e62495abff4a7e75e8f6279c01d1d` |
| 36 | `theorem` | [mem_coprodᵢ_iff](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/mem-coprod-iff--cd8309eea7dfe9cabb04bac8.md) | 272 | `result-track:cd8309eea7dfe9cabb04bac8fd139b2a54f497a6b4bdb2400d9861646712ab4c` |
| 37 | `theorem` | [compl_mem_coprodᵢ](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/compl-mem-coprod--4b72980792bee0f54ee4b7c5.md) | 275 | `result-track:4b72980792bee0f54ee4b7c503d41ea5216d512ab4efdc6fc7c0f2a44fd099a5` |
| 38 | `theorem` | [coprodᵢ_neBot_iff'](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/coprod-nebot-iff--25c017ec630953971432754f.md) | 279 | `result-track:25c017ec630953971432754f0e8ae4f789e4e9f4b1ec22c198e73b3172d8d4b4` |
| 39 | `theorem` | [coprodᵢ_neBot_iff](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/coprod-nebot-iff--615f82cb8e5a7fdf1bee96bb.md) | 284 | `result-track:615f82cb8e5a7fdf1bee96bb2d5819c687340cf57183c1ee029c71b1516849a2` |
| 40 | `theorem` | [coprodᵢ_eq_bot_iff'](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/coprod-eq-bot-iff--5a4f303eaa11bbd5ef361b4f.md) | 287 | `result-track:5a4f303eaa11bbd5ef361b4f61348e22aa84ced58070088d2e577b5d06b86d08` |
| 41 | `theorem` | [coprodᵢ_eq_bot_iff](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/coprod-eq-bot-iff--33f0ccdf0f0824d75e1c098d.md) | 292 | `result-track:33f0ccdf0f0824d75e1c098dda6c1055a2460931b6ebddbca7c398f46aa2e373` |
| 42 | `theorem` | [coprodᵢ_bot'](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/coprod-bot--0e6bad2b5cc2f94bc786ba0e.md) | 295 | `result-track:0e6bad2b5cc2f94bc786ba0e1b8b8e538669c2891ce7e852bc1e9bbbf37fce95` |
| 43 | `theorem` | [coprodᵢ_bot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/coprod-bot--55153f63e3728ba1144fdbb1.md) | 299 | `result-track:55153f63e3728ba1144fdbb15a864d2f3adb2e0daf9d1e5543415d31cfd86485` |
| 44 | `theorem` | [NeBot.coprodᵢ](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/nebot-coprod--639fafe2aca5b727cdd31f62.md) | 302 | `result-track:639fafe2aca5b727cdd31f62fe3c03b0da6ee8baa3afffc539aa668830ea985a` |
| 45 | `theorem` | [coprodᵢ_neBot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/coprod-nebot--6a3c6667c2725f51d3819d7f.md) | 306 | `result-track:6a3c6667c2725f51d3819d7fc5b322998c60f9d567d23105208177a14579b388` |
| 46 | `theorem` | [coprodᵢ_mono](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/coprod-mono--0c24e4899170347395beda05.md) | 311 | `result-track:0c24e4899170347395beda054463e658fec0ea3240f4fec02d00d1f40e3bb58b` |
| 47 | `theorem` | [map_pi_map_coprodᵢ_le](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/map-pi-map-coprod-le--f3af1d0b6dfd7e49ef240a27.md) | 316 | `result-track:f3af1d0b6dfd7e49ef240a27018d28086e681149434abe712da48da856bb00e1` |
| 48 | `theorem` | [Tendsto.pi_map_coprodᵢ](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant4d380ef152e7bebb3214642c286904301e7d6254d9f566c9c8aaec40913db931.lean/declarations/tendsto-pi-map-coprod--279f0b66cedd3614d7f643f1.md) | 324 | `result-track:279f0b66cedd3614d7f643f1f4fb3e7795a6b94b1c275db9f6600ed6bd89b492` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
