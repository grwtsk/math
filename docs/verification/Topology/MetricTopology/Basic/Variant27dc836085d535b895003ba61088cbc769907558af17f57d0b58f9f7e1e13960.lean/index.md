# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88bf2a2a9369760cdf6ecff961bf17712f897e3d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88bf2a2a9369760cdf6ecff961bf17712f897e3d`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DeloneSet](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/declarations/deloneset--fdf3370a3829e33d8f3240b4.md) | 66 | `declaration-track:fdf3370a3829e33d8f3240b43e0dde9f9933cab047e5e5d3bb698206d5f7336c` |
| 2 | `def` | [toSet](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/declarations/toset--b388c6a7c77de2ced10dec15.md) | 81 | `declaration-track:b388c6a7c77de2ced10dec15d4c70d425fe69e356268cdbfa226ba7278d39258` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/declarations/instance--962c29b71a818a2956ddd352.md) | 83 | `declaration-track:962c29b71a818a2956ddd352a3aae569fa43f77488b276f757cd123fcdf046af` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/declarations/instance--a7ecab89ca69786fdf0c0af6.md) | 86 | `declaration-track:a7ecab89ca69786fdf0c0af67c00b83ac6121c0582ec0077ad8961291bbea171` |
| 5 | `lemma` | [mem_coe](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/declarations/mem-coe--01ae9a572fae6ae0dfc27512.md) | 90 | `result-track:01ae9a572fae6ae0dfc275124f269710ca88f2706840c7f5621d4f93f648e071` |
| 6 | `lemma` | [mem_carrier](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/declarations/mem-carrier--842edf004160c692730a8155.md) | 92 | `result-track:842edf004160c692730a8155086dbceb296b2907b6cfa42d06a4cb64071a0650` |
| 7 | `lemma` | [nonempty](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/declarations/nonempty--45923fe37042beff32c57e39.md) | 95 | `result-track:45923fe37042beff32c57e39b458340cf3ec549c4c178183fdd9118dbe021236` |
| 8 | `def` | [copy](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/declarations/copy--8387f51e1f04fdc6e30876d9.md) | 100 | `declaration-track:8387f51e1f04fdc6e30876d90d6401c4bea5e8fc655a5c038863974604381fa3` |
| 9 | `theorem` | [copy_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/declarations/copy-eq--1829f44022e551481857f6ae.md) | 114 | `result-track:1829f44022e551481857f6ae355b4c60619fcc3c31eba1cc3a2b9e55ff3dc706` |
| 10 | `lemma` | [packingRadius_lt_dist_of_mem_ne](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/declarations/packingradius-lt-dist-of-mem-ne--c822f1d41a1d775242b14813.md) | 119 | `result-track:c822f1d41a1d775242b14813c1352665218eb524034ba86da8c07126c9f4f175` |
| 11 | `lemma` | [exists_dist_le_coveringRadius](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/declarations/exists-dist-le-coveringradius--727f12decdab3f89249d9858.md) | 126 | `result-track:727f12decdab3f89249d9858637c0daaf86989936434e1822a37a7b7eb49ee0f` |
| 12 | `lemma` | [eq_of_mem_ball](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/declarations/eq-of-mem-ball--012a4e8b75c213bb06399193.md) | 131 | `result-track:012a4e8b75c213bb06399193396d86e8369afb2a737fbda0a9e0ce5c1e994d1b` |
| 13 | `lemma` | [subset_ball_singleton](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/declarations/subset-ball-singleton--a3d0bc95c6879c95346bc925.md) | 142 | `result-track:a3d0bc95c6879c95346bc9255cb22d6ae9f0e6c9ece79526dc1ba53c46d1f044` |
| 14 | `def` | [mapBilipschitz](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/declarations/mapbilipschitz--857f01b255772004a3064950.md) | 148 | `declaration-track:857f01b255772004a306495086794e938560b2759cff915b91582a0f85b10bb4` |
| 15 | `lemma` | [mapBilipschitz_refl](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/declarations/mapbilipschitz-refl--fd2e40270d63dc9150d5f522.md) | 159 | `result-track:fd2e40270d63dc9150d5f5229232e68c86d40b61e2662bce9f18336015e77a33` |
| 16 | `lemma` | [mapBilipschitz_trans](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/declarations/mapbilipschitz-trans--d30b3185292afa815b8929e4.md) | 164 | `result-track:d30b3185292afa815b8929e484d8e633d9f5cb1fb7cae516751adad4b6ce575b` |
| 17 | `def` | [mapIsometry](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/declarations/mapisometry--3a39aae2424fdc1adbc83121.md) | 186 | `declaration-track:3a39aae2424fdc1adbc83121cf67229623ea0191f42e8611e55a1907594f146f` |
| 18 | `lemma` | [mapIsometry_refl](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/declarations/mapisometry-refl--f215b42881b19a35268fd675.md) | 197 | `result-track:f215b42881b19a35268fd675737402c759e9f9942198d691c713cae5bf49223a` |
| 19 | `lemma` | [mapIsometry_symm](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/declarations/mapisometry-symm--43f235ee638db2f6091048c3.md) | 200 | `result-track:43f235ee638db2f6091048c3a840fb87ba1fef7bfee4ec2a87c54c29f568a9c3` |
| 20 | `lemma` | [mapIsometry_trans](../../../../../mathematics/Topology/MetricTopology/Basic/Variant27dc836085d535b895003ba61088cbc769907558af17f57d0b58f9f7e1e13960.lean/declarations/mapisometry-trans--a4c414f8ba554252a3a49ef0.md) | 202 | `result-track:a4c414f8ba554252a3a49ef0be2063a80b6757811e281f977da27a15d154eda6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
