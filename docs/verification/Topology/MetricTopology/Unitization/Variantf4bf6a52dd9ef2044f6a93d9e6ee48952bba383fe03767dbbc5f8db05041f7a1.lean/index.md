# Verification target: GRWTSK.Topology.MetricTopology.Unitization.Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b052ad093668c06bd31a1cfd39ae148606b95b02",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b052ad093668c06bd31a1cfd39ae148606b95b02`.

Source path: `GRWTSK/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Unitization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Mul` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitMul](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/splitmul--4878fba6eaaf9aee5e3aac7f.md) | 76 | `declaration-track:4878fba6eaaf9aee5e3aac7f317ffa2c4243d2d589415ef0e9f99c031527afbb` |
| 2 | `theorem` | [splitMul_apply](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/splitmul-apply--d25746614f633aaf06817526.md) | 82 | `result-track:d25746614f633aaf06817526c54f097ddb5aac4cfd93f628c2e99d364828d41b` |
| 3 | `theorem` | [splitMul_injective_of_clm_mul_injective](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/splitmul-injective-of-clm-mul-injective--ea53b755f262fffcf028cf34.md) | 89 | `result-track:ea53b755f262fffcf028cf3497790c5026fc84b6d5ba7f70e061e4aa8700ca3f` |
| 4 | `theorem` | [splitMul_injective](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/splitmul-injective--ce4c8c5ae7ec2cd7d6deb834.md) | 108 | `result-track:ce4c8c5ae7ec2cd7d6deb8345cecc52bce0cc39dd467fb8bd7b382dd2199dc26` |
| 5 | `abbrev` | [normedRingAux](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/normedringaux--9ebaa07223f4a0c5342d021c.md) | 119 | `declaration-track:9ebaa07223f4a0c5342d021c2a0b09e4a2e7268f7fdd71b9ef8999ab361008bc` |
| 6 | `abbrev` | [normedAlgebraAux](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/normedalgebraaux--9ea94ed071bd1625278960a8.md) | 127 | `declaration-track:9ea94ed071bd1625278960a85aec17df47cb25b0b7d3843a0f9fa4f72f2fbdc7` |
| 7 | `theorem` | [norm_def](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/norm-def--df9aa0c0fbf8d148abc21ddb.md) | 132 | `result-track:df9aa0c0fbf8d148abc21ddb5d8ad59f886fac3ef2345f217874c577127bc418` |
| 8 | `theorem` | [nnnorm_def](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/nnnorm-def--6cc5e850449122c57c680494.md) | 135 | `result-track:6cc5e850449122c57c68049414942754dcade8ce6cb743baef81db67cdf46edf` |
| 9 | `theorem` | [norm_eq_sup](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/norm-eq-sup--d3140a875123abdc25d9e205.md) | 139 | `result-track:d3140a875123abdc25d9e20584bd3292dcb20aeaac2dc29d010a51e23cd2950a` |
| 10 | `theorem` | [nnnorm_eq_sup](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/nnnorm-eq-sup--384c0d2e37d97f5ee50c005b.md) | 145 | `result-track:384c0d2e37d97f5ee50c005b92514b5a9136a0ada4c657626a3b9525db32fde9` |
| 11 | `theorem` | [lipschitzWith_addEquiv](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/lipschitzwith-addequiv--f620ff13676f178776577a60.md) | 149 | `result-track:f620ff13676f178776577a607cf84a06c1043e557d463dc001431f49165bd83d` |
| 12 | `theorem` | [antilipschitzWith_addEquiv](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/antilipschitzwith-addequiv--388418d5ab47da0b89088283.md) | 167 | `result-track:388418d5ab47da0b89088283286279dde23048212a61554c93ee81bbfab46281` |
| 13 | `theorem` | [uniformity_eq_aux](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/uniformity-eq-aux--f28e4c365a51f96a01c399a1.md) | 185 | `result-track:f28e4c365a51f96a01c399a17c499726864471a0f2f8ffcedf4db61f052cc75f` |
| 14 | `theorem` | [cobounded_eq_aux](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/cobounded-eq-aux--dad58ed84825b7d906ca938f.md) | 192 | `result-track:dad58ed84825b7d906ca938fa5ebd44b42408f14d0c60054e389e1b498d58255` |
| 15 | `instance` | [instUniformSpace](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/instuniformspace--0f2bd227e0e5ad01f1dbe022.md) | 200 | `declaration-track:0f2bd227e0e5ad01f1dbe022ec8e4a639ca131339fd44c5aeefe0ca77e439b02` |
| 16 | `def` | [uniformEquivProd](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/uniformequivprod--89420d012ca1ac555dbf7603.md) | 204 | `declaration-track:89420d012ca1ac555dbf7603768b0c8212f1428d49cf16ba94122da3f49e8e51` |
| 17 | `instance` | [instBornology](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/instbornology--83f8a564c71aef5beca420cb.md) | 208 | `declaration-track:83f8a564c71aef5beca420cbe2ffee20c6f66e641944509e2bafa945e3cf4fc3` |
| 18 | `theorem` | [isUniformEmbedding_addEquiv](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/isuniformembedding-addequiv--d33f4f24e340363fb71c7462.md) | 211 | `result-track:d33f4f24e340363fb71c7462bbc745d63693d9fa865cea3ec8e86c72c2088f5e` |
| 19 | `instance` | [instCompleteSpace](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/instcompletespace--6b26dc0ce5d0075b02d441f8.md) | 217 | `declaration-track:6b26dc0ce5d0075b02d441f8954fbc94f0759ac50df08d55a74b7fd5e7656066` |
| 20 | `instance` | [instMetricSpace](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/instmetricspace--120a3eed459f86cab9ecd0d0.md) | 224 | `declaration-track:120a3eed459f86cab9ecd0d0ece564dc02b5e30d0cbd67aabf4cf491bcd80b1e` |
| 21 | `instance` | [instNormedRing](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/instnormedring--154b1b80dcf7f5d18797f113.md) | 230 | `declaration-track:154b1b80dcf7f5d18797f113ec450cb1231ef8e65868b44f2a23fe7bd711189f` |
| 22 | `instance` | [instNormedAlgebra](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/instnormedalgebra--01f0e2ae01c56f0e1ea8eaed.md) | 237 | `declaration-track:01f0e2ae01c56f0e1ea8eaedbd60f8f584a5b032afa007abb3755f00b4d89f1b` |
| 23 | `instance` | [instNormOneClass](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/instnormoneclass--68bebee5417946d702330aad.md) | 243 | `declaration-track:68bebee5417946d702330aad2ed5d5f3f49755ff897461183a7dfd1aef858d54` |
| 24 | `lemma` | [norm_inr](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/norm-inr--db324d0c051cbedb85e2b754.md) | 247 | `result-track:db324d0c051cbedb85e2b754008279f7f5c3caea63674b5f04fc71d1f8002948` |
| 25 | `lemma` | [nnnorm_inr](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/nnnorm-inr--f847825fce05c379e642ae21.md) | 250 | `result-track:f847825fce05c379e642ae2159594cf92caf9f1012644b3a9d2f2a852769ae2e` |
| 26 | `lemma` | [isometry_inr](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/isometry-inr--f63be02e71abff7688f9d48e.md) | 253 | `result-track:f63be02e71abff7688f9d48e64c51b16d83a3b00bce094e7c7245111c521d467` |
| 27 | `theorem` | [continuous_inr](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/continuous-inr--395e00047bc3fa0c3f09dcdf.md) | 257 | `result-track:395e00047bc3fa0c3f09dcdfd9b12316c26939b17ee621bba4e54901fc366c08` |
| 28 | `lemma` | [dist_inr](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/dist-inr--498c03e77538dcf0c4235298.md) | 260 | `result-track:498c03e77538dcf0c423529811b8b7a18cac7e86d17f90dabd9a3b4d39f283a2` |
| 29 | `lemma` | [nndist_inr](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/nndist-inr--f54597e17e96e86bf8f6b609.md) | 263 | `result-track:f54597e17e96e86bf8f6b6091f5fdd9f69e5eed165836c650c5edede71b0100a` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/example--cc5084e984cc7ee5766d789d.md) | 268 | `declaration-track:cc5084e984cc7ee5766d789dccc5ee93c00fb1a64c7070dd14b18d548bee437a` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/example--43b52a77caf5002488880235.md) | 269 | `declaration-track:43b52a77caf50024888802350a7c5cb8cb39146634bdc5db530cafcdac6ac8e3` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/declarations/example--faabc5e50824674493bce503.md) | 270 | `declaration-track:faabc5e50824674493bce503746c37572a340a26b7f8632002ae2f42301a8d3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
