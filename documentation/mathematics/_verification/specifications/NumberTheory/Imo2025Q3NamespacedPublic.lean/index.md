# Verification target: Imo2025 Q3 Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b0937d10f8a03d15058e87e045307623061c556",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variant8d5ff227b54e7ba0f094935a8b4641cd72a32c3e85801578fa816157f55edbb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/Imo2025Q3NamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/Imo2025Q3NamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b0937d10f8a03d15058e87e045307623061c556`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variant8d5ff227b54e7ba0f094935a8b4641cd72a32c3e85801578fa816157f55edbb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variant8d5ff227b54e7ba0f094935a8b4641cd72a32c3e85801578fa816157f55edbb8.lean.json)

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
| 1 | `def` | [IsBonza](../../../../NumberTheory/Imo2025Q3NamespacedPublic.lean/declarations/isbonza.md) | 50 | `declaration-track:94dfb8ffc70352ed56c400d5689737d2e6c9e323a308b8173b0dacd6fe6b1d4e` |
| 2 | `lemma` | [apply_dvd_pow](../../../../NumberTheory/Imo2025Q3NamespacedPublic.lean/declarations/apply-dvd-pow.md) | 58 | `result-track:bd750688abb02bfe9211a183e6a9c4822d96b461ae30c9af4f10f5ae1be0b41b` |
| 3 | `lemma` | [apply_prime_eq_one_or_dvd_self_sub_apply](../../../../NumberTheory/Imo2025Q3NamespacedPublic.lean/declarations/apply-prime-eq-one-or-dvd-self-sub-apply.md) | 63 | `result-track:2e1d7c457bc2fe8bea667c0ef07f12f6fbe6144de6ecd8d6169eb427f4e066d9` |
| 4 | `theorem` | [not_id_apply_prime_of_gt_eq_one](../../../../NumberTheory/Imo2025Q3NamespacedPublic.lean/declarations/not-id-apply-prime-of-gt-eq-one.md) | 86 | `result-track:f33e30087cb536445c94214de5e9d7880bfa80f65fd835931ef5f3455e2d986b` |
| 5 | `theorem` | [apply_prime_gt_two_eq_one](../../../../NumberTheory/Imo2025Q3NamespacedPublic.lean/declarations/apply-prime-gt-two-eq-one.md) | 98 | `result-track:39960304302a8489a72a9677f9dd7cdd5adc1b4f5595be6b83c6e8a3120c2db1` |
| 6 | `lemma` | [not_id_two_pow](../../../../NumberTheory/Imo2025Q3NamespacedPublic.lean/declarations/not-id-two-pow.md) | 124 | `result-track:9d87a3b57f1760908f4777cf2898f000651ec8ad84fc49504ae9df38924e2959` |
| 7 | `def` | [fExample](../../../../NumberTheory/Imo2025Q3NamespacedPublic.lean/declarations/fexample.md) | 141 | `declaration-track:bfe7b0f6694a0639cd31f8dccfd893b7881e9c36260fdfe58e2dcb1847fb92c2` |
| 8 | `lemma` | [dvd_pow_sub](../../../../NumberTheory/Imo2025Q3NamespacedPublic.lean/declarations/dvd-pow-sub.md) | 148 | `result-track:6c85ac1c042dc99d4ea2695856537015bfb151f3f4115127a9894484ed92f26a` |
| 9 | `lemma` | [isBonza](../../../../NumberTheory/Imo2025Q3NamespacedPublic.lean/declarations/isbonza-source-edition-2.md) | 162 | `result-track:9ad11e66f0750593052039f7cb42dd1413d2a2bf3803150fbfb40e2d059177bd` |
| 10 | `theorem` | [apply_le](../../../../NumberTheory/Imo2025Q3NamespacedPublic.lean/declarations/apply-le.md) | 192 | `result-track:a5a8d4aa1eda22edc0ef5a491e7ef584b28ae36554edc2b05dad78f84e27cd43` |
| 11 | `theorem` | [result](../../../../NumberTheory/Imo2025Q3NamespacedPublic.lean/declarations/result.md) | 226 | `result-track:8d2e58f2432c1134998bceb44f9c5ecd07cfebabf54f3326fe68631f393253a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9fdf282afbbd7a65c0aefbf413bad7dfc279139d08ef9d6de9f25db063b82ba1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variant8d5ff227b54e7ba0f094935a8b4641cd72a32c3e85801578fa816157f55edbb8.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variant8d5ff227b54e7ba0f094935a8b4641cd72a32c3e85801578fa816157f55edbb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
