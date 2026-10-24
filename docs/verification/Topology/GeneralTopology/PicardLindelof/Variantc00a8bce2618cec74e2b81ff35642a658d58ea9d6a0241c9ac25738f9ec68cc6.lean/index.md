# Verification target: GRWTSK.Topology.GeneralTopology.PicardLindelof.Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b39c3387fa33a660bf7b54c9db2cbbc032069a6",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b39c3387fa33a660bf7b54c9db2cbbc032069a6`.

Source path: `GRWTSK/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Floor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Contracting` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsPicardLindelof](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/ispicardlindelof--be00bb0a56036cd525626670.md) | 48 | `declaration-track:be00bb0a56036cd5256266701b0f6fe5c4dad1e8f45e4a913a9aa083fd0ed2fa` |
| 2 | `structure` | [PicardLindelof](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/picardlindelof--2b9798f000fca2c22132d167.md) | 65 | `declaration-track:2b9798f000fca2c22132d1673ce0575c00cb11b51b7efa8c8c44b15e0a4de337` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/instance--993518cfe2c1fc462e4122f8.md) | 88 | `declaration-track:993518cfe2c1fc462e4122f8f5bae568e97fdbec34aea6b4732b80c2b986dd80` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/instance--961df99f356c3de26fa407ec.md) | 91 | `declaration-track:961df99f356c3de26fa407ec4512a8966dad22f4cc9cd57f3306ef7e35de4b35` |
| 5 | `theorem` | [tMin_le_tMax](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/tmin-le-tmax--49a8f47204a0f4ed2a0cc385.md) | 100 | `result-track:49a8f47204a0f4ed2a0cc38514028f0e4fb95ca57fd532e9362b9021e4b623e8` |
| 6 | `theorem` | [nonempty_Icc](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/nonempty-icc--ecc506762eb2473296d4e435.md) | 103 | `result-track:ecc506762eb2473296d4e43535e0873e0aa66efb7806e4a3a0c8f42fdfa73832` |
| 7 | `theorem` | [lipschitzOnWith](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/lipschitzonwith--5bb59bcac54c4ce54582201c.md) | 106 | `result-track:5bb59bcac54c4ce54582201cacf46a83f4b7c1c78c3821eaa4cd8635205822b8` |
| 8 | `theorem` | [continuousOn](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/continuouson--85172075d107460b597fa9ad.md) | 110 | `result-track:85172075d107460b597fa9adf63e196f7826e0941935f79c1b1317732ae710d5` |
| 9 | `theorem` | [norm_le](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/norm-le--f281e65ba077b13f8471c754.md) | 117 | `result-track:f281e65ba077b13f8471c75488e3ef052fdcc40449fb45536c4f0103c67e70f8` |
| 10 | `def` | [tDist](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/tdist--ef27de3c2cfc2323022a32a7.md) | 122 | `declaration-track:ef27de3c2cfc2323022a32a70ac2c8de024d9a822069b0fe19e1e1fc408afda7` |
| 11 | `theorem` | [tDist_nonneg](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/tdist-nonneg--69f344516c40309f933a0617.md) | 125 | `result-track:69f344516c40309f933a06176b7d58da61f1b30e7aca2ac018462da6bfaaf605` |
| 12 | `theorem` | [dist_t₀_le](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/dist-t-le--737d61efb439f08ded33de5f.md) | 128 | `result-track:737d61efb439f08ded33de5fb05fb00d8c8d407751510cfd4adc61fe44ef6fe4` |
| 13 | `def` | [proj](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/proj--80bc0cbdcab138e1f31fd390.md) | 138 | `declaration-track:80bc0cbdcab138e1f31fd390bf9a3f4cdc0558749e6587de79e35dc4bbdca156` |
| 14 | `theorem` | [proj_coe](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/proj-coe--86d5c48dec3fae7f42775ee0.md) | 141 | `result-track:86d5c48dec3fae7f42775ee0962e6e34095005909397489e9b6e88b6787f539a` |
| 15 | `theorem` | [proj_of_mem](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/proj-of-mem--851ad7202d9f0e30e4f5b17a.md) | 144 | `result-track:851ad7202d9f0e30e4f5b17af29f77e286cb5cf839974443ea6febb38cda58ef` |
| 16 | `theorem` | [continuous_proj](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/continuous-proj--70e9320da1a6afc696ebcfdb.md) | 148 | `result-track:70e9320da1a6afc696ebcfdb9ccb8e635d8e69ae8d9808212651748883a3226f` |
| 17 | `structure` | [FunSpace](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/funspace--1ee53286ea300eed04766297.md) | 155 | `declaration-track:1ee53286ea300eed0476629785dbd0f7682cb7667299c1d21068d168f42c0be0` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/instance--36a73c16d37f871ba3687b5c.md) | 166 | `declaration-track:36a73c16d37f871ba3687b5cc79eff8ea1b0c4f33ee9838c55f366b7a4cd3c8b` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/instance--e49f437db4081de3d07c4514.md) | 169 | `declaration-track:e49f437db4081de3d07c45149575870daae36d1c05feffb2c90b9bb9d5c6cd93` |
| 20 | `theorem` | [lipschitz](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/lipschitz--e53455e6ee73264f7f460c56.md) | 172 | `result-track:e53455e6ee73264f7f460c56f666a87a73fc1b2ff429f4e4fbf8b8b221f04d69` |
| 21 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/continuous--68d40be43c3c88da15dbe57e.md) | 175 | `result-track:68d40be43c3c88da15dbe57e1ec4ffba88210969e9a0486e93c33a1adcd16bb4` |
| 22 | `def` | [toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/tocontinuousmap--852f5b518a2ffbd9a2ba0132.md) | 179 | `declaration-track:852f5b518a2ffbd9a2ba0132c0bc7226e777e9ab8a25a5608fcf53830919e92a` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/instance--91a6c7749eddac5f712d8f5c.md) | 182 | `declaration-track:91a6c7749eddac5f712d8f5c14ab2dda17512d89883a3b96ba5e4a705564c242` |
| 24 | `theorem` | [isUniformInducing_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/isuniforminducing-tocontinuousmap--145cd3655634e719c040acf9.md) | 185 | `result-track:145cd3655634e719c040acf99372240e1c57aad677b03ff9e8d58eaadf62f9b7` |
| 25 | `theorem` | [range_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/range-tocontinuousmap--4a94cdab0da56d09e3614af2.md) | 188 | `result-track:4a94cdab0da56d09e3614af2a9ce7d1396365040fbe9961e96e6f1374fa92e9a` |
| 26 | `theorem` | [map_t₀](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/map-t--91b40a3b79213c831b152c11.md) | 195 | `result-track:91b40a3b79213c831b152c11a1fa6ac4cbbce23d291679d5a567367928349d9f` |
| 27 | `theorem` | [mem_closedBall](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/mem-closedball--8b89c1d39c9fdd488dad5b3c.md) | 198 | `result-track:8b89c1d39c9fdd488dad5b3c253a371f36abdb94373ec4710d2b3971c9fa3720` |
| 28 | `def` | [vComp](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/vcomp--3a677f7c1edb498914a5ada0.md) | 208 | `declaration-track:3a677f7c1edb498914a5ada0da6d8a786e65451dc0113f979619a8e63c01a17e` |
| 29 | `theorem` | [vComp_apply_coe](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/vcomp-apply-coe--a9fd4fb6eee91793a11144e6.md) | 211 | `result-track:a9fd4fb6eee91793a11144e694677bb705d9d0a7edb39c84d492336970717d9e` |
| 30 | `theorem` | [continuous_vComp](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/continuous-vcomp--5d3e99a826ad5ba4cedff394.md) | 214 | `result-track:5d3e99a826ad5ba4cedff3948a1585303accf26eddabae904ac1129fcec629fe` |
| 31 | `theorem` | [norm_vComp_le](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/norm-vcomp-le--b80677a46379bcbbbca11d75.md) | 219 | `result-track:b80677a46379bcbbbca11d75e23b5cc6dd7caf91bc8f2d0731243c4f53dca4d6` |
| 32 | `theorem` | [dist_apply_le_dist](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/dist-apply-le-dist--585c6ab2822ddf944567fe0f.md) | 222 | `result-track:585c6ab2822ddf944567fe0fe17f84caa1d33fcdaf7b040245f51c8558482ff1` |
| 33 | `theorem` | [dist_le_of_forall](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/dist-le-of-forall--b9184a2a25b2c7965685976d.md) | 226 | `result-track:b9184a2a25b2c7965685976d121a04456cb62e4f3cf30628878177e8af63c201` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/instance--318fe4b0e715246b5b0900bb.md) | 231 | `declaration-track:318fe4b0e715246b5b0900bbcdef6d121b6ec873b33705f2875218552f557139` |
| 35 | `theorem` | [intervalIntegrable_vComp](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/intervalintegrable-vcomp--fdf924f6a22810f19b14955f.md) | 240 | `result-track:fdf924f6a22810f19b14955fe44ced29a72f0933c7d11dd9088581da219e490b` |
| 36 | `def` | [next](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/next--cf3afcc6b287b8b02aa75abf.md) | 247 | `declaration-track:cf3afcc6b287b8b02aa75abf7817009d2a9fcf7839c2b001851523ac79e0b65b` |
| 37 | `theorem` | [next_apply](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/next-apply--4df6653b0495d84242896e45.md) | 255 | `result-track:4df6653b0495d84242896e45c07fb808c5db97fbb881a156f865988aa4d7613a` |
| 38 | `theorem` | [dist_next_apply_le_of_le](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/dist-next-apply-le-of-le--52fa029419bad45ed92c50d1.md) | 258 | `result-track:52fa029419bad45ed92c50d1c4510de0e921fce82e38e7a83a2fde96ce4417de` |
| 39 | `theorem` | [dist_iterate_next_apply_le](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/dist-iterate-next-apply-le--b1b7c1a58440699c20ea13ff.md) | 279 | `result-track:b1b7c1a58440699c20ea13ff5e227f8087f6a69c838e666136ac36aae386721a` |
| 40 | `theorem` | [dist_iterate_next_le](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/dist-iterate-next-le--846df1f39ac21701d50637dc.md) | 289 | `result-track:846df1f39ac21701d50637dcb3db09fa49c4b1361258863d313b01b33fa52e9a` |
| 41 | `theorem` | [hasDerivWithinAt_next](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/hasderivwithinat-next--a27e5e9a1947551a5c8268cb.md) | 297 | `result-track:a27e5e9a1947551a5c8268cbf1d9bcae8e37229f5785bd5bd70cfb380bb8d95c` |
| 42 | `theorem` | [exists_contracting_iterate](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/exists-contracting-iterate--f0b8136eb8731559749b326a.md) | 315 | `result-track:f0b8136eb8731559749b326a5887f4400ae0728909053d536c580c02f12880e0` |
| 43 | `theorem` | [exists_fixed](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/exists-fixed--afd21001bb14122d57cb74cb.md) | 324 | `result-track:afd21001bb14122d57cb74cb6f3afbcca146c4b504971f0f8e685fbdd824b7b9` |
| 44 | `theorem` | [exists_solution](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/exists-solution--8b2c93263bd134b5b20e6714.md) | 332 | `result-track:8b2c93263bd134b5b20e6714b39cbc6fcc2ab66563331739caa2f666599063a8` |
| 45 | `theorem` | [IsPicardLindelof.norm_le₀](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/ispicardlindelof-norm-le--3de1117d61d95d4d2c39dfc4.md) | 344 | `result-track:3de1117d61d95d4d2c39dfc4e6e070574579def6db2055727756f04ee5952fea` |
| 46 | `theorem` | [IsPicardLindelof.exists_forall_hasDerivWithinAt_Icc_eq](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/ispicardlindelof-exists-forall-hasderivwithinat-icc-eq--15471f2e73aadf868def8723.md) | 350 | `result-track:15471f2e73aadf868def87230eb463571017f1e7a6a5aac86cb69988b1a534ad` |
| 47 | `theorem` | [exists_isPicardLindelof_const_of_contDiffAt](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/exists-ispicardlindelof-const-of-contdiffat--ced4af8cb808598a265e0ee4.md) | 364 | `result-track:ced4af8cb808598a265e0ee46506c922b0b05f4a0ac44fe395f8b495a3c28dbe` |
| 48 | `theorem` | [exists_forall_hasDerivAt_Ioo_eq_of_contDiffAt](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/exists-forall-hasderivat-ioo-eq-of-contdiffat--c614bb21200960b8caf245e2.md) | 392 | `result-track:c614bb21200960b8caf245e2a8157f0cc6e4ca2d55c77d347ec6644222021727` |
| 49 | `theorem` | [exists_forall_hasDerivAt_Ioo_eq_of_contDiff](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/declarations/exists-forall-hasderivat-ioo-eq-of-contdiff--d22983b5af87f9918bdb2e33.md) | 401 | `result-track:d22983b5af87f9918bdb2e33cf957c5ee10af13c21d29b88f7a1f79934f5a3b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
