# Verification target: GRWTSK.Topology.GeneralTopology.Polar.Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75ba7333e1566c7627b3aa77256659ae4fdd4e3c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75ba7333e1566c7627b3aa77256659ae4fdd4e3c`.

Source path: `GRWTSK/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SesquilinearForm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.WeakBilin` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [polar](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/polar--dd90f6f083b00100d5ec5846.md) | 53 | `declaration-track:dd90f6f083b00100d5ec58467305ea0927ef0e9235a93ef026e09e8705ba651b` |
| 2 | `theorem` | [polar_mem_iff](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/polar-mem-iff--192c680404f5f31644c0380c.md) | 56 | `result-track:192c680404f5f31644c0380c9b19774ba7ed7b3efd96374f4a81174f0c94ef24` |
| 3 | `theorem` | [polar_mem](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/polar-mem--31964e4e13d9fa29a66c1cd7.md) | 59 | `result-track:31964e4e13d9fa29a66c1cd73fea116e0d93fa7d747646d3ce6b828ae6027d05` |
| 4 | `theorem` | [polar_eq_biInter_preimage](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/polar-eq-biinter-preimage--b1dd799aa5e1b5a39dcb324a.md) | 62 | `result-track:b1dd799aa5e1b5a39dcb324aa1dc135209c646c0bf9e576cedaf0d1bf8ec73a7` |
| 5 | `theorem` | [polar_isClosed](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/polar-isclosed--5632bb78888a09d2601a6b3b.md) | 65 | `result-track:5632bb78888a09d2601a6b3b2d39840e57a32730a5654e050e84383b0078cb2e` |
| 6 | `theorem` | [zero_mem_polar](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/zero-mem-polar--d30476c47cdf00584f56f04e.md) | 71 | `result-track:d30476c47cdf00584f56f04e349d556d58b19a1dc42a06c07df57bb3d1d77d10` |
| 7 | `theorem` | [polar_nonempty](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/polar-nonempty--55fa29d528957bcd5982f11b.md) | 74 | `result-track:55fa29d528957bcd5982f11b50628d1f0f364e19c30e4565686d546ef9664f44` |
| 8 | `theorem` | [polar_eq_iInter](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/polar-eq-iinter--14bc332d8d204dbfccfd02da.md) | 78 | `result-track:14bc332d8d204dbfccfd02da98171e2726f7e9cea33b7405092bcf0cae3f3c33` |
| 9 | `theorem` | [polar_gc](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/polar-gc--5569eba5a71904daeae44a68.md) | 85 | `result-track:5569eba5a71904daeae44a686009294a6189c456108ba9359a80bc430b0192dc` |
| 10 | `theorem` | [polar_iUnion](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/polar-iunion--97f82bcf54dae36f8ba1925f.md) | 90 | `result-track:97f82bcf54dae36f8ba1925fae959e58a1d7bde735428d22a3010799f70a0880` |
| 11 | `theorem` | [polar_union](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/polar-union--a639c76bc78da8329a1fc439.md) | 94 | `result-track:a639c76bc78da8329a1fc439d7b9a3aaae7737cc449616033d8ab996821577e1` |
| 12 | `theorem` | [polar_antitone](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/polar-antitone--e4ec330fe5c2ce2eab85e17f.md) | 97 | `result-track:e4ec330fe5c2ce2eab85e17f8857bf7298a9d92ecc7220049df9f83d7097c134` |
| 13 | `theorem` | [polar_empty](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/polar-empty--a6ae4526972a3fa5ce66363a.md) | 101 | `result-track:a6ae4526972a3fa5ce66363a563285fa5b322febd479c8b407134c2ecb8ac69c` |
| 14 | `theorem` | [polar_singleton](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/polar-singleton--34691b5416cc68a9a0620d7e.md) | 105 | `result-track:34691b5416cc68a9a0620d7e645732f72fdfdfa7a8525005eb24817a5961ee69` |
| 15 | `theorem` | [mem_polar_singleton](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/mem-polar-singleton--58dfd25e6944f5069ec920ff.md) | 109 | `result-track:58dfd25e6944f5069ec920ff626b745bb71e1fb387e4b0fd61c3d045dde0d62b` |
| 16 | `theorem` | [polar_zero](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/polar-zero--2eaec39f029cc4fd2f2c5430.md) | 112 | `result-track:2eaec39f029cc4fd2f2c5430010df647650cf01f4a03f54c7bd61862a94842ea` |
| 17 | `theorem` | [subset_bipolar](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/subset-bipolar--c06b63b8d7026d733328d966.md) | 115 | `result-track:c06b63b8d7026d733328d966bd1f880a0f4a517cb037909cf389cd672fab36e0` |
| 18 | `theorem` | [tripolar_eq_polar](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/tripolar-eq-polar--b83a447781e3e42ed9d011ef.md) | 120 | `result-track:b83a447781e3e42ed9d011ef8a1dbf9df58704955108112ea38e059e8bbc16bc` |
| 19 | `theorem` | [polar_weak_closed](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/polar-weak-closed--c3ef3425e97a58a89992a74f.md) | 124 | `result-track:c3ef3425e97a58a89992a74fd44af02afdf408b460c06aa1bed10e58655efa80` |
| 20 | `theorem` | [sInter_polar_finite_subset_eq_polar](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/sinter-polar-finite-subset-eq-polar--60c0ed2be2d27096a4e19380.md) | 130 | `result-track:60c0ed2be2d27096a4e193806eb06b43bd551c14b7f0ff210c69d9fe5007d2c3` |
| 21 | `theorem` | [polar_univ](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/polar-univ--1743b8a46304c6f4745b8fa6.md) | 147 | `result-track:1743b8a46304c6f4745b8fa6dd664e6d3676322aef11de60e78c2940eb099505` |
| 22 | `theorem` | [polar_subMulAction](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/polar-submulaction--e40f5cc69c8600698beb5f30.md) | 159 | `result-track:e40f5cc69c8600698beb5f30c7cfd725db5e8e176011ff85a51d46bd067dd866` |
| 23 | `def` | [polarSubmodule](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/declarations/polarsubmodule--459eb3e603387f0bbc798bce.md) | 172 | `declaration-track:459eb3e603387f0bbc798bce497392361e66f1a5fc241986d34e4c9dbf94f8c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
