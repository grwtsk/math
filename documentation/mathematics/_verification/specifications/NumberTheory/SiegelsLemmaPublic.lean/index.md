# Verification target: Siegels Lemma Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd2eb048de4951a265c1e7b96adbb9358fcfc5af",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant311192d4a9a705c6995941674c6c715093b7ac71660b37a49e9d605c3d3c8218.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/SiegelsLemmaPublic.lean/index.md) · [Full source](../../../../NumberTheory/SiegelsLemmaPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd2eb048de4951a265c1e7b96adbb9358fcfc5af`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant311192d4a9a705c6995941674c6c715093b7ac71660b37a49e9d605c3d3c8218.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant311192d4a9a705c6995941674c6c715093b7ac71660b37a49e9d605c3d3c8218.lean.json)

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
| 1 | `lemma` | [image_T_subset_S](../../../../NumberTheory/SiegelsLemmaPublic.lean/declarations/image-t-subset-s.md) | 73 | `result-track:99c146b8076f783266c454203cc8ef3161a0e1bdef29c92c39435bb06a9f10bd` |
| 2 | `lemma` | [card_T_eq](../../../../NumberTheory/SiegelsLemmaPublic.lean/declarations/card-t-eq.md) | 87 | `result-track:73b7af2cca3845cef3fb6f91ecda18841475641f8e75d539b3ffd457f9b13f96` |
| 3 | `lemma` | [N_le_P_add_one](../../../../NumberTheory/SiegelsLemmaPublic.lean/declarations/n-le-p-add-one.md) | 91 | `result-track:19d9fb227f55a99825a82666d9808a072b8abf6f5c4f4255383417c27312d9b2` |
| 4 | `lemma` | [card_S_eq](../../../../NumberTheory/SiegelsLemmaPublic.lean/declarations/card-s-eq.md) | 98 | `result-track:a42c92068f550b22303b4f7f968cecc66488e2064bbc48c399ccd8a49f1d55fe` |
| 5 | `lemma` | [one_le_norm_A_of_ne_zero](../../../../NumberTheory/SiegelsLemmaPublic.lean/declarations/one-le-norm-a-of-ne-zero.md) | 105 | `result-track:de383ff159d956322b0f9fe2f7f391b978708725dc17a7649e92fb6b713027bd` |
| 6 | `lemma` | [card_S_lt_card_T](../../../../NumberTheory/SiegelsLemmaPublic.lean/declarations/card-s-lt-card-t.md) | 117 | `result-track:ca95b0efb7917d57ad30b15da6fc6bc02cdd1df5f214d0bf08b5f0107543901a` |
| 7 | `theorem` | [exists_ne_zero_int_vec_norm_le](../../../../NumberTheory/SiegelsLemmaPublic.lean/declarations/exists-ne-zero-int-vec-norm-le-source-edition-2.md) | 155 | `result-track:7667b72386328461f877efd1ee5dfd42c6d40fe868197d09c7c18e0ef3512203` |
| 8 | `theorem` | [exists_ne_zero_int_vec_norm_le'](../../../../NumberTheory/SiegelsLemmaPublic.lean/declarations/exists-ne-zero-int-vec-norm-le.md) | 177 | `result-track:2085d47fec35950d57e8c19201b50e93f14890da810cbe8f24b5c1c97a68e950` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad4214f9352ec433363216e3b6714a05f7c9ad405117887b4db9cf84ed0e9a5a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant311192d4a9a705c6995941674c6c715093b7ac71660b37a49e9d605c3d3c8218.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant311192d4a9a705c6995941674c6c715093b7ac71660b37a49e9d605c3d3c8218.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
