# Verification target: Scaled Fixed Prime Limit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b5d7505fd7ebf76847dad1ed505796f18c61f5c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Efc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28ScaledFixedPrime/Variantb90869c65629e9b330e4183ab47f60a7cdad634a28ddf90a4fb39b64b09cfc16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ScaledFixedPrimeLimitNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ScaledFixedPrimeLimitNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b5d7505fd7ebf76847dad1ed505796f18c61f5c`.

Source path: `GRWTSK/Topology/GeneralTopology/Efc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28ScaledFixedPrime/Variantb90869c65629e9b330e4183ab47f60a7cdad634a28ddf90a4fb39b64b09cfc16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Efc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28ScaledFixedPrime/Variantb90869c65629e9b330e4183ab47f60a7cdad634a28ddf90a4fb39b64b09cfc16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PhaseKernelBoundary` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fixed_kernel_continuous](../../../../GeneralTopology/ScaledFixedPrimeLimitNamespaced.lean/declarations/fixed-kernel-continuous.md) | 20 | `result-track:da2e8c6f172f9846e49c35119ea504f6926c8d85dcb82eb499a790e4b9f1d8cd` |
| 2 | `theorem` | [log_div_radius_tendsto_zero](../../../../GeneralTopology/ScaledFixedPrimeLimitNamespaced.lean/declarations/log-div-radius-tendsto-zero.md) | 32 | `result-track:b1c108a17693a484d6f98afc055f6d80769eda5acc0b955b83881cfccc8bbdb5` |
| 3 | `theorem` | [inverse_square_coefficient_tendsto_zero](../../../../GeneralTopology/ScaledFixedPrimeLimitNamespaced.lean/declarations/inverse-square-coefficient-tendsto-zero.md) | 38 | `result-track:523df756d9bd57ac309b8a3a4cb71399173f0ca78c539db70addc006db37dc73` |
| 4 | `theorem` | [inverse_fourth_coefficient_tendsto_zero](../../../../GeneralTopology/ScaledFixedPrimeLimitNamespaced.lean/declarations/inverse-fourth-coefficient-tendsto-zero.md) | 44 | `result-track:3793c6337c96be4f3c7decd365f9f036f987ac5ce2ab622aca47bd028e060411` |
| 5 | `theorem` | [source_normalization_tendsto](../../../../GeneralTopology/ScaledFixedPrimeLimitNamespaced.lean/declarations/source-normalization-tendsto.md) | 49 | `result-track:5d9da6c818e1e6ebc0eb0fe4a31459f43ef5e71b2b57131fd5b4281f3747fbed` |
| 6 | `theorem` | [scaled_kernel_fixed_index_tendsto](../../../../GeneralTopology/ScaledFixedPrimeLimitNamespaced.lean/declarations/scaled-kernel-fixed-index-tendsto.md) | 62 | `result-track:0c2b795686bc99f53aa3e81de1904991420b638b175aa6853ad16234b752d43f` |
| 7 | `theorem` | [prime_weight_pos](../../../../GeneralTopology/ScaledFixedPrimeLimitNamespaced.lean/declarations/prime-weight-pos.md) | 84 | `result-track:776777a49c2ed6deabdd62f4fcd0c2c8027c7f2d192dcce9c23f0bfd42f8b1fe` |
| 8 | `theorem` | [integrated_prime_square_block_eventually_pos](../../../../GeneralTopology/ScaledFixedPrimeLimitNamespaced.lean/declarations/integrated-prime-square-block-eventually-pos.md) | 93 | `result-track:498fb1ed344145291e121dc584f89a6c559a3fe3cd13322d3a2c9e0fb5e9eefd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5157ff154c1965a158c1065e1fd64bb35eba6a5077f1fc9d9b80ab65d5a4d59d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Efc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28ScaledFixedPrime/Variantb90869c65629e9b330e4183ab47f60a7cdad634a28ddf90a4fb39b64b09cfc16.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Efc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28ScaledFixedPrime/Variantb90869c65629e9b330e4183ab47f60a7cdad634a28ddf90a4fb39b64b09cfc16.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
