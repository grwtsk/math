# Verification target: Imo2025 Q3 Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa09bcc0c3fa865b9ef049fb56560c9cfd7ad0e5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/Imo2025Q3Public.lean/index.md) · [Full source](../../../../NumberTheory/Imo2025Q3Public.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa09bcc0c3fa865b9ef049fb56560c9cfd7ad0e5`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean.json)

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
| 1 | `def` | [IsBonza](../../../../NumberTheory/Imo2025Q3Public.lean/declarations/isbonza-source-edition-2.md) | 42 | `declaration-track:dae269c530d519e077eb590235e7422d50bcaabf947c62be495ef3551d10ab91` |
| 2 | `lemma` | [apply_dvd_pow](../../../../NumberTheory/Imo2025Q3Public.lean/declarations/apply-dvd-pow.md) | 50 | `result-track:0c61cfc368c6903af3db13b030296d28303c304e37054c8f95cd92a944f52298` |
| 3 | `lemma` | [apply_prime_eq_one_or_dvd_self_sub_apply](../../../../NumberTheory/Imo2025Q3Public.lean/declarations/apply-prime-eq-one-or-dvd-self-sub-apply.md) | 55 | `result-track:c06e7a7d02742d6a54c496cfb366d2498ddee7ad08145e4a2ba81e521440536e` |
| 4 | `theorem` | [not_id_apply_prime_of_gt_eq_one](../../../../NumberTheory/Imo2025Q3Public.lean/declarations/not-id-apply-prime-of-gt-eq-one.md) | 78 | `result-track:f49997669847848f051b737029f6aa45dd3b51bd85ec24a4f41595d410147c05` |
| 5 | `theorem` | [apply_prime_gt_two_eq_one](../../../../NumberTheory/Imo2025Q3Public.lean/declarations/apply-prime-gt-two-eq-one.md) | 90 | `result-track:e41e58c5377059a3a985351ae2b727a6ef0843ea9f9a17b21ad33966d80b4680` |
| 6 | `lemma` | [not_id_two_pow](../../../../NumberTheory/Imo2025Q3Public.lean/declarations/not-id-two-pow.md) | 116 | `result-track:1e36c036ee167f05d698cbd54ee2b65d0022d8c19c1ac498258d95fe1edd5f08` |
| 7 | `def` | [fExample](../../../../NumberTheory/Imo2025Q3Public.lean/declarations/fexample.md) | 133 | `declaration-track:afd50a5ff5442be3c232b17d9bebb80e18f825e4a284240f69fa584bff1bf6cf` |
| 8 | `lemma` | [dvd_pow_sub](../../../../NumberTheory/Imo2025Q3Public.lean/declarations/dvd-pow-sub.md) | 140 | `result-track:2a9d235735b55070ebfe984c5c63f8d95f31126a1e159d9d2ec350db6d27c24b` |
| 9 | `lemma` | [isBonza](../../../../NumberTheory/Imo2025Q3Public.lean/declarations/isbonza.md) | 154 | `result-track:622bc7dd0463ea93df9c0974f19a552045431c522dc6c5ce9b4a678143118649` |
| 10 | `theorem` | [apply_le](../../../../NumberTheory/Imo2025Q3Public.lean/declarations/apply-le.md) | 184 | `result-track:d463f83952dfa9eacc2cb96c04f2cf8cf3258670dd3a04f8ea1af630a4ee640e` |
| 11 | `theorem` | [result](../../../../NumberTheory/Imo2025Q3Public.lean/declarations/result.md) | 218 | `result-track:2099254b24b544549a981b67d64661a2affc305ed612d0cbaf10faab0d6dd51b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28e4f83030e42abedae77cc6dc158db97a7a6116d9dd78184bb3c54ee3f67598 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
