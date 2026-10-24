# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Equiv.Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b6f4a62f2cf2df8a5f456887d738d8ac14ede73",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b6f4a62f2cf2df8a5f456887d738d8ac14ede73`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformEmbedding` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Pi` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [UniformEquiv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/uniformequiv--d958ddefb674e1650a03b961.md) | 36 | `declaration-track:d958ddefb674e1650a03b961c9b9d16a3916e904e9d7b4754bc590e848bce357` |
| 2 | `theorem` | [toEquiv_injective](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/toequiv-injective--025d176411493d99f0914dd5.md) | 51 | `result-track:025d176411493d99f0914dd59b92df0ae752952486d7069638b74f73c4c89865` |
| 3 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/instance--4adf17ff71326bbf96ce46fe.md) | 55 | `declaration-track:4adf17ff71326bbf96ce46fe293ea7981258c53d5c4c756d66f1c323e407f0c3` |
| 4 | `theorem` | [uniformEquiv_mk_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/uniformequiv-mk-coe--00666a575027546b4bab9bb1.md) | 63 | `result-track:00666a575027546b4bab9bb15dd214ff2d9763ab105c41defda526c1e646fa33` |
| 5 | `def` | [symm](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/symm--aebbc3dc71b1425524dad967.md) | 68 | `declaration-track:aebbc3dc71b1425524dad967a330cd9ebc12feb2f343ed9e734fc21a93af51f0` |
| 6 | `def` | [Simps.apply](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/simps-apply--b0c79096a6d5bcc4dbbbadbd.md) | 77 | `declaration-track:b0c79096a6d5bcc4dbbbadbd7d00891f50b08e10e1bb74fe4b8fc76460161e9e` |
| 7 | `def` | [Simps.symm_apply](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/simps-symm-apply--cdc7195870934a14c5349c6c.md) | 82 | `declaration-track:cdc7195870934a14c5349c6cf6b2c0ac1f65d1836770490c025ca5e7bfda4207` |
| 8 | `theorem` | [coe_toEquiv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/coe-toequiv--31c149cb8cc1f07907f4c347.md) | 89 | `result-track:31c149cb8cc1f07907f4c34738ab9e26042c89d665d69ec85a6de7409fd84f17` |
| 9 | `theorem` | [coe_symm_toEquiv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/coe-symm-toequiv--8dfd090b8362b9455e7e5ce4.md) | 94 | `result-track:8dfd090b8362b9455e7e5ce4c2d3ab790ee46d889ea4fceb9afb2bc0cc1b53fb` |
| 10 | `theorem` | [ext](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/ext--b8e941a167d2fa57217a6733.md) | 99 | `result-track:b8e941a167d2fa57217a67336fed28e350191b92ab375da7b49e1256e7d19d3e` |
| 11 | `def` | [refl](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/refl--db890c1c5b3cff602023cd93.md) | 105 | `declaration-track:db890c1c5b3cff602023cd932ae4533ed112a16169de3a91ca5802a7df7bb8be` |
| 12 | `def` | [trans](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/trans--ecf00bed5281847ffda83fbd.md) | 113 | `declaration-track:ecf00bed5281847ffda83fbd8413574f93af1c1fbbf6557706b40c713108d26c` |
| 13 | `theorem` | [trans_apply](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/trans-apply--1c1f9aaaea3a4664200e520a.md) | 121 | `result-track:1c1f9aaaea3a4664200e520a280fe84f64ebc299ba409bf30575ae6e50610dfe` |
| 14 | `theorem` | [uniformEquiv_mk_coe_symm](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/uniformequiv-mk-coe-symm--559ae52b462b1253331ad9db.md) | 126 | `result-track:559ae52b462b1253331ad9db92b65f5fb25fb7499ca114e67e8430457f5d0c02` |
| 15 | `theorem` | [refl_symm](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/refl-symm--6e58ed872958a85edcb7dc8b.md) | 132 | `result-track:6e58ed872958a85edcb7dc8b4424f46087ab1f46321e9073345e3c06cf14c059` |
| 16 | `theorem` | [uniformContinuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/uniformcontinuous--a89d8ffb82bb01156cffdfdc.md) | 136 | `result-track:a89d8ffb82bb01156cffdfdcee6caaa079980c1da5fdcfc768f779326dd65075` |
| 17 | `theorem` | [continuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/continuous--f0b5f779c22187177fdbb249.md) | 141 | `result-track:f0b5f779c22187177fdbb2497189ae55f2cee4a8d954ca1cbe3016282dd9e69c` |
| 18 | `theorem` | [uniformContinuous_symm](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/uniformcontinuous-symm--670e67efd21ee7e57ba7547d.md) | 145 | `result-track:670e67efd21ee7e57ba7547deeb3ca495e4ff33d6c2b60fce9fbfedae30e6dea` |
| 19 | `theorem` | [continuous_symm](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/continuous-symm--d57d441fc5282b79eda787a0.md) | 151 | `result-track:d57d441fc5282b79eda787a05d3088ea83d5ca9b646d8f60df99f61a5bea9073` |
| 20 | `def` | [toHomeomorph](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/tohomeomorph--9f05138c496134ece9c0c08f.md) | 157 | `declaration-track:9f05138c496134ece9c0c08f96304fe89d14423e4c88189d377bdabbf91c9269` |
| 21 | `lemma` | [toHomeomorph_apply](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/tohomeomorph-apply--910bbff1a4cb8ac636507dde.md) | 163 | `result-track:910bbff1a4cb8ac636507dde21088e9a3bec7a1d382efb18fb2929967a294bc7` |
| 22 | `lemma` | [toHomeomorph_symm_apply](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/tohomeomorph-symm-apply--e93a804f37cef545379e6c3f.md) | 166 | `result-track:e93a804f37cef545379e6c3f5f8ed0e55c671a88566ee77df4daa9e6431a1ac1` |
| 23 | `theorem` | [apply_symm_apply](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/apply-symm-apply--b642030eef6736f241d77d3c.md) | 170 | `result-track:b642030eef6736f241d77d3c64e2b9481371113c1c405594f09a9febc426607f` |
| 24 | `theorem` | [symm_apply_apply](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/symm-apply-apply--03733bb50d54b54209ed7485.md) | 175 | `result-track:03733bb50d54b54209ed74851ca4aafc0d68b0877ba0a70e5a6dc173056156a6` |
| 25 | `theorem` | [bijective](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/bijective--2fe22c847b078abb6e6704d7.md) | 179 | `result-track:2fe22c847b078abb6e6704d79c7a996c1785174f566f0d715b3ba264d4f11fa2` |
| 26 | `theorem` | [injective](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/injective--29665cc1a0b04bcb6a5bb022.md) | 183 | `result-track:29665cc1a0b04bcb6a5bb022c447c5d6c008b06a747475c92d7e488734847179` |
| 27 | `theorem` | [surjective](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/surjective--59d85dbe8107e58a1e4041aa.md) | 187 | `result-track:59d85dbe8107e58a1e4041aa248b8702d97e27da426081638ee3e880659e8454` |
| 28 | `def` | [changeInv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/changeinv--1120ae1bc1f607b32c0b0399.md) | 192 | `declaration-track:1120ae1bc1f607b32c0b039979e3721f43b94f206a26bdbad10fa85c5da087c0` |
| 29 | `theorem` | [symm_comp_self](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/symm-comp-self--1a3de9c854631fe692043ab8.md) | 206 | `result-track:1a3de9c854631fe692043ab8be0538210367395e3cc19f0628d3dd642594e56a` |
| 30 | `theorem` | [self_comp_symm](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/self-comp-symm--3a7acf1ac3296db064bd2f82.md) | 211 | `result-track:3a7acf1ac3296db064bd2f82204c2fce0c06475f91465645750284482513fbf3` |
| 31 | `theorem` | [range_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/range-coe--a36aa68cbb54ab3b8cde3b8c.md) | 216 | `result-track:a36aa68cbb54ab3b8cde3b8c0f111b3560b8e80f7a8315803a422e76f56975d8` |
| 32 | `theorem` | [image_symm](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/image-symm--72c8bcb8926cec2751cc0d7c.md) | 220 | `result-track:72c8bcb8926cec2751cc0d7c8f8b98f69eb184a3809d884df49ed8f14a8ed0a1` |
| 33 | `theorem` | [preimage_symm](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/preimage-symm--076bd46d6b0af6ee9d577167.md) | 224 | `result-track:076bd46d6b0af6ee9d57716732a6031e542a9caffc30eb409b2be71dd072cad1` |
| 34 | `theorem` | [image_preimage](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/image-preimage--77a45347c84b6febdf6b86b4.md) | 229 | `result-track:77a45347c84b6febdf6b86b4e7ba728faa15e03f938ee39f721a1799f308ba5d` |
| 35 | `theorem` | [preimage_image](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/preimage-image--3e163c388b6f66ba3d189468.md) | 234 | `result-track:3e163c388b6f66ba3d189468e50041110162c4570896f53ad3bc041aec12261a` |
| 36 | `theorem` | [uniformInducing](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/uniforminducing--024032d2e10f1bb59d1cf6b3.md) | 238 | `result-track:024032d2e10f1bb59d1cf6b3f707b0f14c7928963f35c4c6c3804683fc66d312` |
| 37 | `theorem` | [comap_eq](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/comap-eq--1542f5d949bb8545dc978b35.md) | 243 | `result-track:1542f5d949bb8545dc978b352955a95fc87636aba26785c281133cff74c49d31` |
| 38 | `theorem` | [uniformEmbedding](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/uniformembedding--b7c05fbe4f667a612755ffd4.md) | 247 | `result-track:b7c05fbe4f667a612755ffd4589cc4d30d7d68f773ce6c931f8be1ca29b1b6d9` |
| 39 | `def` | [ofUniformEmbedding](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/ofuniformembedding--c9d58efcb21c974de614c08e.md) | 252 | `declaration-track:c9d58efcb21c974de614c08efec15b6ef02abd06f1499366f79a9489abf4e307` |
| 40 | `def` | [setCongr](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/setcongr--2c2f91fff7f65fa6a7a5921a.md) | 263 | `declaration-track:2c2f91fff7f65fa6a7a5921a50088e030924f4a6839ff97c842b9e4b2ae80aff` |
| 41 | `def` | [prodCongr](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/prodcongr--650bb7bf1067dfa1fc39d8fe.md) | 271 | `declaration-track:650bb7bf1067dfa1fc39d8fe92acd49c7b1ff0ffefbd9e1c1a44b873b79c2261` |
| 42 | `theorem` | [prodCongr_symm](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/prodcongr-symm--dff9002c56b7a332f09424b3.md) | 283 | `result-track:dff9002c56b7a332f09424b35892809cf1db55a018f257ab847847eda75971da` |
| 43 | `theorem` | [coe_prodCongr](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/coe-prodcongr--f0323d77dba822d38b555ba0.md) | 289 | `result-track:f0323d77dba822d38b555ba060f7f7ad7ab62155284fb1601471d66d79a12813` |
| 44 | `def` | [prodComm](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/prodcomm--7859a5f6177f9d193e7457ac.md) | 298 | `declaration-track:7859a5f6177f9d193e7457ace12a9096e4d922fe35d6b8d4802f753ef2326028` |
| 45 | `theorem` | [prodComm_symm](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/prodcomm-symm--3c560cf4fb7e624f27ac8c0d.md) | 306 | `result-track:3c560cf4fb7e624f27ac8c0dc83e0697d866eed356dd62e298f983430383965e` |
| 46 | `theorem` | [coe_prodComm](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/coe-prodcomm--9021243ecaa8a919c07bda1f.md) | 311 | `result-track:9021243ecaa8a919c07bda1fc69fd715081b04a1739f9b8d93c19e6bac680a62` |
| 47 | `def` | [prodAssoc](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/prodassoc--1d2065aafceb72e4e1393dd4.md) | 316 | `declaration-track:1d2065aafceb72e4e1393dd48e9fe2b5219e4c0ec76aa7153ba90ac1f19c5b37` |
| 48 | `def` | [prodPunit](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/prodpunit--7096b8f09dd8e691033f1ee7.md) | 330 | `declaration-track:7096b8f09dd8e691033f1ee71eb85a16530b0f074efde330752e5b8486954f83` |
| 49 | `def` | [punitProd](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/punitprod--1db7a757abd429185edf9e51.md) | 337 | `declaration-track:1db7a757abd429185edf9e51e1ee5a6f765cc3f84b260b71f003753e60b0b411` |
| 50 | `theorem` | [coe_punitProd](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/coe-punitprod--4d463cd237e63d6c9814106f.md) | 342 | `result-track:4d463cd237e63d6c9814106fcb58f6c648a2a325e207d502befae69411b96e48` |
| 51 | `def` | [ulift](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/ulift--4328bc7d4d30e9effcadfda3.md) | 347 | `declaration-track:4328bc7d4d30e9effcadfda3499701f17a7e602b8fc49bfeebde3b32c82ae69f` |
| 52 | `def` | [funUnique](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/fununique--0f09f973b7b5dbba303360ef.md) | 360 | `declaration-track:0f09f973b7b5dbba303360efcf5362ac18d54b0826c02e864ee6c5003fc4dfa4` |
| 53 | `def` | [piFinTwo](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/pifintwo--03ff38a64bd0a4200e6c93b7.md) | 369 | `declaration-track:03ff38a64bd0a4200e6c93b75611aca83f68928827faaf5359353a3005352307` |
| 54 | `def` | [finTwoArrow](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/fintwoarrow--c5fd3839d4064a9fef7848a5.md) | 380 | `declaration-track:c5fd3839d4064a9fef7848a5fcd9eee49ba066fbc13901c78e34fc1bfb82208c` |
| 55 | `def` | [image](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/image--3a644346708907de5da05fde.md) | 386 | `declaration-track:3a644346708907de5da05fde0403cff386efb1bcdf0b6cfe8a26ec2f0e24f38e` |
| 56 | `def` | [Equiv.toUniformEquivOfUniformInducing](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/declarations/equiv-touniformequivofuniforminducing--068dc01281494d03aad6c790.md) | 398 | `declaration-track:068dc01281494d03aad6c790d20d903da17c3b521e8f2bd0891c2c9c670071c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
