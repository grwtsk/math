# Verification target: Perfection Namespaced Is Domain

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c38d240a51a0fbbab92219e1e7a1730ae8625e1",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Perfection/Variant64fe4b7393a98454093c95f197c1216717f9b4d693f46f793757e36563637ee3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c38d240a51a0fbbab92219e1e7a1730ae8625e1`.

Source path: `GRWTSK/Algebra/Perfection/Variant64fe4b7393a98454093c95f197c1216717f9b4d693f46f793757e36563637ee3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Perfection/Variant64fe4b7393a98454093c95f197c1216717f9b4d693f46f793757e36563637ee3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Frobenius` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Quotient` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Subring` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Perfect` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Integers` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Monoid.perfection](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/monoid-perfection.md) | 42 | `declaration-track:239eb870b6e403400cbf1b77c9ca6ffb49ed98313b4104b991ab637c549f7b2b` |
| 2 | `def` | [Ring.perfectionSubsemiring](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/ring-perfectionsubsemiring.md) | 50 | `declaration-track:a9addb108bc3bed30cc3c5923ccf14529dbfee443cb445e871d5acdfd3c862a3` |
| 3 | `def` | [Ring.perfectionSubring](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/ring-perfectionsubring.md) | 59 | `declaration-track:dacface8baa365efcbf02c338a24674cc6b901ab5eed921496761a20334ec5f7` |
| 4 | `def` | [Ring.Perfection](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/ring-perfection.md) | 67 | `declaration-track:92fd6c4628f09a5d15d611a6d6770a8595e91ba477559d1aaff4aa25781d39e9` |
| 5 | `instance` | [commSemiring](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/commsemiring.md) | 74 | `declaration-track:f3d151aed21617a07d5e173e39d0d0cb6f4eb88f42292bad07f02e10db6d53c4` |
| 6 | `instance` | [charP](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/charp.md) | 77 | `declaration-track:90c2a70593bf144f77fd080c109ae8d4bc59104c46df12c7b587505dc81c7f53` |
| 7 | `instance` | [ring](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/ring.md) | 80 | `declaration-track:15cc6ef749e12ebb14a8b500ff9e3e72808f0240a18d75b7b198c9b350dc449f` |
| 8 | `instance` | [commRing](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/commring-source-edition-2.md) | 83 | `declaration-track:3c02edca7f07d1328a4925fcf462ae1a40c2b892dd9f86d39bdb4db942e13455` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/instance-source-edition-4.md) | 86 | `declaration-track:edc3f6093223693f8ca61130067c0276839e16ec52121ce648161fb9e57b9a1e` |
| 10 | `def` | [coeff](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/coeff.md) | 89 | `declaration-track:05acfc0cf9c86c2cde81ce95f3af530abfeedb82a96614b1c78277c4c7e9a8ef` |
| 11 | `theorem` | [ext](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/ext.md) | 99 | `result-track:85cbd63a0258e943960e12aefe81fefedd99fb42df377e49b9bf5cfbea6b9e30` |
| 12 | `def` | [pthRoot](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/pthroot.md) | 105 | `declaration-track:ef8c98889b6c9788e7f831264b74ab8999f5cc8e9388913788e167c492aee1d6` |
| 13 | `theorem` | [coeff_mk](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/coeff-mk.md) | 115 | `result-track:c9e7af4e3dc861c9542f97ececef884242985785a0df438001a74dcdb499f590` |
| 14 | `theorem` | [coeff_pthRoot](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/coeff-pthroot.md) | 117 | `result-track:65da6b46dc6f601754edf96379956e81e89aa27041ced3ab8f1c674dac9baa09` |
| 15 | `theorem` | [coeff_pow_p](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/coeff-pow-p-source-edition-2.md) | 120 | `result-track:4d18eb208bc1bb875fb7be728da4b0414e43e04411f515025c60830590962a53` |
| 16 | `theorem` | [coeff_pow_p'](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/coeff-pow-p.md) | 123 | `result-track:24d14eea499116440898a9bcc63f9c5c89aec1b9a128298b492633ff70f163a9` |
| 17 | `theorem` | [coeff_frobenius](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/coeff-frobenius.md) | 126 | `result-track:e26b070617b456e59fefaa3db29e1c30fc0eb5f4249cb2d8b5ac390b664bb32b` |
| 18 | `theorem` | [coeff_iterate_frobenius](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/coeff-iterate-frobenius.md) | 130 | `result-track:3cd88a2a9ccc716ebe5c9f6cc7c2eb0b2ad1951fb9751267d3d4dbc91e839ce6` |
| 19 | `theorem` | [coeff_iterate_frobenius'](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/coeff-iterate-frobenius-source-edition-2.md) | 135 | `result-track:83bcfbd04982c0c8d0ef2ad376bf4e85181e663a93d4a670fd817354f458da8c` |
| 20 | `theorem` | [pthRoot_frobenius](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/pthroot-frobenius.md) | 139 | `result-track:e9d2653d99e23a479140d0c6404156ae9e921348c83487a6bba9241f98f5364d` |
| 21 | `theorem` | [frobenius_pthRoot](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/frobenius-pthroot.md) | 143 | `result-track:76cec09ee5639f3a691597d9eba11830e7b1e2d57ea4db76d744d994f351c6a2` |
| 22 | `theorem` | [coeff_add_ne_zero](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/coeff-add-ne-zero.md) | 149 | `result-track:0a6b9ffd09c2c6ad60a4380bb1f33396150f81a48e641925a488a4480ba28f13` |
| 23 | `theorem` | [coeff_ne_zero_of_le](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/coeff-ne-zero-of-le.md) | 155 | `result-track:b9c281e0fd0adfb864f4ba6fda648cccde32fd61d5e410a5f1da56acb7cfb51d` |
| 24 | `instance` | [perfectRing](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/perfectring.md) | 162 | `declaration-track:972ed994948a5e8ab271e35c7519cc989e7279ab4b3fc1dafff892a83e017089` |
| 25 | `def` | [lift](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/lift.md) | 171 | `declaration-track:5d983c578dd8611e7164a1572c009cf09f3a3ce25000416b9b635855126d3d6d` |
| 26 | `theorem` | [hom_ext](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/hom-ext-source-edition-2.md) | 190 | `result-track:9429264ded0c29ef2ebc5259fabf591a8261fbb6e647f703480a8014802ca9f7` |
| 27 | `def` | [map](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/map-source-edition-2.md) | 199 | `declaration-track:9ccc32bf4eeebacad8103dd76e61e29bdcd3a9864108f7c475bc85998f50788d` |
| 28 | `theorem` | [coeff_map](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/coeff-map.md) | 206 | `result-track:c0e624b0c213de61bddddf6f0a1e56d6111a8352439734aa18e22c39d9c8e921` |
| 29 | `structure` | [PerfectionMap](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/perfectionmap.md) | 213 | `declaration-track:d365ef39bfad6559a6ba578bddf9407e9fa0c840737ca0dfd06e1faec467e3b4` |
| 30 | `theorem` | [mk'](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/mk.md) | 228 | `result-track:96e0d9d389b57ceca97db35c6207e3254d5b0c63d4a76e2c519e605d1d9373c1` |
| 31 | `theorem` | [of](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/of.md) | 243 | `result-track:708e23944a23215cbb5cb9d24e43cc06ab4b62570e1fbe2f64e10f46033ba08b` |
| 32 | `theorem` | [id](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/id.md) | 247 | `result-track:ffeb3db9941a4c98040f6c12ee26aa4b0cd0434eb9b2d3f7d8539ad9c985168c` |
| 33 | `def` | [equiv](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/equiv.md) | 258 | `declaration-track:13b369bb80e3ef12868aaacb10e9b909abecba8f9b1d4124a60ecf055cb7dca7` |
| 34 | `theorem` | [equiv_apply](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/equiv-apply.md) | 264 | `result-track:2e22b14919ec4b5cf7e794ad7661cf6d7e967ddea6a82f6b0e26f903b6b176bf` |
| 35 | `theorem` | [comp_equiv](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/comp-equiv-source-edition-2.md) | 267 | `result-track:ff1ccfffd867cde1381c04865d4711fcc71655442f96eb1fc94dbf555f5fc59e` |
| 36 | `theorem` | [comp_equiv'](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/comp-equiv.md) | 270 | `result-track:cfc7159790bc8dc5e001800e36792a6f15e0707da259ca8dc2b9577f30607c4c` |
| 37 | `theorem` | [comp_symm_equiv](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/comp-symm-equiv-source-edition-2.md) | 274 | `result-track:eb2b5ab00ec11261cd003d15453f98c17a1932296dbdfa7011e4aa282da6a786` |
| 38 | `theorem` | [comp_symm_equiv'](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/comp-symm-equiv.md) | 278 | `result-track:3eb04aa113a99aa08e05900a9c691c5c215dbf498ebc3aacb19000ce608751d4` |
| 39 | `def` | [lift](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/lift-source-edition-2.md) | 288 | `declaration-track:d3ca2847d711113c645777b72678fa17a3065f4f5c567469458acb05ac4037cc` |
| 40 | `theorem` | [hom_ext](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/hom-ext.md) | 303 | `result-track:8c862012faef9c9ba531c2fd67c7db0d923df340cfb6b02e2fd42546f3a54996` |
| 41 | `def` | [map](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/map.md) | 314 | `declaration-track:98aafde20edddcc44ad2f94eb6db4d06cb6348db11acb75474c474c019be5d14` |
| 42 | `theorem` | [comp_map](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/comp-map.md) | 318 | `result-track:7c589e68bdd5a69d27cec08ae2b289843cf9d2ff891379e5f29ba85fa7e6d02c` |
| 43 | `theorem` | [map_map](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/map-map.md) | 322 | `result-track:19cb5196b19b8547b7c0390e1607f4026c77b48dfef92ea314af84a48fd5e28a` |
| 44 | `theorem` | [map_eq_map](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/map-eq-map.md) | 326 | `result-track:3a782c5309f7623c1d51b995f09d01e5811e95c73e4297769adae20d7daeb15e` |
| 45 | `def` | [ModP](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/modp.md) | 336 | `declaration-track:0ac921b0bc8c57e8cb7811ce6b60dfd7436ccaf0a390fce8eaf356b80c4ba30c` |
| 46 | `instance` | [commRing](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/commring.md) | 341 | `declaration-track:136e50d0558b0e24987eba6bbae3d0dfb88141304eda984e0761baf3e57f936f` |
| 47 | `instance` | [charP](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/charp-source-edition-2.md) | 344 | `declaration-track:a55acec36fdab8a8f0467bcee459dc9f3166b6719d56f90f00fb300424078246` |
| 48 | `instance` | [nontrivial](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/nontrivial.md) | 347 | `declaration-track:efc4102d72148274636295221418982e0bb4e45be2f4588c60d17012e8202363` |
| 49 | `def` | [preVal](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/preval.md) | 368 | `declaration-track:b68b136eb30df3d94257631da0affdaef8bf74a72203f161acddcd2ec325919d` |
| 50 | `theorem` | [preVal_zero](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/preval-zero.md) | 373 | `result-track:5f5efa4c40d4e0f13acb29804f0a52c6ef076a55358e7ac8036af9414d5654a2` |
| 51 | `theorem` | [preVal_mk](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/preval-mk.md) | 378 | `result-track:7e9b30358f5f72d14733276a6cb972b945300e36353f4b8ea80d161fdbbe7d76` |
| 52 | `theorem` | [preVal_mul](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/preval-mul.md) | 387 | `result-track:1856f86728b198d4262a1436a7616b52a895fa6141bcb9fdb099a37dfd89b3ba` |
| 53 | `theorem` | [preVal_add](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/preval-add.md) | 396 | `result-track:6a5fe9e50a8ec95f0ac7f51e17a825f30e1c8ae85217b7f4d6e062800ff7d3ed` |
| 54 | `theorem` | [v_p_lt_preVal](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/v-p-lt-preval.md) | 409 | `result-track:5917c04c7b779a0dc85b60c98f4de22a4272c764629c1c96db23c83c10145f4c` |
| 55 | `theorem` | [preVal_eq_zero](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/preval-eq-zero.md) | 416 | `result-track:46b06c354a676e0d2d3d763f415448d0957a5cddc2a5d34da2d3b42d1e5c391f` |
| 56 | `theorem` | [v_p_lt_val](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/v-p-lt-val.md) | 423 | `result-track:6041f786f6efa923e446f50a33ead069ab4c7838e824737e18c0674ff2d6e716` |
| 57 | `theorem` | [mul_ne_zero_of_pow_p_ne_zero](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/mul-ne-zero-of-pow-p-ne-zero.md) | 432 | `result-track:fe158a7fbc80f68a7a6ef96c023410ef7cba44fbd9c2ee92c79acfd87b1b820c` |
| 58 | `def` | [PreTilt](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/pretilt.md) | 456 | `declaration-track:87cad7aa906a51acf37f02ab4ef93cf15df53db74113297315e0a3baab537095` |
| 59 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/instance-source-edition-3.md) | 463 | `declaration-track:b3788808b0abda2b4aa09bfffdaa54265c23fd5dc558bc4e8e95ce4a34677c81` |
| 60 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/instance.md) | 466 | `declaration-track:168b31fe0fb039c5f9fe950ec4595adf094dd5c4723e97438e3eb7bb383a5e9a` |
| 61 | `def` | [valAux](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/valaux.md) | 477 | `declaration-track:2fdee2f0d390f671c28879a04162137ba154fe50d3b19cb53c473b06df1eb1dc` |
| 62 | `theorem` | [coeff_nat_find_add_ne_zero](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/coeff-nat-find-add-ne-zero.md) | 485 | `result-track:cdffe3ef204e30694075532101c95e72d0f88c952dda787b622157d1154bb89d` |
| 63 | `theorem` | [valAux_zero](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/valaux-zero.md) | 489 | `result-track:93d9e5bc4732bf1a60533e160b06678c7a47831904b33379487ab2fcf83a54b8` |
| 64 | `theorem` | [valAux_eq](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/valaux-eq.md) | 494 | `result-track:4deef13e0d9fc705a103809a8f2ab968135819d0365f753d002c18bc12cdb8fe` |
| 65 | `theorem` | [valAux_one](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/valaux-one.md) | 512 | `result-track:e0a422018a0953a926f57615a6e13baa06edc033876971d12b360806e34665a1` |
| 66 | `theorem` | [valAux_mul](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/valaux-mul.md) | 519 | `result-track:4fe6b4ea3c93e587fd2a4b51466ad7125df89bad9a3b65546fec9b8cf12ea7d1` |
| 67 | `theorem` | [valAux_add](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/valaux-add.md) | 538 | `result-track:0682eaaef238ef3cc4301d544b60415c69bf5895ec5ba41ad8e6939e3ad4cdfc` |
| 68 | `def` | [val](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/val.md) | 565 | `declaration-track:638522292bd65af839cbd9e82bc6d2a96c224e954107e61ebd64a390cc3fddc7` |
| 69 | `theorem` | [map_eq_zero](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/map-eq-zero.md) | 574 | `result-track:b6ff18f8f099822c4ed5cc0b203c01559db01886b50545c2d7a5c3cda4e8bbef` |
| 70 | `theorem` | [isDomain](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/isdomain.md) | 585 | `result-track:4aa76656bc557f773b7185df715debf486e2d4520eee17cb9ab19bb0ae75db75` |
| 71 | `def` | [Tilt](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/tilt.md) | 599 | `declaration-track:3a61145cfafe96e9ea165cb5826bfbc80633f42f6a0fd52c7e86d32be4a74924` |
| 72 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PerfectionNamespacedIsDomain.lean/declarations/instance-source-edition-2.md) | 605 | `declaration-track:1aff73b2a97fb44e526e330926341bae787447808663b65bc89bc1622e6626e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=566f34627f87ce8fa2a699acb960f1ac925d644e9800152aa1f7b1ddcabc7567 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Perfection/Variant64fe4b7393a98454093c95f197c1216717f9b4d693f46f793757e36563637ee3.lean","GRWTSK/_verification/specifications/Algebra/Perfection/Variant64fe4b7393a98454093c95f197c1216717f9b4d693f46f793757e36563637ee3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
