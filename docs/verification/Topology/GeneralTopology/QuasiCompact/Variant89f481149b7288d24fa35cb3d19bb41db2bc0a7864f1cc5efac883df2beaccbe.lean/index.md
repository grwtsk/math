# Verification target: GRWTSK.Topology.GeneralTopology.QuasiCompact.Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05399ce62aa03a6bf827e5e15e46066b6be70e23",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05399ce62aa03a6bf827e5e15e46066b6be70e23`.

Source path: `GRWTSK/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Spectral.Hom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Limits` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuasiCompact](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/quasicompact--5ab9df31ada2ddca9da9afd3.md) | 49 | `declaration-track:5ab9df31ada2ddca9da9afd322b3b2c31f6cd6897c26f442a6582bda22bf5c22` |
| 2 | `theorem` | [quasiCompact_iff_spectral](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/quasicompact-iff-spectral--24b00030e2b77569d01c5ffa.md) | 54 | `result-track:24b00030e2b77569d01c5ffa485e4881689e158113f42ecdaffc6f18f038d90d` |
| 3 | `def` | [QuasiCompact.affineProperty](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/quasicompact-affineproperty--eb5f7675e4777a1d0b2abbd7.md) | 60 | `declaration-track:eb5f7675e4777a1d0b2abbd765b563be260fffaadd4a81ae1ee6d2194f649749` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/instance--927ea8893e5ea9c28e0a43c2.md) | 64 | `declaration-track:927ea8893e5ea9c28e0a43c257366af66f87049b32f358bb42c6ca43a55156cf` |
| 5 | `instance` | [quasiCompactComp](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/quasicompactcomp--c65bab9f7dbc4482016de5b3.md) | 74 | `declaration-track:c65bab9f7dbc4482016de5b376dc0afd61ba7972af70268de93973f5ce813523` |
| 6 | `theorem` | [isCompact_open_iff_eq_finset_affine_union](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/iscompact-open-iff-eq-finset-affine-union--6d2a4ab47a5ec62c93c5779e.md) | 87 | `result-track:6d2a4ab47a5ec62c93c5779e185d48b62dd55a745e8286f5d7f7275dfcab42a9` |
| 7 | `theorem` | [isCompact_open_iff_eq_basicOpen_union](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/iscompact-open-iff-eq-basicopen-union--1d88ab31e03b0a545b0fea04.md) | 96 | `result-track:1d88ab31e03b0a545b0fea04c9111734b62cd8ab0b5ca53417792bd48b476736` |
| 8 | `theorem` | [quasiCompact_iff_forall_affine](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/quasicompact-iff-forall-affine--1a5270944c315169f92156bd.md) | 104 | `result-track:1a5270944c315169f92156bdd5c5c5463f315e35df2c12808bc5e210a2ffaf64` |
| 9 | `theorem` | [QuasiCompact.affineProperty_toProperty](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/quasicompact-affineproperty-toproperty--355b0ee1ac0fa2e48a81d9e9.md) | 116 | `result-track:355b0ee1ac0fa2e48a81d9e9078285e35d183d06bd36e8c766a4c8a71558b6bd` |
| 10 | `theorem` | [quasiCompact_iff_affineProperty](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/quasicompact-iff-affineproperty--0aa3e71629909eb20e55de48.md) | 121 | `result-track:0aa3e71629909eb20e55de4846c97cdec9fe84f6f1c1ec2ce9ae9d3615d753ee` |
| 11 | `theorem` | [quasiCompact_eq_affineProperty](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/quasicompact-eq-affineproperty--53c273b85fdb8cdb2248cbca.md) | 130 | `result-track:53c273b85fdb8cdb2248cbcaaa71295c7cf2b1821bd6992e17f2188d1c165d5c` |
| 12 | `theorem` | [isCompact_basicOpen](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/iscompact-basicopen--0979d276397a705f7d19c275.md) | 136 | `result-track:0979d276397a705f7d19c275ab326d4cafe8a96ab0394474759124fb872f81b7` |
| 13 | `theorem` | [QuasiCompact.affineProperty_isLocal](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/quasicompact-affineproperty-islocal--58a12584309ac044a8f7a9d3.md) | 168 | `result-track:58a12584309ac044a8f7a9d325f50662171c49ba1885b9d34cb0ed69f25954e8` |
| 14 | `theorem` | [QuasiCompact.affine_openCover_tFAE](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/quasicompact-affine-opencover-tfae--a777f24ad8ee1fb4e0f3fe64.md) | 192 | `result-track:a777f24ad8ee1fb4e0f3fe644209fc4ccbf04a0718b9203928ffa33b5eb4887e` |
| 15 | `theorem` | [QuasiCompact.is_local_at_target](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/quasicompact-is-local-at-target--56f2acc446f13f54381a365e.md) | 206 | `result-track:56f2acc446f13f54381a365e91e4de9593848df8c421936d4e96a0e8a19a7667` |
| 16 | `theorem` | [QuasiCompact.openCover_tFAE](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/quasicompact-opencover-tfae--70ca31a148f7eda4926f96a1.md) | 211 | `result-track:70ca31a148f7eda4926f96a1cdab0f25b88a7875775b7d8aeba72ff6a251f8aa` |
| 17 | `theorem` | [quasiCompact_over_affine_iff](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/quasicompact-over-affine-iff--2dcb8834873059aa5da84208.md) | 226 | `result-track:2dcb8834873059aa5da84208bdc83e7cdec9f6272019ebd59dea23cf4ce9acd8` |
| 18 | `theorem` | [compactSpace_iff_quasiCompact](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/compactspace-iff-quasicompact--ea548a9824d1b38d2babc8f9.md) | 231 | `result-track:ea548a9824d1b38d2babc8f938ceff85a09a6f5a219d0af4910c4fd15c357039` |
| 19 | `theorem` | [QuasiCompact.affine_openCover_iff](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/quasicompact-affine-opencover-iff--2ff9453c58585666c1a1798b.md) | 236 | `result-track:2ff9453c58585666c1a1798b3b783dd515befeefb215677e5c4eb828a53bc9b2` |
| 20 | `theorem` | [QuasiCompact.openCover_iff](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/quasicompact-opencover-iff--8ce88200cdff49ec409d9617.md) | 242 | `result-track:8ce88200cdff49ec409d9617466a4499baa2f5d7a55fa0cc8fc10e0d71a47adc` |
| 21 | `theorem` | [quasiCompact_respectsIso](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/quasicompact-respectsiso--452ecd4b213fefbee9f5d277.md) | 248 | `result-track:452ecd4b213fefbee9f5d277ed1ad3b8bfb22e0fd539b33c15db51efc0c0f093` |
| 22 | `theorem` | [quasiCompact_stableUnderComposition](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/quasicompact-stableundercomposition--09b5ef0c06871db9d29f2832.md) | 253 | `result-track:09b5ef0c06871db9d29f28322212da4d7d9f5ffa2ad78a6630cd0564d910059a` |
| 23 | `theorem` | [QuasiCompact.affineProperty_stableUnderBaseChange](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/quasicompact-affineproperty-stableunderbasechange--122fae147aa0791427a908ba.md) | 257 | `result-track:122fae147aa0791427a908ba556e97bf67858df3ce3dfd51ffd537d7f2d60be5` |
| 24 | `theorem` | [quasiCompact_stableUnderBaseChange](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/quasicompact-stableunderbasechange--4558cbe56d7cf77366c063eb.md) | 268 | `result-track:4558cbe56d7cf77366c063ebc98af8a4f424e87eff58e48b2fd693b3c47e27c3` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/instance--662968a4eaf1d80d13f4c9c2.md) | 276 | `declaration-track:662968a4eaf1d80d13f4c9c2a484922fbde7380f7a7107b63186dd195beab0cb` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/instance--e75d75d0d647b35225105076.md) | 280 | `declaration-track:e75d75d0d647b3522510507611a0f08e45bb9053ce50ca5517465014fc6bc543` |
| 27 | `theorem` | [compact_open_induction_on](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/compact-open-induction-on--b1704a9c5bea74c753f3a149.md) | 285 | `result-track:b1704a9c5bea74c753f3a1494f21185b79d4e6189923cd0f3ba6789e912813d5` |
| 28 | `theorem` | [exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isAffineOpen](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/exists-pow-mul-eq-zero-of-res-basicopen-eq-zero-of-isaffineopen--791645b4c79b2fc2a7c319ba.md) | 304 | `result-track:791645b4c79b2fc2a7c319bae20e5fa6a5ea1b1edbfc33ee53eb90f2dc1e9b3e` |
| 29 | `theorem` | [exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/declarations/exists-pow-mul-eq-zero-of-res-basicopen-eq-zero-of-iscompact--c3bb9a1007179e2b5fb9bc59.md) | 314 | `result-track:c3bb9a1007179e2b5fb9bc5969ef6aaaf9a7425bb140ff55613c61644e5483bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
