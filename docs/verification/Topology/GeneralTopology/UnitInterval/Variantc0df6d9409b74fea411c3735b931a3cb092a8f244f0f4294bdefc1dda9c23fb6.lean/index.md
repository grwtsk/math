# Verification target: GRWTSK.Topology.GeneralTopology.UnitInterval.Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed47470081007588911366581da6d3f8e1607fb0",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed47470081007588911366581da6d3f8e1607fb0`.

Source path: `GRWTSK/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Field` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.ProjIcc` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.Instances` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [unitInterval](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/unitinterval--bcbc800952a5edadc23b26ec.md) | 34 | `declaration-track:bcbc800952a5edadc23b26ec1760b985f745412573cf2dee2023d4a5497df234` |
| 2 | `theorem` | [zero_mem](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/zero-mem--34104a15d8f2d79127bb8664.md) | 43 | `result-track:34104a15d8f2d79127bb866456c44a76bf673f28efe7e9fd56d96a087d8415c3` |
| 3 | `theorem` | [one_mem](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/one-mem--db37c2d5295ac4237a25664a.md) | 47 | `result-track:db37c2d5295ac4237a25664a87ed1fc5295038cdf489dfc2a217eaf5f58f8ac4` |
| 4 | `theorem` | [mul_mem](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/mul-mem--550c6f5218d53a02e4fec29c.md) | 51 | `result-track:550c6f5218d53a02e4fec29c4ba6bf8721583d80fd941ab65753670628c9a02a` |
| 5 | `theorem` | [div_mem](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/div-mem--980504f3552147b8629b0897.md) | 55 | `result-track:980504f3552147b8629b0897051b0f2e700151a100d44acc7daaca3c007cdc8f` |
| 6 | `theorem` | [fract_mem](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/fract-mem--126b23decf4fece39ddf6752.md) | 59 | `result-track:126b23decf4fece39ddf67525c165e55de19b1165e0eb66e2684222274665f55` |
| 7 | `theorem` | [mem_iff_one_sub_mem](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/mem-iff-one-sub-mem--4904065e67c3ac95b700cffd.md) | 63 | `result-track:4904065e67c3ac95b700cffd6603c42cbd55a26456deb677a1d2736eb94219eb` |
| 8 | `instance` | [hasZero](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/haszero--31eae54d8c5940b5afb5950c.md) | 68 | `declaration-track:31eae54d8c5940b5afb5950c2f64fdc1b905be0ef402ca4a036d8eb7a78fd4e9` |
| 9 | `instance` | [hasOne](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/hasone--c44866f064ca6532c03ba32b.md) | 72 | `declaration-track:c44866f064ca6532c03ba32b8c8766ab5b49cf723e38748b44ebb1ba4babcbc8` |
| 10 | `theorem` | [coe_ne_zero](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/coe-ne-zero--0f51e947181dbcb8f3ea2e89.md) | 76 | `result-track:0f51e947181dbcb8f3ea2e893241e43462a6eb214b7532723becb61473e1b42f` |
| 11 | `theorem` | [coe_ne_one](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/coe-ne-one--c3e61f92978dfc5740391f36.md) | 80 | `result-track:c3e61f92978dfc5740391f3606f2260865640b179441446026a4795e783e3ee6` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/instance--dd3aab3f40ef1209a1b7bb1b.md) | 84 | `declaration-track:dd3aab3f40ef1209a1b7bb1b05bf894e94403457c9aa074465e67158490141da` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/instance--3a52c9a33ff34fbaa3d9e205.md) | 87 | `declaration-track:3a52c9a33ff34fbaa3d9e20521e9711011a83c600bc7ed593b19d0153565f78e` |
| 14 | `theorem` | [mul_le_left](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/mul-le-left--4e2d93d60e9f139baefdefa9.md) | 91 | `result-track:4e2d93d60e9f139baefdefa9e7535df7f44007a73e13d3c36e6ab2a3b520ecab` |
| 15 | `theorem` | [mul_le_right](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/mul-le-right--d35a8a937e079c2b7d2d1315.md) | 95 | `result-track:d35a8a937e079c2b7d2d1315357d7920f222e3e0825f6882c18e9ecc7c50e79d` |
| 16 | `def` | [symm](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/symm--6379b1a3b3d1a86e937f4325.md) | 100 | `declaration-track:6379b1a3b3d1a86e937f4325800ebf547abecba3c9ad936598bf30b8cfefed7b` |
| 17 | `theorem` | [symm_zero](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/symm-zero--865d7ec4a31e93d656190e33.md) | 107 | `result-track:865d7ec4a31e93d656190e333b356e7813ec61bee59936f83832d573b0484cec` |
| 18 | `theorem` | [symm_one](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/symm-one--71fa99da216afedbf775a43c.md) | 112 | `result-track:71fa99da216afedbf775a43c146cfdeb477ebd3b7c3f8d4beb677e7765aa04bc` |
| 19 | `theorem` | [symm_symm](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/symm-symm--7f46dabd37a9201f5b491886.md) | 117 | `result-track:7f46dabd37a9201f5b491886b26720a1192e59dfc2566d8c5b637a5e093d2335` |
| 20 | `theorem` | [coe_symm_eq](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/coe-symm-eq--4175805723690be74ce8b7f5.md) | 122 | `result-track:4175805723690be74ce8b7f5062d3fe2a1a772a44f49eced61198b1b47c3379e` |
| 21 | `theorem` | [continuous_symm](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/continuous-symm--4e08bebe876ffae936c67739.md) | 128 | `result-track:4e08bebe876ffae936c67739213df6e2abbbaf3c299be061feca71069e98125a` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/instance--16f968125e2552b6ae5f01a4.md) | 132 | `declaration-track:16f968125e2552b6ae5f01a4a674db253898a1ea287cfcae737bed4c0b76e167` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/example--5d856381e9c482e02f4a0de1.md) | 136 | `declaration-track:5d856381e9c482e02f4a0de1aa9d7ea361a77aff295459ed4aba7d9aa709e666` |
| 24 | `theorem` | [nonneg](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/nonneg--66aa34063d2dad4731fb4e1b.md) | 138 | `result-track:66aa34063d2dad4731fb4e1be11cb432ffa32f9fb3ec498da45253fcc645440e` |
| 25 | `theorem` | [one_minus_nonneg](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/one-minus-nonneg--1fc7e9e037cbe4f2eaca0d5a.md) | 142 | `result-track:1fc7e9e037cbe4f2eaca0d5ae76704b60b279b30b292a3222cddd99103a7d01c` |
| 26 | `theorem` | [le_one](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/le-one--840536792c2f6e6923f98c1f.md) | 145 | `result-track:840536792c2f6e6923f98c1f36511553d9d46bdaf6ffa69c5ecd885b0d922b33` |
| 27 | `theorem` | [one_minus_le_one](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/one-minus-le-one--35e02ca20469fa79e38c3b16.md) | 149 | `result-track:35e02ca20469fa79e38c3b16877b8285a6204bbc8f46da04067c7f814966d52d` |
| 28 | `theorem` | [add_pos](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/add-pos--0b9e1e7738601c22cde58169.md) | 152 | `result-track:0b9e1e7738601c22cde58169b751cd4ee79f7fbc0eb3619d88c5d13666efaa3b` |
| 29 | `theorem` | [nonneg'](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/nonneg--be42347fb4b386f240ef9733.md) | 157 | `result-track:be42347fb4b386f240ef973331556b419e530c55491f500fe718dd669a3fc5e6` |
| 30 | `theorem` | [le_one'](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/le-one--4479508e81ef0c4a836fe429.md) | 162 | `result-track:4479508e81ef0c4a836fe4295605738ec6dcee42d1066a696b0e1624def377d1` |
| 31 | `theorem` | [mul_pos_mem_iff](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/mul-pos-mem-iff--eec9edd3fb5e57a73daed2a2.md) | 166 | `result-track:eec9edd3fb5e57a73daed2a25df732fff9e46b3e7800eac613c48a91ec9d3a62` |
| 32 | `theorem` | [two_mul_sub_one_mem_iff](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/two-mul-sub-one-mem-iff--a6b65e04b898a1c3d2090bda.md) | 174 | `result-track:a6b65e04b898a1c3d2090bdaf9db9a17e9683940d62982d441f1a768ae46d54e` |
| 33 | `theorem` | [projIcc_eq_zero](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/projicc-eq-zero--c12b4d747c2a440974813340.md) | 181 | `result-track:c12b4d747c2a440974813340ce6e5398af0b8df013c256794b37028163d40361` |
| 34 | `theorem` | [projIcc_eq_one](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/projicc-eq-one--0cb2007044c1636dcfb7c59c.md) | 186 | `result-track:0cb2007044c1636dcfb7c59cb31cbef0a7ae491424ad4b415d2c3251a2915d83` |
| 35 | `macro` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/macro--2b3b4934cc0eaafc70217f0f.md) | 194 | `declaration-track:2b3b4934cc0eaafc70217f0feca0b79f3c27acb952e01f848c22fe16a1adaad2` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/example--17af137fbb790127f0822858.md) | 202 | `declaration-track:17af137fbb790127f08228580bc483e1fa561c7f16da5252f1eb953c3403b480` |
| 37 | `theorem` | [affineHomeomorph_image_I](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/affinehomeomorph-image-i--b7f060d5567fc93830b5a6af.md) | 214 | `result-track:b7f060d5567fc93830b5a6af0e5c425e188a9248c683a00ed13a720924243eb8` |
| 38 | `def` | [iccHomeoI](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/icchomeoi--d3c0f955882065eb5ac83c94.md) | 221 | `declaration-track:d3c0f955882065eb5ac83c946af6737c580f25f177f9e9eec0eb02930162ea44` |
| 39 | `theorem` | [iccHomeoI_apply_coe](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/icchomeoi-apply-coe--e4dbf9013f83cbac7887b13c.md) | 231 | `result-track:e4dbf9013f83cbac7887b13c6bd0e4631bc3bb8e9764147fa9570becda9e5839` |
| 40 | `theorem` | [iccHomeoI_symm_apply_coe](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/declarations/icchomeoi-symm-apply-coe--861252090340cabde3fec499.md) | 238 | `result-track:861252090340cabde3fec49987ea20db5b32a4a59fc0454e6f3bd4dac1f8f99e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
