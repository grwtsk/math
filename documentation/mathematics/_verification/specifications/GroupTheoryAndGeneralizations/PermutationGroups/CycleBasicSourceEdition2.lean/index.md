# Verification target: Cycle Basic Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "872c6e8318bb5cdfd4a7da8912e14238e2077040",
  "lexical_observation_count": 118,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `872c6e8318bb5cdfd4a7da8912e14238e2077040`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Finite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.List` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Sign` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SameCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle.md) | 50 | `declaration-track:dd221ed02a56bfd5ef2a74edc525d2a4dfc8ee397e51ddaf0d7cde7ff417bd13` |
| 2 | `theorem` | [SameCycle.refl](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-refl.md) | 54 | `result-track:1163943145fdb187c206302e4355e9cb4701eb453201f0864766e212057a0d2f` |
| 3 | `theorem` | [SameCycle.rfl](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-rfl.md) | 57 | `result-track:7288fb4ce3957e93b379e60279024a9f8ccefa224a96240fbdb02b8b0cfe4716` |
| 4 | `theorem` | [_root_.Eq.sameCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/root-eq-samecycle.md) | 60 | `result-track:05cb684435af27fd193dcebc3f547e3a01ab604d005378bd4f57685739c244a0` |
| 5 | `theorem` | [SameCycle.symm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-symm.md) | 63 | `result-track:185136e8dd0223e22790a680a80b42791bd6aa57c531fed463591c8f4896f279` |
| 6 | `theorem` | [sameCycle_comm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-comm.md) | 66 | `result-track:226260e16645c8819c8915b4c5a4183696e16051a0eaf731b8113385c23a088f` |
| 7 | `theorem` | [SameCycle.trans](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-trans.md) | 70 | `result-track:d89998103542c01f8af2074716ffe75e8cae0450dde0c7732366683ff9329852` |
| 8 | `theorem` | [SameCycle.equivalence](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-equivalence.md) | 74 | `result-track:30817f06ffdb750e58334c29d0c4df33dccbc61cf56fad1310f931ea53b30953` |
| 9 | `def` | [SameCycle.setoid](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-setoid.md) | 78 | `declaration-track:26ffecf821919a64c779ce28d5966c165f57c415e2c504c88d148bb62e3eb96b` |
| 10 | `theorem` | [sameCycle_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-one.md) | 83 | `result-track:6a3b0f4b1e9b6121ecad77cec8f3db9efce0e92f09b1e1cd94c5851e4d6a4f0f` |
| 11 | `theorem` | [sameCycle_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-inv.md) | 86 | `result-track:3f4121622690f78a971c3ae93a8ae45a3bf4f8cebf1cc7b275a1fdeb1a12140d` |
| 12 | `theorem` | [sameCycle_conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-conj-source-edition-2.md) | 92 | `result-track:e7bd7b852b9b8629cdb2e1db5af3c598ef3f38548876bc8ffce8fa908c83a202` |
| 13 | `theorem` | [SameCycle.conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-conj.md) | 95 | `result-track:52f1aa1f2971272ec6596f41375f0f1c904b86846cdf18c1bfd546af45120083` |
| 14 | `theorem` | [SameCycle.apply_eq_self_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-apply-eq-self-iff.md) | 98 | `result-track:15350b110295f1833ef2b595d3cdea75c52cdbef1545184fb38ba6132a05efe0` |
| 15 | `theorem` | [SameCycle.eq_of_left](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-eq-of-left.md) | 102 | `result-track:aba4ecbed9a53a73c87ed27e24c49b348f18569d16abfc5728868bf272353326` |
| 16 | `theorem` | [SameCycle.eq_of_right](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-eq-of-right.md) | 106 | `result-track:75e7210d3f0db839ed51071da33d530ccb162681d0ac0820c778c0df7803e395` |
| 17 | `theorem` | [sameCycle_apply_left](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-apply-left.md) | 110 | `result-track:acde2f749e22c6a9fe9c74dd7cd4be2bc38bd8545f4de192b2fa93eaecd2cac1` |
| 18 | `theorem` | [sameCycle_apply_right](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-apply-right.md) | 115 | `result-track:d335bcfb5ff210b63d7ef1a2a5ef17d5d401ebb61d77cadc76dba74e1d719db2` |
| 19 | `theorem` | [sameCycle_inv_apply_left](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-inv-apply-left.md) | 119 | `result-track:1136a13593153edcb34ead643567eb77b321891664b627c336fd8acef4dbd658` |
| 20 | `theorem` | [sameCycle_inv_apply_right](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-inv-apply-right.md) | 123 | `result-track:9a8c86584039811b3e57fc285272def8ea9726af0e4996096e31c6b06f721c43` |
| 21 | `theorem` | [sameCycle_zpow_left](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-zpow-left.md) | 127 | `result-track:89f438d47723c96d6f9e924014b4a4310579f29538ced767b2be4693772fc993` |
| 22 | `theorem` | [sameCycle_zpow_right](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-zpow-right.md) | 131 | `result-track:0c92a3bd7daccd211ba882aa03364c5825ae780285b44b4ba39d7ef789becf76` |
| 23 | `theorem` | [sameCycle_pow_left](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-pow-left.md) | 135 | `result-track:20417c73483fcb197d233e534f3555a477ca715fa5cc0ad62dd245926950caad` |
| 24 | `theorem` | [sameCycle_pow_right](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-pow-right.md) | 139 | `result-track:61aee998f3b0625250e732f6eb1da5ed0d1e9735242894b3a54a1f68411c9094` |
| 25 | `theorem` | [SameCycle.of_pow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-of-pow.md) | 158 | `result-track:2908b5f049b0f06ec64fed4222c869274a6c464f562b4aee5c323e6816ba6f0d` |
| 26 | `theorem` | [SameCycle.of_zpow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-of-zpow.md) | 161 | `result-track:8a2a2d2a62091529cd01689b6cc663288c59ebbfa635419084261e3bfbb57427` |
| 27 | `theorem` | [sameCycle_subtypePerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-subtypeperm.md) | 165 | `result-track:3e4ae98877f9269328818f956244f2fb586bd729f9447e461d59476678d774b2` |
| 28 | `theorem` | [sameCycle_extendDomain](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-extenddomain.md) | 172 | `result-track:c960d63826165445ad61690d8161cf2e857610f7c74d0141a3fc53128db6ce37` |
| 29 | `theorem` | [SameCycle.exists_pow_eq'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-exists-pow-eq-source-edition-2.md) | 179 | `result-track:e75be75ddf8f53008205342340b24f4b0c05003e1c2fc36f0a9b53c3a2aa643b` |
| 30 | `theorem` | [SameCycle.exists_pow_eq''](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-exists-pow-eq.md) | 189 | `result-track:a5724811fc49987d84c44e93f969e495ce7bb7781022b97385aafbb322f839b5` |
| 31 | `theorem` | [SameCycle.exists_fin_pow_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-exists-fin-pow-eq.md) | 196 | `result-track:5eacd0569409db5b6580b925f4d409d32fa5b063abdf09e5326d1f927f761ec0` |
| 32 | `theorem` | [SameCycle.exists_nat_pow_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/samecycle-exists-nat-pow-eq.md) | 201 | `result-track:ce276f7165d01026089b956e4b7a623c1bfb6b60d121f4a73f6c7bb9c89e4173` |
| 33 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/instance.md) | 206 | `declaration-track:8e31856078844770fcb7c0e9f99b0d043684c9159a007baf9e5a8e1496b344e1` |
| 34 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/instance-source-edition-2.md) | 210 | `declaration-track:df9bb1ca377a75d8de12dbe91a121f0cb26ab98b55ac9395d61c0144c77100f2` |
| 35 | `def` | [IsCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle.md) | 225 | `declaration-track:2dde284a2d0bcbded95a25e9692187f54bede59bf69c7c2db8a0b9ad108f9129` |
| 36 | `theorem` | [IsCycle.ne_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-ne-one.md) | 228 | `result-track:2e21fa089ec6e0dbcb20e8de687fed2a4cde7743733e670d87a14ab32ec01e40` |
| 37 | `theorem` | [not_isCycle_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/not-iscycle-one.md) | 231 | `result-track:6a7152a765a4d3fc9eb5ca8c255c6bde507833dd3168985bcc1b2fa3cf0c0e42` |
| 38 | `theorem` | [IsCycle.sameCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-samecycle.md) | 233 | `result-track:1302990d566966f7cbbe80891dbeb1ced908b18924b1ca2b92c1726d46a97651` |
| 39 | `theorem` | [IsCycle.exists_zpow_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-exists-zpow-eq.md) | 240 | `result-track:d0e21ab6c73c0205e691db36699e73170a0f3717cd8a638d0511b9f6e6bded8a` |
| 40 | `theorem` | [IsCycle.inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-inv-source-edition-2.md) | 243 | `result-track:9ab46ce3c4e765ed6038e6e73bec28c4b74ca0ad06f7ec711ca266213305731e` |
| 41 | `theorem` | [isCycle_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-inv.md) | 248 | `result-track:7f7682bd6f75d5b5814957a78dd649cd57cdf3de6f4132632d53486c6919405f` |
| 42 | `theorem` | [IsCycle.conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-conj.md) | 251 | `result-track:7e6e3fe6f89271477456e88add4e1a6ad3f23894104e2dc551d96e533b0df1bd` |
| 43 | `theorem` | [IsCycle.extendDomain](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-extenddomain.md) | 257 | `result-track:1016281698fb8c4cd19f018de2a35cbf3645cc17401dec6ba8feda0d0bc9a7ab` |
| 44 | `theorem` | [isCycle_iff_sameCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-iff-samecycle.md) | 269 | `result-track:aaaafbefd1c9c632e6eb94295b3b9ddd02c62e3b7a33e94620434a8c2617d18c` |
| 45 | `theorem` | [IsCycle.exists_pow_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-exists-pow-eq.md) | 282 | `result-track:9ef2a4b4deacea936729d7fd89ef903ca22188ea252b7eb6a3e834847a9955b8` |
| 46 | `theorem` | [isCycle_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-swap.md) | 294 | `result-track:b5a6c2aa5b8943c2804d263fc84cfb87af1e74ca94ce7e44cc3f9d5334bf809d` |
| 47 | `theorem` | [IsSwap.isCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/isswap-iscycle.md) | 302 | `result-track:11c711335118f9ec30ebda40c0ea8e667d874cc8a23f2d46b6cc679f046646bf` |
| 48 | `theorem` | [IsCycle.two_le_card_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-two-le-card-support.md) | 308 | `result-track:0525df445fa1201590de49457a01467429443be9ee0c57d363ecb895c290c4d3` |
| 49 | `def` | [IsCycle.zpowersEquivSupport](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-zpowersequivsupport.md) | 312 | `declaration-track:f20bbfaf0d6d7063c8328fa819a97f4e4570c6538d64bcb99805a916d1d4b041` |
| 50 | `theorem` | [IsCycle.zpowersEquivSupport_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-zpowersequivsupport-apply.md) | 335 | `result-track:12cc8cf5ebe473da8d62f3f440db72e5794fa9ef9ba41909856c18748a2cbeba` |
| 51 | `theorem` | [IsCycle.zpowersEquivSupport_symm_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-zpowersequivsupport-symm-apply.md) | 342 | `result-track:0bc77100b655e1fb13897bdad917321776b39d7f2eafdba8fbcf698c3e46834e` |
| 52 | `theorem` | [IsCycle.orderOf](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-orderof.md) | 349 | `result-track:c6474af6834eff692b5045aa834198d80617f43a3ba4e0fac635df8aa16da572` |
| 53 | `theorem` | [isCycle_swap_mul_aux₁](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-swap-mul-aux.md) | 353 | `result-track:72ee20378aa38cbf1efe36df9dc56cd19d14cacd2da396fa299201b0c46e780e` |
| 54 | `theorem` | [isCycle_swap_mul_aux₂](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-swap-mul-aux-source-edition-2.md) | 374 | `result-track:fc0e3a7254567887d3ce7b35c7882605c16b99c0a67c91d91d77ed5afe090b9f` |
| 55 | `theorem` | [IsCycle.eq_swap_of_apply_apply_eq_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-eq-swap-of-apply-apply-eq-self.md) | 404 | `result-track:a8445567c580babe7cc7e86519fce2fa7a0ed342045aa21e69e0cda35334c733` |
| 56 | `theorem` | [IsCycle.swap_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-swap-mul.md) | 423 | `result-track:96511a05149f987dd5d9a7df8e1a3cdf855a3cdae1d653b2c0ead0a9a0400152` |
| 57 | `theorem` | [IsCycle.sign](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-sign.md) | 435 | `result-track:0be556e8c0e93aec8dd9367f157945872e80c7de49f68df766524871f0403d7e` |
| 58 | `theorem` | [IsCycle.of_pow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-of-pow.md) | 457 | `result-track:c87205e6adbd62bcfc361ab776a6a7f59eb1115a3b54b559dcd4cdec96995c91` |
| 59 | `theorem` | [IsCycle.of_zpow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-of-zpow.md) | 469 | `result-track:b261e660371838b2a8afde1cf4d2818728723589e1cbe694acf679f835abd3cc` |
| 60 | `theorem` | [nodup_of_pairwise_disjoint_cycles](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/nodup-of-pairwise-disjoint-cycles.md) | 476 | `result-track:8b70374e9601536f3eb5cfbdc58c7d932ad02866888b7266b5c82c5f1b100e35` |
| 61 | `theorem` | [IsCycle.support_congr](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-support-congr.md) | 482 | `result-track:64007db50371a5f37647fbc237e2bc37c15f6279fda2222e5bfe625f9380c8fe` |
| 62 | `theorem` | [IsCycle.eq_on_support_inter_nonempty_congr](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-eq-on-support-inter-nonempty-congr.md) | 502 | `result-track:00bb13bc40fa68d1dc1c061d7f5591dbac9307e53a2710456944098dd0e79e40` |
| 63 | `theorem` | [IsCycle.support_pow_eq_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-support-pow-eq-iff.md) | 513 | `result-track:0924adcf4e116e438d4d8d7d428d1c33a4763b9d4323fbc655f5d8167b8997e1` |
| 64 | `theorem` | [IsCycle.support_pow_of_pos_of_lt_orderOf](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-support-pow-of-pos-of-lt-orderof.md) | 532 | `result-track:0e4a0270abf08f012eb81dabc5112c7030d40830126148187cb5fa6d1f45748d` |
| 65 | `theorem` | [IsCycle.pow_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-pow-iff.md) | 536 | `result-track:3e0f487c1cdc293a6791220253518b31b8612dd1a5252517d118e518a25607ec` |
| 66 | `theorem` | [IsCycle.pow_eq_one_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-pow-eq-one-iff-source-edition-2.md) | 560 | `result-track:3a0a888f49733b025173faf2be65170b1218ffec9fbcbf64f4cb0620ee03a380` |
| 67 | `theorem` | [IsCycle.pow_eq_one_iff'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-pow-eq-one-iff.md) | 577 | `result-track:15720fe626e2395ecd6219f79eb21af09ba3a70974773573eb0485eb3b8b6bcb` |
| 68 | `theorem` | [IsCycle.pow_eq_one_iff''](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-pow-eq-one-iff-source-edition-3.md) | 582 | `result-track:c1594bf660bdf95cb96fa5bf2dfb6a421ad981c0cd5e5931f3450cf6ec6e662e` |
| 69 | `theorem` | [IsCycle.pow_eq_pow_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-pow-eq-pow-iff.md) | 589 | `result-track:92e23fae1435f0304a3e959c0516573594c07b45f3be439d186294b7be735614` |
| 70 | `theorem` | [IsCycle.isCycle_pow_pos_of_lt_prime_order](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-iscycle-pow-pos-of-lt-prime-order.md) | 612 | `result-track:270bf66f7246c71e9ea91b2f02245c0dff39cac1e2a8d4074d9b6c5da2cf1656` |
| 71 | `theorem` | [_root_.Int.addLeft_one_isCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/root-int-addleft-one-iscycle.md) | 631 | `result-track:3b933390365a0de7248f8075878d107b707dd8fad2962e330754c75b15d00966` |
| 72 | `theorem` | [_root_.Int.addRight_one_isCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/root-int-addright-one-iscycle.md) | 634 | `result-track:9edd6abd39fc526620db07926d6749a0ee5be6f3a1db1f290ee452f805cf3047` |
| 73 | `theorem` | [IsCycle.isConj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-isconj.md) | 641 | `result-track:73af2de5644a70044541e4fa2c91ca0c224d991e5c7246e5c5967ef2c5c12c64` |
| 74 | `theorem` | [IsCycle.isConj_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-isconj-iff.md) | 653 | `result-track:d46f65da9e18386f9d950cdab3203daedc798e08e1c73a141e109c296af3e818` |
| 75 | `def` | [IsCycleOn](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon.md) | 675 | `declaration-track:9008f5391f47d2ab656e2a63dc98dc7a192a5d049636b8078982d0d32c927849` |
| 76 | `theorem` | [isCycleOn_empty](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-empty.md) | 679 | `result-track:78e47ac66e5ec7375ec48d818905637dbcdfdec4a538f3c360de72e7e3d52df8` |
| 77 | `theorem` | [isCycleOn_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-one.md) | 682 | `result-track:43545aa9bc19f0662143e276d8bb25e1889dbe8f8a31e96eae7381e258aaba78` |
| 78 | `theorem` | [isCycleOn_singleton](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-singleton.md) | 688 | `result-track:353ea2631886a04a252d56f8664d5e60f3f0889ec429196cb73ab75e15f57483` |
| 79 | `theorem` | [isCycleOn_of_subsingleton](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-of-subsingleton.md) | 690 | `result-track:c6419e5a6779588830fcf29f424717ef3a30ecfc6d4c4dd5f89e18998023067d` |
| 80 | `theorem` | [isCycleOn_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-inv.md) | 694 | `result-track:a2faf15d76a7f3e3d39cd9be0a7e0a55c1780d832e68fb9619035c57c93c616f` |
| 81 | `theorem` | [IsCycleOn.conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-conj.md) | 700 | `result-track:037b09c3116efb3008504484f6ffc447506d142e90e71064a35fa117022778cf` |
| 82 | `theorem` | [isCycleOn_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-swap.md) | 705 | `result-track:d9d1b208b0b83f4b4738baa0482db2d215e2d027bc9da868ce0b81c352624a1f` |
| 83 | `theorem` | [IsCycleOn.apply_ne](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-apply-ne.md) | 714 | `result-track:fc189254ac8dcf0bac3ad6d7a006fc3f52e8478c112e518c4b53c596ebbfeace` |
| 84 | `theorem` | [IsCycle.isCycleOn](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-iscycleon.md) | 720 | `result-track:1849d65a511baa433e0253fa1dc9bea3633f7935b391b75579ef6c69f93347a0` |
| 85 | `theorem` | [isCycle_iff_exists_isCycleOn](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-iff-exists-iscycleon.md) | 725 | `result-track:23f081110337635eb1afb36795e626c8ed793527a832bcf78f2c8eeef425b122` |
| 86 | `theorem` | [IsCycleOn.apply_mem_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-apply-mem-iff.md) | 734 | `result-track:beac322ee20bca7262ee9a4480fd82af29d849379e0b854c93950a34290cdedc` |
| 87 | `theorem` | [IsCycleOn.isCycle_subtypePerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-iscycle-subtypeperm.md) | 740 | `result-track:6bdde2bd6e08c7ea420310f917bedc4c2bcb12e9b96533bd38cb689ff386c328` |
| 88 | `theorem` | [IsCycleOn.subtypePerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-subtypeperm.md) | 748 | `result-track:b5c19d5faac00eefecb6eb0845982654f0c2a89a7cff7a03b628294e4fd46d0c` |
| 89 | `theorem` | [IsCycleOn.pow_apply_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-pow-apply-eq.md) | 758 | `result-track:d865efd7b87a76dccad3bfd099ebb6b94acbc1a5ad3d118ea28c265ad9d45c6f` |
| 90 | `theorem` | [IsCycleOn.zpow_apply_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-zpow-apply-eq.md) | 773 | `result-track:c280653ff6a0509c7d172c06afc359bff9abaa61e88596f38991dce335ab20a6` |
| 91 | `theorem` | [IsCycleOn.pow_apply_eq_pow_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-pow-apply-eq-pow-apply.md) | 780 | `result-track:fe0a6f777b945c15d288188293a12d02be781c5f64310f59feb79fc1dcb1f4db` |
| 92 | `theorem` | [IsCycleOn.zpow_apply_eq_zpow_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-zpow-apply-eq-zpow-apply.md) | 785 | `result-track:b1dde9f326622f90ed9a3c4c7d35d7ff0dd9fd9e8435129c0e496d37f290e51f` |
| 93 | `theorem` | [IsCycleOn.pow_card_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-pow-card-apply.md) | 790 | `result-track:59ce31b24517cbbbafe152ce8d510b1ff97326ed5dbff3f1fc44f5826d1a0af0` |
| 94 | `theorem` | [IsCycleOn.exists_pow_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-exists-pow-eq-source-edition-2.md) | 794 | `result-track:aecc0fb4f18135d0442cadad91ecf57e8b2b70533c0100a28c1f7a6b8215a735` |
| 95 | `theorem` | [IsCycleOn.exists_pow_eq'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-exists-pow-eq.md) | 806 | `result-track:99ac3aad92929cd9701f564d01633cfbaecca0df2c5626f2ec038eae10433c73` |
| 96 | `theorem` | [IsCycleOn.range_pow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-range-pow.md) | 812 | `result-track:ac04ac761c14c9e0f3cd0c83c539911702cd3f55969cce4cf1b3336406103df8` |
| 97 | `theorem` | [IsCycleOn.range_zpow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-range-zpow.md) | 817 | `result-track:1edbe16a2c5f4ab760e1efc84c0c42b8491799d0dce3927894df3a5d8bda4a6a` |
| 98 | `theorem` | [IsCycleOn.of_pow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-of-pow.md) | 821 | `result-track:a74e5716e589c25cfcfd11518c17aef67e2228e488a269794a01baeb30504606` |
| 99 | `theorem` | [IsCycleOn.of_zpow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-of-zpow.md) | 824 | `result-track:e00fe168f35f857c7ff36f212d250e88c62bc50d612f3bc9ee276e096f629428` |
| 100 | `theorem` | [IsCycleOn.extendDomain](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-extenddomain.md) | 828 | `result-track:3f30a009338d8de7a00d5a0eea885b2a3450764290fb3319bc3e9a3afc9fb53c` |
| 101 | `theorem` | [IsCycleOn.countable](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycleon-countable.md) | 834 | `result-track:70fa10e313254699c3ac7f89a8a65f8a3ea1ab0e86f19d7a3cb0738094fead1d` |
| 102 | `theorem` | [Nodup.isCycleOn_formPerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/nodup-iscycleon-formperm.md) | 850 | `result-track:a85a87189a4479a01dae2ed5edc2992baf358a756adc130dbc552707cba6251b` |
| 103 | `theorem` | [exists_cycleOn](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/exists-cycleon.md) | 868 | `result-track:adb8a22fcfd757779f23057429e7818da365a16c3828bc8df3597dcf1710b397` |
| 104 | `theorem` | [Countable.exists_cycleOn](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/countable-exists-cycleon.md) | 881 | `result-track:278d46d08c079acc93ff9cf4ba9d4d555e629be00a467f9f9aca25b0a8f18747` |
| 105 | `theorem` | [prod_self_eq_iUnion_perm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/prod-self-eq-iunion-perm.md) | 899 | `result-track:ced454f30e374235ef41d9708f939d952eaaa754a7e494058b4b20472331f618` |
| 106 | `theorem` | [product_self_eq_disjiUnion_perm_aux](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/product-self-eq-disjiunion-perm-aux.md) | 915 | `result-track:81548e5f8a1f7480718e849e09614567101abec54f32d5c02e99f04935b1cea5` |
| 107 | `theorem` | [product_self_eq_disjiUnion_perm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/product-self-eq-disjiunion-perm.md) | 942 | `result-track:5f01edc649a8ff01473058abcb2527ea8c5526d3b2e79a0660ecc483814e5a1b` |
| 108 | `theorem` | [sum_smul_sum_eq_sum_perm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/sum-smul-sum-eq-sum-perm.md) | 962 | `result-track:4f5f331a6fd084e0d955e915749f32f69364cfec6123b30c18aa0ada56b91721` |
| 109 | `theorem` | [sum_mul_sum_eq_sum_perm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/sum-mul-sum-eq-sum-perm.md) | 967 | `result-track:541399200c39471cfefabfaeac2f7a5f0069d2deed51aee4765707f83616cee8` |
| 110 | `theorem` | [subtypePerm_apply_pow_of_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/subtypeperm-apply-pow-of-mem.md) | 975 | `result-track:82c374cac8467c1d5f606e2a8b70dc2e6bc1063847f2e907f1e07c2516c2bf1f` |
| 111 | `theorem` | [subtypePerm_apply_zpow_of_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/subtypeperm-apply-zpow-of-mem.md) | 980 | `result-track:f87d82e00afdfc42b78c666d65b45192f310351f9d85866a50c9fa5af79989f0` |
| 112 | `def` | [subtypePermOfSupport](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/subtypepermofsupport.md) | 988 | `declaration-track:209c2e46d6ab75bbba048c6afa43a5510b0002500d04bb5c0bf5fdd4727e3b6b` |
| 113 | `def` | [subtypePerm_of_support_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/subtypeperm-of-support-le.md) | 992 | `declaration-track:7d292393d5bff69e1b582560e57d984b39c835f33606ec106dd8dd2ed7a4eb26` |
| 114 | `theorem` | [IsCycle.nonempty_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-nonempty-support.md) | 997 | `result-track:8fc37fb1debb4aaa9f1656c2cbcab4b72812bf106f6a929f5d1da11bc41b89d2` |
| 115 | `theorem` | [IsCycle.commute_iff'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-commute-iff-source-edition-2.md) | 1003 | `result-track:de09afbb303f484e1854ebde5fc951101e29f954d6cb255e24841f2a0676c749` |
| 116 | `theorem` | [IsCycle.commute_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/iscycle-commute-iff.md) | 1040 | `result-track:a8d9695d287b871f9a3a3d9b82e15dce48ac752ec6c907b3c2b7fdd95e044b9a` |
| 117 | `theorem` | [zpow_eq_ofSubtype_subtypePerm_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/zpow-eq-ofsubtype-subtypeperm-iff.md) | 1056 | `result-track:feda69fa41c6d208984c2edccef2e64a9bc2f673d4c8c9525d7355618834cf10` |
| 118 | `theorem` | [cycle_zpow_mem_support_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/CycleBasicSourceEdition2.lean/declarations/cycle-zpow-mem-support-iff.md) | 1077 | `result-track:813c3f3bf608c337356af16d868efc9099f7a9c382a56eadbb1ff128b844c0f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5813f51d1383f91d065182e5260c7a9f88a28402afe5e5e2fd9f956423025b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
