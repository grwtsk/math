# Verification target: Continuous Continuous

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a628721e577abcbe972a235940d811fff0e5c35f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContinuousContinuous.lean/index.md) · [Full source](../../../../GeneralTopology/ContinuousContinuous.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a628721e577abcbe972a235940d811fff0e5c35f`.

Source path: `GRWTSK/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.Topology.Foundations` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Continuous](../../../../GeneralTopology/ContinuousContinuous.lean/declarations/continuous.md) | 8 | `declaration-track:e8ed11c9f0f56118f9d11825d9b0320a27b5f8901ee268895a127b1c448c8822` |
| 2 | `theorem` | [continuous_id](../../../../GeneralTopology/ContinuousContinuous.lean/declarations/continuous-id.md) | 14 | `result-track:dc62589546ea37ba7efc55e996058c1eb2b57ce5df9901c2e827f34f13e1d865` |
| 3 | `theorem` | [continuous_comp](../../../../GeneralTopology/ContinuousContinuous.lean/declarations/continuous-comp.md) | 20 | `result-track:a33de6334705c80764e8bbbdf8924511f6d291e80baf19af6648b711ceb8de53` |
| 4 | `theorem` | [continuous_congr](../../../../GeneralTopology/ContinuousContinuous.lean/declarations/continuous-congr.md) | 33 | `result-track:5f4f5b6ef9e451831abaf193a60b16934e4d80897a3642093294391c04058bf3` |
| 5 | `theorem` | [continuous_from_discrete](../../../../GeneralTopology/ContinuousContinuous.lean/declarations/continuous-from-discrete.md) | 53 | `result-track:1330e4e5d332353e9728fd54d3a5c7b754b98f5851be03f579a84a201bf4dc41` |
| 6 | `theorem` | [continuous_induced](../../../../GeneralTopology/ContinuousContinuous.lean/declarations/continuous-induced.md) | 61 | `result-track:0be1ce2c989deb7ba93a74fbec1cbadbd83e611950c7b9b92ceac0188cf5eda1` |
| 7 | `theorem` | [continuous_subtype_val](../../../../GeneralTopology/ContinuousContinuous.lean/declarations/continuous-subtype-val.md) | 69 | `result-track:c9b003cf5fc422f43f57b479456b9139f6c107fba47e761c4d71b7c7855e70f7` |
| 8 | `theorem` | [continuous_product_fst](../../../../GeneralTopology/ContinuousContinuous.lean/declarations/continuous-product-fst.md) | 75 | `result-track:5ce17799852d09a0940583d3b33fa3225217c956dfc5bce081c45af798e85715` |
| 9 | `theorem` | [continuous_product_snd](../../../../GeneralTopology/ContinuousContinuous.lean/declarations/continuous-product-snd.md) | 83 | `result-track:bad04055098f0fc2e4a9eeed5441771746f903683f8c6e264f906de25ffa2b05` |
| 10 | `theorem` | [continuous_pi_projection](../../../../GeneralTopology/ContinuousContinuous.lean/declarations/continuous-pi-projection.md) | 91 | `result-track:beb6d4eb0aa3cb39c27a92a8420c77d3f3a59535e9b509036d74edc49d559520` |
| 11 | `theorem` | [continuous_product_projection](../../../../GeneralTopology/ContinuousContinuous.lean/declarations/continuous-product-projection.md) | 99 | `result-track:d5df5cc7dd50ce73d30f26dd3e546a96b010f064ac8317557aff13210e1ee20e` |
| 12 | `theorem` | [continuous_subspace_pi_projection](../../../../GeneralTopology/ContinuousContinuous.lean/declarations/continuous-subspace-pi-projection.md) | 106 | `result-track:24ffbaf997bd906a2b6cddfd95765d959ffcc639c8f827efc0af2fdc50028a68` |
| 13 | `theorem` | [continuous_sum_inl](../../../../GeneralTopology/ContinuousContinuous.lean/declarations/continuous-sum-inl.md) | 119 | `result-track:d1babbf66611ebd36bcfdd662bd2814062d7a44f2f1321616f3a43d4836de2d8` |
| 14 | `theorem` | [continuous_sum_inr](../../../../GeneralTopology/ContinuousContinuous.lean/declarations/continuous-sum-inr.md) | 126 | `result-track:50467efdb5c608c45765285b3d2a22be2fe6fdc5f8bf2e59451f59e0c62e8179` |
| 15 | `theorem` | [continuous_quotientMap](../../../../GeneralTopology/ContinuousContinuous.lean/declarations/continuous-quotientmap.md) | 134 | `result-track:864867e8447579def1f9f5ee55ce4dbb2178d68f5e80723a07106ace1288aa9c` |
| 16 | `theorem` | [continuous_from_quotient_iff](../../../../GeneralTopology/ContinuousContinuous.lean/declarations/continuous-from-quotient-iff.md) | 142 | `result-track:f5e2ff2f9753b53d214ad066f175307f3026569e6d16526965d81e2f412e2bc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b7a0ab0b63eeb059e917548d36d7f9abf723fa80dcbcecbb433f26af12826c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
