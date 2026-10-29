# Verification target: Spectrum Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ce77755e65327b138cb8b796bfbe5d2f9b74e66",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Spectrum/Variant7ba477ded16c710926a852f079b2ef6b4ae081350a1b4a03824805f17f568966.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/SpectrumNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/SpectrumNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ce77755e65327b138cb8b796bfbe5d2f9b74e66`.

Source path: `GRWTSK/Analysis/Spectrum/Variant7ba477ded16c710926a852f079b2ef6b4ae081350a1b4a03824805f17f568966.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Spectrum/Variant7ba477ded16c710926a852f079b2ef6b4ae081350a1b4a03824805f17f568966.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [nnreal_iff](../../../../FunctionalAnalysis/SpectrumNamespacedPublic.lean/declarations/nnreal-iff.md) | 33 | `result-track:0689292bd25a41ef36ed5f7bc9407798e18b5b362e35b228055035fb6c41f520` |
| 2 | `lemma` | [nnreal_of_nonneg](../../../../FunctionalAnalysis/SpectrumNamespacedPublic.lean/declarations/nnreal-of-nonneg.md) | 40 | `result-track:a292af6b247ad0b91ad231f19a672b0298e4ff47df3901ff7caab0fc2f2c7cb8` |
| 3 | `lemma` | [nnreal_le_iff](../../../../FunctionalAnalysis/SpectrumNamespacedPublic.lean/declarations/nnreal-le-iff.md) | 44 | `result-track:edda3e2fb2f56c57f332d93187cf37b660502861db73eb3a547235d0bdb5966c` |
| 4 | `lemma` | [nnreal_lt_iff](../../../../FunctionalAnalysis/SpectrumNamespacedPublic.lean/declarations/nnreal-lt-iff.md) | 49 | `result-track:782cb3a7315017eb03e45f5aff884a9c6f4dbe4ae5e2c29c654a8f13ad10960d` |
| 5 | `lemma` | [le_nnreal_iff](../../../../FunctionalAnalysis/SpectrumNamespacedPublic.lean/declarations/le-nnreal-iff-source-edition-2.md) | 54 | `result-track:729947cf10d4d04d3e38fabbed2dd25192fa62883aaf81c433f4ec8905d777a4` |
| 6 | `lemma` | [lt_nnreal_iff](../../../../FunctionalAnalysis/SpectrumNamespacedPublic.lean/declarations/lt-nnreal-iff-source-edition-2.md) | 59 | `result-track:92c31e4cbf14ee96ffadfbb66708a217149bbb912809817574629ba56d543675` |
| 7 | `lemma` | [nnreal_iff](../../../../FunctionalAnalysis/SpectrumNamespacedPublic.lean/declarations/nnreal-iff-source-edition-2.md) | 73 | `result-track:894c5e9f0ed8a7c50fc7c987c8d338b70a9de3a385e3bdb77cf39441c77e9b08` |
| 8 | `lemma` | [nnreal_of_nonneg](../../../../FunctionalAnalysis/SpectrumNamespacedPublic.lean/declarations/nnreal-of-nonneg-source-edition-2.md) | 78 | `result-track:f92d349534bcb11c6a0b5fe5aa21320ec91f6181b2fa83db05880a756a304e68` |
| 9 | `lemma` | [le_nnreal_iff](../../../../FunctionalAnalysis/SpectrumNamespacedPublic.lean/declarations/le-nnreal-iff.md) | 83 | `result-track:52be9c812a8a362297f04a42a72ee693cfe67908c4048aae712608f1108cdd6a` |
| 10 | `lemma` | [lt_nnreal_iff](../../../../FunctionalAnalysis/SpectrumNamespacedPublic.lean/declarations/lt-nnreal-iff.md) | 88 | `result-track:6ab50ae7a5b69110da4a92dedf8e56af7b34dfaffd5fa5a87782cd33340f8f74` |
| 11 | `lemma` | [coe_mem_spectrum_real_of_nonneg](../../../../FunctionalAnalysis/SpectrumNamespacedPublic.lean/declarations/coe-mem-spectrum-real-of-nonneg.md) | 99 | `result-track:1df740fe330e571cf7ef96a0bdc54fa1e645f5dc59ae32b69cb9dde774484982` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cba827f09b94dc7b0d54bf320ef181d7e601a1f45993042405d297ddf69f8f04 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Spectrum/Variant7ba477ded16c710926a852f079b2ef6b4ae081350a1b4a03824805f17f568966.lean","GRWTSK/_verification/specifications/Analysis/Spectrum/Variant7ba477ded16c710926a852f079b2ef6b4ae081350a1b4a03824805f17f568966.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
