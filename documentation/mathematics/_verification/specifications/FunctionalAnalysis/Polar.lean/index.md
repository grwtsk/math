# Verification target: Polar

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

[Module and every result](../../../../FunctionalAnalysis/Polar.lean/index.md) · [Full source](../../../../FunctionalAnalysis/Polar.lean/source.md)

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

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [polar](../../../../FunctionalAnalysis/Polar.lean/declarations/polar.md) | 53 | `declaration-track:dd90f6f083b00100d5ec58467305ea0927ef0e9235a93ef026e09e8705ba651b` |
| 2 | `theorem` | [polar_mem_iff](../../../../FunctionalAnalysis/Polar.lean/declarations/polar-mem-iff.md) | 56 | `result-track:192c680404f5f31644c0380c9b19774ba7ed7b3efd96374f4a81174f0c94ef24` |
| 3 | `theorem` | [polar_mem](../../../../FunctionalAnalysis/Polar.lean/declarations/polar-mem.md) | 59 | `result-track:31964e4e13d9fa29a66c1cd73fea116e0d93fa7d747646d3ce6b828ae6027d05` |
| 4 | `theorem` | [polar_eq_biInter_preimage](../../../../FunctionalAnalysis/Polar.lean/declarations/polar-eq-biinter-preimage.md) | 62 | `result-track:b1dd799aa5e1b5a39dcb324aa1dc135209c646c0bf9e576cedaf0d1bf8ec73a7` |
| 5 | `theorem` | [polar_isClosed](../../../../FunctionalAnalysis/Polar.lean/declarations/polar-isclosed.md) | 65 | `result-track:5632bb78888a09d2601a6b3b2d39840e57a32730a5654e050e84383b0078cb2e` |
| 6 | `theorem` | [zero_mem_polar](../../../../FunctionalAnalysis/Polar.lean/declarations/zero-mem-polar.md) | 71 | `result-track:d30476c47cdf00584f56f04e349d556d58b19a1dc42a06c07df57bb3d1d77d10` |
| 7 | `theorem` | [polar_nonempty](../../../../FunctionalAnalysis/Polar.lean/declarations/polar-nonempty.md) | 74 | `result-track:55fa29d528957bcd5982f11b50628d1f0f364e19c30e4565686d546ef9664f44` |
| 8 | `theorem` | [polar_eq_iInter](../../../../FunctionalAnalysis/Polar.lean/declarations/polar-eq-iinter.md) | 78 | `result-track:14bc332d8d204dbfccfd02da98171e2726f7e9cea33b7405092bcf0cae3f3c33` |
| 9 | `theorem` | [polar_gc](../../../../FunctionalAnalysis/Polar.lean/declarations/polar-gc.md) | 85 | `result-track:5569eba5a71904daeae44a686009294a6189c456108ba9359a80bc430b0192dc` |
| 10 | `theorem` | [polar_iUnion](../../../../FunctionalAnalysis/Polar.lean/declarations/polar-iunion.md) | 90 | `result-track:97f82bcf54dae36f8ba1925fae959e58a1d7bde735428d22a3010799f70a0880` |
| 11 | `theorem` | [polar_union](../../../../FunctionalAnalysis/Polar.lean/declarations/polar-union.md) | 94 | `result-track:a639c76bc78da8329a1fc439d7b9a3aaae7737cc449616033d8ab996821577e1` |
| 12 | `theorem` | [polar_antitone](../../../../FunctionalAnalysis/Polar.lean/declarations/polar-antitone.md) | 97 | `result-track:e4ec330fe5c2ce2eab85e17f8857bf7298a9d92ecc7220049df9f83d7097c134` |
| 13 | `theorem` | [polar_empty](../../../../FunctionalAnalysis/Polar.lean/declarations/polar-empty.md) | 101 | `result-track:a6ae4526972a3fa5ce66363a563285fa5b322febd479c8b407134c2ecb8ac69c` |
| 14 | `theorem` | [polar_singleton](../../../../FunctionalAnalysis/Polar.lean/declarations/polar-singleton.md) | 105 | `result-track:34691b5416cc68a9a0620d7e645732f72fdfdfa7a8525005eb24817a5961ee69` |
| 15 | `theorem` | [mem_polar_singleton](../../../../FunctionalAnalysis/Polar.lean/declarations/mem-polar-singleton.md) | 109 | `result-track:58dfd25e6944f5069ec920ff626b745bb71e1fb387e4b0fd61c3d045dde0d62b` |
| 16 | `theorem` | [polar_zero](../../../../FunctionalAnalysis/Polar.lean/declarations/polar-zero.md) | 112 | `result-track:2eaec39f029cc4fd2f2c5430010df647650cf01f4a03f54c7bd61862a94842ea` |
| 17 | `theorem` | [subset_bipolar](../../../../FunctionalAnalysis/Polar.lean/declarations/subset-bipolar.md) | 115 | `result-track:c06b63b8d7026d733328d966bd1f880a0f4a517cb037909cf389cd672fab36e0` |
| 18 | `theorem` | [tripolar_eq_polar](../../../../FunctionalAnalysis/Polar.lean/declarations/tripolar-eq-polar.md) | 120 | `result-track:b83a447781e3e42ed9d011ef8a1dbf9df58704955108112ea38e059e8bbc16bc` |
| 19 | `theorem` | [polar_weak_closed](../../../../FunctionalAnalysis/Polar.lean/declarations/polar-weak-closed.md) | 124 | `result-track:c3ef3425e97a58a89992a74fd44af02afdf408b460c06aa1bed10e58655efa80` |
| 20 | `theorem` | [sInter_polar_finite_subset_eq_polar](../../../../FunctionalAnalysis/Polar.lean/declarations/sinter-polar-finite-subset-eq-polar.md) | 130 | `result-track:60c0ed2be2d27096a4e193806eb06b43bd551c14b7f0ff210c69d9fe5007d2c3` |
| 21 | `theorem` | [polar_univ](../../../../FunctionalAnalysis/Polar.lean/declarations/polar-univ.md) | 147 | `result-track:1743b8a46304c6f4745b8fa6dd664e6d3676322aef11de60e78c2940eb099505` |
| 22 | `theorem` | [polar_subMulAction](../../../../FunctionalAnalysis/Polar.lean/declarations/polar-submulaction.md) | 159 | `result-track:e40f5cc69c8600698beb5f30c7cfd725db5e8e176011ff85a51d46bd067dd866` |
| 23 | `def` | [polarSubmodule](../../../../FunctionalAnalysis/Polar.lean/declarations/polarsubmodule.md) | 172 | `declaration-track:459eb3e603387f0bbc798bce497392361e66f1a5fc241986d34e4c9dbf94f8c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=545a181068d94160731981331280f4ffd93a3d584c52942882d5f0bc2c098c81 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
