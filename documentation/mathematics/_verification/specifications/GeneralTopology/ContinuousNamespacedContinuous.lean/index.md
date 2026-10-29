# Verification target: Continuous Namespaced Continuous

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd07c8110a77314a60e43b3f273cb82dea04a392",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant67b481e1a11e9ad31b21e127c823dfdbcbf91909947e55383e22814a63f71330.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContinuousNamespacedContinuous.lean/index.md) · [Full source](../../../../GeneralTopology/ContinuousNamespacedContinuous.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd07c8110a77314a60e43b3f273cb82dea04a392`.

Source path: `GRWTSK/Topology/GeneralTopology/Continuous/Variant67b481e1a11e9ad31b21e127c823dfdbcbf91909947e55383e22814a63f71330.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Continuous/Variant67b481e1a11e9ad31b21e127c823dfdbcbf91909947e55383e22814a63f71330.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.Topology.Foundations` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Continuous](../../../../GeneralTopology/ContinuousNamespacedContinuous.lean/declarations/continuous.md) | 16 | `declaration-track:b3bf213fbfaeafb6cf18db97e9aa8105fca91fceb09e48de0d0d5a250cfabf8d` |
| 2 | `theorem` | [continuous_id](../../../../GeneralTopology/ContinuousNamespacedContinuous.lean/declarations/continuous-id.md) | 22 | `result-track:7d78b03cb3c5b2ff7818857e4ddf8342825385a34fbe0bfab5b8c6c518eaed72` |
| 3 | `theorem` | [continuous_comp](../../../../GeneralTopology/ContinuousNamespacedContinuous.lean/declarations/continuous-comp.md) | 28 | `result-track:36b06a57aef73588529c1aa48bd6697ae669c3b621830b384d194aecfdbfdd84` |
| 4 | `theorem` | [continuous_congr](../../../../GeneralTopology/ContinuousNamespacedContinuous.lean/declarations/continuous-congr.md) | 41 | `result-track:7e0b2e65458ac37c0bd7b15a98d3b14d5dee524f9a235d801bc83f58099c6d68` |
| 5 | `theorem` | [continuous_from_discrete](../../../../GeneralTopology/ContinuousNamespacedContinuous.lean/declarations/continuous-from-discrete.md) | 61 | `result-track:db6f0c56c58919ec1ea1042bd1fcfe8a4a6bcb319ebd98acef15b962df97bfe5` |
| 6 | `theorem` | [continuous_induced](../../../../GeneralTopology/ContinuousNamespacedContinuous.lean/declarations/continuous-induced.md) | 69 | `result-track:bdd76649e57b83fc770685fe40e01ffe1b6da1201a059eb49cd2110c1338ff2a` |
| 7 | `theorem` | [continuous_subtype_val](../../../../GeneralTopology/ContinuousNamespacedContinuous.lean/declarations/continuous-subtype-val.md) | 77 | `result-track:899521be1784ece48c6b90f13a49e7f447c73ede6ac72c24a9265e63ae7d14b2` |
| 8 | `theorem` | [continuous_product_fst](../../../../GeneralTopology/ContinuousNamespacedContinuous.lean/declarations/continuous-product-fst.md) | 83 | `result-track:1a35b7bda80341c1372afceaf1445cf934171e3722025d0ac0ce5b65a3031a7c` |
| 9 | `theorem` | [continuous_product_snd](../../../../GeneralTopology/ContinuousNamespacedContinuous.lean/declarations/continuous-product-snd.md) | 91 | `result-track:2cebf944c05a29723d53423ff3fa9ddc3f1e97c55c9ef65621ed29be74023b9b` |
| 10 | `theorem` | [continuous_pi_projection](../../../../GeneralTopology/ContinuousNamespacedContinuous.lean/declarations/continuous-pi-projection.md) | 99 | `result-track:8a0ee9b7f79efa5dd285716998defd35873d60bd94eb63e6315a4267e86f446a` |
| 11 | `theorem` | [continuous_product_projection](../../../../GeneralTopology/ContinuousNamespacedContinuous.lean/declarations/continuous-product-projection.md) | 107 | `result-track:a3dfa962fec4969bcd757bf53df0da62c3d704161f520bafc2223b9ab5410254` |
| 12 | `theorem` | [continuous_subspace_pi_projection](../../../../GeneralTopology/ContinuousNamespacedContinuous.lean/declarations/continuous-subspace-pi-projection.md) | 114 | `result-track:d1644c625080a1d1933697e2b1c068f79cf6d791d964ba7b84444758ab22c5de` |
| 13 | `theorem` | [continuous_sum_inl](../../../../GeneralTopology/ContinuousNamespacedContinuous.lean/declarations/continuous-sum-inl.md) | 127 | `result-track:709c28298442d0559d491ab549968a18db4af7fb19aba3e3c75406a0bb7b7c1e` |
| 14 | `theorem` | [continuous_sum_inr](../../../../GeneralTopology/ContinuousNamespacedContinuous.lean/declarations/continuous-sum-inr.md) | 134 | `result-track:3575afcbcd36f2c32fd05546b5bcf702fd6212d196b5c94e026b4918b9998dcc` |
| 15 | `theorem` | [continuous_quotientMap](../../../../GeneralTopology/ContinuousNamespacedContinuous.lean/declarations/continuous-quotientmap.md) | 142 | `result-track:9830d458a1843fb02a24b505a9f351e77e60b871686746ae3f06faf810997e47` |
| 16 | `theorem` | [continuous_from_quotient_iff](../../../../GeneralTopology/ContinuousNamespacedContinuous.lean/declarations/continuous-from-quotient-iff.md) | 150 | `result-track:e4ec07cc49f4fb1d21ba51e372b09f99b52b86510e86ffb054a0b7c3470c2002` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4b932e6fd489aced419c51a1dd5910830e8ae60c8acc2227fdc2207201ce4ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Continuous/Variant67b481e1a11e9ad31b21e127c823dfdbcbf91909947e55383e22814a63f71330.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Continuous/Variant67b481e1a11e9ad31b21e127c823dfdbcbf91909947e55383e22814a63f71330.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
