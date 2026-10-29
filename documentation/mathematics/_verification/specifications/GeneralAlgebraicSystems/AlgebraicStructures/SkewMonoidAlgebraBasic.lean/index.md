# Verification target: Skew Monoid Algebra Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a4bbb7d8a4ab54c383f20a829bfd74d07c9a712",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantb97331754ffa152ec920edae510e7c5ed8c7b032f4880589177c093f1bb1dc2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a4bbb7d8a4ab54c383f20a829bfd74d07c9a712`.

Source path: `GRWTSK/Algebra/Basic/Variantb97331754ffa152ec920edae510e7c5ed8c7b032f4880589177c093f1bb1dc2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantb97331754ffa152ec920edae510e7c5ed8c7b032f4880589177c093f1bb1dc2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Finsupp.LSum` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SkewMonoidAlgebra](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/skewmonoidalgebra.md) | 36 | `declaration-track:c38af697b4233fd07c6fe80eb44fd9576d60911e4c5ec884d22a19b47d9a5467` |
| 2 | `theorem` | [eta](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/eta.md) | 52 | `result-track:31108e503503f10df48b6f69a4832b8ee3543841492d84a5196fb1815918c9f9` |
| 3 | `def` | [add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/add.md) | 55 | `declaration-track:df1e07bc91ee5dbd59354c0b3dc0bd1faf5a105074f36321e40c6d8df6913920` |
| 4 | `def` | [smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/smul.md) | 59 | `declaration-track:8dd7c9871b00534a350ed9ca1f8527eccc6ee008ff747b4c8ab458a3562b8517` |
| 5 | `instance` | [instZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/instzero.md) | 63 | `declaration-track:585bb2cfab1fcbc8a059f33a9efa6552de5018400ea9129f2e9621ae16066672` |
| 6 | `instance` | [instAdd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/instadd.md) | 65 | `declaration-track:a3a8751b864450a437ef4d323f993867251279115df647151628e38ac2590a11` |
| 7 | `instance` | [instSMulZeroClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/instsmulzeroclass.md) | 67 | `declaration-track:83fdb7d2855aba40fa27faa7a707521682392fbc002d6a9ca0182ed22f531d62` |
| 8 | `theorem` | [ofFinsupp_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/offinsupp-zero.md) | 73 | `result-track:2b72aa0a4f051b8409c3923a9c796222dae5f420c6063d7fbcb03fc57ab8142d` |
| 9 | `theorem` | [ofFinsupp_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/offinsupp-add.md) | 76 | `result-track:4dd5358e2a129bbfbdcaac8da0d4f6854344d7b9be63453a48bcce2c986207f2` |
| 10 | `theorem` | [ofFinsupp_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/offinsupp-smul.md) | 80 | `result-track:d75b936fc3da21d5f59e4f66cc722c42caa6608a55b4c34223f13dcb5b2c871d` |
| 11 | `theorem` | [toFinsupp_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/tofinsupp-zero.md) | 85 | `result-track:8710f2953df599b64a2514da93a7c4055594796e026a15d368c349ff6a062174` |
| 12 | `theorem` | [toFinsupp_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/tofinsupp-add.md) | 88 | `result-track:2ab3cdf44105696479c63c3c78659cec16e82c561f47bc1bf449cb699248159e` |
| 13 | `theorem` | [toFinsupp_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/tofinsupp-smul.md) | 93 | `result-track:481b80de446a8bc5569f41ee1b5a49884ff19ce9afc892047418a5f8b24d873d` |
| 14 | `theorem` | [_root_.IsSMulRegular.skewMonoidAlgebra](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/root-issmulregular-skewmonoidalgebra.md) | 97 | `result-track:b1025aea7d5b8bda64bd43594c12c9db48c464644bce707b2d30fcc1f68be80d` |
| 15 | `theorem` | [toFinsupp_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/tofinsupp-injective.md) | 103 | `result-track:516a332469fe2d9edef9532b7ed1ec6ab437d945dd9c1984f2d711c5ebcd895b` |
| 16 | `theorem` | [toFinsupp_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/tofinsupp-inj.md) | 108 | `result-track:cc54237547e0c7d9f36fbd7b57d02b4b75820d93c6f67b097ca1ef1883390d2a` |
| 17 | `theorem` | [ofFinsupp_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/offinsupp-injective.md) | 111 | `result-track:cfafeddf28b1efeb6757879bc1bd97950f69188791e8dda3abfb98a005688ed0` |
| 18 | `theorem` | [ofFinsupp_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/offinsupp-inj.md) | 116 | `result-track:24dad11c2cab6e87daf30a67da5240b06f4c4fc5aca522dbc3e66ca73b85dfff` |
| 19 | `theorem` | [toFinsupp_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/tofinsupp-eq-zero.md) | 120 | `result-track:3dff61bd4b72583388201bf97d20983e6acffdfc860609d5ba646ba8ab5b8b52` |
| 20 | `theorem` | [ofFinsupp_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/offinsupp-eq-zero.md) | 124 | `result-track:7bcf47119cad74dda7660aea20f081472d2a37ac75546859e2d1698e39164751` |
| 21 | `instance` | [instInhabited](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/instinhabited.md) | 127 | `declaration-track:58fcc52e53deead62290b6b8e4c9511a836fc82b5124571e8daa3ed81d2da5fe` |
| 22 | `instance` | [instNontrivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/instnontrivial.md) | 129 | `declaration-track:927ec71062589f067a1ce51bd97541405503f493d1317a0ead7fdf9614a2be2f` |
| 23 | `instance` | [instAddCommMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/instaddcommmonoid.md) | 132 | `declaration-track:c1fbcc2101b197768a3809cfc8fa40ff43f2d14883ed7371ed416b7f95a3823a` |
| 24 | `def` | [support](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/support.md) | 143 | `declaration-track:02b72dfd32669241d025f5ea2f0371aa9efad34bd5fe549a9892f60030a191e9` |
| 25 | `theorem` | [support_ofFinsupp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/support-offinsupp.md) | 147 | `result-track:be48f12e1d3f9dd194c6ed4f60415eb8836bc316b3c2d09e5b090f53dddf9a4a` |
| 26 | `theorem` | [support_toFinsupp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/support-tofinsupp.md) | 150 | `result-track:b97464c2e177bada93f82fc57cba4a62dcba7393cc389b0a4dc2960cbecdd3b8` |
| 27 | `theorem` | [support_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/support-zero.md) | 154 | `result-track:019cf1844f23d7304d9840abc11a57f071548307923d303ede4a44f19bca1f14` |
| 28 | `theorem` | [support_eq_empty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/support-eq-empty.md) | 157 | `result-track:a7582837bb7df0007e058234e75152a2985f9012b6aa90090bd56055ec5f4b24` |
| 29 | `def` | [coeff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/coeff.md) | 166 | `declaration-track:354429d3276714ef14c9986fe896adeeee3d5860fc938e0070601cd652cc5498` |
| 30 | `theorem` | [coeff_ofFinsupp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/coeff-offinsupp.md) | 170 | `result-track:cac0dd35dc0236818963f3ffeb941e99c91016bf27cbd345003a6bdf399fb64f` |
| 31 | `theorem` | [coeff_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/coeff-injective.md) | 172 | `result-track:0f2099572f671c455c8220fe8798d6e61bbbdf3c32ece8d3a97b87ed3a8463c6` |
| 32 | `theorem` | [coeff_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/coeff-inj.md) | 177 | `result-track:0028e7adba2f40ced3e484f2f2fa399429ca8ffdd0975e5f3d60136a45ed68f8` |
| 33 | `theorem` | [toFinsupp_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/tofinsupp-apply.md) | 181 | `result-track:b43750492efc3ae2047ba9c4f304e9261a60d1eee99c67b06cd616cb81bb17ba` |
| 34 | `theorem` | [coeff_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/coeff-zero.md) | 184 | `result-track:f554eedc332633e83db0c49f293771d186f39f25d7ad6a282928c648c56e68ae` |
| 35 | `theorem` | [mem_support_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/mem-support-iff.md) | 187 | `result-track:682722b7c77a57e3575f653b20a75e46b19e1c8c16352730eec9de8d8d30e23e` |
| 36 | `theorem` | [notMem_support_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/notmem-support-iff.md) | 191 | `result-track:0dd778d38aedf0a9b747784d205d02b791303844088b546335482f6466fabe8a` |
| 37 | `theorem` | [ext_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/ext-iff.md) | 197 | `result-track:c7531c6bffe92f18b0dab490266a59dd6799a266b87e99ff83ad34a2a30004cc` |
| 38 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/ext.md) | 203 | `result-track:e6a5dab23772d908a3363b8663beede3813b7e01b1d15d25150e94e48311053a` |
| 39 | `theorem` | [coeff_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/coeff-add.md) | 206 | `result-track:f273c09d6f47ab25551f08c1e4bead29be2a5c1c08d12164f6c43ebf2d249074` |
| 40 | `theorem` | [coeff_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/coeff-smul.md) | 214 | `result-track:c7b09a84e7129023f057995d4047bd1074e3f771ebb0dd9dca453d51e48928b9` |
| 41 | `def` | [single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/single.md) | 225 | `declaration-track:e99d2041d74e99cb90d7b5fea918593692ede30d6d6f290813029e3bd6c30ace` |
| 42 | `theorem` | [toFinsupp_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/tofinsupp-single.md) | 228 | `result-track:750e5ecdf65a6a708c8d8166199380913379e8c2116e56f6aad8b8ee868c51fb` |
| 43 | `theorem` | [ofFinsupp_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/offinsupp-single.md) | 231 | `result-track:10e5aea027c54890a315c51b42be70cc3f57fdaf1667b7438d7acff143858cc7` |
| 44 | `theorem` | [coeff_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/coeff-single.md) | 233 | `result-track:14735afa7a509be255ad9811a9f34001ab643779073f692bcb2e8aa653bf1fea` |
| 45 | `theorem` | [coeff_single_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/coeff-single-apply.md) | 237 | `result-track:46e699bd3aa112317be2285698baf414e3e6aba05c6de7a29aed7fd70e33efec` |
| 46 | `theorem` | [single_zero_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/single-zero-right.md) | 241 | `result-track:24f7ad5116f75cf4983f45e89efee51281a9433735c50e56143cf66ece3269b2` |
| 47 | `theorem` | [single_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/single-add.md) | 246 | `result-track:410479845e5c2c4abcdcf7584dd4b1398b3f1455d8246cd4659b2cd00b9dfd7e` |
| 48 | `theorem` | [single_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/single-zero.md) | 250 | `result-track:f7948975c91ebc7f596c118ba1947eda917da9752766e719e49a6cf0ed074e15` |
| 49 | `theorem` | [single_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/single-eq-zero.md) | 253 | `result-track:7158c51cf0fd2cd41bcd5ba8a7f10ed8cbb5552f9219a9053af7a114b3d1c879` |
| 50 | `def` | [toFinsuppAddEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/tofinsuppaddequiv.md) | 260 | `declaration-track:551bcc75b2e748bd34f7ad675f1b719a15a48d185d778575fe413d58e2f0eb2f` |
| 51 | `theorem` | [smul_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/smul-single.md) | 267 | `result-track:9da064ffb3f1528196bff2cc50ef546c7ed893c379a4101acc1054902c2f9c82` |
| 52 | `theorem` | [single_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/single-injective.md) | 271 | `result-track:3f88293baf10a1e4d0e73dcb9017a5a55e6d9e8dc994eeb954de484f3aca71c8` |
| 53 | `theorem` | [_root_.IsSMulRegular.skewMonoidAlgebra_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/root-issmulregular-skewmonoidalgebra-iff.md) | 274 | `result-track:251593610f7f67a1551f9bf5264103478804081b13476b454c6f15ca63a72a04` |
| 54 | `instance` | [instOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/instone.md) | 289 | `declaration-track:ee0ce7026b9110a8bcd9dee6c2be9a5e69755b3f464bb3fb91a24b1e10663f45` |
| 55 | `theorem` | [ofFinsupp_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/offinsupp-one.md) | 291 | `result-track:09b2ef65562a1f9d31f1d24c806442c70d55c91aa9adca88957facbf8041d916` |
| 56 | `theorem` | [toFinsupp_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/tofinsupp-one.md) | 294 | `result-track:cd2a96c3c93bd57ad7ba520c4d94882d0ee668c1f4a4cd15631c06917eb837e4` |
| 57 | `theorem` | [toFinsupp_eq_single_one_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/tofinsupp-eq-single-one-one-iff.md) | 297 | `result-track:825881f955e7677c36e2e03160aa5235cd3185a3a1f3dd1c012c6727425879b4` |
| 58 | `theorem` | [ofFinsupp_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/offinsupp-eq-one.md) | 302 | `result-track:96ee3decf0f64ee53d43a945e3e62c0d1e887100a485932fa772c250e816c130` |
| 59 | `theorem` | [single_one_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/single-one-one.md) | 306 | `result-track:7b41ec6520de7206e3ee742006e6ecf7e944005f64c869ae1f56091c0faf64aa` |
| 60 | `theorem` | [one_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/one-def.md) | 308 | `result-track:f6654228c888e2c249ef9412c146dc6404e15a2098b2e4aacf56b443e4b73ed7` |
| 61 | `theorem` | [coeff_one_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/coeff-one-one.md) | 311 | `result-track:b942fc3d31c695a2ba583b3273926d5fe0ad1274363c3b182e682bd946025ba6` |
| 62 | `theorem` | [coeff_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/coeff-one.md) | 314 | `result-track:18f6823920c97c0b31ca74cb31685a8eea0a4d8b78e6a3d2046b069e04526d7f` |
| 63 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/instance.md) | 324 | `declaration-track:e0a14b8ec5ee5e18b2a15fd4091e94ccc73f51e23c15cb4669ab3b651fb128fc` |
| 64 | `def` | [sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/sum.md) | 328 | `declaration-track:67fc0f99b29d07a9c2f0fa8efa39dc3573b8a05b6e26146454dc25474a003499` |
| 65 | `theorem` | [sum_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/sum-def-source-edition-2.md) | 331 | `result-track:d18b121519cf895fe6031afb4f7afea8495e874cfac55ec9d1df6f9f14f3faf9` |
| 66 | `theorem` | [sum_def'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/sum-def.md) | 335 | `result-track:538c1eaa3a314a5ec3320c2c0627d8dab6ac106c3203073da7ba87c56cc001f0` |
| 67 | `theorem` | [sum_single_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/sum-single-index.md) | 339 | `result-track:12e63162de5fbadb34af25df704e1e7eb8cf6b7d71c6c42aff6dfabd96cf2e49` |
| 68 | `theorem` | [map_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/map-sum.md) | 343 | `result-track:bce5d5105d0d0f7da941f34358398558466ddb1577fb0d682dc6a6563907ee9b` |
| 69 | `theorem` | [toFinsupp_sum'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/tofinsupp-sum.md) | 349 | `result-track:52d1a4f345b02dd22b4fec1a1b59cbcc1e1b32d8292bd63342e1eb056fc849bd` |
| 70 | `theorem` | [ofFinsupp_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/offinsupp-sum.md) | 354 | `result-track:93b5c72e09911b2ee537d06d194276a944b07a119239878a46179a8128ee4117` |
| 71 | `theorem` | [sum_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/sum-single.md) | 359 | `result-track:c605f35a6a48f7c5b9259bb684431537169919e5a22c19da479263249dc7a061` |
| 72 | `theorem` | [sum_add_index'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/sum-add-index.md) | 364 | `result-track:5257095f20724f1133b793359f80e904e20e6ffe8f93ad34dfe86f76b939208a` |
| 73 | `theorem` | [sum_add_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/sum-add-index-source-edition-2.md) | 373 | `result-track:8934a8d7ca9b078849278cbd6a780fd2a7fb2bdeba6af228833e79aef9459716` |
| 74 | `theorem` | [sum_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/sum-add.md) | 381 | `result-track:4fdf03d79a1f7e0a244232a95ca49ddd1fdbbf1225a33d49c4fb97a9b3f684f9` |
| 75 | `theorem` | [sum_zero_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/sum-zero-index.md) | 385 | `result-track:10b0119afcac99f80203aea1e03ce2ad234400836ebb9a63072e4130b0a9ab6a` |
| 76 | `theorem` | [sum_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/sum-zero.md) | 389 | `result-track:8e4600ab08c8428ded0400b9b346d262ee4e47bedcd58bf662f69bc960147ec1` |
| 77 | `theorem` | [sum_sum_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/sum-sum-index.md) | 392 | `result-track:8eccc9e2cf092ab7d7b9ed79a8c06eef1f1f6485b17dc2e13e49784ce2742586` |
| 78 | `theorem` | [coeff_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/coeff-sum.md) | 400 | `result-track:1365012a0a6c793739894b2834a2de0f0581920687bf403615d30543bd6e1ff2` |
| 79 | `theorem` | [sum_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/sum-mul.md) | 405 | `result-track:e23dcdce1b99a171972b3a605caf3581901a46c11efda2951b1ed5d00ecef1f9` |
| 80 | `theorem` | [mul_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/mul-sum.md) | 409 | `result-track:41995227fd913762e536897d46cc1c23f668f1848a84ed8eeaa6cb6600b773cb` |
| 81 | `theorem` | [sum_ite_eq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/sum-ite-eq.md) | 415 | `result-track:21e297bfa9e7cc3e4c67338fb5c56330e77a5df6e181d1044d35ceddebbf89e1` |
| 82 | `theorem` | [smul_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/smul-sum.md) | 420 | `result-track:ada0f550db2214e2b5a0e829936530758e0585e5aaf3840672272520d2513509` |
| 83 | `theorem` | [sum_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/declarations/sum-congr.md) | 424 | `result-track:fe2ac448155a43ad4ad2b648cac57b2f5ff6d7e019bb9f5728d6163d722d7637` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3464eef1bbc1a82ee348d61f97e5e3910539efffe4e5828100f9c85f9a0f2d05 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variantb97331754ffa152ec920edae510e7c5ed8c7b032f4880589177c093f1bb1dc2a.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variantb97331754ffa152ec920edae510e7c5ed8c7b032f4880589177c093f1bb1dc2a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
