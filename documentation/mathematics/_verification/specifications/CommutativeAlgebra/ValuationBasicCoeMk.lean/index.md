# Verification target: Valuation Basic Coe Mk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ec2df2d98249cf416c09a55d151946533574627",
  "lexical_observation_count": 151,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant458f8613719ad8dad6a728552317ebffeba4bedf2fc268a6e13eecf176287a56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ec2df2d98249cf416c09a55d151946533574627`.

Source path: `GRWTSK/Algebra/Basic/Variant458f8613719ad8dad6a728552317ebffeba4bedf2fc268a6e13eecf176287a56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant458f8613719ad8dad6a728552317ebffeba4bedf2fc268a6e13eecf176287a56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Hom.Monoid` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Valuation](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/valuation.md) | 76 | `declaration-track:016d9582cbc0624ec8813f7a4a4cdd4c2e3e0c90d7be21d705889298a277cdec` |
| 2 | `class` | [ValuationClass](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/valuationclass.md) | 83 | `declaration-track:1d2065673e5864244d493d01defd3804f2d810e4a98e85d4d41ec5d06caef016` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/instance-source-edition-4.md) | 91 | `declaration-track:92ad983de4182f99d4ac6e0687136c9151d3f9d14847316ec45d6f50462695dd` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/instance.md) | 115 | `declaration-track:0c288b09ce13961290e42a57727988de9ae4ab5e68ca01def958fd185c785a29` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/instance-source-edition-7.md) | 121 | `declaration-track:d5fcc18ba6ea99683c62a0729dfd5d7d89a631b34b251c0c39bb8de17975243b` |
| 6 | `theorem` | [coe_mk](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/coe-mk.md) | 128 | `result-track:d0fe5bc70f94836ca2b94070cb1e4db4cc87678b0ee87acc74313d7db8903952` |
| 7 | `theorem` | [toFun_eq_coe](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/tofun-eq-coe.md) | 130 | `result-track:6a257b2312313419fd107ec11d3a4a9920ebea37d54c2fd12eb08cbd2000be19` |
| 8 | `theorem` | [toMonoidWithZeroHom_coe_eq_coe](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/tomonoidwithzerohom-coe-eq-coe.md) | 133 | `result-track:c5d7a21fe789f5343134f43a7c4a1cc8b17e3a3cfd1be08a642e578c07379b04` |
| 9 | `theorem` | [ext](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/ext-source-edition-2.md) | 137 | `result-track:ea820e82a347cc03bab49166ff4a9a47dc3cbf5747d04626f193d7f172f90c41` |
| 10 | `theorem` | [coe_coe](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/coe-coe.md) | 143 | `result-track:6e481854ff35689ded3f62768e730e15401e040ae0dcf3acf4f62b09e26a07a4` |
| 11 | `theorem` | [map_zero](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-zero-source-edition-2.md) | 145 | `result-track:f81be0c683a4c3505f93aa085f2b7bcdb953d3acb605aae261d12ed3d1b24b39` |
| 12 | `theorem` | [map_one](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-one-source-edition-2.md) | 148 | `result-track:ed465293e4a92a743376ba16c5111f28a60fba7f26fd7d8ad13933e5ff597f8c` |
| 13 | `theorem` | [map_mul](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-mul-source-edition-2.md) | 151 | `result-track:d21f6e9828a70dbb5297eafac5b691011206bc1325361348ef9906bb042d1684` |
| 14 | `theorem` | [map_add](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-add-source-edition-4.md) | 155 | `result-track:f64be4a52467112aa6318880652f7fb04de1adc4249b2a07a738e44ebce3d54c` |
| 15 | `theorem` | [map_add'](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-add.md) | 159 | `result-track:43c0db3d46502da21a0af85af216a2ffd98d689d11672d504c7e6616435e50f2` |
| 16 | `theorem` | [map_add_le](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-add-le.md) | 164 | `result-track:854fdf82be992d7c3789b8e98235d4b3ffdc3c54ade989dd5bc029fe058b013f` |
| 17 | `theorem` | [map_add_lt](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-add-lt.md) | 167 | `result-track:04dcc0930476d4d5be703f9a6818f5715b3186355b5f2c83d669721af8943fe3` |
| 18 | `theorem` | [map_sum_le](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-sum-le.md) | 170 | `result-track:f8f2463b5893ed4dd545cc0a543bf9c701190859c036bfce1b1632ee4ae3f3f2` |
| 19 | `theorem` | [map_sum_lt](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-sum-lt-source-edition-2.md) | 179 | `result-track:ee0eed3434e764c98e578eeb709f38e5364dafe64e90431e7c26a9196b89e29f` |
| 20 | `theorem` | [map_sum_lt'](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-sum-lt.md) | 188 | `result-track:a65cac26bb87e24190d19e9de4c65f5616d5d06f4052718056bf410812724346` |
| 21 | `theorem` | [map_pow](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-pow.md) | 192 | `result-track:65aca648306c72d4c3d46295330cded3c873200bf291c484eb6dcaf61a8324cd` |
| 22 | `def` | [toPreorder](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/topreorder-source-edition-2.md) | 198 | `declaration-track:ba90dc2722c348db88d7f5d4a092d9d59dcb78922d54b411fe9c4ce9488aea00` |
| 23 | `theorem` | [zero_iff](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/zero-iff.md) | 202 | `result-track:54ab6eaf57f9ebc1defe5be0a9865a9914a3ea20dc44cec1324b7b45970f2f15` |
| 24 | `theorem` | [ne_zero_iff](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/ne-zero-iff.md) | 205 | `result-track:3fe8dfb717281af1ed3f4207909ef33365b086cf8337d1d948de96953a79c7df` |
| 25 | `lemma` | [pos_iff](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/pos-iff.md) | 208 | `result-track:995ff3a7d7579b078da90dc08c7da53658d1825d63a7aea97e3f6c427fd9347d` |
| 26 | `theorem` | [unit_map_eq](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/unit-map-eq.md) | 211 | `result-track:c819030ce6a031431a4babc180a2493d2b7ca77347288adf77194513dbc0cc51` |
| 27 | `theorem` | [ne_zero_of_unit](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/ne-zero-of-unit.md) | 214 | `result-track:d2431b21d481937bb30250d31cba6bfd6e87cf231008382114fb3df0e14d7a20` |
| 28 | `theorem` | [ne_zero_of_isUnit](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/ne-zero-of-isunit.md) | 217 | `result-track:e30d1fc62d81f6a4c88d0430dd483e87498a4fee1301673bd1b2e6c8d5492e17` |
| 29 | `def` | [comap](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/comap.md) | 222 | `declaration-track:09f147c6c6d0055817fcfdb0f1a7cedbb80a3964b19f9c80806205bc2e01b1cf` |
| 30 | `theorem` | [comap_apply](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/comap-apply.md) | 228 | `result-track:2e8e2e11310ed34fdb7b825860a836dead7ad6b4351a4ace8417b52f581811e9` |
| 31 | `theorem` | [comap_id](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/comap-id-source-edition-2.md) | 232 | `result-track:36b9d78f011e754cf670241b35fe4ba839375d76ce7e42f21a700b985762c163` |
| 32 | `theorem` | [comap_comp](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/comap-comp-source-edition-2.md) | 235 | `result-track:84acc810b253b6c2c0a2a75cc7eaf68e294c392ad37860bc18d46e8fb8b61c8a` |
| 33 | `def` | [map](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-source-edition-3.md) | 241 | `declaration-track:d3bc39efd1cc40e3e19d362db3a0c6d10d0b2918b12b1234553b227caf211120` |
| 34 | `lemma` | [map_apply](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-apply-source-edition-2.md) | 251 | `result-track:f1a006cb7c054bfd2186986378453297a44cac6a4ecb9d9ffcb206c9c1b76ecf` |
| 35 | `def` | [IsEquiv](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/isequiv-source-edition-2.md) | 255 | `declaration-track:e70597f4b740d5b850dc8e16d1dc1ed70fbed1ba4d22132985a448ed7ec9f242` |
| 36 | `theorem` | [map_neg](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-neg-source-edition-2.md) | 259 | `result-track:b1608494aabf7ff4bc9916374f0ab746f15719c8dcbd4cc95e82dd21f68d257c` |
| 37 | `theorem` | [map_sub_swap](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-sub-swap-source-edition-2.md) | 262 | `result-track:3ebfb720acec94dd10b6dc22a013519b32c1b66d32f6dc11fdd4aa0d3ddd42fc` |
| 38 | `theorem` | [map_sub](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-sub.md) | 265 | `result-track:2fc95c59e7e91ca21e3015ad00f674e6c4b188c04d2df77fe7a8890d1871fd64` |
| 39 | `theorem` | [map_sub_le](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-sub-le.md) | 271 | `result-track:9649473063c8cdcb4aa5cfeaf50f45888c63e69bb6edad65a113f7ee053ef067` |
| 40 | `theorem` | [map_sub_lt](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-sub-lt.md) | 275 | `result-track:f5f0437265b6c531bd21dae45897184dde5edce244c43cde4e35973906fdc853` |
| 41 | `theorem` | [map_add_of_distinct_val](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-add-of-distinct-val.md) | 281 | `result-track:8fdd414c5412d7903ddd8f112ac5c551ad2f6dd91ff239b48fab93f864bede01` |
| 42 | `theorem` | [map_add_eq_of_lt_right](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-add-eq-of-lt-right-source-edition-2.md) | 295 | `result-track:9cb6cd15d5aa792ee0fdbdd0436f9a90d3f45fb9029ebc45744a30109972dce1` |
| 43 | `theorem` | [map_add_eq_of_lt_left](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-add-eq-of-lt-left.md) | 298 | `result-track:6ae30e885e4bb07b611725f762566de0ca6f74d2b2a29cb7304f0291df90d0bd` |
| 44 | `theorem` | [map_sub_eq_of_lt_right](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-sub-eq-of-lt-right.md) | 301 | `result-track:0600b80009da45b1554b2e05b14e99d1971acb683f25ea6334bbdcae089eac18` |
| 45 | `theorem` | [map_sum_eq_of_lt](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-sum-eq-of-lt.md) | 306 | `result-track:f9216b02e06b24912a697aa26016891d8fafa1e6fdfe68c4f9df00a2cde7d09f` |
| 46 | `theorem` | [map_sub_eq_of_lt_left](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-sub-eq-of-lt-left-source-edition-2.md) | 312 | `result-track:860cbf051c3f6aa968f83c590cef6a72ff39028115ccd391167f3914e3ade818` |
| 47 | `theorem` | [map_eq_of_sub_lt](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-eq-of-sub-lt.md) | 316 | `result-track:a39773d87597b83903ccf828df43802f01e7047aaebe163254b7d940df8ee2c3` |
| 48 | `theorem` | [map_one_add_of_lt](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-one-add-of-lt.md) | 321 | `result-track:78832d7f99d3e5af5e294ca50019f19fe2a1c37512a8d2a786cc96d150419c27` |
| 49 | `theorem` | [map_one_sub_of_lt](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-one-sub-of-lt.md) | 325 | `result-track:2f29a87c52e8a693e335f15fb70b555e541002a5362cb29e2e08032d0d83694f` |
| 50 | `def` | [congr](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/congr.md) | 332 | `declaration-track:7d79f0a48f0f0bef026c9814930883df87079eedc1dff7f83b35f2437b456b9c` |
| 51 | `theorem` | [map_inv](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-inv.md) | 344 | `result-track:b01bc22c34908b239e445a4f53fb4073cf977541f3da4c20996f874856443545` |
| 52 | `theorem` | [map_div](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-div.md) | 347 | `result-track:08951e38eb10b13cf1ba510c1e1026029ff685b0227c85c750af06f5792d4c86` |
| 53 | `theorem` | [one_lt_val_iff](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/one-lt-val-iff.md) | 350 | `result-track:e451d82a147bd3e96ae1c1c070aa79102cfe77ea51fdabf3193e15089448ddb9` |
| 54 | `theorem` | [one_le_val_iff](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/one-le-val-iff.md) | 353 | `result-track:6761db544c3fbb36f1513b51eb56b5b2fcd374126b462e0f0f1e4df04ccc5f11` |
| 55 | `theorem` | [val_lt_one_iff](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/val-lt-one-iff.md) | 356 | `result-track:ba70d1dc41ce52a05867d31db41be7853ece496201a00d07e7e5fa95573b4b31` |
| 56 | `theorem` | [val_le_one_iff](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/val-le-one-iff.md) | 359 | `result-track:b142e5a453789ed70b4b592d74f2b037669744af077f78f8b73a6ce080357ba5` |
| 57 | `theorem` | [val_eq_one_iff](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/val-eq-one-iff.md) | 362 | `result-track:13b1245670f06ccbfec50faad9dcb2bff9b1cb6ec2381861baa17e8a5016d88f` |
| 58 | `theorem` | [val_le_one_or_val_inv_lt_one](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/val-le-one-or-val-inv-lt-one.md) | 367 | `result-track:1180599a9f65c411905927f2228b3dbb82366a629938b8e42d2deed3513edb7b` |
| 59 | `theorem` | [val_le_one_or_val_inv_le_one](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/val-le-one-or-val-inv-le-one.md) | 376 | `result-track:50b422d14f24de069d9d820d02ca29810fcf3b0f1d0278bc13858183585dde16` |
| 60 | `def` | [ltAddSubgroup](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/ltaddsubgroup.md) | 382 | `declaration-track:063a6a981299e81feea025f939b079c9ed65b3a4b67311636027284fc1764355` |
| 61 | `class` | [IsNontrivial](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/isnontrivial.md) | 398 | `declaration-track:58f8c1f2a65f4e4e0d89274fe26eb5acc4c7ceab071ac9c99980e1c466f1b8de` |
| 62 | `lemma` | [isNontrivial_iff_exists_unit](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/isnontrivial-iff-exists-unit.md) | 403 | `result-track:7a268aaa58125773f31d18e356be5a4bbf8d37b63b69f1a97fed22f8491d48e4` |
| 63 | `theorem` | [refl](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/refl.md) | 420 | `result-track:32ca26e9334d3aa97a83b6f67d48a04f03e9a316f56b2e093ce9d236b93d35d3` |
| 64 | `theorem` | [symm](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/symm.md) | 423 | `result-track:4cee9d2d7405b56e4eec281e68008324b3fd0b73c59ee13e76513274677479a6` |
| 65 | `theorem` | [trans](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/trans.md) | 426 | `result-track:25cdb663e9096e54347f7b5c1730c3c38ba5ca0cb5a7078d182476b37ca555ea` |
| 66 | `theorem` | [of_eq](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/of-eq.md) | 429 | `result-track:9c527eaea93099d8b69852dfa5dd65a6266d14a1f4953bad45732b5d83224115` |
| 67 | `theorem` | [map](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-source-edition-2.md) | 431 | `result-track:cb0778485c5886333d3ae2fca690aeca152c9d900d6dc81e86fc75f560fff28c` |
| 68 | `theorem` | [comap](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/comap-source-edition-4.md) | 441 | `result-track:755900a142752af8a4e2b30ff4f16b02bb02331ca2749de7ec3e7f97d232b6ef` |
| 69 | `theorem` | [val_eq](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/val-eq.md) | 444 | `result-track:28dfa089984d7bd4a82a9784d321a9f90914f2f0be6e3c262201e63ee84d979e` |
| 70 | `theorem` | [ne_zero](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/ne-zero.md) | 447 | `result-track:1268ee23f628b9c13a956a9da5c2cba3e3466476f0bd29a0766b244d7c09dd9e` |
| 71 | `theorem` | [isEquiv_of_map_strictMono](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/isequiv-of-map-strictmono.md) | 456 | `result-track:45a7978e72b1677b0d06e42d356a8949b56f3a0d4081fa04fcffaf6ad8912698` |
| 72 | `theorem` | [isEquiv_iff_val_lt_val](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/isequiv-iff-val-lt-val.md) | 461 | `result-track:32700c4e79e4c22ad26a873e5afe09ebbd9634a9a53b5fcce19933ade0349ed7` |
| 73 | `theorem` | [isEquiv_of_val_le_one](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/isequiv-of-val-le-one.md) | 469 | `result-track:2fac11b5462217fc4dac7a74b3770d20355c8c4b25b7236d465268467e60fd94` |
| 74 | `theorem` | [isEquiv_iff_val_le_one](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/isequiv-iff-val-le-one.md) | 478 | `result-track:a2ac311e46c3f92317a9dfe26818bb8fc801cb7f26ac355291c79c1ec0de11d7` |
| 75 | `theorem` | [isEquiv_iff_val_eq_one](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/isequiv-iff-val-eq-one.md) | 485 | `result-track:bc152aa08fa93f82f0f82f5121b8272152f0ea54b49a24a136b3e4d92f90b746` |
| 76 | `theorem` | [isEquiv_iff_val_lt_one](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/isequiv-iff-val-lt-one.md) | 522 | `result-track:c6aaa5ee3a3ccf7254be994da4f458a1a64366c24184dce5968a395945ac6eaa` |
| 77 | `theorem` | [isEquiv_iff_val_sub_one_lt_one](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/isequiv-iff-val-sub-one-lt-one.md) | 551 | `result-track:33c0d30284a11588b30c83108a43cda448d090a295d31dc08e5bbe7d324f6efb` |
| 78 | `theorem` | [isEquiv_tfae](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/isequiv-tfae.md) | 559 | `result-track:3c6fd546267cef13726683ec3a4adae6969a74e38194518bbd31779444a589da` |
| 79 | `def` | [supp](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/supp.md) | 581 | `declaration-track:275f5c922c86ae10ec145c17ee6661f5e696f99d453582ad5d61a522c18f67bb` |
| 80 | `theorem` | [mem_supp_iff](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/mem-supp-iff-source-edition-2.md) | 595 | `result-track:bccb68db7c8299198073377358f28add55c1f39b70b54276f7da4c8e9130103f` |
| 81 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/instance-source-edition-5.md) | 599 | `declaration-track:b3be78dc3187b47a254ce1ff0a2e3fb0c9a2d1853647ea65eb290a3ef476b8b6` |
| 82 | `theorem` | [map_add_supp](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-add-supp.md) | 610 | `result-track:233e51254e7ccc3b4de5283dedc59e37ef5a96e0ef725658bdfd42efceea26ae` |
| 83 | `theorem` | [comap_supp](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/comap-supp.md) | 620 | `result-track:2a13a7997bc326067850da44e2eba21d5afe7eeb72af58badabfacdb181bcc4d` |
| 84 | `def` | [AddValuation](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/addvaluation.md) | 634 | `declaration-track:d93479370f33f015cf29091a1ce5233bc1b35f1692c58a11567472032875f9c8` |
| 85 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/instance-source-edition-6.md) | 648 | `declaration-track:ba900e0c959942d7da08f95c58f892efbab51cf70911fb962a7a0f6ace4a62b6` |
| 86 | `def` | [of](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/of.md) | 662 | `declaration-track:6212f8ccb19cbd67dda7bc81a08ab57a8062cfd5ac9045f28000ede1681d407d` |
| 87 | `theorem` | [of_apply](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/of-apply.md) | 672 | `result-track:0dedf5e4d9d138453cd8725fbd22340ab9fd903e637e2753751d1860ce68fae7` |
| 88 | `def` | [toValuation](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/tovaluation.md) | 676 | `declaration-track:dc788ae98b3dd8f6eddaf2aca4df2a0ef12a90a6ea1508d80d59ea8a14709c58` |
| 89 | `def` | [ofValuation](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/ofvaluation.md) | 684 | `declaration-track:a0ef28dbbdd6c489d40532a448ad6ec16bc1051c967d3bbfdba1df30970c7470` |
| 90 | `lemma` | [ofValuation_symm_eq](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/ofvaluation-symm-eq.md) | 688 | `result-track:5c038762fd93bd4081141551f18335b95f2cfd1455a6c8603f33296cafe4f0d8` |
| 91 | `lemma` | [toValuation_symm_eq](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/tovaluation-symm-eq.md) | 691 | `result-track:c78d7dff3a66a8c31cc20586e504ea3b87a2409f8f2ed3ffb4a7661bf59b4b53` |
| 92 | `lemma` | [ofValuation_toValuation](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/ofvaluation-tovaluation.md) | 694 | `result-track:eca1e308df7cdb0eb5dde27dea009aac147826e3b0463f1f9e8fbdba02770360` |
| 93 | `lemma` | [toValuation_ofValuation](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/tovaluation-ofvaluation-source-edition-2.md) | 697 | `result-track:c556b55208781c2254418638566bdecab855904d1fd3fdaf2125dbaf4b386168` |
| 94 | `theorem` | [toValuation_apply](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/tovaluation-apply.md) | 701 | `result-track:8ff94f3e2d7330d95951a1b8100fe4ea50fa931fc9c0445af00e6a8ef5cd3edd` |
| 95 | `theorem` | [ofValuation_apply](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/ofvaluation-apply.md) | 709 | `result-track:bb36fb5b21c3ca48b2d2ef8e00b2f6feb1d552e72e08632716924b3748590fbb` |
| 96 | `theorem` | [map_zero](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-zero.md) | 717 | `result-track:d583019dca597a5ea1b41aaf6730865b115dfff4c6ba76fd4acc4a5990c3c119` |
| 97 | `theorem` | [map_one](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-one.md) | 721 | `result-track:d52fce7ae8d86a7871f55ec5e6f24a39dae303b6472bb730b7624dd8b38e7beb` |
| 98 | `def` | [asFun](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/asfun.md) | 726 | `declaration-track:34866fad57048d048ceec0b35cd0b57990f710b098e93504c8ce24ac0d88cf58` |
| 99 | `theorem` | [map_mul](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-mul.md) | 729 | `result-track:badee3388b0f37ff1ed89a7f67aa0e2a63ade441b6b47f70b936fe63c54fd210` |
| 100 | `theorem` | [map_add](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-add-source-edition-3.md) | 733 | `result-track:745ccd243bc3ef63e1405a87346bc66ccd5b68818c011cd998bba01295bf966c` |
| 101 | `theorem` | [map_add'](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-add-source-edition-2.md) | 737 | `result-track:6f59720f962c5950c79a43ee78e80d9cd8ef39ae405db8fcfc636731920416b7` |
| 102 | `theorem` | [map_le_add](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-le-add.md) | 742 | `result-track:07731720dfdfc2574be706b022bf34cac4931c67151ac809efaa079c5299cab6` |
| 103 | `theorem` | [map_lt_add](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-lt-add.md) | 745 | `result-track:0ac35b44de7c3f5f56f4babdb617f42ae0437ddbcb5ebcf72c1c34e9edd49fc4` |
| 104 | `theorem` | [map_le_sum](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-le-sum.md) | 748 | `result-track:92a827d7e78ad23b20c3549f10c0cbd5b9da59063d24cab5aba83347212f7dcf` |
| 105 | `theorem` | [map_lt_sum](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-lt-sum-source-edition-2.md) | 752 | `result-track:cc8ffb3db990cafb1cedf3078b42a72b8fb2dceecdf223bd02645f8ecc6c052e` |
| 106 | `theorem` | [map_lt_sum'](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-lt-sum.md) | 756 | `result-track:b99c02e8e906732ae03446f9ce40aa21fbc5a0e681fbf7952e1f3186e11d16ce` |
| 107 | `theorem` | [map_pow](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-pow-source-edition-2.md) | 761 | `result-track:e0418461bf59d2c11c443270505a576909a6c3dc47918ee5b814a5a670584376` |
| 108 | `theorem` | [ext](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/ext.md) | 765 | `result-track:41a63ef7f9b041e3d614da0bd8abe7c89e946dd1a533bd92dead6db0cfb56f31` |
| 109 | `def` | [toPreorder](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/topreorder.md) | 771 | `declaration-track:6746bed2b4c267f6944f5e545a93aaa76dea51e7c83e96e0d783824261e09731` |
| 110 | `theorem` | [top_iff](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/top-iff.md) | 776 | `result-track:10a6b62b8acf0ce7e02b7af7f818de6a5e2f3f1e839d3cd006786d994814599f` |
| 111 | `theorem` | [ne_top_iff](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/ne-top-iff.md) | 779 | `result-track:8823fdfb66657636b8d2327949da8ab3750e9e62bf88da8942f8495680a5d2d2` |
| 112 | `def` | [comap](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/comap-source-edition-3.md) | 783 | `declaration-track:5c4bf707e9801d65a9af778180fdc54c95cda67912b4fda80a8a34afb5f0f33b` |
| 113 | `theorem` | [comap_id](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/comap-id.md) | 787 | `result-track:2832135c8d59f8e51067db181525929d45925b6462a5b8f0d12aad003fdd892b` |
| 114 | `theorem` | [comap_comp](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/comap-comp.md) | 790 | `result-track:14a467255414a161a3a52109fe3db1f2214302b921e94899503b4906c812a653` |
| 115 | `def` | [map](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-source-edition-4.md) | 797 | `declaration-track:dfec402950be2e01edd77623619ab9c580174c88f191ffc30475b0508ed01261` |
| 116 | `lemma` | [map_apply](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-apply.md) | 806 | `result-track:d910fde35f7acb5474f3d9dce0ee3c4a2ad807f3544003b2262ba4267636d6c0` |
| 117 | `def` | [IsEquiv](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/isequiv.md) | 811 | `declaration-track:cb8f2b0e240dce9200d1d33405fa3bcd9fc45bb7eb4397777a3e24a92cce3040` |
| 118 | `theorem` | [map_neg](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-neg.md) | 815 | `result-track:7fe80c2e24c5ff9592c86566841f16bc99d0707d65639154efa302893f3d3296` |
| 119 | `theorem` | [map_sub_swap](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-sub-swap.md) | 818 | `result-track:272e8c54fb9a797350eafc305750cd9528dbe248e97f624666516ec417a4fd39` |
| 120 | `theorem` | [map_sub](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-sub-source-edition-2.md) | 821 | `result-track:db2a115913dcad02f6e2e8a1601f4c89d059572a90a22526c9f20ade9200b5c2` |
| 121 | `theorem` | [map_le_sub](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-le-sub.md) | 824 | `result-track:ef4988254b25983d5c10fb433716aef00d732fe00201652d14fb595a35f17e50` |
| 122 | `theorem` | [map_add_of_distinct_val](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-add-of-distinct-val-source-edition-2.md) | 829 | `result-track:ce3713e9ff2ad907e654872d322956bb60364a89621c8be65d85cf142682b598` |
| 123 | `theorem` | [map_add_eq_of_lt_left](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-add-eq-of-lt-left-source-edition-2.md) | 832 | `result-track:7ceb14aee60a39730508b7c291becbce23d0063e02df9ce34d86fe2b26e44916` |
| 124 | `theorem` | [map_add_eq_of_lt_right](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-add-eq-of-lt-right.md) | 836 | `result-track:77866527286ea2bf831eb94316faf95f9c5414178bdc723e254735ac11b5833f` |
| 125 | `theorem` | [map_sub_eq_of_lt_left](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-sub-eq-of-lt-left.md) | 839 | `result-track:0d20614ca96c9b7b0beec8a1f0d5d601a337b88964e77551acc350178c95f8c7` |
| 126 | `theorem` | [map_sub_eq_of_lt_right](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-sub-eq-of-lt-right-source-edition-2.md) | 845 | `result-track:e81b07fb93488c62500b38f72846dfe38b9c15d0b4ccd97af36839293f03b6e4` |
| 127 | `theorem` | [map_eq_of_lt_sub](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-eq-of-lt-sub.md) | 848 | `result-track:37195c382cad55926051251a052e0468cad2ec451c9a7cf596f24c274c9af92c` |
| 128 | `theorem` | [map_inv](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-inv-source-edition-2.md) | 858 | `result-track:c3aa1dbc167c91ff4b4a2a077b30e8a8ecaa2a8c57382b1c260ed39bc9b22518` |
| 129 | `theorem` | [map_div](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-div-source-edition-2.md) | 862 | `result-track:4ba350d5a96a0e0d05476efe392bcabbd9cd25f68b5730df19048e668b47bf2a` |
| 130 | `theorem` | [refl](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/refl-source-edition-2.md) | 878 | `result-track:72997136982ee60edc04289f798ddaa1df12e7f4b340ce6dac4fa8eb7caf0aa2` |
| 131 | `theorem` | [symm](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/symm-source-edition-2.md) | 882 | `result-track:9fc875028749d0cf4b909b7482fc1bc8af38da2d1a2e4a5a190d88760f01e40b` |
| 132 | `theorem` | [trans](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/trans-source-edition-2.md) | 886 | `result-track:fd618926a492c4c0c76a3371d290bd371ef8243e83676339ddeedded42bcd660` |
| 133 | `theorem` | [of_eq](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/of-eq-source-edition-2.md) | 889 | `result-track:bb1494c30ee8ee448f67c2296d83e30db45fb1e22c7982964b3d08ad5224ef07` |
| 134 | `theorem` | [map](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map.md) | 892 | `result-track:19d4b570db2b3c525bd832adf826cbe83c9f50862ca33366fbec93a9f26b799c` |
| 135 | `theorem` | [comap](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/comap-source-edition-2.md) | 901 | `result-track:3148511ac6144845aef8b1070ba1bc40aeea83d83168657ef56e5fa71bdeb91f` |
| 136 | `theorem` | [val_eq](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/val-eq-source-edition-2.md) | 905 | `result-track:3c98c6df3fbccb000cac099234c63ba34d86eac032e8a2f20300fced3bd7a063` |
| 137 | `theorem` | [ne_top](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/ne-top.md) | 908 | `result-track:83a669f562e7738afebe667eb46fcddf2f45a41e70b7b62080cbbd46ab6a7618` |
| 138 | `def` | [supp](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/supp-source-edition-2.md) | 918 | `declaration-track:60fbbbb294e0b6aea54928b9ddf6b7efb7f7e9395371124df92c975a09e9eed9` |
| 139 | `theorem` | [mem_supp_iff](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/mem-supp-iff.md) | 922 | `result-track:7b3c234a85eef8a480789c437f017e3e85f39229503e1eafbb1f7e67347e7aec` |
| 140 | `theorem` | [map_add_supp](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/map-add-supp-source-edition-2.md) | 925 | `result-track:5f576a1215129c94482e336ea90d57c1b0e89cbb5de10579477d6c59fc953297` |
| 141 | `def` | [toAddValuation](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/toaddvaluation.md) | 938 | `declaration-track:1a6e6a74864f95dbd5afe9c696e4cd3cd1a7b75c1be3364a750f5a26fd5f48ec` |
| 142 | `def` | [ofAddValuation](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/ofaddvaluation.md) | 949 | `declaration-track:e006445d1c8767f6cf9d13acc13533a9d11ef36a34b93584a95e3941b20a4629` |
| 143 | `lemma` | [ofAddValuation_symm_eq](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/ofaddvaluation-symm-eq.md) | 959 | `result-track:fc4a55c30ddfd3becfc57e5577d624cbceaf8ebb2714f26fcfe8626a946642e7` |
| 144 | `lemma` | [toAddValuation_symm_eq](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/toaddvaluation-symm-eq.md) | 962 | `result-track:85471d915a3a006de990acf66c723b759e0c8e26f0fb74b4f37f68bfc31cd934` |
| 145 | `lemma` | [ofAddValuation_toAddValuation](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/ofaddvaluation-toaddvaluation.md) | 965 | `result-track:efd0a23000d2f001a6b184ac0d338cf2b581023436a1b0090d6ebe993ceaa992` |
| 146 | `lemma` | [toValuation_ofValuation](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/tovaluation-ofvaluation.md) | 969 | `result-track:a14e4bb7a5e41821c76426c5deece1a54fd091414bd4e3ed26d0a909c43d1194` |
| 147 | `theorem` | [toAddValuation_apply](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/toaddvaluation-apply.md) | 973 | `result-track:80cdab842816e5c5228b74b6ac8bacfbabc8dfbfefabc34b891a90aba72085d6` |
| 148 | `theorem` | [ofAddValuation_apply](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/ofaddvaluation-apply.md) | 978 | `result-track:4d16d88988630dd5116ea92bdd288466becaa1f776534b1048661143e8635d93` |
| 149 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/instance-source-edition-2.md) | 982 | `declaration-track:6d920d6b4f417c217f1ec29cb47c347693d2b7f54fa91691c20324a9df42c5cb` |
| 150 | `lemma` | [val_mrange_zero](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/val-mrange-zero.md) | 992 | `result-track:966857b9cdeb0aea52b6e8b5686faa00c282d5c870b802648f7dba21e14a05f2` |
| 151 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationBasicCoeMk.lean/declarations/instance-source-edition-3.md) | 994 | `declaration-track:9209518707cbe5da7c7b2f039fc89fbbf8c3b603f4e9e8618a7fa7c6c72144b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6d3efa7dbfd02974f0409b975bcfa779d2e7678a554ce0ef4fcdf3ba8451805 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant458f8613719ad8dad6a728552317ebffeba4bedf2fc268a6e13eecf176287a56.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant458f8613719ad8dad6a728552317ebffeba4bedf2fc268a6e13eecf176287a56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
